; ---- 10016D66 ----
?_2567: ; Local function
        mov     eax, dword [esp+0CH]                    ; 10016D66 _ 8B. 44 24, 0C
        test    eax, eax                                ; 10016D6A _ 85. C0
        jz      ?_2568                                  ; 10016D6C _ 74, 05
        add     eax, 93                                 ; 10016D6E _ 83. C0, 5D
        jmp     ?_2570                                  ; 10016D71 _ EB, 1E

?_2568: mov     eax, dword [esp+8H]                     ; 10016D73 _ 8B. 44 24, 08
        test    eax, eax                                ; 10016D77 _ 85. C0
        jz      ?_2569                                  ; 10016D79 _ 74, 05
        add     eax, 20                                 ; 10016D7B _ 83. C0, 14
        jmp     ?_2570                                  ; 10016D7E _ EB, 11

?_2569: mov     eax, dword [esp+10H]                    ; 10016D80 _ 8B. 44 24, 10
        test    eax, eax                                ; 10016D84 _ 85. C0
        je      ?_2565                                  ; 10016D86 _ 0F 84, FFFFFF70
        add     eax, 376                                ; 10016D8C _ 05, 00000178
?_2570: mov     eax, dword [eax]                        ; 10016D91 _ 8B. 00
        push    esi                                     ; 10016D93 _ 56
        push    0                                       ; 10016D94 _ 6A, 00
        push    1                                       ; 10016D96 _ 6A, 01
        push    eax                                     ; 10016D98 _ 50
        call    ?_2482                                  ; 10016D99 _ E8, FFFFF6C2
        add     esp, 16                                 ; 10016D9E _ 83. C4, 10
        mov     dword [esp+8H], eax                     ; 10016DA1 _ 89. 44 24, 08
        test    eax, eax                                ; 10016DA5 _ 85. C0
        jnz     ?_2571                                  ; 10016DA7 _ 75, 1B
        mov     ecx, dword [esp+220H]                   ; 10016DA9 _ 8B. 8C 24, 00000220
        push    ecx                                     ; 10016DB0 _ 51
        push    esi                                     ; 10016DB1 _ 56
        push    edi                                     ; 10016DB2 _ 57
        call    ?_2524                                  ; 10016DB3 _ E8, FFFFF9A8
        add     esp, 12                                 ; 10016DB8 _ 83. C4, 0C
        pop     edi                                     ; 10016DBB _ 5F
        pop     esi                                     ; 10016DBC _ 5E
        add     esp, 524                                ; 10016DBD _ 81. C4, 0000020C
        ret                                             ; 10016DC3 _ C3

