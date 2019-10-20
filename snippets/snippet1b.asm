# g92 -O3
f(int):
  sub rsp, 8
  call side_effect()
  xor eax, eax
  add rsp, 8
  ret
