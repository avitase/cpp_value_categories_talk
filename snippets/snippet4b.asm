# g92 -std=c++17
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
f():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call S::S() [complete object constructor]
  mov rax, QWORD PTR [rbp-8]
  leave
  ret
.LC0:
  .string ", "
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  lea rax, [rbp-1]
  mov rdi, rax
  call S::S() [complete object constructor]
  mov esi, OFFSET FLAT:.LC0
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  lea rax, [rbp-2]
  mov rdi, rax
  call f()
  mov esi, OFFSET FLAT:.LC0
  mov edi, OFFSET FLAT:_ZSt4cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  lea rax, [rbp-3]
  mov rdi, rax
  call f()
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
  jne .L8
  cmp DWORD PTR [rbp-8], 65535
  jne .L8
  mov edi, OFFSET FLAT:_ZStL8__ioinit
  call std::ios_base::Init::Init() [complete object constructor]
  mov edx, OFFSET FLAT:__dso_handle
  mov esi, OFFSET FLAT:_ZStL8__ioinit
  mov edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
  call __cxa_atexit
.L8:
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
