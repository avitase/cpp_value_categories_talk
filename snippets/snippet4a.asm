# g92 -std=c++14 -fno-elide-constructors
S::S() [base object constructor]:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov esi, 97
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
  nop
  leave
  ret
S::S(S const&&):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov esi, 99
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
  nop
  leave
  ret
f():
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  lea rax, [rbp-1]
  mov rdi, rax
  call S::S() [complete object constructor]
  lea rdx, [rbp-1]
  mov rax, QWORD PTR [rbp-24]
  mov rsi, rdx
  mov rdi, rax
  call S::S(S const&&)
  mov rax, QWORD PTR [rbp-24]
  leave
  ret
.LC0:
  .string ", "
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  lea rax, [rbp-3]
  mov rdi, rax
  call S::S() [complete object constructor]
  lea rdx, [rbp-3]
  lea rax, [rbp-4]
  mov rsi, rdx
  mov rdi, rax
  call S::S(S const&&)
  mov esi, OFFSET FLAT:.LC0
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  lea rax, [rbp-2]
  mov rdi, rax
  call f()
  lea rdx, [rbp-2]
  lea rax, [rbp-5]
  mov rsi, rdx
  mov rdi, rax
  call S::S(S const&&)
  mov esi, OFFSET FLAT:.LC0
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  lea rax, [rbp-1]
  mov rdi, rax
  call f()
  lea rdx, [rbp-1]
  lea rax, [rbp-6]
  mov rsi, rdx
  mov rdi, rax
  call S::S(S const&&)
  mov eax, 0
  leave
  ret
__static_initialization_and_destruction_0(int, int):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], edi
  mov DWORD PTR [rbp-8], esi
  cmp DWORD PTR [rbp-4], 1
  jne .L9
  cmp DWORD PTR [rbp-8], 65535
  jne .L9
  mov edi, OFFSET FLAT:_ZStL8__ioinit
  call std::ios_base::Init::Init() [complete object constructor]
  mov edx, OFFSET FLAT:__dso_handle
  mov esi, OFFSET FLAT:_ZStL8__ioinit
  mov edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
  call __cxa_atexit
.L9:
  nop
  leave
  ret
_GLOBAL__sub_I_f():
  push rbp
  mov rbp, rsp
  mov esi, 65535
  mov edi, 1
  call __static_initialization_and_destruction_0(int, int)
  pop rbp
  ret
