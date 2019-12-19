# clang900 -std=c++2a -stdlib=libc++
  | main: # @main
 4|   push rbp
 4|   mov rbp, rsp
 4|   xor eax, eax
 8|   mov rcx, qword ptr [.L__const.main.x_view]
 8|   mov qword ptr [rbp - 8], rcx
 9|   pop rbp
 9|   ret
  | main::x:
  |   .long 4 # 0x4
  |   .long 8 # 0x8
  |   .long 15 # 0xf
  |   .long 16 # 0x10
  |   .long 23 # 0x17
  |   .long 42 # 0x2a
  | 
  | .L__const.main.x_view:
  |   .quad main::x
  | 