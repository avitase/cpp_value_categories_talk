# g92 -std=c++17
  | std::char_traits<char>::length(char const*):
329|   push rbp
329|   mov rbp, rsp
329|   sub rsp, 32
329|   mov QWORD PTR [rbp-24], rdi
329|   mov rax, QWORD PTR [rbp-24]
329|   mov QWORD PTR [rbp-8], rax
236|   mov eax, 0
332|   test al, al
332|   je .L3
333|   mov rax, QWORD PTR [rbp-24]
333|   mov rdi, rax
333|   call __gnu_cxx::char_traits<char>::length(char const*)
333|   jmp .L4
  | .L3:
335|   mov rax, QWORD PTR [rbp-24]
335|   mov rcx, -1
335|   mov rdx, rax
[...]
