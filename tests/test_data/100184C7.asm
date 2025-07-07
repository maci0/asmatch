; ---- 100184C7 ----
?_2820: ; Local function
        lea     eax, [ecx+ecx*2]                        ; 100184C7 _ 8D. 04 49
        lea     eax, [eax+eax*4]                        ; 100184CA _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100184CD _ 8D. 04 C0
        lea     eax, [?_5632+eax*4]                     ; 100184D0 _ 8D. 04 85, 100358A0(d)
        ret                                             ; 100184D7 _ C3

        nop                                             ; 100184D8 _ 90
        nop                                             ; 100184D9 _ 90
        nop                                             ; 100184DA _ 90
        nop                                             ; 100184DB _ 90
        nop                                             ; 100184DC _ 90
        nop                                             ; 100184DD _ 90
        nop                                             ; 100184DE _ 90
        nop                                             ; 100184DF _ 90

