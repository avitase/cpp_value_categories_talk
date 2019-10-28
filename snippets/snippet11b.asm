# g92 
  | Target::Target(Resource const&):
 7|   push rbp
 7|   mov rbp, rsp
 7|   sub rsp, 16
 7|   mov QWORD PTR [rbp-8], rdi
 7|   mov QWORD PTR [rbp-16], rsi
 7|   mov esi, 97
 7|   mov edi, OFFSET FLAT:_ZSt4cout
 7|   call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
 7|   nop
 7|   leave
 7|   ret
  | Target::Target(Resource&&):
 8|   push rbp
 8|   mov rbp, rsp
 8|   sub rsp, 16
 8|   mov QWORD PTR [rbp-8], rdi
 8|   mov QWORD PTR [rbp-16], rsi
[...]
