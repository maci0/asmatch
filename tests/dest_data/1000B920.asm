; ---- 1000B920 ----
?_1234: ; Local function
        lea     ecx, [ecx+ecx*2]                        ; 1000B920 _ 8D. 0C 49
        lea     esi, [?_5700+ecx*8]                     ; 1000B923 _ 8D. 34 CD, 101DE5A0(d)
        test    esi, esi                                ; 1000B92A _ 85. F6
        jnz     ?_1235                                  ; 1000B92C _ 75, 07
        pop     edi                                     ; 1000B92E _ 5F
        pop     esi                                     ; 1000B92F _ 5E
        pop     ebp                                     ; 1000B930 _ 5D
        xor     eax, eax                                ; 1000B931 _ 33. C0
        pop     ebx                                     ; 1000B933 _ 5B
        ret                                             ; 1000B934 _ C3

