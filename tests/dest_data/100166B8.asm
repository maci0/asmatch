; ---- 100166B8 ----
?_2515: ; Local function
        test    esi, esi                                ; 100166B8 _ 85. F6
        jnz     ?_2516                                  ; 100166BA _ 75, 0A
        pop     edi                                     ; 100166BC _ 5F
        pop     esi                                     ; 100166BD _ 5E
        pop     ebp                                     ; 100166BE _ 5D
        mov     eax, 4294967294                         ; 100166BF _ B8, FFFFFFFE
        pop     ebx                                     ; 100166C4 _ 5B
        ret                                             ; 100166C5 _ C3

