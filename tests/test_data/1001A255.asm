; ---- 1001A255 ----
?_3036: ; Local function
        push    esi                                     ; 1001A255 _ 56
        call    ?_3420                                  ; 1001A256 _ E8, 00001D60
        mov     esi, eax                                ; 1001A25B _ 8B. F0
        test    esi, esi                                ; 1001A25D _ 85. F6
        jnz     ?_3037                                  ; 1001A25F _ 75, 02
        pop     esi                                     ; 1001A261 _ 5E
        ret                                             ; 1001A262 _ C3
