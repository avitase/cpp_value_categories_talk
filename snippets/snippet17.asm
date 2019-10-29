# clang900 -std=c++17
  | __cxx_global_var_init: # @__cxx_global_var_init
74|   push rbp
74|   mov rbp, rsp
74|   movabs rdi, offset std::__ioinit
74|   call std::ios_base::Init::Init() [complete object constructor]
74|   movabs rax, offset std::ios_base::Init::~Init() [complete object destructor]
74|   mov rdi, rax
74|   movabs rsi, offset std::__ioinit
74|   movabs rdx, offset __dso_handle
74|   call __cxa_atexit
74|   pop rbp
74|   ret
  | main: # @main
30|   push rbp
30|   mov rbp, rsp
30|   sub rsp, 64
31|   lea rdi, [rbp - 8]
31|   call ResourceManager::ResourceManager() [base object constructor]
[...]
