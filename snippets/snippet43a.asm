# clang900 -O3 -std=c++2a -stdlib=libc++
  | get_size(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&): # @get_size(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)
1426|   movzx eax, byte ptr [rdi]
1426|   test al, 1
953|   je .LBB0_1
 0|   mov rax, qword ptr [rdi + 8]
 5|   ret
  | .LBB0_1:
 0|   shr rax
 5|   ret
  | get_size(std::__1::basic_string_view<char, std::__1::char_traits<char> >): # @get_size(std::__1::basic_string_view<char, std::__1::char_traits<char> >)
 8|   mov rax, rsi
 9|   ret
  | 