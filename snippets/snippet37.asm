# g92 -std=c++17
  | f(S&):
 6|   push rbp
 6|   mov rbp, rsp
 6|   sub rsp, 16
 6|   mov QWORD PTR [rbp-8], rdi
 6|   mov esi, 97
 6|   mov edi, OFFSET FLAT:_ZSt4cout
 6|   call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
 6|   nop
 6|   leave
 6|   ret
  | f(S&&):
 7|   push rbp
 7|   mov rbp, rsp
 7|   sub rsp, 16
 7|   mov QWORD PTR [rbp-8], rdi
 7|   mov esi, 98
 7|   mov edi, OFFSET FLAT:_ZSt4cout
[...]
