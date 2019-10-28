# clang_concepts 
  | main: # @main
17|   push rbp
17|   mov rbp, rsp
17|   sub rsp, 80
19|   lea rdi, [rbp - 8]
19|   call decltype(auto) ResourceManager::visit<main::$_0>(main::$_0)
19|   lea rdi, [rbp - 16]
19|   mov rsi, rax
19|   call Target::Target(Resource const&)
20|   lea rdi, [rbp - 8]
20|   call decltype(auto) ResourceManager::visit<main::$_1>(main::$_1)
20|   lea rdi, [rbp - 32]
20|   lea rsi, [rbp - 40]
20|   call Target::Target(Resource&&)
21|   lea rdi, [rbp - 8]
21|   call decltype(auto) ResourceManager::visit<main::$_2>(main::$_2)
21|   lea rdi, [rbp - 64]
21|   mov rsi, rax
21|   call Target::Target(Resource&&)
21|   xor eax, eax
22|   add rsp, 80
22|   pop rbp
22|   ret
  | decltype(auto) ResourceManager::visit<main::$_0>(main::$_0): # @"decltype(auto) ResourceManager::visit<main::$_0>(main::$_0)"
11|   push rbp
11|   mov rbp, rsp
11|   sub rsp, 32
11|   mov qword ptr [rbp - 16], rdi
11|   mov rsi, qword ptr [rbp - 16]
12|   lea rdi, [rbp - 8]
12|   call main::$_0::operator()(Resource&) const
12|   mov qword ptr [rbp - 24], rax
13|   mov rax, qword ptr [rbp - 24]
13|   add rsp, 32
13|   pop rbp
13|   ret
  | Target::Target(Resource const&): # @Target::Target(Resource const&)
 5|   push rbp
 5|   mov rbp, rsp
 5|   sub rsp, 16
 5|   mov qword ptr [rbp - 8], rdi
 5|   mov qword ptr [rbp - 16], rsi
 5|   movabs rdi, offset std::__1::cout
 5|   mov esi, 97
 5|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<< <std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char)
 5|   add rsp, 16
 5|   pop rbp
 5|   ret
  | decltype(auto) ResourceManager::visit<main::$_1>(main::$_1): # @"decltype(auto) ResourceManager::visit<main::$_1>(main::$_1)"
11|   push rbp
11|   mov rbp, rsp
11|   sub rsp, 32
11|   mov qword ptr [rbp - 16], rdi
11|   mov rsi, qword ptr [rbp - 16]
12|   lea rdi, [rbp - 8]
12|   call main::$_1::operator()(Resource&) const
13|   add rsp, 32
13|   pop rbp
13|   ret
  | Target::Target(Resource&&): # @Target::Target(Resource&&)
 6|   push rbp
 6|   mov rbp, rsp
 6|   sub rsp, 16
 6|   mov qword ptr [rbp - 8], rdi
 6|   mov qword ptr [rbp - 16], rsi
 6|   movabs rdi, offset std::__1::cout
 6|   mov esi, 98
 6|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<< <std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char)
 6|   add rsp, 16
 6|   pop rbp
 6|   ret
  | decltype(auto) ResourceManager::visit<main::$_2>(main::$_2): # @"decltype(auto) ResourceManager::visit<main::$_2>(main::$_2)"
11|   push rbp
11|   mov rbp, rsp
11|   sub rsp, 32
11|   mov qword ptr [rbp - 16], rdi
11|   mov rsi, qword ptr [rbp - 16]
12|   lea rdi, [rbp - 8]
12|   call main::$_2::operator()(Resource&) const
12|   mov qword ptr [rbp - 24], rax
13|   mov rax, qword ptr [rbp - 24]
13|   add rsp, 32
13|   pop rbp
13|   ret
  | main::$_0::operator()(Resource&) const: # @"main::$_0::operator()(Resource&) const"
19|   push rbp
19|   mov rbp, rsp
19|   mov qword ptr [rbp - 8], rdi
19|   mov qword ptr [rbp - 16], rsi
19|   mov rax, qword ptr [rbp - 16]
19|   pop rbp
19|   ret
  | std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<< <std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char): # @std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::operator<< <std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char)
794|   push rbp
794|   mov rbp, rsp
794|   sub rsp, 16
794|   mov qword ptr [rbp - 8], rdi
794|   mov byte ptr [rbp - 9], sil
795|   mov rdi, qword ptr [rbp - 8]
795|   lea rsi, [rbp - 9]
795|   mov edx, 1
795|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long)
795|   add rsp, 16
795|   pop rbp
795|   ret
  | std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long): # @std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long)
721|   push rbp
721|   mov rbp, rsp
721|   sub rsp, 160
721|   mov qword ptr [rbp - 8], rdi
721|   mov qword ptr [rbp - 16], rsi
721|   mov qword ptr [rbp - 24], rdx
726|   mov rsi, qword ptr [rbp - 8]
726|   lea rdi, [rbp - 40]
726|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::sentry(std::__1::basic_ostream<char, std::__1::char_traits<char> >&)
726|   jmp .LBB8_1
  | .LBB8_1:
 0|   lea rdi, [rbp - 40]
727|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::operator bool() const
727|   mov byte ptr [rbp - 73], al # 1-byte Spill
727|   jmp .LBB8_2
  | .LBB8_2:
 0|   mov al, byte ptr [rbp - 73] # 1-byte Reload
727|   test al, 1
727|   jne .LBB8_3
727|   jmp .LBB8_18
  | .LBB8_3:
730|   mov rsi, qword ptr [rbp - 8]
730|   lea rdi, [rbp - 72]
730|   call std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::ostreambuf_iterator(std::__1::basic_ostream<char, std::__1::char_traits<char> >&)
731|   mov rsi, qword ptr [rbp - 16]
732|   mov rax, qword ptr [rbp - 8]
732|   mov rcx, qword ptr [rax]
732|   mov rcx, qword ptr [rcx - 24]
732|   add rax, rcx
732|   mov rdi, rax
732|   mov qword ptr [rbp - 88], rsi # 8-byte Spill
732|   call std::__1::ios_base::flags() const
732|   mov dword ptr [rbp - 92], eax # 4-byte Spill
732|   jmp .LBB8_4
  | .LBB8_4:
 0|   mov eax, dword ptr [rbp - 92] # 4-byte Reload
732|   and eax, 176
732|   cmp eax, 32
732|   jne .LBB8_6
733|   mov rax, qword ptr [rbp - 16]
733|   add rax, qword ptr [rbp - 24]
733|   mov qword ptr [rbp - 104], rax # 8-byte Spill
732|   jmp .LBB8_7
  | .LBB8_6:
734|   mov rax, qword ptr [rbp - 16]
734|   mov qword ptr [rbp - 104], rax # 8-byte Spill
  | .LBB8_7:
 0|   mov rax, qword ptr [rbp - 104] # 8-byte Reload
735|   mov rcx, qword ptr [rbp - 16]
735|   mov rdx, qword ptr [rbp - 24]
735|   add rcx, rdx
736|   mov rdx, qword ptr [rbp - 8]
736|   mov rsi, qword ptr [rdx]
736|   mov rsi, qword ptr [rsi - 24]
736|   add rdx, rsi
737|   mov rdi, rdx
737|   mov qword ptr [rbp - 112], rax # 8-byte Spill
737|   mov qword ptr [rbp - 120], rcx # 8-byte Spill
737|   mov qword ptr [rbp - 128], rdx # 8-byte Spill
737|   call std::__1::basic_ios<char, std::__1::char_traits<char> >::fill() const
737|   mov byte ptr [rbp - 129], al # 1-byte Spill
737|   jmp .LBB8_8
  | .LBB8_8:
730|   mov rdi, qword ptr [rbp - 72]
730|   mov al, byte ptr [rbp - 129] # 1-byte Reload
730|   movsx r9d, al
730|   mov rsi, qword ptr [rbp - 88] # 8-byte Reload
730|   mov rdx, qword ptr [rbp - 112] # 8-byte Reload
730|   mov rcx, qword ptr [rbp - 120] # 8-byte Reload
730|   mov r8, qword ptr [rbp - 128] # 8-byte Reload
730|   call std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char)
730|   mov qword ptr [rbp - 144], rax # 8-byte Spill
730|   jmp .LBB8_9
  | .LBB8_9:
 0|   mov rax, qword ptr [rbp - 144] # 8-byte Reload
730|   mov qword ptr [rbp - 64], rax
737|   lea rdi, [rbp - 64]
737|   call std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::failed() const
730|   test al, 1
730|   jne .LBB8_10
730|   jmp .LBB8_17
  | .LBB8_10:
738|   mov rax, qword ptr [rbp - 8]
738|   mov rcx, qword ptr [rax]
738|   mov rcx, qword ptr [rcx - 24]
738|   add rax, rcx
738|   mov esi, 5
738|   mov rdi, rax
738|   call std::__1::basic_ios<char, std::__1::char_traits<char> >::setstate(unsigned int)
738|   jmp .LBB8_11
  | .LBB8_11:
738|   jmp .LBB8_17
748|   mov qword ptr [rbp - 48], rax
748|   mov dword ptr [rbp - 52], edx
748|   jmp .LBB8_14
748|   mov qword ptr [rbp - 48], rax
748|   mov dword ptr [rbp - 52], edx
741|   lea rdi, [rbp - 40]
741|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::~sentry() [complete object destructor]
  | .LBB8_14:
741|   mov rdi, qword ptr [rbp - 48]
741|   call __cxa_begin_catch
744|   mov rcx, qword ptr [rbp - 8]
744|   mov rdx, qword ptr [rcx]
744|   mov rdx, qword ptr [rdx - 24]
744|   add rcx, rdx
744|   mov rdi, rcx
744|   mov qword ptr [rbp - 152], rax # 8-byte Spill
744|   call std::__1::ios_base::__set_badbit_and_consider_rethrow()
744|   jmp .LBB8_15
  | .LBB8_15:
745|   call __cxa_end_catch
  | .LBB8_16:
747|   mov rax, qword ptr [rbp - 8]
747|   add rsp, 160
747|   pop rbp
747|   ret
  | .LBB8_17:
739|   jmp .LBB8_18
  | .LBB8_18:
741|   lea rdi, [rbp - 40]
741|   call std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::~sentry() [complete object destructor]
741|   jmp .LBB8_16
748|   mov qword ptr [rbp - 48], rax
748|   mov dword ptr [rbp - 52], edx
745|   call __cxa_end_catch
745|   jmp .LBB8_20
  | .LBB8_20:
745|   jmp .LBB8_21
  | .LBB8_21:
745|   mov rdi, qword ptr [rbp - 48]
745|   call _Unwind_Resume
745|   mov rdi, rax
745|   mov dword ptr [rbp - 156], edx # 4-byte Spill
745|   call __clang_call_terminate
  | std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::operator bool() const: # @std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::operator bool() const
259|   push rbp
259|   mov rbp, rsp
259|   mov qword ptr [rbp - 8], rdi
259|   mov rax, qword ptr [rbp - 8]
259|   mov cl, byte ptr [rax]
259|   and cl, 1
259|   movzx eax, cl
259|   pop rbp
259|   ret
  | std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char): # @std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char)
1381|   push rbp
1381|   mov rbp, rsp
1381|   sub rsp, 144
1381|   mov qword ptr [rbp - 16], rdi
1381|   mov qword ptr [rbp - 24], rsi
1381|   mov qword ptr [rbp - 32], rdx
1381|   mov qword ptr [rbp - 40], rcx
1381|   mov qword ptr [rbp - 48], r8
1381|   mov byte ptr [rbp - 49], r9b
1382|   cmp qword ptr [rbp - 16], 0
1382|   jne .LBB10_2
1383|   mov rax, qword ptr [rbp - 16]
1383|   mov qword ptr [rbp - 8], rax
1383|   jmp .LBB10_22
  | .LBB10_2:
1384|   mov rax, qword ptr [rbp - 40]
1384|   mov rcx, qword ptr [rbp - 24]
1384|   sub rax, rcx
1384|   mov qword ptr [rbp - 64], rax
1385|   mov rdi, qword ptr [rbp - 48]
1385|   call std::__1::ios_base::width() const
1385|   mov qword ptr [rbp - 72], rax
1386|   mov rax, qword ptr [rbp - 72]
1386|   cmp rax, qword ptr [rbp - 64]
1386|   jle .LBB10_4
1387|   mov rax, qword ptr [rbp - 64]
1387|   mov rcx, qword ptr [rbp - 72]
1387|   sub rcx, rax
1387|   mov qword ptr [rbp - 72], rcx
1387|   jmp .LBB10_5
  | .LBB10_4:
1389|   mov qword ptr [rbp - 72], 0
  | .LBB10_5:
1390|   mov rax, qword ptr [rbp - 32]
1390|   mov rcx, qword ptr [rbp - 24]
1390|   sub rax, rcx
1390|   mov qword ptr [rbp - 80], rax
1391|   cmp qword ptr [rbp - 80], 0
1391|   jle .LBB10_9
1393|   mov rdi, qword ptr [rbp - 16]
1393|   mov rsi, qword ptr [rbp - 24]
1393|   mov rdx, qword ptr [rbp - 80]
1393|   call std::__1::basic_streambuf<char, std::__1::char_traits<char> >::sputn(char const*, long)
1393|   cmp rax, qword ptr [rbp - 80]
1393|   je .LBB10_8
1395|   mov qword ptr [rbp - 16], 0
1396|   mov rax, qword ptr [rbp - 16]
1396|   mov qword ptr [rbp - 8], rax
1396|   jmp .LBB10_22
  | .LBB10_8:
1398|   jmp .LBB10_9
  | .LBB10_9:
1399|   cmp qword ptr [rbp - 72], 0
1399|   jle .LBB10_17
1401|   mov rsi, qword ptr [rbp - 72]
1401|   movsx edx, byte ptr [rbp - 49]
1401|   lea rax, [rbp - 104]
1401|   mov rdi, rax
1401|   mov qword ptr [rbp - 128], rax # 8-byte Spill
1401|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string(unsigned long, char)
1402|   mov rdi, qword ptr [rbp - 16]
1402|   mov rax, qword ptr [rbp - 128] # 8-byte Reload
1402|   mov qword ptr [rbp - 136], rdi # 8-byte Spill
1402|   mov rdi, rax
1402|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::data()
1402|   mov rdx, qword ptr [rbp - 72]
1402|   mov rdi, qword ptr [rbp - 136] # 8-byte Reload
1402|   mov rsi, rax
1402|   call std::__1::basic_streambuf<char, std::__1::char_traits<char> >::sputn(char const*, long)
1402|   mov qword ptr [rbp - 144], rax # 8-byte Spill
1402|   jmp .LBB10_11
  | .LBB10_11:
 0|   mov rax, qword ptr [rbp - 144] # 8-byte Reload
1402|   cmp rax, qword ptr [rbp - 72]
1402|   je .LBB10_14
1404|   mov qword ptr [rbp - 16], 0
1405|   mov rax, qword ptr [rbp - 16]
1405|   mov qword ptr [rbp - 8], rax
1405|   mov dword ptr [rbp - 120], 1
1405|   jmp .LBB10_15
1419|   mov qword ptr [rbp - 112], rax
1419|   mov dword ptr [rbp - 116], edx
1407|   lea rdi, [rbp - 104]
1407|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::~basic_string() [complete object destructor]
1407|   jmp .LBB10_23
  | .LBB10_14:
1407|   mov dword ptr [rbp - 120], 0
  | .LBB10_15:
 0|   lea rdi, [rbp - 104]
1407|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::~basic_string() [complete object destructor]
1407|   mov eax, dword ptr [rbp - 120]
1407|   test eax, eax
1407|   je .LBB10_16
1407|   jmp .LBB10_25
  | .LBB10_25:
 0|   jmp .LBB10_22
  | .LBB10_16:
1407|   jmp .LBB10_17
  | .LBB10_17:
1408|   mov rax, qword ptr [rbp - 40]
1408|   mov rcx, qword ptr [rbp - 32]
1408|   sub rax, rcx
1408|   mov qword ptr [rbp - 80], rax
1409|   cmp qword ptr [rbp - 80], 0
1409|   jle .LBB10_21
1411|   mov rdi, qword ptr [rbp - 16]
1411|   mov rsi, qword ptr [rbp - 32]
1411|   mov rdx, qword ptr [rbp - 80]
1411|   call std::__1::basic_streambuf<char, std::__1::char_traits<char> >::sputn(char const*, long)
1411|   cmp rax, qword ptr [rbp - 80]
1411|   je .LBB10_20
1413|   mov qword ptr [rbp - 16], 0
1414|   mov rax, qword ptr [rbp - 16]
1414|   mov qword ptr [rbp - 8], rax
1414|   jmp .LBB10_22
  | .LBB10_20:
1416|   jmp .LBB10_21
  | .LBB10_21:
 0|   xor eax, eax
 0|   mov esi, eax
1417|   mov rdi, qword ptr [rbp - 48]
1417|   call std::__1::ios_base::width(long)
1418|   mov rcx, qword ptr [rbp - 16]
1418|   mov qword ptr [rbp - 8], rcx
  | .LBB10_22:
1419|   mov rax, qword ptr [rbp - 8]
1419|   add rsp, 144
1419|   pop rbp
1419|   ret
  | .LBB10_23:
1407|   mov rdi, qword ptr [rbp - 112]
1407|   call _Unwind_Resume
  | std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::ostreambuf_iterator(std::__1::basic_ostream<char, std::__1::char_traits<char> >&): # @std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::ostreambuf_iterator(std::__1::basic_ostream<char, std::__1::char_traits<char> >&)
1095|   push rbp
1095|   mov rbp, rsp
1095|   sub rsp, 48
1095|   mov qword ptr [rbp - 8], rdi
1095|   mov qword ptr [rbp - 16], rsi
1095|   mov rax, qword ptr [rbp - 8]
1095|   mov rcx, qword ptr [rbp - 16]
1095|   mov rdx, qword ptr [rcx]
1095|   mov rdx, qword ptr [rdx - 24]
1095|   add rcx, rdx
1095|   mov rdi, rcx
1095|   mov qword ptr [rbp - 24], rax # 8-byte Spill
1095|   call std::__1::basic_ios<char, std::__1::char_traits<char> >::rdbuf() const
1095|   mov qword ptr [rbp - 32], rax # 8-byte Spill
1095|   jmp .LBB11_1
  | .LBB11_1:
 0|   mov rax, qword ptr [rbp - 24] # 8-byte Reload
 0|   mov rcx, qword ptr [rbp - 32] # 8-byte Reload
1095|   mov qword ptr [rax], rcx
1095|   add rsp, 48
1095|   pop rbp
1095|   ret
1095|   mov rdi, rax
1095|   mov dword ptr [rbp - 36], edx # 4-byte Spill
1095|   call __clang_call_terminate
  | std::__1::ios_base::flags() const: # @std::__1::ios_base::flags() const
459|   push rbp
459|   mov rbp, rsp
459|   mov qword ptr [rbp - 8], rdi
459|   mov rax, qword ptr [rbp - 8]
460|   mov eax, dword ptr [rax + 8]
460|   pop rbp
460|   ret
  | std::__1::basic_ios<char, std::__1::char_traits<char> >::fill() const: # @std::__1::basic_ios<char, std::__1::char_traits<char> >::fill() const
784|   push rbp
784|   mov rbp, rsp
784|   sub rsp, 16
784|   mov qword ptr [rbp - 8], rdi
784|   mov rax, qword ptr [rbp - 8]
784|   mov qword ptr [rbp - 16], rax # 8-byte Spill
785|   call std::__1::char_traits<char>::eof()
785|   mov rcx, qword ptr [rbp - 16] # 8-byte Reload
785|   mov esi, dword ptr [rcx + 144]
785|   mov edi, eax
785|   call std::__1::char_traits<char>::eq_int_type(int, int)
785|   test al, 1
785|   jne .LBB13_1
785|   jmp .LBB13_2
  | .LBB13_1:
 0|   mov rdi, qword ptr [rbp - 16] # 8-byte Reload
786|   mov esi, 32
786|   call std::__1::basic_ios<char, std::__1::char_traits<char> >::widen(char) const
786|   movsx ecx, al
786|   mov rdx, qword ptr [rbp - 16] # 8-byte Reload
786|   mov dword ptr [rdx + 144], ecx
  | .LBB13_2:
 0|   mov rax, qword ptr [rbp - 16] # 8-byte Reload
787|   mov ecx, dword ptr [rax + 144]
787|   movsx edx, cl
787|   mov eax, edx
787|   add rsp, 16
787|   pop rbp
787|   ret
  | std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::failed() const: # @std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >::failed() const
1107|   push rbp
1107|   mov rbp, rsp
1107|   mov qword ptr [rbp - 8], rdi
1107|   mov rax, qword ptr [rbp - 8]
1107|   cmp qword ptr [rax], 0
1107|   sete cl
1107|   and cl, 1
1107|   movzx eax, cl
1107|   pop rbp
1107|   ret
  | std::__1::basic_ios<char, std::__1::char_traits<char> >::setstate(unsigned int): # @std::__1::basic_ios<char, std::__1::char_traits<char> >::setstate(unsigned int)
632|   push rbp
632|   mov rbp, rsp
632|   sub rsp, 16
632|   mov qword ptr [rbp - 8], rdi
632|   mov dword ptr [rbp - 12], esi
632|   mov rax, qword ptr [rbp - 8]
632|   mov esi, dword ptr [rbp - 12]
632|   mov rdi, rax
632|   call std::__1::ios_base::setstate(unsigned int)
632|   add rsp, 16
632|   pop rbp
632|   ret
  | __clang_call_terminate: # @__clang_call_terminate
  |   push rax
  |   call __cxa_begin_catch
  |   mov qword ptr [rsp], rax # 8-byte Spill
  |   call std::terminate()
  | std::__1::ios_base::width() const: # @std::__1::ios_base::width() const
521|   push rbp
521|   mov rbp, rsp
521|   mov qword ptr [rbp - 8], rdi
521|   mov rax, qword ptr [rbp - 8]
522|   mov rax, qword ptr [rax + 24]
522|   pop rbp
522|   ret
  | std::__1::basic_streambuf<char, std::__1::char_traits<char> >::sputn(char const*, long): # @std::__1::basic_streambuf<char, std::__1::char_traits<char> >::sputn(char const*, long)
229|   push rbp
229|   mov rbp, rsp
229|   sub rsp, 32
229|   mov qword ptr [rbp - 8], rdi
229|   mov qword ptr [rbp - 16], rsi
229|   mov qword ptr [rbp - 24], rdx
229|   mov rax, qword ptr [rbp - 8]
229|   mov rsi, qword ptr [rbp - 16]
229|   mov rdx, qword ptr [rbp - 24]
229|   mov rcx, qword ptr [rax]
229|   mov rdi, rax
229|   call qword ptr [rcx + 96]
229|   add rsp, 32
229|   pop rbp
229|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string(unsigned long, char): # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string(unsigned long, char)
1926|   push rbp
1926|   mov rbp, rsp
1926|   sub rsp, 32
1926|   mov qword ptr [rbp - 8], rdi
1926|   mov qword ptr [rbp - 16], rsi
1926|   mov byte ptr [rbp - 17], dl
1926|   mov rax, qword ptr [rbp - 8]
834|   mov rdi, rax
834|   mov qword ptr [rbp - 32], rax # 8-byte Spill
834|   call std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::__compressed_pair<true, void>()
1927|   mov rsi, qword ptr [rbp - 16]
1927|   mov rdi, qword ptr [rbp - 32] # 8-byte Reload
1927|   movsx edx, byte ptr [rbp - 17]
1927|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__init(unsigned long, char)
1931|   add rsp, 32
1931|   pop rbp
1931|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::data(): # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::data()
1245|   push rbp
1245|   mov rbp, rsp
1245|   sub rsp, 16
1245|   mov qword ptr [rbp - 8], rdi
1245|   mov rdi, qword ptr [rbp - 8]
1245|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_pointer()
1245|   mov rdi, rax
1245|   call char* std::__1::__to_raw_pointer<char>(char*)
1245|   add rsp, 16
1245|   pop rbp
1245|   ret
  | std::__1::ios_base::width(long): # @std::__1::ios_base::width(long)
528|   push rbp
528|   mov rbp, rsp
528|   mov qword ptr [rbp - 8], rdi
528|   mov qword ptr [rbp - 16], rsi
528|   mov rax, qword ptr [rbp - 8]
529|   mov rcx, qword ptr [rax + 24]
529|   mov qword ptr [rbp - 24], rcx
530|   mov rcx, qword ptr [rbp - 16]
530|   mov qword ptr [rax + 24], rcx
531|   mov rax, qword ptr [rbp - 24]
531|   pop rbp
531|   ret
  | std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::__compressed_pair<true, void>(): # @std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::__compressed_pair<true, void>()
2233|   push rbp
2233|   mov rbp, rsp
2233|   sub rsp, 16
2233|   mov qword ptr [rbp - 8], rdi
2233|   mov rax, qword ptr [rbp - 8]
2233|   mov rcx, rax
2233|   mov rdi, rcx
2233|   mov qword ptr [rbp - 16], rax # 8-byte Spill
2233|   call std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__compressed_pair_elem() [base object constructor]
2233|   mov rax, qword ptr [rbp - 16] # 8-byte Reload
2233|   mov rdi, rax
2233|   call std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem() [base object constructor]
2233|   add rsp, 16
2233|   pop rbp
2233|   ret
  | std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__compressed_pair_elem() [base object constructor]: # @std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__compressed_pair_elem() [base object constructor]
2139|   push rbp
2139|   mov rbp, rsp
2139|   sub rsp, 16
2139|   xor esi, esi
2139|   mov qword ptr [rbp - 8], rdi
2139|   mov rax, qword ptr [rbp - 8]
2139|   mov rdi, rax
2139|   mov edx, 24
2139|   call memset
2139|   add rsp, 16
2139|   pop rbp
2139|   ret
  | std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem() [base object constructor]: # @std::__1::__compressed_pair_elem<std::__1::allocator<char>, 1, true>::__compressed_pair_elem() [base object constructor]
2178|   push rbp
2178|   mov rbp, rsp
2178|   sub rsp, 16
2178|   mov qword ptr [rbp - 8], rdi
2178|   mov rax, qword ptr [rbp - 8]
2178|   mov rdi, rax
2178|   call std::__1::allocator<char>::allocator() [base object constructor]
2178|   add rsp, 16
2178|   pop rbp
2178|   ret
  | std::__1::allocator<char>::allocator() [base object constructor]: # @std::__1::allocator<char>::allocator() [base object constructor]
1797|   push rbp
1797|   mov rbp, rsp
1797|   mov qword ptr [rbp - 8], rdi
1797|   pop rbp
1797|   ret
  | char* std::__1::__to_raw_pointer<char>(char*): # @char* std::__1::__to_raw_pointer<char>(char*)
1106|   push rbp
1106|   mov rbp, rsp
1106|   mov qword ptr [rbp - 8], rdi
1107|   mov rax, qword ptr [rbp - 8]
1107|   pop rbp
1107|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_pointer(): # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_pointer()
1511|   push rbp
1511|   mov rbp, rsp
1511|   sub rsp, 32
1511|   mov qword ptr [rbp - 8], rdi
1511|   mov rax, qword ptr [rbp - 8]
1511|   mov rdi, rax
1511|   mov qword ptr [rbp - 16], rax # 8-byte Spill
1511|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__is_long() const
1511|   test al, 1
1511|   jne .LBB27_1
1511|   jmp .LBB27_2
  | .LBB27_1:
 0|   mov rdi, qword ptr [rbp - 16] # 8-byte Reload
1511|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_long_pointer()
1511|   mov qword ptr [rbp - 24], rax # 8-byte Spill
1511|   jmp .LBB27_3
  | .LBB27_2:
 0|   mov rdi, qword ptr [rbp - 16] # 8-byte Reload
1511|   call std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_short_pointer()
1511|   mov qword ptr [rbp - 24], rax # 8-byte Spill
  | .LBB27_3:
 0|   mov rax, qword ptr [rbp - 24] # 8-byte Reload
1511|   add rsp, 32
1511|   pop rbp
1511|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__is_long() const: # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__is_long() const
1420|   push rbp
1420|   mov rbp, rsp
1420|   sub rsp, 16
1420|   mov qword ptr [rbp - 8], rdi
1420|   mov rdi, qword ptr [rbp - 8]
1420|   call std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first() const
1420|   movzx ecx, byte ptr [rax]
1420|   mov eax, ecx
1420|   and rax, 1
1420|   cmp rax, 0
1420|   setne dl
1420|   and dl, 1
1420|   movzx eax, dl
1420|   add rsp, 16
1420|   pop rbp
1420|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_long_pointer(): # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_long_pointer()
1499|   push rbp
1499|   mov rbp, rsp
1499|   sub rsp, 16
1499|   mov qword ptr [rbp - 8], rdi
1499|   mov rdi, qword ptr [rbp - 8]
1499|   call std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first()
1499|   mov rax, qword ptr [rax + 16]
1499|   add rsp, 16
1499|   pop rbp
1499|   ret
  | std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_short_pointer(): # @std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__get_short_pointer()
1505|   push rbp
1505|   mov rbp, rsp
1505|   sub rsp, 16
1505|   mov qword ptr [rbp - 8], rdi
1505|   mov rdi, qword ptr [rbp - 8]
1505|   call std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first()
1505|   add rax, 1
1505|   mov rdi, rax
1505|   call std::__1::pointer_traits<char*>::pointer_to(char&)
1505|   add rsp, 16
1505|   pop rbp
1505|   ret
  | std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first() const: # @std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first() const
2283|   push rbp
2283|   mov rbp, rsp
2283|   sub rsp, 16
2283|   mov qword ptr [rbp - 8], rdi
2283|   mov rax, qword ptr [rbp - 8]
2284|   mov rdi, rax
2284|   call std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get() const
2284|   add rsp, 16
2284|   pop rbp
2284|   ret
  | std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get() const: # @std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get() const
2164|   push rbp
2164|   mov rbp, rsp
2164|   mov qword ptr [rbp - 8], rdi
2164|   mov rax, qword ptr [rbp - 8]
2164|   pop rbp
2164|   ret
  | std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first(): # @std::__1::__compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >::first()
2278|   push rbp
2278|   mov rbp, rsp
2278|   sub rsp, 16
2278|   mov qword ptr [rbp - 8], rdi
2278|   mov rax, qword ptr [rbp - 8]
2279|   mov rdi, rax
2279|   call std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get()
2279|   add rsp, 16
2279|   pop rbp
2279|   ret
  | std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get(): # @std::__1::__compressed_pair_elem<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, 0, false>::__get()
2162|   push rbp
2162|   mov rbp, rsp
2162|   mov qword ptr [rbp - 8], rdi
2162|   mov rax, qword ptr [rbp - 8]
2162|   pop rbp
2162|   ret
  | std::__1::pointer_traits<char*>::pointer_to(char&): # @std::__1::pointer_traits<char*>::pointer_to(char&)
989|   push rbp
989|   mov rbp, rsp
989|   sub rsp, 16
989|   mov qword ptr [rbp - 8], rdi
989|   mov rdi, qword ptr [rbp - 8]
989|   call char* std::__1::addressof<char>(char&)
989|   add rsp, 16
989|   pop rbp
989|   ret
  | char* std::__1::addressof<char>(char&): # @char* std::__1::addressof<char>(char&)
581|   push rbp
581|   mov rbp, rsp
581|   mov qword ptr [rbp - 8], rdi
582|   mov rax, qword ptr [rbp - 8]
582|   pop rbp
582|   ret
  | std::__1::basic_ios<char, std::__1::char_traits<char> >::rdbuf() const: # @std::__1::basic_ios<char, std::__1::char_traits<char> >::rdbuf() const
738|   push rbp
738|   mov rbp, rsp
738|   sub rsp, 16
738|   mov qword ptr [rbp - 8], rdi
738|   mov rax, qword ptr [rbp - 8]
739|   mov rdi, rax
739|   call std::__1::ios_base::rdbuf() const
739|   add rsp, 16
739|   pop rbp
739|   ret
  | std::__1::ios_base::rdbuf() const: # @std::__1::ios_base::rdbuf() const
348|   push rbp
348|   mov rbp, rsp
348|   mov qword ptr [rbp - 8], rdi
348|   mov rax, qword ptr [rbp - 8]
348|   mov rax, qword ptr [rax + 40]
348|   pop rbp
348|   ret
  | std::__1::char_traits<char>::eq_int_type(int, int): # @std::__1::char_traits<char>::eq_int_type(int, int)
237|   push rbp
237|   mov rbp, rsp
237|   mov dword ptr [rbp - 4], edi
237|   mov dword ptr [rbp - 8], esi
237|   mov eax, dword ptr [rbp - 4]
237|   cmp eax, dword ptr [rbp - 8]
237|   sete cl
237|   and cl, 1
237|   movzx eax, cl
237|   pop rbp
237|   ret
  | std::__1::char_traits<char>::eof(): # @std::__1::char_traits<char>::eof()
239|   push rbp
239|   mov rbp, rsp
239|   mov eax, 4294967295
239|   pop rbp
239|   ret
  | std::__1::basic_ios<char, std::__1::char_traits<char> >::widen(char) const: # @std::__1::basic_ios<char, std::__1::char_traits<char> >::widen(char) const
776|   push rbp
776|   mov rbp, rsp
776|   sub rsp, 64
776|   mov qword ptr [rbp - 8], rdi
776|   mov byte ptr [rbp - 9], sil
776|   mov rsi, qword ptr [rbp - 8]
776|   lea rax, [rbp - 24]
777|   mov rdi, rax
777|   mov qword ptr [rbp - 48], rax # 8-byte Spill
777|   call std::__1::ios_base::getloc() const
777|   mov rdi, qword ptr [rbp - 48] # 8-byte Reload
777|   call std::__1::ctype<char> const& std::__1::use_facet<std::__1::ctype<char> >(std::__1::locale const&)
777|   mov qword ptr [rbp - 56], rax # 8-byte Spill
777|   jmp .LBB41_1
  | .LBB41_1:
777|   movsx esi, byte ptr [rbp - 9]
777|   mov rdi, qword ptr [rbp - 56] # 8-byte Reload
777|   call std::__1::ctype<char>::widen(char) const
777|   mov byte ptr [rbp - 57], al # 1-byte Spill
777|   jmp .LBB41_2
  | .LBB41_2:
777|   lea rdi, [rbp - 24]
777|   call std::__1::locale::~locale() [complete object destructor]
777|   mov al, byte ptr [rbp - 57] # 1-byte Reload
777|   movsx eax, al
777|   add rsp, 64
777|   pop rbp
777|   ret
778|   mov qword ptr [rbp - 32], rax
778|   mov dword ptr [rbp - 36], edx
777|   lea rdi, [rbp - 24]
777|   call std::__1::locale::~locale() [complete object destructor]
777|   mov rdi, qword ptr [rbp - 32]
777|   call _Unwind_Resume
  | std::__1::ctype<char> const& std::__1::use_facet<std::__1::ctype<char> >(std::__1::locale const&): # @std::__1::ctype<char> const& std::__1::use_facet<std::__1::ctype<char> >(std::__1::locale const&)
249|   push rbp
249|   mov rbp, rsp
249|   sub rsp, 16
249|   mov qword ptr [rbp - 8], rdi
250|   mov rdi, qword ptr [rbp - 8]
250|   movabs rsi, offset std::__1::ctype<char>::id
250|   call std::__1::locale::use_facet(std::__1::locale::id&) const
250|   add rsp, 16
250|   pop rbp
250|   ret
  | std::__1::ctype<char>::widen(char) const: # @std::__1::ctype<char>::widen(char) const
680|   push rbp
680|   mov rbp, rsp
680|   sub rsp, 16
680|   mov qword ptr [rbp - 8], rdi
680|   mov byte ptr [rbp - 9], sil
680|   mov rax, qword ptr [rbp - 8]
681|   mov cl, byte ptr [rbp - 9]
681|   mov rdx, qword ptr [rax]
681|   mov rdi, rax
681|   movsx esi, cl
681|   call qword ptr [rdx + 56]
681|   movsx eax, al
681|   add rsp, 16
681|   pop rbp
681|   ret
  | std::__1::ios_base::setstate(unsigned int): # @std::__1::ios_base::setstate(unsigned int)
546|   push rbp
546|   mov rbp, rsp
546|   sub rsp, 16
546|   mov qword ptr [rbp - 8], rdi
546|   mov dword ptr [rbp - 12], esi
546|   mov rax, qword ptr [rbp - 8]
547|   mov ecx, dword ptr [rax + 32]
547|   or ecx, dword ptr [rbp - 12]
547|   mov rdi, rax
547|   mov esi, ecx
547|   call std::__1::ios_base::clear(unsigned int)
548|   add rsp, 16
548|   pop rbp
548|   ret
  | main::$_1::operator()(Resource&) const: # @"main::$_1::operator()(Resource&) const"
20|   push rbp
20|   mov rbp, rsp
20|   mov qword ptr [rbp - 8], rdi
20|   mov qword ptr [rbp - 16], rsi
20|   pop rbp
20|   ret
  | main::$_2::operator()(Resource&) const: # @"main::$_2::operator()(Resource&) const"
21|   push rbp
21|   mov rbp, rsp
21|   sub rsp, 16
21|   mov qword ptr [rbp - 8], rdi
21|   mov qword ptr [rbp - 16], rsi
21|   mov rdi, qword ptr [rbp - 16]
21|   call std::__1::remove_reference<Resource&>::type&& std::__1::move<Resource&>(Resource&)
21|   add rsp, 16
21|   pop rbp
21|   ret
  | std::__1::remove_reference<Resource&>::type&& std::__1::move<Resource&>(Resource&): # @std::__1::remove_reference<Resource&>::type&& std::__1::move<Resource&>(Resource&)
2279|   push rbp
2279|   mov rbp, rsp
2279|   mov qword ptr [rbp - 8], rdi
2281|   mov rax, qword ptr [rbp - 8]
2281|   pop rbp
2281|   ret
  | 