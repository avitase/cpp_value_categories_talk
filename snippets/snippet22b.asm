# g92 -std=c++2a
  | f():
 5|   push rbp
 5|   mov rbp, rsp
 6|   mov DWORD PTR [rbp-4], 42
 7|   mov eax, DWORD PTR [rbp-4]
 8|   pop rbp
 8|   ret
  | main:
10|   push rbp
10|   mov rbp, rsp
10|   sub rsp, 16
11|   call f()
11|   mov DWORD PTR [rbp-12], eax
11|   lea rax, [rbp-12]
11|   mov QWORD PTR [rbp-8], rax
12|   mov rax, QWORD PTR [rbp-8]
12|   mov eax, DWORD PTR [rax]
13|   leave
13|   ret