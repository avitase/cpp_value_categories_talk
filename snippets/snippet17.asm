# g71 -std=c++17
  | Resource::Resource() [base object constructor]:
 4|   push rbp
 4|   mov rbp, rsp
 4|   mov QWORD PTR [rbp-8], rdi
 4|   nop
 4|   pop rbp
 4|   ret
  | Resource::Resource(Resource const&):
 5|   push rbp
 5|   mov rbp, rsp
 5|   sub rsp, 16
 5|   mov QWORD PTR [rbp-8], rdi
 5|   mov QWORD PTR [rbp-16], rsi
 5|   mov esi, 97
 5|   mov edi, OFFSET FLAT:_ZSt4cout
 5|   call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char)
 5|   nop
 5|   leave
[...]
