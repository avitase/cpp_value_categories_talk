# g92 -O0 -std=c++14 -fno-elide-constructors
  | S::S() [base object constructor]:
 5|   push rbp
 5|   mov rbp, rsp
 5|   sub rsp, 16
 5|   mov QWORD PTR [rbp-8], rdi
 5|   mov esi, 97
 5|   mov edi, OFFSET FLAT:_ZSt4cout
 5|   call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
 5|   nop
 5|   leave
 5|   ret
  | S::S(S const&&):
 7|   push rbp
 7|   mov rbp, rsp
 7|   sub rsp, 16
 7|   mov QWORD PTR [rbp-8], rdi
 7|   mov QWORD PTR [rbp-16], rsi
 7|   mov esi, 99
[...]