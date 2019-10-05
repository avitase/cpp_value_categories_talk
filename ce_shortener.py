import json
import requests

url = 'https://godbolt.org/shortener'
data = {
  "sessions": [
    {
      "id": 1,
      "language": "c++",
      "source": "int main() { return 43; }",
      "compilers": [
        {
          "id": "clang_trunk",
          "options": "-O3"
        }
      ],
    }
  ]
}
headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
r = requests.post(url, data=json.dumps(data), headers=headers)
if r.status_code == 200:
    x = json.loads(r.content.decode('utf8'))
    print(x)
    if 'url' in x:
        print(x['url'])
