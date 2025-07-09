; ---- 10013259 ----
?_2154: ; Local function
        push    edi                                     ; 10013259 _ 57
        push    1                                       ; 1001325A _ 6A, 01
        lea     ecx, [esp+28H]                          ; 1001325C _ 8D. 4C 24, 28
        push    4                                       ; 10013260 _ 6A, 04
        push    ecx                                     ; 10013262 _ 51
        call    ?_2085                                  ; 10013263 _ E8, FFFFF1D8
        add     esp, 16                                 ; 10013268 _ 83. C4, 10
        test    eax, eax                                ; 1001326B _ 85. C0
        jnz     ?_2155                                  ; 1001326D _ 75, 08
        pop     edi                                     ; 1001326F _ 5F
        pop     esi                                     ; 10013270 _ 5E
        pop     ebp                                     ; 10013271 _ 5D
        pop     ebx                                     ; 10013272 _ 5B
        add     esp, 12                                 ; 10013273 _ 83. C4, 0C
        ret                                             ; 10013276 _ C3
