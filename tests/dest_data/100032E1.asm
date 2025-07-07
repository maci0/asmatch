; ---- 100032E1 ----
?_0245: ; Local function
        cmp     edx, 3                                  ; 100032E1 _ 83. FA, 03
        jl      ?_0246                                  ; 100032E4 _ 7C, 14
        cmp     byte [eax-3H], bl                       ; 100032E6 _ 38. 58, FD
        jnz     ?_0246                                  ; 100032E9 _ 75, 0F
        mov     cl, byte [eax-2H]                       ; 100032EB _ 8A. 48, FE
        and     cl, 0FFFFFFF8H                          ; 100032EE _ 80. E1, F8
        cmp     cl, 80                                  ; 100032F1 _ 80. F9, 50
        jnz     ?_0246                                  ; 100032F4 _ 75, 04
        mov     al, 2                                   ; 100032F6 _ B0, 02
        pop     ebx                                     ; 100032F8 _ 5B
        ret                                             ; 100032F9 _ C3

