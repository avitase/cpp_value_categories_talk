# clang900 -O0
  | main: # @main
14|   push rbp
14|   mov rbp, rsp
14|   sub rsp, 16
14|   mov dword ptr [rbp - 4], 0
15|   lea rdi, [rbp - 16]
15|   mov esi, 1
15|   mov edx, 2
15|   mov ecx, 3
15|   call S::S(int, int, int)
16|   lea rdi, [rbp - 16]
16|   call S::sum()
16|   mov dword ptr [rbp - 4], eax
17|   lea rdi, [rbp - 16]
17|   call S::~S() [base object destructor]
17|   mov eax, dword ptr [rbp - 4]
17|   add rsp, 16
17|   pop rbp
[...]
