# g92 -O3 -std=c++2a
  | f():
 9|   push r12
 9|   mov r12, rdi
230|   call S::S() [complete object constructor]
230|   lea rdi, [r12+1]
230|   call S::S() [complete object constructor]
 9|   mov rax, r12
 9|   pop r12
 9|   ret
  | g1():
10|   push r12
10|   mov r12, rdi
10|   sub rsp, 16
230|   lea rdi, [rsp+14]
230|   call S::S() [complete object constructor]
230|   lea rdi, [rsp+15]
230|   call S::S() [complete object constructor]
10|   lea rsi, [rsp+14]
[...]
