# clang900 -O3 -std=c++2a
  | get_size(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&): # @get_size(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
931|   mov rax, qword ptr [rdi + 8]
 5|   ret
  | get_size(std::basic_string_view<char, std::char_traits<char> >): # @get_size(std::basic_string_view<char, std::char_traits<char> >)
 8|   mov rax, rdi
 9|   ret
  | 