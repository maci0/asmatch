; ---- 100032FA ----
?_0246: ; Local function
        cmp     edx, 7                                  ; 100032FA _ 83. FA, 07
        jl      ?_0247                                  ; 100032FD _ 7C, 14
        cmp     byte [eax-7H], bl                       ; 100032FF _ 38. 58, F9
        jnz     ?_0247                                  ; 10003302 _ 75, 0F
        mov     dl, byte [eax-6H]                       ; 10003304 _ 8A. 50, FA
        and     dl, 0FFFFFFF8H                          ; 10003307 _ 80. E2, F8
        cmp     dl, -112                                ; 1000330A _ 80. FA, 90
        jnz     ?_0247                                  ; 1000330D _ 75, 04
        mov     al, 2                                   ; 1000330F _ B0, 02
        pop     ebx                                     ; 10003311 _ 5B
        ret                                             ; 10003312 _ C3
