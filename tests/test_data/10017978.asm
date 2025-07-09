; ---- 10017978 ----
?_2690: ; Local function
        mov     eax, dword [esi+5DH]                    ; 10017978 _ 8B. 46, 5D
        push    2                                       ; 1001797B _ 6A, 02
        push    4                                       ; 1001797D _ 6A, 04
        push    1                                       ; 1001797F _ 6A, 01
        push    eax                                     ; 10017981 _ 50
        call    ?_2482                                  ; 10017982 _ E8, FFFFEAD9
        add     esp, 16                                 ; 10017987 _ 83. C4, 10
        test    eax, eax                                ; 1001798A _ 85. C0
        jz      ?_2692                                  ; 1001798C _ 74, 10
?_2691:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], 253                         ; 1001798E _ 66: 81. 38, 00FD
        jnz     ?_2692                                  ; 10017993 _ 75, 09
        call    ?_2461                                  ; 10017995 _ E8, FFFFE8F6
        test    eax, eax                                ; 1001799A _ 85. C0
        jnz     ?_2691                                  ; 1001799C _ 75, F0
?_2692: pop     edi                                     ; 1001799E _ 5F
        pop     esi                                     ; 1001799F _ 5E
        ret                                             ; 100179A0 _ C3

        nop                                             ; 100179A1 _ 90
        nop                                             ; 100179A2 _ 90
        nop                                             ; 100179A3 _ 90
        nop                                             ; 100179A4 _ 90
        nop                                             ; 100179A5 _ 90
        nop                                             ; 100179A6 _ 90
        nop                                             ; 100179A7 _ 90
        nop                                             ; 100179A8 _ 90
        nop                                             ; 100179A9 _ 90
        nop                                             ; 100179AA _ 90
        nop                                             ; 100179AB _ 90
        nop                                             ; 100179AC _ 90
        nop                                             ; 100179AD _ 90
        nop                                             ; 100179AE _ 90
        nop                                             ; 100179AF _ 90
