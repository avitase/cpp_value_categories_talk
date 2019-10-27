# g92 -O3
  | f(int):
 3|   sub rsp, 8
 5|   call side_effect()
 7|   xor eax, eax
 7|   add rsp, 8
 7|   ret