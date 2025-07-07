; ---- 10017A9B ----
?_2709: ; Local function
        lea     ecx, [eax*8]                            ; 10017A9B _ 8D. 0C C5, 00000000
        add     esi, eax                                ; 10017AA2 _ 03. F0
        sub     ecx, eax                                ; 10017AA4 _ 2B. C8
        lea     ecx, [ecx+ecx*2]                        ; 10017AA6 _ 8D. 0C 49
        lea     eax, [esi+ecx*8]                        ; 10017AA9 _ 8D. 04 CE
        pop     esi                                     ; 10017AAC _ 5E
        ret                                             ; 10017AAD _ C3

        nop                                             ; 10017AAE _ 90
        nop                                             ; 10017AAF _ 90

