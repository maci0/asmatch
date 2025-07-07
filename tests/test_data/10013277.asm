; ---- 10013277 ----
?_2155: ; Local function
        mov     edx, dword [esp+20H]                    ; 10013277 _ 8B. 54 24, 20
        push    edi                                     ; 1001327B _ 57
        push    1                                       ; 1001327C _ 6A, 01
        push    4                                       ; 1001327E _ 6A, 04
        push    ?_5548                                  ; 10013280 _ 68, 10035470(d)
        mov     dword [?_5531], edx                     ; 10013285 _ 89. 15, 10035434(d)
        call    ?_2085                                  ; 1001328B _ E8, FFFFF1B0
        add     esp, 16                                 ; 10013290 _ 83. C4, 10
        test    eax, eax                                ; 10013293 _ 85. C0
        jnz     ?_2156                                  ; 10013295 _ 75, 08
        pop     edi                                     ; 10013297 _ 5F
        pop     esi                                     ; 10013298 _ 5E
        pop     ebp                                     ; 10013299 _ 5D
        pop     ebx                                     ; 1001329A _ 5B
        add     esp, 12                                 ; 1001329B _ 83. C4, 0C
        ret                                             ; 1001329E _ C3

