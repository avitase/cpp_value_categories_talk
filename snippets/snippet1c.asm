# g92 -O0
f(int const&):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  mov rax, QWORD PTR [rbp-24]
  mov eax, DWORD PTR [rax]
  mov DWORD PTR [rbp-4], eax
  call side_effect()
  mov rax, QWORD PTR [rbp-24]
  mov eax, DWORD PTR [rax]
  mov edx, DWORD PTR [rbp-4]
  sub edx, eax
  mov eax, edx
  leave
  ret
