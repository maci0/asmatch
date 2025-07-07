; ---- 1000328D ----
?_0241: ; Local function
        or      bl, 0FFFFFFFFH                          ; 1000328D _ 80. CB, FF
        cmp     edx, 3                                  ; 10003290 _ 83. FA, 03
        jl      ?_0242                                  ; 10003293 _ 7C, 0F
        cmp     byte [eax-3H], bl                       ; 10003295 _ 38. 58, FD
        jnz     ?_0242                                  ; 10003298 _ 75, 0A
        cmp     byte [eax-2H], 20                       ; 1000329A _ 80. 78, FE, 14
        jnz     ?_0242                                  ; 1000329E _ 75, 04
        mov     al, 2                                   ; 100032A0 _ B0, 02
        pop     ebx                                     ; 100032A2 _ 5B
        ret                                             ; 100032A3 _ C3

