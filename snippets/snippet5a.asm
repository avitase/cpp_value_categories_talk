# g92 -O0
f(int, int, int):
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-20], edi
  mov DWORD PTR [rbp-24], esi
  mov DWORD PTR [rbp-28], edx
  mov edx, DWORD PTR [rbp-20]
  mov eax, DWORD PTR [rbp-24]
  add edx, eax
  mov eax, DWORD PTR [rbp-28]
  add eax, edx
  mov DWORD PTR [rbp-4], eax
  mov eax, DWORD PTR [rbp-4]
  pop rbp
  ret
