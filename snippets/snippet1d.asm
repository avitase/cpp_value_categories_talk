# g92 -O3
f(int const&):
  push rbp
  push rbx
  mov rbx, rdi
  sub rsp, 8
  mov ebp, DWORD PTR [rdi]
  call side_effect()
  mov eax, ebp
  sub eax, DWORD PTR [rbx]
  add rsp, 8
  pop rbx
  pop rbp
  ret
