# g92 -O3
  | f1(S):
 8|   push r12
 8|   mov r12, rdi
 8|   call S::S(S const&&)
 8|   mov rax, r12
 8|   pop r12
 8|   ret
  | f2(S&):
 9|   push r12
 9|   mov r12, rdi
 9|   call S::S(S const&)
 9|   mov rax, r12
 9|   pop r12
 9|   ret
  | f3(S const&):
  |   push r12
  |   mov r12, rdi
  |   call S::S(S const&)
[...]
