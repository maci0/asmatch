; ---- 100032A4 ----
?_0242: ; Local function
        cmp     edx, 6                                  ; 100032A4 _ 83. FA, 06
        jl      ?_0243                                  ; 100032A7 _ 7C, 0F
        cmp     byte [eax-6H], bl                       ; 100032A9 _ 38. 58, FA
        jnz     ?_0243                                  ; 100032AC _ 75, 0A
        cmp     byte [eax-5H], 21                       ; 100032AE _ 80. 78, FB, 15
        jnz     ?_0243                                  ; 100032B2 _ 75, 04
        mov     al, 2                                   ; 100032B4 _ B0, 02
        pop     ebx                                     ; 100032B6 _ 5B
        ret                                             ; 100032B7 _ C3

