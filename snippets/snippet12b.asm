# clang_concepts 
  | main: # @main
17|   push rbp
17|   mov rbp, rsp
17|   sub rsp, 48
19|   lea rdi, [rbp - 8]
19|   call Resource ResourceManager::visit<main::$_0>(main::$_0)
19|   lea rdi, [rbp - 16]
19|   lea rsi, [rbp - 24]
19|   call Target::Target(Resource&&)
19|   xor eax, eax
20|   add rsp, 48
20|   pop rbp
20|   ret
  | Resource ResourceManager::visit<main::$_0>(main::$_0): # @"Resource ResourceManager::visit<main::$_0>(main::$_0)"
 7|   push rbp
 7|   mov rbp, rsp
 7|   sub rsp, 32
 7|   mov qword ptr [rbp - 16], rdi
[...]
