; ---- 1000B4BE ----
?_1182: ; Local function
        pop     esi                                     ; 1000B4BE _ 5E
        mov     eax, 1                                  ; 1000B4BF _ B8, 00000001
        ret                                             ; 1000B4C4 _ C3

        nop                                             ; 1000B4C5 _ 90
        nop                                             ; 1000B4C6 _ 90
        nop                                             ; 1000B4C7 _ 90
        nop                                             ; 1000B4C8 _ 90
        nop                                             ; 1000B4C9 _ 90
        nop                                             ; 1000B4CA _ 90
        nop                                             ; 1000B4CB _ 90
        nop                                             ; 1000B4CC _ 90
        nop                                             ; 1000B4CD _ 90
        nop                                             ; 1000B4CE _ 90
        nop                                             ; 1000B4CF _ 90
?_1183: push    ecx                                     ; 1000B4D0 _ 51
        push    ebx                                     ; 1000B4D1 _ 53
        mov     ebx, dword [esp+0CH]                    ; 1000B4D2 _ 8B. 5C 24, 0C
        push    ebp                                     ; 1000B4D6 _ 55
        push    esi                                     ; 1000B4D7 _ 56
        mov     eax, dword [ebx+7H]                     ; 1000B4D8 _ 8B. 43, 07
        mov     dword [esp+0CH], -1                     ; 1000B4DB _ C7. 44 24, 0C, FFFFFFFF
        cmp     eax, -1                                 ; 1000B4E3 _ 83. F8, FF
        jz      ?_1184                                  ; 1000B4E6 _ 74, 12
        push    eax                                     ; 1000B4E8 _ 50
        call    ?_2817                                  ; 1000B4E9 _ E8, 0000CFB2
        add     esp, 4                                  ; 1000B4EE _ 83. C4, 04
        test    eax, eax                                ; 1000B4F1 _ 85. C0
        jnz     ?_1184                                  ; 1000B4F3 _ 75, 05
        pop     esi                                     ; 1000B4F5 _ 5E
        pop     ebp                                     ; 1000B4F6 _ 5D
        pop     ebx                                     ; 1000B4F7 _ 5B
        pop     ecx                                     ; 1000B4F8 _ 59
        ret                                             ; 1000B4F9 _ C3
