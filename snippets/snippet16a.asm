# clang_concepts 
  | main: # @main
17|   push rbp
17|   mov rbp, rsp
17|   sub rsp, 32
18|   lea rdi, [rbp - 8]
18|   call ResourceManager::ResourceManager() [base object constructor]
19|   lea rdi, [rbp - 24]
19|   lea rsi, [rbp - 8]
19|   call Resource ResourceManager::visit<main::$_0>(main::$_0)
19|   lea rdi, [rbp - 16]
19|   lea rsi, [rbp - 24]
19|   call Target::Target(Resource const&)
19|   xor eax, eax
20|   add rsp, 32
20|   pop rbp
20|   ret
  | ResourceManager::ResourceManager() [base object constructor]: # @ResourceManager::ResourceManager() [base object constructor]
 7|   push rbp
[...]
