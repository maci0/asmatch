; ---- 10002210 ----
?_0129: ; Local function
        push    ecx                                     ; 10002210 _ 51
        push    ebx                                     ; 10002211 _ 53
        push    ebp                                     ; 10002212 _ 55
        push    esi                                     ; 10002213 _ 56
        mov     esi, dword [esp+14H]                    ; 10002214 _ 8B. 74 24, 14
        push    edi                                     ; 10002218 _ 57
        xor     edi, edi                                ; 10002219 _ 33. FF
        mov     ebp, 2                                  ; 1000221B _ BD, 00000002
?_0130: mov     eax, dword [esi+6CH]                    ; 10002220 _ 8B. 46, 6C
        cmp     eax, 262                                ; 10002223 _ 3D, 00000106
        jnc     ?_0132                                  ; 10002228 _ 73, 27
        push    esi                                     ; 1000222A _ 56
        call    ?_0081                                  ; 1000222B _ E8, FFFFF990
        mov     eax, dword [esi+6CH]                    ; 10002230 _ 8B. 46, 6C
        mov     ebx, dword [esp+20H]                    ; 10002233 _ 8B. 5C 24, 20
        add     esp, 4                                  ; 10002237 _ 83. C4, 04
        cmp     eax, 262                                ; 1000223A _ 3D, 00000106
        jnc     ?_0131                                  ; 1000223F _ 73, 08
        test    ebx, ebx                                ; 10002241 _ 85. DB
        je      ?_0153                                  ; 10002243 _ 0F 84, 000003E9
?_0131: test    eax, eax                                ; 10002249 _ 85. C0
        je      ?_0148                                  ; 1000224B _ 0F 84, 00000319
?_0132: cmp     eax, 3                                  ; 10002251 _ 83. F8, 03
        jc      ?_0133                                  ; 10002254 _ 72, 41
        mov     eax, dword [esi+40H]                    ; 10002256 _ 8B. 46, 40
        mov     ecx, dword [esi+50H]                    ; 10002259 _ 8B. 4E, 50
        mov     edx, dword [esi+64H]                    ; 1000225C _ 8B. 56, 64
        mov     edi, dword [esi+4CH]                    ; 1000225F _ 8B. 7E, 4C
        shl     eax, cl                                 ; 10002262 _ D3. E0
        mov     ecx, dword [esi+30H]                    ; 10002264 _ 8B. 4E, 30
        xor     ebx, ebx                                ; 10002267 _ 33. DB
        mov     bl, byte [ecx+edx+2H]                   ; 10002269 _ 8A. 5C 11, 02
        mov     ecx, dword [esi+3CH]                    ; 1000226D _ 8B. 4E, 3C
        xor     eax, ebx                                ; 10002270 _ 33. C3
        and     eax, edi                                ; 10002272 _ 23. C7
        xor     edi, edi                                ; 10002274 _ 33. FF
        mov     dword [esi+40H], eax                    ; 10002276 _ 89. 46, 40
        mov     di, word [ecx+eax*2]                    ; 10002279 _ 66: 8B. 3C 41
        mov     eax, dword [esi+2CH]                    ; 1000227D _ 8B. 46, 2C
        mov     ecx, dword [esi+38H]                    ; 10002280 _ 8B. 4E, 38
        and     eax, edx                                ; 10002283 _ 23. C2
        mov     word [ecx+eax*2], di                    ; 10002285 _ 66: 89. 3C 41
        mov     edx, dword [esi+40H]                    ; 10002289 _ 8B. 56, 40
        mov     eax, dword [esi+3CH]                    ; 1000228C _ 8B. 46, 3C
        mov     cx, word [esi+64H]                      ; 1000228F _ 66: 8B. 4E, 64
        mov     word [eax+edx*2], cx                    ; 10002293 _ 66: 89. 0C 50
?_0133: mov     edx, dword [esi+58H]                    ; 10002297 _ 8B. 56, 58
        mov     eax, dword [esi+68H]                    ; 1000229A _ 8B. 46, 68
        test    edi, edi                                ; 1000229D _ 85. FF
        mov     dword [esi+70H], edx                    ; 1000229F _ 89. 56, 70
        mov     dword [esi+5CH], eax                    ; 100022A2 _ 89. 46, 5C
        mov     dword [esi+58H], ebp                    ; 100022A5 _ 89. 6E, 58
        jz      ?_0136                                  ; 100022A8 _ 74, 58
        mov     eax, dword [esi+78H]                    ; 100022AA _ 8B. 46, 78
        mov     ecx, edx                                ; 100022AD _ 8B. CA
        cmp     ecx, eax                                ; 100022AF _ 3B. C8
        jnc     ?_0136                                  ; 100022B1 _ 73, 4F
        mov     edx, dword [esi+64H]                    ; 100022B3 _ 8B. 56, 64
        mov     eax, dword [esi+24H]                    ; 100022B6 _ 8B. 46, 24
        sub     edx, edi                                ; 100022B9 _ 2B. D7
        sub     eax, 262                                ; 100022BB _ 2D, 00000106
        cmp     edx, eax                                ; 100022C0 _ 3B. D0
        ja      ?_0136                                  ; 100022C2 _ 77, 3E
        cmp     dword [esi+80H], ebp                    ; 100022C4 _ 39. AE, 00000080
        jz      ?_0134                                  ; 100022CA _ 74, 0D
        push    edi                                     ; 100022CC _ 57
        push    esi                                     ; 100022CD _ 56
        call    ?_0118                                  ; 100022CE _ E8, FFFFFDCD
        add     esp, 8                                  ; 100022D3 _ 83. C4, 08
        mov     dword [esi+58H], eax                    ; 100022D6 _ 89. 46, 58
?_0134: mov     eax, dword [esi+58H]                    ; 100022D9 _ 8B. 46, 58
        cmp     eax, 5                                  ; 100022DC _ 83. F8, 05
        ja      ?_0136                                  ; 100022DF _ 77, 21
        cmp     dword [esi+80H], 1                      ; 100022E1 _ 83. BE, 00000080, 01
        jz      ?_0135                                  ; 100022E8 _ 74, 15
        cmp     eax, 3                                  ; 100022EA _ 83. F8, 03
        jnz     ?_0136                                  ; 100022ED _ 75, 13
        mov     ecx, dword [esi+64H]                    ; 100022EF _ 8B. 4E, 64
        mov     edx, dword [esi+68H]                    ; 100022F2 _ 8B. 56, 68
        sub     ecx, edx                                ; 100022F5 _ 2B. CA
        cmp     ecx, 4096                               ; 100022F7 _ 81. F9, 00001000
        jbe     ?_0136                                  ; 100022FD _ 76, 03
?_0135: mov     dword [esi+58H], ebp                    ; 100022FF _ 89. 6E, 58
?_0136: mov     eax, dword [esi+70H]                    ; 10002302 _ 8B. 46, 70
        cmp     eax, 3                                  ; 10002305 _ 83. F8, 03
        jc      ?_0143                                  ; 10002308 _ 0F 82, 00000185
        cmp     dword [esi+58H], eax                    ; 1000230E _ 39. 46, 58
        ja      ?_0143                                  ; 10002311 _ 0F 87, 0000017C
        mov     edx, dword [esi+64H]                    ; 10002317 _ 8B. 56, 64
        mov     eax, dword [esi+6CH]                    ; 1000231A _ 8B. 46, 6C
        mov     cl, byte [esi+70H]                      ; 1000231D _ 8A. 4E, 70
        mov     ebx, dword [esi+169CH]                  ; 10002320 _ 8B. 9E, 0000169C
        lea     ebp, [edx+eax-3H]                       ; 10002326 _ 8D. 6C 02, FD
        mov     ax, dx                                  ; 1000232A _ 66: 8B. C2
        sub     ax, word [esi+5CH]                      ; 1000232D _ 66: 2B. 46, 5C
        mov     edx, dword [esi+1698H]                  ; 10002331 _ 8B. 96, 00001698
        sub     cl, 3                                   ; 10002337 _ 80. E9, 03
        dec     eax                                     ; 1000233A _ 48
        mov     byte [esp+18H], cl                      ; 1000233B _ 88. 4C 24, 18
        mov     word [ebx+edx*2], ax                    ; 1000233F _ 66: 89. 04 53
        mov     edx, dword [esi+1690H]                  ; 10002343 _ 8B. 96, 00001690
        mov     ebx, dword [esi+1698H]                  ; 10002349 _ 8B. 9E, 00001698
        add     eax, 65535                              ; 1000234F _ 05, 0000FFFF
        mov     byte [edx+ebx], cl                      ; 10002354 _ 88. 0C 1A
        mov     edx, dword [esi+1698H]                  ; 10002357 _ 8B. 96, 00001698
        mov     ecx, dword [esp+18H]                    ; 1000235D _ 8B. 4C 24, 18
        inc     edx                                     ; 10002361 _ 42
        mov     dword [esi+1698H], edx                  ; 10002362 _ 89. 96, 00001698
        and     ecx, 0FFH                               ; 10002368 _ 81. E1, 000000FF
        xor     edx, edx                                ; 1000236E _ 33. D2
        mov     dl, byte [?_4903+ecx]                   ; 10002370 _ 8A. 91, 100250FC(d)
        inc     word [esi+edx*4+490H]                   ; 10002376 _ 66: FF. 84 96, 00000490
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 256                                 ; 1000237E _ 66: 3D, 0100
        lea     ecx, [esi+edx*4+490H]                   ; 10002382 _ 8D. 8C 96, 00000490
        jnc     ?_0137                                  ; 10002389 _ 73, 11
        and     eax, 0FFFFH                             ; 1000238B _ 25, 0000FFFF
        xor     ecx, ecx                                ; 10002390 _ 33. C9
        mov     cl, byte [?_4901+eax]                   ; 10002392 _ 8A. 88, 10024EFC(d)
        mov     eax, ecx                                ; 10002398 _ 8B. C1
        jmp     ?_0138                                  ; 1000239A _ EB, 12

?_0137: and     eax, 0FFFFH                             ; 1000239C _ 25, 0000FFFF
        shr     eax, 7                                  ; 100023A1 _ C1. E8, 07
        xor     edx, edx                                ; 100023A4 _ 33. D2
        mov     dl, byte [?_4902+eax]                   ; 100023A6 _ 8A. 90, 10024FFC(d)
        mov     eax, edx                                ; 100023AC _ 8B. C2
?_0138: inc     word [esi+eax*4+980H]                   ; 100023AE _ 66: FF. 84 86, 00000980
        mov     eax, dword [esi+1694H]                  ; 100023B6 _ 8B. 86, 00001694
        mov     ecx, dword [esi+1698H]                  ; 100023BC _ 8B. 8E, 00001698
        mov     edx, dword [esi+6CH]                    ; 100023C2 _ 8B. 56, 6C
        dec     eax                                     ; 100023C5 _ 48
        xor     ebx, ebx                                ; 100023C6 _ 33. DB
        cmp     ecx, eax                                ; 100023C8 _ 3B. C8
        mov     eax, dword [esi+70H]                    ; 100023CA _ 8B. 46, 70
        mov     ecx, 1                                  ; 100023CD _ B9, 00000001
        sete    bl                                      ; 100023D2 _ 0F 94. C3
        sub     ecx, eax                                ; 100023D5 _ 2B. C8
        add     edx, ecx                                ; 100023D7 _ 03. D1
        add     eax, -2                                 ; 100023D9 _ 83. C0, FE
        mov     dword [esi+6CH], edx                    ; 100023DC _ 89. 56, 6C
        mov     dword [esi+70H], eax                    ; 100023DF _ 89. 46, 70
?_0139: mov     ecx, dword [esi+64H]                    ; 100023E2 _ 8B. 4E, 64
        inc     ecx                                     ; 100023E5 _ 41
        mov     edx, ecx                                ; 100023E6 _ 8B. D1
        mov     dword [esi+64H], ecx                    ; 100023E8 _ 89. 4E, 64
        cmp     edx, ebp                                ; 100023EB _ 3B. D5
        ja      ?_0140                                  ; 100023ED _ 77, 3E
        mov     eax, dword [esi+40H]                    ; 100023EF _ 8B. 46, 40
        mov     ecx, dword [esi+50H]                    ; 100023F2 _ 8B. 4E, 50
        mov     edi, dword [esi+30H]                    ; 100023F5 _ 8B. 7E, 30
        shl     eax, cl                                 ; 100023F8 _ D3. E0
        xor     ecx, ecx                                ; 100023FA _ 33. C9
        mov     cl, byte [edi+edx+2H]                   ; 100023FC _ 8A. 4C 17, 02
        mov     edi, dword [esi+4CH]                    ; 10002400 _ 8B. 7E, 4C
        xor     eax, ecx                                ; 10002403 _ 33. C1
        mov     ecx, dword [esi+3CH]                    ; 10002405 _ 8B. 4E, 3C
        and     eax, edi                                ; 10002408 _ 23. C7
        xor     edi, edi                                ; 1000240A _ 33. FF
        mov     dword [esi+40H], eax                    ; 1000240C _ 89. 46, 40
        mov     di, word [ecx+eax*2]                    ; 1000240F _ 66: 8B. 3C 41
        mov     eax, dword [esi+2CH]                    ; 10002413 _ 8B. 46, 2C
        mov     ecx, dword [esi+38H]                    ; 10002416 _ 8B. 4E, 38
        and     eax, edx                                ; 10002419 _ 23. C2
        mov     word [ecx+eax*2], di                    ; 1000241B _ 66: 89. 3C 41
        mov     edx, dword [esi+40H]                    ; 1000241F _ 8B. 56, 40
        mov     eax, dword [esi+3CH]                    ; 10002422 _ 8B. 46, 3C
        mov     cx, word [esi+64H]                      ; 10002425 _ 66: 8B. 4E, 64
        mov     word [eax+edx*2], cx                    ; 10002429 _ 66: 89. 0C 50
?_0140: mov     eax, dword [esi+70H]                    ; 1000242D _ 8B. 46, 70
        dec     eax                                     ; 10002430 _ 48
        mov     dword [esi+70H], eax                    ; 10002431 _ 89. 46, 70
        jnz     ?_0139                                  ; 10002434 _ 75, AC
        mov     ecx, dword [esi+64H]                    ; 10002436 _ 8B. 4E, 64
        mov     ebp, 2                                  ; 10002439 _ BD, 00000002
        inc     ecx                                     ; 1000243E _ 41
        mov     dword [esi+60H], 0                      ; 1000243F _ C7. 46, 60, 00000000
        test    ebx, ebx                                ; 10002446 _ 85. DB
        mov     dword [esi+58H], ebp                    ; 10002448 _ 89. 6E, 58
        mov     dword [esi+64H], ecx                    ; 1000244B _ 89. 4E, 64
        je      ?_0130                                  ; 1000244E _ 0F 84, FFFFFDCC
        mov     edx, dword [esi+54H]                    ; 10002454 _ 8B. 56, 54
        test    edx, edx                                ; 10002457 _ 85. D2
        jl      ?_0141                                  ; 10002459 _ 7C, 07
        mov     eax, dword [esi+30H]                    ; 1000245B _ 8B. 46, 30
        add     eax, edx                                ; 1000245E _ 03. C2
        jmp     ?_0142                                  ; 10002460 _ EB, 02

?_0141: xor     eax, eax                                ; 10002462 _ 33. C0
?_0142: sub     ecx, edx                                ; 10002464 _ 2B. CA
        push    0                                       ; 10002466 _ 6A, 00
        push    ecx                                     ; 10002468 _ 51
        push    eax                                     ; 10002469 _ 50
        push    esi                                     ; 1000246A _ 56
        call    ?_0731                                  ; 1000246B _ E8, 00004E40
        mov     eax, dword [esi]                        ; 10002470 _ 8B. 06
        mov     edx, dword [esi+64H]                    ; 10002472 _ 8B. 56, 64
        push    eax                                     ; 10002475 _ 50
        mov     dword [esi+54H], edx                    ; 10002476 _ 89. 56, 54
        call    ?_0055                                  ; 10002479 _ E8, FFFFF412
        mov     ecx, dword [esi]                        ; 1000247E _ 8B. 0E
        add     esp, 20                                 ; 10002480 _ 83. C4, 14
        mov     eax, dword [ecx+10H]                    ; 10002483 _ 8B. 41, 10
        test    eax, eax                                ; 10002486 _ 85. C0
        je      ?_0153                                  ; 10002488 _ 0F 84, 000001A4
        jmp     ?_0130                                  ; 1000248E _ E9, FFFFFD8D

?_0143: mov     eax, dword [esi+60H]                    ; 10002493 _ 8B. 46, 60
        test    eax, eax                                ; 10002496 _ 85. C0
        je      ?_0147                                  ; 10002498 _ 0F 84, 000000B2
        mov     edx, dword [esi+64H]                    ; 1000249E _ 8B. 56, 64
        mov     eax, dword [esi+30H]                    ; 100024A1 _ 8B. 46, 30
        mov     ecx, dword [esi+1698H]                  ; 100024A4 _ 8B. 8E, 00001698
        mov     al, byte [edx+eax-1H]                   ; 100024AA _ 8A. 44 02, FF
        mov     edx, dword [esi+169CH]                  ; 100024AE _ 8B. 96, 0000169C
        mov     byte [esp+10H], al                      ; 100024B4 _ 88. 44 24, 10
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx+ecx*2], 0                     ; 100024B8 _ 66: C7. 04 4A, 0000
        mov     ecx, dword [esi+1690H]                  ; 100024BE _ 8B. 8E, 00001690
        mov     edx, dword [esi+1698H]                  ; 100024C4 _ 8B. 96, 00001698
        mov     byte [ecx+edx], al                      ; 100024CA _ 88. 04 11
        mov     eax, dword [esp+10H]                    ; 100024CD _ 8B. 44 24, 10
        mov     edx, dword [esi+1698H]                  ; 100024D1 _ 8B. 96, 00001698
        and     eax, 0FFH                               ; 100024D7 _ 25, 000000FF
        inc     edx                                     ; 100024DC _ 42
        lea     eax, [esi+eax*4+8CH]                    ; 100024DD _ 8D. 84 86, 0000008C
        mov     dword [esi+1698H], edx                  ; 100024E4 _ 89. 96, 00001698
        inc     word [eax]                              ; 100024EA _ 66: FF. 00
        mov     ecx, dword [esi+1694H]                  ; 100024ED _ 8B. 8E, 00001694
        mov     eax, dword [esi+1698H]                  ; 100024F3 _ 8B. 86, 00001698
        dec     ecx                                     ; 100024F9 _ 49
        cmp     eax, ecx                                ; 100024FA _ 3B. C1
        jnz     ?_0146                                  ; 100024FC _ 75, 32
        mov     ecx, dword [esi+54H]                    ; 100024FE _ 8B. 4E, 54
        test    ecx, ecx                                ; 10002501 _ 85. C9
        jl      ?_0144                                  ; 10002503 _ 7C, 09
        mov     edx, dword [esi+30H]                    ; 10002505 _ 8B. 56, 30
        mov     eax, ecx                                ; 10002508 _ 8B. C1
        add     eax, edx                                ; 1000250A _ 03. C2
        jmp     ?_0145                                  ; 1000250C _ EB, 02

?_0144: xor     eax, eax                                ; 1000250E _ 33. C0
?_0145: mov     edx, dword [esi+64H]                    ; 10002510 _ 8B. 56, 64
        push    0                                       ; 10002513 _ 6A, 00
        sub     edx, ecx                                ; 10002515 _ 2B. D1
        push    edx                                     ; 10002517 _ 52
        push    eax                                     ; 10002518 _ 50
        push    esi                                     ; 10002519 _ 56
        call    ?_0731                                  ; 1000251A _ E8, 00004D91
        mov     ecx, dword [esi]                        ; 1000251F _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 10002521 _ 8B. 46, 64
        push    ecx                                     ; 10002524 _ 51
        mov     dword [esi+54H], eax                    ; 10002525 _ 89. 46, 54
        call    ?_0055                                  ; 10002528 _ E8, FFFFF363
        add     esp, 20                                 ; 1000252D _ 83. C4, 14
?_0146: mov     edx, dword [esi+64H]                    ; 10002530 _ 8B. 56, 64
        mov     ecx, dword [esi+6CH]                    ; 10002533 _ 8B. 4E, 6C
        inc     edx                                     ; 10002536 _ 42
        dec     ecx                                     ; 10002537 _ 49
        mov     dword [esi+64H], edx                    ; 10002538 _ 89. 56, 64
        mov     edx, dword [esi]                        ; 1000253B _ 8B. 16
        mov     dword [esi+6CH], ecx                    ; 1000253D _ 89. 4E, 6C
        mov     eax, dword [edx+10H]                    ; 10002540 _ 8B. 42, 10
        test    eax, eax                                ; 10002543 _ 85. C0
        je      ?_0153                                  ; 10002545 _ 0F 84, 000000E7
        jmp     ?_0130                                  ; 1000254B _ E9, FFFFFCD0

?_0147: mov     ecx, dword [esi+64H]                    ; 10002550 _ 8B. 4E, 64
        mov     eax, dword [esi+6CH]                    ; 10002553 _ 8B. 46, 6C
        inc     ecx                                     ; 10002556 _ 41
        dec     eax                                     ; 10002557 _ 48
        mov     dword [esi+60H], 1                      ; 10002558 _ C7. 46, 60, 00000001
        mov     dword [esi+64H], ecx                    ; 1000255F _ 89. 4E, 64
        mov     dword [esi+6CH], eax                    ; 10002562 _ 89. 46, 6C
        jmp     ?_0130                                  ; 10002565 _ E9, FFFFFCB6

?_0148: mov     eax, dword [esi+60H]                    ; 1000256A _ 8B. 46, 60
        test    eax, eax                                ; 1000256D _ 85. C0
        jz      ?_0149                                  ; 1000256F _ 74, 5C
        mov     eax, dword [esi+64H]                    ; 10002571 _ 8B. 46, 64
        mov     ecx, dword [esi+30H]                    ; 10002574 _ 8B. 4E, 30
        mov     edx, dword [esi+1698H]                  ; 10002577 _ 8B. 96, 00001698
        mov     al, byte [eax+ecx-1H]                   ; 1000257D _ 8A. 44 08, FF
        mov     ecx, dword [esi+169CH]                  ; 10002581 _ 8B. 8E, 0000169C
        mov     byte [esp+1CH], al                      ; 10002587 _ 88. 44 24, 1C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ecx+edx*2], 0                     ; 1000258B _ 66: C7. 04 51, 0000
        mov     edx, dword [esi+1690H]                  ; 10002591 _ 8B. 96, 00001690
        mov     ecx, dword [esi+1698H]                  ; 10002597 _ 8B. 8E, 00001698
        mov     byte [edx+ecx], al                      ; 1000259D _ 88. 04 0A
        mov     eax, dword [esi+1698H]                  ; 100025A0 _ 8B. 86, 00001698
        mov     edx, dword [esp+1CH]                    ; 100025A6 _ 8B. 54 24, 1C
        inc     eax                                     ; 100025AA _ 40
        and     edx, 0FFH                               ; 100025AB _ 81. E2, 000000FF
        mov     dword [esi+1698H], eax                  ; 100025B1 _ 89. 86, 00001698
        inc     word [esi+edx*4+8CH]                    ; 100025B7 _ 66: FF. 84 96, 0000008C
        mov     dword [esi+60H], 0                      ; 100025BF _ C7. 46, 60, 00000000
        lea     eax, [esi+edx*4+8CH]                    ; 100025C6 _ 8D. 84 96, 0000008C
?_0149: mov     ecx, dword [esi+54H]                    ; 100025CD _ 8B. 4E, 54
        test    ecx, ecx                                ; 100025D0 _ 85. C9
        jl      ?_0150                                  ; 100025D2 _ 7C, 07
        mov     eax, dword [esi+30H]                    ; 100025D4 _ 8B. 46, 30
        add     eax, ecx                                ; 100025D7 _ 03. C1
        jmp     ?_0151                                  ; 100025D9 _ EB, 02

?_0150: xor     eax, eax                                ; 100025DB _ 33. C0
?_0151: xor     edx, edx                                ; 100025DD _ 33. D2
        cmp     ebx, 4                                  ; 100025DF _ 83. FB, 04
        sete    dl                                      ; 100025E2 _ 0F 94. C2
        push    edx                                     ; 100025E5 _ 52
        mov     edx, dword [esi+64H]                    ; 100025E6 _ 8B. 56, 64
        sub     edx, ecx                                ; 100025E9 _ 2B. D1
        push    edx                                     ; 100025EB _ 52
        push    eax                                     ; 100025EC _ 50
        push    esi                                     ; 100025ED _ 56
        call    ?_0731                                  ; 100025EE _ E8, 00004CBD
        mov     ecx, dword [esi]                        ; 100025F3 _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 100025F5 _ 8B. 46, 64
        push    ecx                                     ; 100025F8 _ 51
        mov     dword [esi+54H], eax                    ; 100025F9 _ 89. 46, 54
        call    ?_0055                                  ; 100025FC _ E8, FFFFF28F
        mov     edx, dword [esi]                        ; 10002601 _ 8B. 16
        add     esp, 20                                 ; 10002603 _ 83. C4, 14
        mov     eax, dword [edx+10H]                    ; 10002606 _ 8B. 42, 10
        test    eax, eax                                ; 10002609 _ 85. C0
        jnz     ?_0152                                  ; 1000260B _ 75, 11
        xor     eax, eax                                ; 1000260D _ 33. C0
        cmp     ebx, 4                                  ; 1000260F _ 83. FB, 04
        setne   al                                      ; 10002612 _ 0F 95. C0
        dec     eax                                     ; 10002615 _ 48
        pop     edi                                     ; 10002616 _ 5F
        and     eax, ebp                                ; 10002617 _ 23. C5
        pop     esi                                     ; 10002619 _ 5E
        pop     ebp                                     ; 1000261A _ 5D
        pop     ebx                                     ; 1000261B _ 5B
        pop     ecx                                     ; 1000261C _ 59
        ret                                             ; 1000261D _ C3

?_0152: mov     eax, ebx                                ; 1000261E _ 8B. C3
        pop     edi                                     ; 10002620 _ 5F
        sub     eax, 4                                  ; 10002621 _ 83. E8, 04
        pop     esi                                     ; 10002624 _ 5E
        neg     eax                                     ; 10002625 _ F7. D8
        sbb     eax, eax                                ; 10002627 _ 1B. C0
        pop     ebp                                     ; 10002629 _ 5D
        and     al, 0FFFFFFFEH                          ; 1000262A _ 24, FE
        pop     ebx                                     ; 1000262C _ 5B
        add     eax, 3                                  ; 1000262D _ 83. C0, 03
        pop     ecx                                     ; 10002630 _ 59
        ret                                             ; 10002631 _ C3
