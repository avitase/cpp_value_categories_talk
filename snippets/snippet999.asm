# g92 -O3
.LC0:
  .string "Hello World"
main:
  sub rsp, 8
  mov edi, OFFSET FLAT:.LC0
  call puts
  xor eax, eax
  add rsp, 8
  ret
