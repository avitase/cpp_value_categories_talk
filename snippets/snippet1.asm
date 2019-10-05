f(int):                                  # @f(int)
        push    rax
        call    side_effect()
        xor     eax, eax
        pop     rcx
        ret

