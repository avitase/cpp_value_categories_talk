import json
import os
import sys

import requests


def require(p, error_msg):
    if not p:
        print(f'Error: {error_msg}')
        sys.exit(1)


def read_source(file_name):
    lines = open(file_name, 'r').readlines()
    while len(lines) > 0 and not lines[0].strip():
        lines = lines[1:]

    while len(lines) > 0 and not lines[-1].strip():
        lines = lines[:-1]

    return ''.join(lines)


def compile(source, flags=None, hide_flags=None):
    compiler = 'clang_trunk'
    if flags is None:
        flags = '-std=c++2a -O3'

    filters = {
        'binary': False,
        'commentOnly': True,
        'demangle': True,
        'directives': True,
        'execute': False,
        'intel': True,
        'labels': True,
        'libraryCode': False,
        'trim': True,
    }

    data = {
        'source': source,
        'options': {
            'userArguments': flags,
            'compilerOptions': {},
            'filters': filters,
        }
    }

    url = f'https://godbolt.org/api/compiler/{compiler}/compile'
    headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
    response = requests.post(url, data=json.dumps(data), headers=headers)

    if response.status_code == 200:
        asm = response.content.decode('utf8')
        lines = asm.split('\n')
        if lines and lines[0].strip().startswith('# Compilation provided by'):
            lines = lines[1:]

        info = f'# {compiler} ' + ' '.join(f for f in flags.split(' ') if f not in hide_flags)
        return '\n'.join([info,] + [line.rstrip() for line in lines])
    return None


def upload(source, flags=None):
    compiler = 'clang_trunk'
    if flags is None:
        flags = '-std=c++2a -O3'

    compiler = {'id': compiler, 'options': flags, }
    data = {
        'sessions': [{'id': 1, 'language': 'c++', 'source': source, 'compilers': [compiler, ]}, ]
    }

    url = 'https://godbolt.org/shortener'
    headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
    response = requests.post(url, data=json.dumps(data), headers=headers)
    if response.status_code == 200:
        body = json.loads(response.content.decode('utf8'))
        if 'url' in body:
            return body['url']
    return None


def make_listing(*, source, url):
    title = url.lstrip('http://').lstrip('https://').lstrip('www.')

    tex = r'\begin{lstlisting}'
    tex += r'[title=\href{' + url + r'}{\texttt{' + title + '}}]\n'
    tex += source
    tex += r'\end{lstlisting}' + '\n'
    return tex


if __name__ == '__main__':
    require(len(sys.argv) == 2, 'Usage {} [file.cpp]'.format(sys.argv[0]))

    file_name = sys.argv[1]
    root, _ = os.path.splitext(file_name)
    require(os.path.isfile(file_name), f'File \'{file_name}\' does not exist!')

    source = read_source(file_name)
    require(source, f'File \'{file_name}\' is empty!')

    flags = '-O3 -std=c++2a -march=haswell'
    hide_flags = '-std=c++2a -march=haswell'

    asm = compile(source=source, flags=flags, hide_flags=hide_flags)
    if asm:
        open(root + '.asm', 'w').write(asm)
    else:
        print('Error: Could not receive compilation result from godbold.org!')

    url = upload(source=source, flags=flags)
    if not url:
        print('Error: Could not receive URL from godbold.org!')
        url = '???'

    with open(root + '_lst.tex', 'w') as f:
        f.write(make_listing(source=source, url=url))
