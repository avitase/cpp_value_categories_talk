# clang900 -std=c++2a -O3
  | main: # @main
27|   push rax
27|   mov byte ptr [rsp + 5], 98
27|   lea rsi, [rsp + 5]
518|   mov edi, offset std::cout
518|   mov edx, 1
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
 0|   mov byte ptr [rsp + 6], 97
 0|   lea rsi, [rsp + 6]
518|   mov edi, offset std::cout
518|   mov edx, 1
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
 0|   mov byte ptr [rsp + 7], 97
 0|   lea rsi, [rsp + 7]
518|   mov edi, offset std::cout
518|   mov edx, 1
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
 0|   mov byte ptr [rsp + 4], 99
[...]
