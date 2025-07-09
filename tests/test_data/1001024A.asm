; ---- 1001024A ----
?_1860: ; Local function
        xor     ecx, ecx                                ; 1001024A _ 33. C9
        pop     edi                                     ; 1001024C _ 5F
        mov     cl, byte [eax+37H]                      ; 1001024D _ 8A. 48, 37
        pop     esi                                     ; 10010250 _ 5E
        mov     byte [eax+37H], cl                      ; 10010251 _ 88. 48, 37
        xor     eax, eax                                ; 10010254 _ 33. C0
        pop     ebx                                     ; 10010256 _ 5B
        ret                                             ; 10010257 _ C3

        nop                                             ; 10010258 _ 90
        nop                                             ; 10010259 _ 90
        nop                                             ; 1001025A _ 90
        nop                                             ; 1001025B _ 90
        nop                                             ; 1001025C _ 90
        nop                                             ; 1001025D _ 90
        nop                                             ; 1001025E _ 90
        nop                                             ; 1001025F _ 90
