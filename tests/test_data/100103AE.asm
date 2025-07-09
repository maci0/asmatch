; ---- 100103AE ----
?_1875: ; Local function
        push    esi                                     ; 100103AE _ 56
        call    ?_1268                                  ; 100103AF _ E8, FFFFB9EC
        add     esp, 4                                  ; 100103B4 _ 83. C4, 04
        test    eax, eax                                ; 100103B7 _ 85. C0
        jnz     ?_1876                                  ; 100103B9 _ 75, 08
        pop     edi                                     ; 100103BB _ 5F
        mov     eax, 4294967294                         ; 100103BC _ B8, FFFFFFFE
        pop     esi                                     ; 100103C1 _ 5E
        ret                                             ; 100103C2 _ C3
