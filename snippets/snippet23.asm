# g92 -O3
  | f():
 8|   push r12
 8|   mov r12, rdi
 8|   sub rsp, 16
 9|   lea rdi, [rsp+15]
 9|   call S::S() [complete object constructor]
11|   lea rsi, [rsp+15]
11|   mov rdi, r12
11|   call S::S(S const&)
 9|   lea rdi, [rsp+15]
 9|   call S::~S() [complete object destructor]
12|   add rsp, 16
12|   mov rax, r12
12|   pop r12
12|   ret