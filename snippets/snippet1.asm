# clang_trunk -std=c++2a -O3
f(int): # @f(int)
  push rax
  call side_effect()
  xor eax, eax
  pop rcx
  ret
g(int const&): # @g(int const&)
  push rbp
  push rbx
  push rax
  mov rbx, rdi
  mov ebp, dword ptr [rdi]
  call side_effect()
  sub ebp, dword ptr [rbx]
  mov eax, ebp
  add rsp, 8
  pop rbx
  pop rbp
  ret

