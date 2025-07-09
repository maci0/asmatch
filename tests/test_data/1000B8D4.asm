; ---- 1000B8D4 ----
?_1230: ; Local function
        lea     edx, [ecx+ecx*2]                        ; 1000B8D4 _ 8D. 14 49
        lea     edi, [?_5700+edx*8]                     ; 1000B8D7 _ 8D. 3C D5, 101DE5A0(d)
        test    edi, edi                                ; 1000B8DE _ 85. FF
        jnz     ?_1231                                  ; 1000B8E0 _ 75, 07
        pop     edi                                     ; 1000B8E2 _ 5F
        pop     esi                                     ; 1000B8E3 _ 5E
        pop     ebp                                     ; 1000B8E4 _ 5D
        xor     eax, eax                                ; 1000B8E5 _ 33. C0
        pop     ebx                                     ; 1000B8E7 _ 5B
        ret                                             ; 1000B8E8 _ C3
