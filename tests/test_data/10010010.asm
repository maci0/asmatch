; ---- 10010010 ----
?_1841: ; Local function
        push    esi                                     ; 10010010 _ 56
        mov     esi, dword [esp+8H]                     ; 10010011 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 10010015 _ 8B. 46, 10
        push    eax                                     ; 10010018 _ 50
        call    ?_2817                                  ; 10010019 _ E8, 00008482
        add     esp, 4                                  ; 1001001E _ 83. C4, 04
        test    eax, eax                                ; 10010021 _ 85. C0
        jnz     ?_1842                                  ; 10010023 _ 75, 07
        mov     eax, 1                                  ; 10010025 _ B8, 00000001
        pop     esi                                     ; 1001002A _ 5E
        ret                                             ; 1001002B _ C3

