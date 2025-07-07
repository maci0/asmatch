; ---- 100155A2 ----
?_2372: ; Local function
        lea     eax, [eax+eax*2]                        ; 100155A2 _ 8D. 04 40
        pop     ebx                                     ; 100155A5 _ 5B
        lea     eax, [eax+eax*4]                        ; 100155A6 _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 100155A9 _ 8D. 0C C0
        lea     eax, [?_5632+ecx*4]                     ; 100155AC _ 8D. 04 8D, 100358A0(d)
        ret                                             ; 100155B3 _ C3

        nop                                             ; 100155B4 _ 90
        nop                                             ; 100155B5 _ 90
        nop                                             ; 100155B6 _ 90
        nop                                             ; 100155B7 _ 90
        nop                                             ; 100155B8 _ 90
        nop                                             ; 100155B9 _ 90
        nop                                             ; 100155BA _ 90
        nop                                             ; 100155BB _ 90
        nop                                             ; 100155BC _ 90
        nop                                             ; 100155BD _ 90
        nop                                             ; 100155BE _ 90
        nop                                             ; 100155BF _ 90

