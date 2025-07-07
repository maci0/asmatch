; ---- 10010310 ----
?_1872: ; Local function
        mov     eax, dword [?_5380]                     ; 10010310 _ A1, 10030B6C(d)
        push    esi                                     ; 10010315 _ 56
        mov     esi, dword [esp+8H]                     ; 10010316 _ 8B. 74 24, 08
        mov     dword [esi+14H], eax                    ; 1001031A _ 89. 46, 14
        call    ?_3297                                  ; 1001031D _ E8, 0000B220
        add     esi, 16                                 ; 10010322 _ 83. C6, 10
        push    eax                                     ; 10010325 _ 50
        mov     dword [esi], eax                        ; 10010326 _ 89. 06
        call    ?_3028                                  ; 10010328 _ E8, 00009E23
        push    esi                                     ; 1001032D _ 56
        call    ?_2043                                  ; 1001032E _ E8, 000018BD
        sub     eax, 65535                              ; 10010333 _ 2D, 0000FFFF
        add     esp, 8                                  ; 10010338 _ 83. C4, 08
        neg     eax                                     ; 1001033B _ F7. D8
        sbb     eax, eax                                ; 1001033D _ 1B. C0
        pop     esi                                     ; 1001033F _ 5E
        neg     eax                                     ; 10010340 _ F7. D8
        dec     eax                                     ; 10010342 _ 48
        ret                                             ; 10010343 _ C3

        nop                                             ; 10010344 _ 90
        nop                                             ; 10010345 _ 90
        nop                                             ; 10010346 _ 90
        nop                                             ; 10010347 _ 90
        nop                                             ; 10010348 _ 90
        nop                                             ; 10010349 _ 90
        nop                                             ; 1001034A _ 90
        nop                                             ; 1001034B _ 90
        nop                                             ; 1001034C _ 90
        nop                                             ; 1001034D _ 90
        nop                                             ; 1001034E _ 90
        nop                                             ; 1001034F _ 90

