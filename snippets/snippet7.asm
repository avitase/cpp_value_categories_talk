# g92 -O0 -fno-elide-constructors -std=c++14
  | S::S(int):
 3|   push rbp
 3|   mov rbp, rsp
 3|   mov QWORD PTR [rbp-8], rdi
 3|   mov DWORD PTR [rbp-12], esi
 3|   mov rax, QWORD PTR [rbp-8]
 3|   mov edx, DWORD PTR [rbp-12]
 3|   mov DWORD PTR [rax], edx
 3|   nop
 3|   pop rbp
 3|   ret
  | S::S(S const&):
 4|   push rbp
 4|   mov rbp, rsp
 4|   mov QWORD PTR [rbp-8], rdi
 4|   mov QWORD PTR [rbp-16], rsi
 4|   mov rax, QWORD PTR [rbp-16]
 4|   mov edx, DWORD PTR [rax]
[...]
