# g92 -O0
  | f(int const&):
 3|   push rbp
 3|   mov rbp, rsp
 3|   sub rsp, 32
 3|   mov QWORD PTR [rbp-24], rdi
 4|   mov rax, QWORD PTR [rbp-24]
 4|   mov eax, DWORD PTR [rax]
 4|   mov DWORD PTR [rbp-4], eax
 5|   call side_effect()
 6|   mov rax, QWORD PTR [rbp-24]
 6|   mov eax, DWORD PTR [rax]
 6|   mov edx, DWORD PTR [rbp-4]
 6|   sub edx, eax
 6|   mov eax, edx
 7|   leave
 7|   ret