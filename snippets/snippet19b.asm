# g92 -std=c++2a -O3
  | main:
27|   sub rsp, 24
518|   mov edx, 1
518|   mov edi, OFFSET FLAT:_ZSt4cout
518|   lea rsi, [rsp+15]
518|   mov BYTE PTR [rsp+15], 98
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
518|   lea rsi, [rsp+15]
518|   mov edx, 1
518|   mov edi, OFFSET FLAT:_ZSt4cout
518|   mov BYTE PTR [rsp+15], 97
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
518|   lea rsi, [rsp+15]
518|   mov edx, 1
518|   mov edi, OFFSET FLAT:_ZSt4cout
518|   mov BYTE PTR [rsp+15], 97
518|   call std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)
518|   lea rsi, [rsp+15]
[...]