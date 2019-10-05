f(int const&):                                # @f(int const&)
        push    rbp
        push    rbx
        push    rax
        mov     rbx, rdi
        mov     ebp, dword ptr [rdi]
        call    side_effect()
        sub     ebp, dword ptr [rbx]
        mov     eax, ebp
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret

