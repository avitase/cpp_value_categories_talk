# clang_concepts 
  | main: # @main
15|   push rbp
15|   mov rbp, rsp
15|   sub rsp, 48
17|   lea rdi, [rbp - 16]
17|   lea rsi, [rbp - 8]
17|   call auto make_target<Resource&>(Resource&)
17|   lea rdi, [rbp - 16]
17|   call std::__1::unique_ptr<Target, std::__1::default_delete<Target> >::~unique_ptr() [base object destructor]
18|   lea rdi, [rbp - 24]
18|   lea rsi, [rbp - 32]
18|   call auto make_target<Resource>(Resource&&)
18|   lea rdi, [rbp - 24]
18|   call std::__1::unique_ptr<Target, std::__1::default_delete<Target> >::~unique_ptr() [base object destructor]
19|   lea rdi, [rbp - 8]
19|   call std::__1::remove_reference<Resource&>::type&& std::__1::move<Resource&>(Resource&)
19|   lea rdi, [rbp - 40]
19|   mov rsi, rax
[...]