; ---- 10010080 ----
?_1846: ; Local function
        mov     eax, dword [esp+4H]                     ; 10010080 _ 8B. 44 24, 04
        add     eax, 16                                 ; 10010084 _ 83. C0, 10
        push    eax                                     ; 10010087 _ 50
        call    ?_1226                                  ; 10010088 _ E8, FFFFB7F3
        add     esp, 4                                  ; 1001008D _ 83. C4, 04
        neg     eax                                     ; 10010090 _ F7. D8
        sbb     eax, eax                                ; 10010092 _ 1B. C0
        inc     eax                                     ; 10010094 _ 40
        ret                                             ; 10010095 _ C3

        nop                                             ; 10010096 _ 90
        nop                                             ; 10010097 _ 90
        nop                                             ; 10010098 _ 90
        nop                                             ; 10010099 _ 90
        nop                                             ; 1001009A _ 90
        nop                                             ; 1001009B _ 90
        nop                                             ; 1001009C _ 90
        nop                                             ; 1001009D _ 90
        nop                                             ; 1001009E _ 90
        nop                                             ; 1001009F _ 90
