; ---- 1000A080 ----
?_1050: ; Local function
        mov     eax, dword [?_5759]                     ; 1000A080 _ A1, 101DEAEC(d)
        sub     esp, 280                                ; 1000A085 _ 81. EC, 00000118
        cmp     eax, -1                                 ; 1000A08B _ 83. F8, FF
        push    ebx                                     ; 1000A08E _ 53
        push    ebp                                     ; 1000A08F _ 55
        push    esi                                     ; 1000A090 _ 56
        jnz     ?_1051                                  ; 1000A091 _ 75, 0D
        pop     esi                                     ; 1000A093 _ 5E
        pop     ebp                                     ; 1000A094 _ 5D
        or      eax, 0FFFFFFFFH                         ; 1000A095 _ 83. C8, FF
        pop     ebx                                     ; 1000A098 _ 5B
        add     esp, 280                                ; 1000A099 _ 81. C4, 00000118
        ret                                             ; 1000A09F _ C3

