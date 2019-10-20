# g92 -O0
f(int):
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-4], edi
  mov eax, DWORD PTR [rbp-4]
  add eax, 1
  pop rbp
  ret
g(int):
  push rbp
  mov rbp, rsp
  sub rsp, 8
  mov DWORD PTR [rbp-4], edi
  mov eax, DWORD PTR [rbp-4]
  add eax, 2
  mov edi, eax
  call f(int)
  leave
  ret
