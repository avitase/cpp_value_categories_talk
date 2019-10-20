# g92 -O0
f(int):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov DWORD PTR [rbp-20], edi
  mov eax, DWORD PTR [rbp-20]
  mov DWORD PTR [rbp-4], eax
  call side_effect()
  mov eax, DWORD PTR [rbp-4]
  sub eax, DWORD PTR [rbp-20]
  leave
  ret
