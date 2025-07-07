; ---- 1000F3B0 ----
?_1731: ; Local function
        push    ebp                                     ; 1000F3B0 _ 55
        push    esi                                     ; 1000F3B1 _ 56
        mov     esi, dword [esp+0CH]                    ; 1000F3B2 _ 8B. 74 24, 0C
        push    edi                                     ; 1000F3B6 _ 57
        mov     eax, dword [esi+10H]                    ; 1000F3B7 _ 8B. 46, 10
        push    eax                                     ; 1000F3BA _ 50
        push    1                                       ; 1000F3BB _ 6A, 01
        push    1                                       ; 1000F3BD _ 6A, 01
        call    ?_2609                                  ; 1000F3BF _ E8, 00007D1C
        mov     ebp, eax                                ; 1000F3C4 _ 8B. E8
        add     esp, 12                                 ; 1000F3C6 _ 83. C4, 0C
        test    ebp, ebp                                ; 1000F3C9 _ 85. ED
        jnz     ?_1732                                  ; 1000F3CB _ 75, 0E
        push    1                                       ; 1000F3CD _ 6A, 01
        push    ?_5320                                  ; 1000F3CF _ 68, 1002D214(d)
        push    18802                                   ; 1000F3D4 _ 68, 00004972
        jmp     ?_1733                                  ; 1000F3D9 _ EB, 24

?_1732: mov     ecx, dword [esi+18H]                    ; 1000F3DB _ 8B. 4E, 18
        push    ecx                                     ; 1000F3DE _ 51
        call    ?_2817                                  ; 1000F3DF _ E8, 000090BC
        mov     edi, eax                                ; 1000F3E4 _ 8B. F8
        add     esp, 4                                  ; 1000F3E6 _ 83. C4, 04
        test    edi, edi                                ; 1000F3E9 _ 85. FF
        jnz     ?_1734                                  ; 1000F3EB _ 75, 28
        cmp     dword [esi+18H], -1                     ; 1000F3ED _ 83. 7E, 18, FF
        jz      ?_1734                                  ; 1000F3F1 _ 74, 22
        push    1                                       ; 1000F3F3 _ 6A, 01
        push    ?_5319                                  ; 1000F3F5 _ 68, 1002D1E0(d)
        push    18816                                   ; 1000F3FA _ 68, 00004980
?_1733: push    ?_5260                                  ; 1000F3FF _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F404 _ E8, FFFF4237
        add     esp, 16                                 ; 1000F409 _ 83. C4, 10
        mov     eax, 1                                  ; 1000F40C _ B8, 00000001
        pop     edi                                     ; 1000F411 _ 5F
        pop     esi                                     ; 1000F412 _ 5E
        pop     ebp                                     ; 1000F413 _ 5D
        ret                                             ; 1000F414 _ C3

