; ---- 10016F80 ----
?_2587: ; Local function
        mov     eax, dword [?_5690]                     ; 10016F80 _ A1, 1014D8C0(d)
        push    esi                                     ; 10016F85 _ 56
        xor     cl, cl                                  ; 10016F86 _ 32. C9
        lea     esi, [eax+0A900H]                       ; 10016F88 _ 8D. B0, 0000A900
        mov     eax, dword [?_5668]                     ; 10016F8E _ A1, 100A8C30(d)
        test    eax, eax                                ; 10016F93 _ 85. C0
        jnz     ?_2588                                  ; 10016F95 _ 75, 04
        xor     eax, eax                                ; 10016F97 _ 33. C0
        pop     esi                                     ; 10016F99 _ 5E
        ret                                             ; 10016F9A _ C3
