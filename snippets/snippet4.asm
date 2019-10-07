# clang_trunk -O3 -std=c++14 -fno-elide-constructors
f(): # @f()
  push rbx
  sub rsp, 16
  mov rbx, rdi
  mov byte ptr [rsp + 14], 97
  lea rsi, [rsp + 14]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 15], 99
  lea rsi, [rsp + 15]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov rax, rbx
  add rsp, 16
  pop rbx
  ret
main: # @main
  sub rsp, 24
  mov byte ptr [rsp + 13], 97
  lea rsi, [rsp + 13]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 14], 99
  lea rsi, [rsp + 14]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 15], 10
  lea rsi, [rsp + 15]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 16], 97
  lea rsi, [rsp + 16]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 17], 99
  lea rsi, [rsp + 17]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 18], 99
  lea rsi, [rsp + 18]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 19], 10
  lea rsi, [rsp + 19]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 20], 97
  lea rsi, [rsp + 20]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 21], 99
  lea rsi, [rsp + 21]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 22], 99
  lea rsi, [rsp + 22]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  mov byte ptr [rsp + 23], 10
  lea rsi, [rsp + 23]
  mov edi, offset std::cout
  mov edx, 1
  call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
  xor eax, eax
  add rsp, 24
  ret
_GLOBAL__sub_I_example.cpp: # @_GLOBAL__sub_I_example.cpp
  push rax
  mov edi, offset std::__ioinit
  call std::ios_base::Init::Init() [complete object constructor]
  mov edi, offset std::ios_base::Init::~Init() [complete object destructor]
  mov esi, offset std::__ioinit
  mov edx, offset __dso_handle
  pop rax
  jmp __cxa_atexit # TAILCALL

