; ---- 10020BCA ----
?_4310: ; Local function
        push    esi                                     ; 10020BCA _ 56
        push    11                                      ; 10020BCB _ 6A, 0B
        call    ?_3610                                  ; 10020BCD _ E8, FFFFC464
        push    dword [esp+0CH]                         ; 10020BD2 _ FF. 74 24, 0C
        call    ?_4311                                  ; 10020BD6 _ E8, 00000010
        push    11                                      ; 10020BDB _ 6A, 0B
        mov     esi, eax                                ; 10020BDD _ 8B. F0
        call    ?_3615                                  ; 10020BDF _ E8, FFFFC4B3
        add     esp, 12                                 ; 10020BE4 _ 83. C4, 0C
        mov     eax, esi                                ; 10020BE7 _ 8B. C6
        pop     esi                                     ; 10020BE9 _ 5E
        ret                                             ; 10020BEA _ C3

