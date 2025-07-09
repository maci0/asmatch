; ---- 10016618 ----
?_2506: ; Local function
        test    esi, esi                                ; 10016618 _ 85. F6
        jnz     ?_2507                                  ; 1001661A _ 75, 0A
        pop     edi                                     ; 1001661C _ 5F
        pop     esi                                     ; 1001661D _ 5E
        pop     ebp                                     ; 1001661E _ 5D
        mov     eax, 4294967294                         ; 1001661F _ B8, FFFFFFFE
        pop     ebx                                     ; 10016624 _ 5B
        ret                                             ; 10016625 _ C3
