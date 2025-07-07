; ---- 1000FFC0 ----
?_1838: ; Local function
        push    esi                                     ; 1000FFC0 _ 56
        mov     esi, dword [esp+8H]                     ; 1000FFC1 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000FFC5 _ 8B. 46, 10
        push    eax                                     ; 1000FFC8 _ 50
        call    ?_2817                                  ; 1000FFC9 _ E8, 000084D2
        add     esp, 4                                  ; 1000FFCE _ 83. C4, 04
        test    eax, eax                                ; 1000FFD1 _ 85. C0
        jnz     ?_1839                                  ; 1000FFD3 _ 75, 07
        mov     eax, 1                                  ; 1000FFD5 _ B8, 00000001
        pop     esi                                     ; 1000FFDA _ 5E
        ret                                             ; 1000FFDB _ C3

