# g92 
  | f1():
10|   push rbp
10|   mov rbp, rsp
10|   sub rsp, 16
10|   mov QWORD PTR [rbp-8], rdi
10|   mov rax, QWORD PTR [rbp-8]
10|   mov rdi, rax
10|   call S::S() [complete object constructor]
10|   nop
10|   mov rax, QWORD PTR [rbp-8]
10|   leave
10|   ret
  | f2():
11|   push rbp
11|   mov rbp, rsp
11|   sub rsp, 32
11|   mov QWORD PTR [rbp-24], rdi
11|   lea rax, [rbp-1]
[...]
