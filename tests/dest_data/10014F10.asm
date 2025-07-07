; ---- 10014F10 ----
?_2313: ; Local function
        lea     eax, [edx*8]                            ; 10014F10 _ 8D. 04 D5, 00000000
        pop     esi                                     ; 10014F17 _ 5E
        sub     eax, edx                                ; 10014F18 _ 2B. C2
        lea     eax, [eax+eax*4]                        ; 10014F1A _ 8D. 04 80
        lea     eax, [?_5368+eax*2]                     ; 10014F1D _ 8D. 04 45, 1002D878(d)
        ret                                             ; 10014F24 _ C3

        nop                                             ; 10014F25 _ 90
        nop                                             ; 10014F26 _ 90
        nop                                             ; 10014F27 _ 90
        nop                                             ; 10014F28 _ 90
        nop                                             ; 10014F29 _ 90
        nop                                             ; 10014F2A _ 90
        nop                                             ; 10014F2B _ 90
        nop                                             ; 10014F2C _ 90
        nop                                             ; 10014F2D _ 90
        nop                                             ; 10014F2E _ 90
        nop                                             ; 10014F2F _ 90

