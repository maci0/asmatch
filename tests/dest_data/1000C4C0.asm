; ---- 1000C4C0 ----
?_1311: ; Local function
        pop     edi                                     ; 1000C4C0 _ 5F
        pop     esi                                     ; 1000C4C1 _ 5E
        xor     eax, eax                                ; 1000C4C2 _ 33. C0
        pop     ebx                                     ; 1000C4C4 _ 5B
        ret                                             ; 1000C4C5 _ C3

        nop                                             ; 1000C4C6 _ 90
        nop                                             ; 1000C4C7 _ 90
        nop                                             ; 1000C4C8 _ 90
        nop                                             ; 1000C4C9 _ 90
        nop                                             ; 1000C4CA _ 90
        nop                                             ; 1000C4CB _ 90
        nop                                             ; 1000C4CC _ 90
        nop                                             ; 1000C4CD _ 90
        nop                                             ; 1000C4CE _ 90
        nop                                             ; 1000C4CF _ 90
?_1312: sub     esp, 60                                 ; 1000C4D0 _ 83. EC, 3C
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 1000C4D3 _ 8D. 44 24, 00
        push    ebx                                     ; 1000C4D7 _ 53
        push    esi                                     ; 1000C4D8 _ 56
        push    edi                                     ; 1000C4D9 _ 57
        mov     edi, dword [esp+4CH]                    ; 1000C4DA _ 8B. 7C 24, 4C
        push    edi                                     ; 1000C4DE _ 57
        push    1                                       ; 1000C4DF _ 6A, 01
        push    4                                       ; 1000C4E1 _ 6A, 04
        push    eax                                     ; 1000C4E3 _ 50
        call    ?_2085                                  ; 1000C4E4 _ E8, 00005F57
        add     esp, 16                                 ; 1000C4E9 _ 83. C4, 10
        test    eax, eax                                ; 1000C4EC _ 85. C0
        jnz     ?_1313                                  ; 1000C4EE _ 75, 07
        pop     edi                                     ; 1000C4F0 _ 5F
        pop     esi                                     ; 1000C4F1 _ 5E
        pop     ebx                                     ; 1000C4F2 _ 5B
        add     esp, 60                                 ; 1000C4F3 _ 83. C4, 3C
        ret                                             ; 1000C4F6 _ C3

