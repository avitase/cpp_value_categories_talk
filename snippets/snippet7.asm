# g92 -O0 -fno-elide-constructors -std=c++14
S::S(int):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov DWORD PTR [rbp-12], esi
  mov rax, QWORD PTR [rbp-8]
  mov edx, DWORD PTR [rbp-12]
  mov DWORD PTR [rax], edx
  nop
  pop rbp
  ret
S::S(S const&):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-8], rdi
  mov QWORD PTR [rbp-16], rsi
  mov rax, QWORD PTR [rbp-16]
  mov edx, DWORD PTR [rax]
[...]
