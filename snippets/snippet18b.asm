# clang_concepts 
  | main: # @main
15|   push rbp
15|   mov rbp, rsp
15|   sub rsp, 80
17|   lea rdi, [rbp - 8]
17|   call decltype(auto) ResourceManager::visit<main::$_0>(main::$_0)
17|   lea rdi, [rbp - 16]
17|   mov rsi, rax
17|   call Target::Target(Resource const&)
18|   lea rdi, [rbp - 8]
18|   call decltype(auto) ResourceManager::visit<main::$_1>(main::$_1)
18|   lea rdi, [rbp - 32]
18|   lea rsi, [rbp - 40]
18|   call Target::Target(Resource&&)
19|   lea rdi, [rbp - 8]
19|   call decltype(auto) ResourceManager::visit<main::$_2>(main::$_2)
19|   lea rdi, [rbp - 64]
19|   mov rsi, rax
[...]
