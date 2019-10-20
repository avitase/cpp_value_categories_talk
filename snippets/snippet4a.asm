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
[...]
