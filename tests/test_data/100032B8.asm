; ---- 100032B8 ----
?_0243: ; Local function
        cmp     edx, 2                                  ; 100032B8 _ 83. FA, 02
        jl      ?_0245                                  ; 100032BB _ 7C, 24
        mov     cl, byte [eax-2H]                       ; 100032BD _ 8A. 48, FE
        cmp     cl, bl                                  ; 100032C0 _ 3A. CB
        jnz     ?_0245                                  ; 100032C2 _ 75, 1D
        cmp     byte [eax-1H], 64                       ; 100032C4 _ 80. 78, FF, 40
        jnc     ?_0244                                  ; 100032C8 _ 73, 04
        mov     al, 2                                   ; 100032CA _ B0, 02
        pop     ebx                                     ; 100032CC _ 5B
        ret                                             ; 100032CD _ C3

?_0244: cmp     cl, bl                                  ; 100032CE _ 3A. CB
        jnz     ?_0245                                  ; 100032D0 _ 75, 0F
        mov     cl, byte [eax-1H]                       ; 100032D2 _ 8A. 48, FF
        and     cl, 0FFFFFFF8H                          ; 100032D5 _ 80. E1, F8
        cmp     cl, -48                                 ; 100032D8 _ 80. F9, D0
        jnz     ?_0245                                  ; 100032DB _ 75, 04
        mov     al, 2                                   ; 100032DD _ B0, 02
        pop     ebx                                     ; 100032DF _ 5B
        ret                                             ; 100032E0 _ C3
