# g92 -O3
  | f1(bool):
 8|   push r12
 8|   mov r12, rdi
 8|   test sil, sil
 8|   je .L2
 8|   mov esi, 1
 8|   call S::S(int)
 8|   mov rax, r12
 8|   pop r12
 8|   ret
  | .L2:
 8|   mov esi, 2
 8|   call S::S(int)
 8|   mov rax, r12
 8|   pop r12
 8|   ret
  | f2(bool):
 9|   push r12
[...]
