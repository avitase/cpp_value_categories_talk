# clang_concepts 
  | main: # @main
14|   push rbp
14|   mov rbp, rsp
14|   sub rsp, 80
16|   lea rdi, [rbp - 8]
16|   call decltype(auto) ResourceManager::visit<main::$_0>(main::$_0)
16|   lea rdi, [rbp - 16]
16|   mov rsi, rax
16|   call Target::Target(Resource const&)
17|   lea rdi, [rbp - 8]
17|   call decltype(auto) ResourceManager::visit<main::$_1>(main::$_1)
17|   lea rdi, [rbp - 32]
17|   lea rsi, [rbp - 40]
17|   call Target::Target(Resource&&)
18|   lea rdi, [rbp - 8]
18|   call decltype(auto) ResourceManager::visit<main::$_2>(main::$_2)
18|   lea rdi, [rbp - 64]
18|   mov rsi, rax
[...]