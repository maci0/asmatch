; ---- 1000A490 ----
?_1073: ; Local function
        push    esi                                     ; 1000A490 _ 56
        mov     esi, dword [esp+8H]                     ; 1000A491 _ 8B. 74 24, 08
        mov     eax, dword [esi]                        ; 1000A495 _ 8B. 06
        test    ah, 01H                                 ; 1000A497 _ F6. C4, 01
        jne     ?_1076                                  ; 1000A49A _ 0F 85, 000000BF
        xor     eax, eax                                ; 1000A4A0 _ 33. C0
        xor     ecx, ecx                                ; 1000A4A2 _ 33. C9
        mov     ax, word [esi+14CH]                     ; 1000A4A4 _ 66: 8B. 86, 0000014C
        mov     cx, word [esi+0B2H]                     ; 1000A4AB _ 66: 8B. 8E, 000000B2
        sub     ecx, eax                                ; 1000A4B2 _ 2B. C8
        push    0                                       ; 1000A4B4 _ 6A, 00
        lea     edx, [eax+esi+0B1H]                     ; 1000A4B6 _ 8D. 94 30, 000000B1
        mov     eax, dword [esi+14H]                    ; 1000A4BD _ 8B. 46, 14
        push    ecx                                     ; 1000A4C0 _ 51
        push    edx                                     ; 1000A4C1 _ 52
        push    eax                                     ; 1000A4C2 _ 50
        call    near [imp_WS2_32_Ordinal_19]            ; 1000A4C3 _ FF. 15, 10024164(d)
        test    eax, eax                                ; 1000A4C9 _ 85. C0
        jnz     ?_1074                                  ; 1000A4CB _ 75, 36
        call    near [imp_GetTickCount]                 ; 1000A4CD _ FF. 15, 1002405C(d)
        cmp     dword [esi+150H], eax                   ; 1000A4D3 _ 39. 86, 00000150
        jnc     ?_1076                                  ; 1000A4D9 _ 0F 83, 00000080
        push    1                                       ; 1000A4DF _ 6A, 01
        push    ?_5225                                  ; 1000A4E1 _ 68, 10029A04(d)
        push    1423                                    ; 1000A4E6 _ 68, 0000058F
        push    ?_5209                                  ; 1000A4EB _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A4F0 _ E8, FFFF914B
        push    esi                                     ; 1000A4F5 _ 56
        call    ?_1064                                  ; 1000A4F6 _ E8, FFFFFDE5
        add     esp, 20                                 ; 1000A4FB _ 83. C4, 14
        or      eax, 0FFFFFFFFH                         ; 1000A4FE _ 83. C8, FF
        pop     esi                                     ; 1000A501 _ 5E
        ret                                             ; 1000A502 _ C3

?_1074: cmp     eax, -1                                 ; 1000A503 _ 83. F8, FF
        jnz     ?_1075                                  ; 1000A506 _ 75, 1B
        call    near [imp_WS2_32_Ordinal_111]           ; 1000A508 _ FF. 15, 10024170(d)
        cmp     eax, 10035                              ; 1000A50E _ 3D, 00002733
        jz      ?_1076                                  ; 1000A513 _ 74, 4A
        push    esi                                     ; 1000A515 _ 56
        call    ?_1064                                  ; 1000A516 _ E8, FFFFFDC5
        add     esp, 4                                  ; 1000A51B _ 83. C4, 04
        or      eax, 0FFFFFFFFH                         ; 1000A51E _ 83. C8, FF
        pop     esi                                     ; 1000A521 _ 5E
        ret                                             ; 1000A522 _ C3

?_1075: test    eax, eax                                ; 1000A523 _ 85. C0
        jle     ?_1076                                  ; 1000A525 _ 7E, 38
        add     word [esi+14CH], ax                     ; 1000A527 _ 66: 01. 86, 0000014C
        call    near [imp_GetTickCount]                 ; 1000A52E _ FF. 15, 1002405C(d)
        mov     cx, word [esi+14CH]                     ; 1000A534 _ 66: 8B. 8E, 0000014C
        add     eax, 300000                             ; 1000A53B _ 05, 000493E0
        cmp     cx, word [esi+0B2H]                     ; 1000A540 _ 66: 3B. 8E, 000000B2
        mov     dword [esi+150H], eax                   ; 1000A547 _ 89. 86, 00000150
        jnz     ?_1076                                  ; 1000A54D _ 75, 10
        mov     eax, dword [esi]                        ; 1000A54F _ 8B. 06
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+14CH], 0                      ; 1000A551 _ 66: C7. 86, 0000014C, 0000
        or      ah, 01H                                 ; 1000A55A _ 80. CC, 01
        mov     dword [esi], eax                        ; 1000A55D _ 89. 06
?_1076: xor     eax, eax                                ; 1000A55F _ 33. C0
        pop     esi                                     ; 1000A561 _ 5E
        ret                                             ; 1000A562 _ C3

        nop                                             ; 1000A563 _ 90
        nop                                             ; 1000A564 _ 90
        nop                                             ; 1000A565 _ 90
        nop                                             ; 1000A566 _ 90
        nop                                             ; 1000A567 _ 90
        nop                                             ; 1000A568 _ 90
        nop                                             ; 1000A569 _ 90
        nop                                             ; 1000A56A _ 90
        nop                                             ; 1000A56B _ 90
        nop                                             ; 1000A56C _ 90
        nop                                             ; 1000A56D _ 90
        nop                                             ; 1000A56E _ 90
        nop                                             ; 1000A56F _ 90
