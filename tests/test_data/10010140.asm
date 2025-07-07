; ---- 10010140 ----
?_1852: ; Local function
        mov     eax, dword [?_5380]                     ; 10010140 _ A1, 10030B6C(d)
        push    ebx                                     ; 10010145 _ 53
        push    esi                                     ; 10010146 _ 56
        mov     esi, dword [esp+0CH]                    ; 10010147 _ 8B. 74 24, 0C
        push    edi                                     ; 1001014B _ 57
        mov     ecx, dword [esi+26H]                    ; 1001014C _ 8B. 4E, 26
        mov     dword [esi+10H], eax                    ; 1001014F _ 89. 46, 10
        push    ecx                                     ; 10010152 _ 51
        call    ?_2706                                  ; 10010153 _ E8, 00007918
        mov     ebx, eax                                ; 10010158 _ 8B. D8
        add     esp, 4                                  ; 1001015A _ 83. C4, 04
        test    ebx, ebx                                ; 1001015D _ 85. DB
        jnz     ?_1853                                  ; 1001015F _ 75, 09
        pop     edi                                     ; 10010161 _ 5F
        pop     esi                                     ; 10010162 _ 5E
        mov     eax, 1                                  ; 10010163 _ B8, 00000001
        pop     ebx                                     ; 10010168 _ 5B
        ret                                             ; 10010169 _ C3

