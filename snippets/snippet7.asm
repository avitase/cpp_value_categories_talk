# g92 -O0 -fno-elide-constructors -std=c++14
  | f():
 9|   push rbp
 9|   mov rbp, rsp
 9|   sub rsp, 32
 9|   mov QWORD PTR [rbp-24], rdi
10|   lea rax, [rbp-4]
10|   mov esi, 42
10|   mov rdi, rax
10|   call S::S(int)
10|   lea rdx, [rbp-4]
10|   mov rax, QWORD PTR [rbp-24]
10|   mov rsi, rdx
10|   mov rdi, rax
10|   call S::S(S&&)
10|   lea rax, [rbp-4]
10|   mov rdi, rax
10|   call S::~S() [complete object destructor]
10|   nop
[...]
