; ---- 10010390 ----
?_1874: ; Local function
        push    esi                                     ; 10010390 _ 56
        push    edi                                     ; 10010391 _ 57
        mov     edi, dword [esp+0CH]                    ; 10010392 _ 8B. 7C 24, 0C
        mov     eax, dword [edi+14H]                    ; 10010396 _ 8B. 47, 14
        push    eax                                     ; 10010399 _ 50
        call    ?_2817                                  ; 1001039A _ E8, 00008101
        mov     esi, eax                                ; 1001039F _ 8B. F0
        add     esp, 4                                  ; 100103A1 _ 83. C4, 04
        test    esi, esi                                ; 100103A4 _ 85. F6
        jnz     ?_1875                                  ; 100103A6 _ 75, 06
        pop     edi                                     ; 100103A8 _ 5F
        or      eax, 0FFFFFFFFH                         ; 100103A9 _ 83. C8, FF
        pop     esi                                     ; 100103AC _ 5E
        ret                                             ; 100103AD _ C3

