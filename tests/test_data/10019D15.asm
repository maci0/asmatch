; ---- 10019D15 ----
?_2981: ; Local function
        cmp     eax, 3                                  ; 10019D15 _ 83. F8, 03
        jnz     ?_2982                                  ; 10019D18 _ 75, 06
        mov     eax, 80                                 ; 10019D1A _ B8, 00000050
        ret                                             ; 10019D1F _ C3
