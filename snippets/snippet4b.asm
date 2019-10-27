# g92 -O0 -std=c++17
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
  | f():
12|   push rbp
12|   mov rbp, rsp
12|   sub rsp, 16
12|   mov QWORD PTR [rbp-8], rdi
12|   mov rax, QWORD PTR [rbp-8]
12|   mov rdi, rax
[...]
