; ---- 10005390 ----
?_0498: ; Local function
        sub     esp, 20                                 ; 10005390 _ 83. EC, 14
        mov     ecx, dword [esp+28H]                    ; 10005393 _ 8B. 4C 24, 28
        push    ebx                                     ; 10005397 _ 53
        push    ebp                                     ; 10005398 _ 55
        push    esi                                     ; 10005399 _ 56
        mov     ebx, dword [ecx+34H]                    ; 1000539A _ 8B. 59, 34
        mov     esi, dword [ecx+30H]                    ; 1000539D _ 8B. 71, 30
        mov     edx, dword [ecx+20H]                    ; 100053A0 _ 8B. 51, 20
        push    edi                                     ; 100053A3 _ 57
        mov     edi, dword [esp+3CH]                    ; 100053A4 _ 8B. 7C 24, 3C
        cmp     ebx, esi                                ; 100053A8 _ 3B. DE
        mov     dword [esp+14H], ebx                    ; 100053AA _ 89. 5C 24, 14
        mov     eax, dword [edi+4H]                     ; 100053AE _ 8B. 47, 04
        mov     ebp, dword [edi]                        ; 100053B1 _ 8B. 2F
        mov     dword [esp+10H], eax                    ; 100053B3 _ 89. 44 24, 10
        mov     eax, dword [ecx+1CH]                    ; 100053B7 _ 8B. 41, 1C
        jnc     ?_0499                                  ; 100053BA _ 73, 09
        sub     esi, ebx                                ; 100053BC _ 2B. F3
        dec     esi                                     ; 100053BE _ 4E
        mov     dword [esp+18H], esi                    ; 100053BF _ 89. 74 24, 18
        jmp     ?_0500                                  ; 100053C3 _ EB, 09

?_0499: mov     ecx, dword [ecx+2CH]                    ; 100053C5 _ 8B. 49, 2C
        sub     ecx, ebx                                ; 100053C8 _ 2B. CB
        mov     dword [esp+18H], ecx                    ; 100053CA _ 89. 4C 24, 18
?_0500: mov     ecx, dword [esp+28H]                    ; 100053CE _ 8B. 4C 24, 28
        mov     ecx, dword [?_5137+ecx*4]               ; 100053D2 _ 8B. 0C 8D, 100287A0(d)
        mov     dword [esp+1CH], ecx                    ; 100053D9 _ 89. 4C 24, 1C
        mov     ecx, dword [esp+2CH]                    ; 100053DD _ 8B. 4C 24, 2C
        mov     ecx, dword [?_5137+ecx*4]               ; 100053E1 _ 8B. 0C 8D, 100287A0(d)
        mov     dword [esp+20H], ecx                    ; 100053E8 _ 89. 4C 24, 20
?_0501: cmp     eax, 20                                 ; 100053EC _ 83. F8, 14
        jnc     ?_0503                                  ; 100053EF _ 73, 1F
?_0502: mov     ecx, dword [esp+10H]                    ; 100053F1 _ 8B. 4C 24, 10
        dec     ecx                                     ; 100053F5 _ 49
        mov     dword [esp+10H], ecx                    ; 100053F6 _ 89. 4C 24, 10
        xor     ecx, ecx                                ; 100053FA _ 33. C9
        mov     cl, byte [ebp]                          ; 100053FC _ 8A. 4D, 00
        mov     esi, ecx                                ; 100053FF _ 8B. F1
        mov     ecx, eax                                ; 10005401 _ 8B. C8
        shl     esi, cl                                 ; 10005403 _ D3. E6
        add     eax, 8                                  ; 10005405 _ 83. C0, 08
        or      edx, esi                                ; 10005408 _ 0B. D6
        inc     ebp                                     ; 1000540A _ 45
        cmp     eax, 20                                 ; 1000540B _ 83. F8, 14
        jc      ?_0502                                  ; 1000540E _ 72, E1
?_0503: mov     ecx, dword [esp+1CH]                    ; 10005410 _ 8B. 4C 24, 1C
        mov     esi, dword [esp+30H]                    ; 10005414 _ 8B. 74 24, 30
        and     ecx, edx                                ; 10005418 _ 23. CA
        xor     ebx, ebx                                ; 1000541A _ 33. DB
        mov     bl, byte [esi+ecx*8]                    ; 1000541C _ 8A. 1C CE
        lea     esi, [esi+ecx*8]                        ; 1000541F _ 8D. 34 CE
        test    ebx, ebx                                ; 10005422 _ 85. DB
        je      ?_0515                                  ; 10005424 _ 0F 84, 0000019E
        xor     ecx, ecx                                ; 1000542A _ 33. C9
        mov     cl, byte [esi+1H]                       ; 1000542C _ 8A. 4E, 01
        shr     edx, cl                                 ; 1000542F _ D3. EA
        sub     eax, ecx                                ; 10005431 _ 2B. C1
        mov     dword [esp+2CH], ecx                    ; 10005433 _ 89. 4C 24, 2C
        test    bl, 10H                                 ; 10005437 _ F6. C3, 10
        jnz     ?_0505                                  ; 1000543A _ 75, 39
?_0504: test    bl, 40H                                 ; 1000543C _ F6. C3, 40
        jne     ?_0520                                  ; 1000543F _ 0F 85, 0000022A
        mov     ecx, dword [?_5137+ebx*4]               ; 10005445 _ 8B. 0C 9D, 100287A0(d)
        mov     ebx, dword [esi+4H]                     ; 1000544C _ 8B. 5E, 04
        and     ecx, edx                                ; 1000544F _ 23. CA
        add     ecx, ebx                                ; 10005451 _ 03. CB
        xor     ebx, ebx                                ; 10005453 _ 33. DB
        mov     bl, byte [esi+ecx*8]                    ; 10005455 _ 8A. 1C CE
        lea     esi, [esi+ecx*8]                        ; 10005458 _ 8D. 34 CE
        test    ebx, ebx                                ; 1000545B _ 85. DB
        je      ?_0515                                  ; 1000545D _ 0F 84, 00000165
        xor     ecx, ecx                                ; 10005463 _ 33. C9
        mov     cl, byte [esi+1H]                       ; 10005465 _ 8A. 4E, 01
        shr     edx, cl                                 ; 10005468 _ D3. EA
        sub     eax, ecx                                ; 1000546A _ 2B. C1
        mov     dword [esp+2CH], ecx                    ; 1000546C _ 89. 4C 24, 2C
        test    bl, 10H                                 ; 10005470 _ F6. C3, 10
        jz      ?_0504                                  ; 10005473 _ 74, C7
?_0505: and     ebx, 0FH                                ; 10005475 _ 83. E3, 0F
        sub     eax, ebx                                ; 10005478 _ 2B. C3
        mov     ecx, dword [?_5137+ebx*4]               ; 1000547A _ 8B. 0C 9D, 100287A0(d)
        and     ecx, edx                                ; 10005481 _ 23. CA
        add     ecx, dword [esi+4H]                     ; 10005483 _ 03. 4E, 04
        mov     dword [esp+28H], ecx                    ; 10005486 _ 89. 4C 24, 28
        mov     ecx, ebx                                ; 1000548A _ 8B. CB
        shr     edx, cl                                 ; 1000548C _ D3. EA
        cmp     eax, 15                                 ; 1000548E _ 83. F8, 0F
        jnc     ?_0507                                  ; 10005491 _ 73, 1F
?_0506: mov     ecx, dword [esp+10H]                    ; 10005493 _ 8B. 4C 24, 10
        dec     ecx                                     ; 10005497 _ 49
        mov     dword [esp+10H], ecx                    ; 10005498 _ 89. 4C 24, 10
        xor     ecx, ecx                                ; 1000549C _ 33. C9
        mov     cl, byte [ebp]                          ; 1000549E _ 8A. 4D, 00
        mov     esi, ecx                                ; 100054A1 _ 8B. F1
        mov     ecx, eax                                ; 100054A3 _ 8B. C8
        shl     esi, cl                                 ; 100054A5 _ D3. E6
        add     eax, 8                                  ; 100054A7 _ 83. C0, 08
        or      edx, esi                                ; 100054AA _ 0B. D6
        inc     ebp                                     ; 100054AC _ 45
        cmp     eax, 15                                 ; 100054AD _ 83. F8, 0F
        jc      ?_0506                                  ; 100054B0 _ 72, E1
?_0507: mov     ecx, dword [esp+20H]                    ; 100054B2 _ 8B. 4C 24, 20
        mov     esi, dword [esp+34H]                    ; 100054B6 _ 8B. 74 24, 34
        and     ecx, edx                                ; 100054BA _ 23. CA
        xor     ebx, ebx                                ; 100054BC _ 33. DB
        mov     bl, byte [esi+ecx*8]                    ; 100054BE _ 8A. 1C CE
        lea     esi, [esi+ecx*8]                        ; 100054C1 _ 8D. 34 CE
        xor     ecx, ecx                                ; 100054C4 _ 33. C9
        mov     cl, byte [esi+1H]                       ; 100054C6 _ 8A. 4E, 01
        shr     edx, cl                                 ; 100054C9 _ D3. EA
        sub     eax, ecx                                ; 100054CB _ 2B. C1
        mov     dword [esp+2CH], ecx                    ; 100054CD _ 89. 4C 24, 2C
        test    bl, 10H                                 ; 100054D1 _ F6. C3, 10
        jnz     ?_0509                                  ; 100054D4 _ 75, 31
?_0508: test    bl, 40H                                 ; 100054D6 _ F6. C3, 40
        jne     ?_0517                                  ; 100054D9 _ 0F 85, 00000123
        mov     ecx, dword [?_5137+ebx*4]               ; 100054DF _ 8B. 0C 9D, 100287A0(d)
        mov     ebx, dword [esi+4H]                     ; 100054E6 _ 8B. 5E, 04
        and     ecx, edx                                ; 100054E9 _ 23. CA
        add     ecx, ebx                                ; 100054EB _ 03. CB
        xor     ebx, ebx                                ; 100054ED _ 33. DB
        mov     bl, byte [esi+ecx*8]                    ; 100054EF _ 8A. 1C CE
        lea     esi, [esi+ecx*8]                        ; 100054F2 _ 8D. 34 CE
        xor     ecx, ecx                                ; 100054F5 _ 33. C9
        mov     cl, byte [esi+1H]                       ; 100054F7 _ 8A. 4E, 01
        shr     edx, cl                                 ; 100054FA _ D3. EA
        sub     eax, ecx                                ; 100054FC _ 2B. C1
        mov     dword [esp+2CH], ecx                    ; 100054FE _ 89. 4C 24, 2C
        test    bl, 10H                                 ; 10005502 _ F6. C3, 10
        jz      ?_0508                                  ; 10005505 _ 74, CF
?_0509: and     ebx, 0FH                                ; 10005507 _ 83. E3, 0F
        cmp     eax, ebx                                ; 1000550A _ 3B. C3
        jnc     ?_0511                                  ; 1000550C _ 73, 1E
?_0510: mov     edi, dword [esp+10H]                    ; 1000550E _ 8B. 7C 24, 10
        xor     ecx, ecx                                ; 10005512 _ 33. C9
        mov     cl, byte [ebp]                          ; 10005514 _ 8A. 4D, 00
        dec     edi                                     ; 10005517 _ 4F
        mov     dword [esp+10H], edi                    ; 10005518 _ 89. 7C 24, 10
        mov     edi, ecx                                ; 1000551C _ 8B. F9
        mov     ecx, eax                                ; 1000551E _ 8B. C8
        add     eax, 8                                  ; 10005520 _ 83. C0, 08
        shl     edi, cl                                 ; 10005523 _ D3. E7
        or      edx, edi                                ; 10005525 _ 0B. D7
        inc     ebp                                     ; 10005527 _ 45
        cmp     eax, ebx                                ; 10005528 _ 3B. C3
        jc      ?_0510                                  ; 1000552A _ 72, E2
?_0511: mov     edi, dword [?_5137+ebx*4]               ; 1000552C _ 8B. 3C 9D, 100287A0(d)
        mov     ecx, dword [esi+4H]                     ; 10005533 _ 8B. 4E, 04
        mov     esi, dword [esp+18H]                    ; 10005536 _ 8B. 74 24, 18
        and     edi, edx                                ; 1000553A _ 23. FA
        add     edi, ecx                                ; 1000553C _ 03. F9
        mov     ecx, ebx                                ; 1000553E _ 8B. CB
        shr     edx, cl                                 ; 10005540 _ D3. EA
        mov     ecx, dword [esp+28H]                    ; 10005542 _ 8B. 4C 24, 28
        sub     eax, ebx                                ; 10005546 _ 2B. C3
        sub     esi, ecx                                ; 10005548 _ 2B. F1
        mov     ecx, dword [esp+38H]                    ; 1000554A _ 8B. 4C 24, 38
        mov     dword [esp+18H], esi                    ; 1000554E _ 89. 74 24, 18
        mov     esi, dword [ecx+28H]                    ; 10005552 _ 8B. 71, 28
        mov     ecx, dword [esp+14H]                    ; 10005555 _ 8B. 4C 24, 14
        mov     ebx, ecx                                ; 10005559 _ 8B. D9
        sub     ebx, esi                                ; 1000555B _ 2B. DE
        cmp     ebx, edi                                ; 1000555D _ 3B. DF
        jc      ?_0512                                  ; 1000555F _ 72, 1F
        mov     esi, ecx                                ; 10005561 _ 8B. F1
        sub     esi, edi                                ; 10005563 _ 2B. F7
        mov     edi, dword [esp+28H]                    ; 10005565 _ 8B. 7C 24, 28
        inc     ecx                                     ; 10005569 _ 41
        mov     bl, byte [esi]                          ; 1000556A _ 8A. 1E
        inc     esi                                     ; 1000556C _ 46
        mov     byte [ecx-1H], bl                       ; 1000556D _ 88. 59, FF
        inc     ecx                                     ; 10005570 _ 41
        mov     bl, byte [esi]                          ; 10005571 _ 8A. 1E
        inc     esi                                     ; 10005573 _ 46
        mov     byte [ecx-1H], bl                       ; 10005574 _ 88. 59, FF
        sub     edi, 2                                  ; 10005577 _ 83. EF, 02
        mov     dword [esp+28H], edi                    ; 1000557A _ 89. 7C 24, 28
        jmp     ?_0514                                  ; 1000557E _ EB, 2D

?_0512: sub     esi, ecx                                ; 10005580 _ 2B. F1
        mov     ebx, dword [esp+28H]                    ; 10005582 _ 8B. 5C 24, 28
        add     esi, edi                                ; 10005586 _ 03. F7
        mov     edi, esi                                ; 10005588 _ 8B. FE
        mov     esi, dword [esp+38H]                    ; 1000558A _ 8B. 74 24, 38
        mov     esi, dword [esi+2CH]                    ; 1000558E _ 8B. 76, 2C
        sub     esi, edi                                ; 10005591 _ 2B. F7
        cmp     ebx, edi                                ; 10005593 _ 3B. DF
        jbe     ?_0514                                  ; 10005595 _ 76, 16
        sub     ebx, edi                                ; 10005597 _ 2B. DF
        mov     dword [esp+28H], ebx                    ; 10005599 _ 89. 5C 24, 28
?_0513: mov     bl, byte [esi]                          ; 1000559D _ 8A. 1E
        mov     byte [ecx], bl                          ; 1000559F _ 88. 19
        inc     ecx                                     ; 100055A1 _ 41
        inc     esi                                     ; 100055A2 _ 46
        dec     edi                                     ; 100055A3 _ 4F
        jnz     ?_0513                                  ; 100055A4 _ 75, F7
        mov     esi, dword [esp+38H]                    ; 100055A6 _ 8B. 74 24, 38
        mov     esi, dword [esi+28H]                    ; 100055AA _ 8B. 76, 28
?_0514: mov     bl, byte [esi]                          ; 100055AD _ 8A. 1E
        mov     edi, dword [esp+28H]                    ; 100055AF _ 8B. 7C 24, 28
        mov     byte [ecx], bl                          ; 100055B3 _ 88. 19
        inc     ecx                                     ; 100055B5 _ 41
        inc     esi                                     ; 100055B6 _ 46
        dec     edi                                     ; 100055B7 _ 4F
        mov     dword [esp+28H], edi                    ; 100055B8 _ 89. 7C 24, 28
        jnz     ?_0514                                  ; 100055BC _ 75, EF
        mov     edi, dword [esp+3CH]                    ; 100055BE _ 8B. 7C 24, 3C
        mov     dword [esp+14H], ecx                    ; 100055C2 _ 89. 4C 24, 14
        jmp     ?_0516                                  ; 100055C6 _ EB, 20

?_0515: xor     ecx, ecx                                ; 100055C8 _ 33. C9
        mov     cl, byte [esi+1H]                       ; 100055CA _ 8A. 4E, 01
        shr     edx, cl                                 ; 100055CD _ D3. EA
        sub     eax, ecx                                ; 100055CF _ 2B. C1
        mov     cl, byte [esi+4H]                       ; 100055D1 _ 8A. 4E, 04
        mov     esi, dword [esp+14H]                    ; 100055D4 _ 8B. 74 24, 14
        mov     byte [esi], cl                          ; 100055D8 _ 88. 0E
        mov     ecx, dword [esp+18H]                    ; 100055DA _ 8B. 4C 24, 18
        inc     esi                                     ; 100055DE _ 46
        dec     ecx                                     ; 100055DF _ 49
        mov     dword [esp+14H], esi                    ; 100055E0 _ 89. 74 24, 14
        mov     dword [esp+18H], ecx                    ; 100055E4 _ 89. 4C 24, 18
?_0516: mov     ecx, dword [esp+18H]                    ; 100055E8 _ 8B. 4C 24, 18
        mov     ebx, dword [esp+10H]                    ; 100055EC _ 8B. 5C 24, 10
        cmp     ecx, 258                                ; 100055F0 _ 81. F9, 00000102
        jc      ?_0518                                  ; 100055F6 _ 72, 2C
        cmp     ebx, 10                                 ; 100055F8 _ 83. FB, 0A
        jc      ?_0518                                  ; 100055FB _ 72, 27
        jmp     ?_0501                                  ; 100055FD _ E9, FFFFFDEA

?_0517: mov     ecx, dword [edi+4H]                     ; 10005602 _ 8B. 4F, 04
        mov     ebx, dword [esp+10H]                    ; 10005605 _ 8B. 5C 24, 10
        mov     esi, eax                                ; 10005609 _ 8B. F0
        sub     ecx, ebx                                ; 1000560B _ 2B. CB
        shr     esi, 3                                  ; 1000560D _ C1. EE, 03
        cmp     esi, ecx                                ; 10005610 _ 3B. F1
        mov     dword [edi+18H], ?_5119                 ; 10005612 _ C7. 47, 18, 10027504(d)
        jnc     ?_0524                                  ; 10005619 _ 0F 83, 000000C2
        jmp     ?_0523                                  ; 1000561F _ E9, 000000BB

?_0518: mov     ecx, dword [edi+4H]                     ; 10005624 _ 8B. 4F, 04
        mov     esi, eax                                ; 10005627 _ 8B. F0
        sub     ecx, ebx                                ; 10005629 _ 2B. CB
        shr     esi, 3                                  ; 1000562B _ C1. EE, 03
        cmp     esi, ecx                                ; 1000562E _ 3B. F1
        jnc     ?_0519                                  ; 10005630 _ 73, 02
        mov     ecx, esi                                ; 10005632 _ 8B. CE
?_0519: mov     esi, dword [esp+38H]                    ; 10005634 _ 8B. 74 24, 38
        sub     ebp, ecx                                ; 10005638 _ 2B. E9
        mov     dword [esi+20H], edx                    ; 1000563A _ 89. 56, 20
        lea     edx, [ecx*8]                            ; 1000563D _ 8D. 14 CD, 00000000
        sub     eax, edx                                ; 10005644 _ 2B. C2
        add     ecx, ebx                                ; 10005646 _ 03. CB
        mov     dword [esi+1CH], eax                    ; 10005648 _ 89. 46, 1C
        mov     edx, dword [edi]                        ; 1000564B _ 8B. 17
        mov     eax, ebp                                ; 1000564D _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 1000564F _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 10005652 _ 8B. 4F, 08
        sub     eax, edx                                ; 10005655 _ 2B. C2
        add     ecx, eax                                ; 10005657 _ 03. C8
        mov     dword [edi], ebp                        ; 10005659 _ 89. 2F
        mov     dword [edi+8H], ecx                     ; 1000565B _ 89. 4F, 08
        mov     ecx, dword [esp+14H]                    ; 1000565E _ 8B. 4C 24, 14
        mov     dword [esi+34H], ecx                    ; 10005662 _ 89. 4E, 34
        pop     edi                                     ; 10005665 _ 5F
        pop     esi                                     ; 10005666 _ 5E
        pop     ebp                                     ; 10005667 _ 5D
        xor     eax, eax                                ; 10005668 _ 33. C0
        pop     ebx                                     ; 1000566A _ 5B
        add     esp, 20                                 ; 1000566B _ 83. C4, 14
        ret                                             ; 1000566E _ C3

?_0520: test    bl, 20H                                 ; 1000566F _ F6. C3, 20
        jz      ?_0522                                  ; 10005672 _ 74, 52
        mov     ecx, dword [edi+4H]                     ; 10005674 _ 8B. 4F, 04
        mov     ebx, dword [esp+10H]                    ; 10005677 _ 8B. 5C 24, 10
        mov     esi, eax                                ; 1000567B _ 8B. F0
        sub     ecx, ebx                                ; 1000567D _ 2B. CB
        shr     esi, 3                                  ; 1000567F _ C1. EE, 03
        cmp     esi, ecx                                ; 10005682 _ 3B. F1
        jnc     ?_0521                                  ; 10005684 _ 73, 02
        mov     ecx, esi                                ; 10005686 _ 8B. CE
?_0521: mov     esi, dword [esp+38H]                    ; 10005688 _ 8B. 74 24, 38
        sub     ebp, ecx                                ; 1000568C _ 2B. E9
        mov     dword [esi+20H], edx                    ; 1000568E _ 89. 56, 20
        lea     edx, [ecx*8]                            ; 10005691 _ 8D. 14 CD, 00000000
        sub     eax, edx                                ; 10005698 _ 2B. C2
        add     ecx, ebx                                ; 1000569A _ 03. CB
        mov     dword [esi+1CH], eax                    ; 1000569C _ 89. 46, 1C
        mov     edx, dword [edi]                        ; 1000569F _ 8B. 17
        mov     eax, ebp                                ; 100056A1 _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 100056A3 _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 100056A6 _ 8B. 4F, 08
        sub     eax, edx                                ; 100056A9 _ 2B. C2
        add     ecx, eax                                ; 100056AB _ 03. C8
        mov     dword [edi], ebp                        ; 100056AD _ 89. 2F
        mov     dword [edi+8H], ecx                     ; 100056AF _ 89. 4F, 08
        mov     ecx, dword [esp+14H]                    ; 100056B2 _ 8B. 4C 24, 14
        mov     dword [esi+34H], ecx                    ; 100056B6 _ 89. 4E, 34
        pop     edi                                     ; 100056B9 _ 5F
        pop     esi                                     ; 100056BA _ 5E
        pop     ebp                                     ; 100056BB _ 5D
        mov     eax, 1                                  ; 100056BC _ B8, 00000001
        pop     ebx                                     ; 100056C1 _ 5B
        add     esp, 20                                 ; 100056C2 _ 83. C4, 14
        ret                                             ; 100056C5 _ C3

?_0522: mov     ecx, dword [edi+4H]                     ; 100056C6 _ 8B. 4F, 04
        mov     ebx, dword [esp+10H]                    ; 100056C9 _ 8B. 5C 24, 10
        mov     esi, eax                                ; 100056CD _ 8B. F0
        sub     ecx, ebx                                ; 100056CF _ 2B. CB
        shr     esi, 3                                  ; 100056D1 _ C1. EE, 03
        cmp     esi, ecx                                ; 100056D4 _ 3B. F1
        mov     dword [edi+18H], ?_5120                 ; 100056D6 _ C7. 47, 18, 1002751C(d)
        jnc     ?_0524                                  ; 100056DD _ 73, 02
?_0523: mov     ecx, esi                                ; 100056DF _ 8B. CE
?_0524: mov     esi, dword [esp+38H]                    ; 100056E1 _ 8B. 74 24, 38
        sub     ebp, ecx                                ; 100056E5 _ 2B. E9
        mov     dword [esi+20H], edx                    ; 100056E7 _ 89. 56, 20
        lea     edx, [ecx*8]                            ; 100056EA _ 8D. 14 CD, 00000000
        sub     eax, edx                                ; 100056F1 _ 2B. C2
        add     ecx, ebx                                ; 100056F3 _ 03. CB
        mov     dword [esi+1CH], eax                    ; 100056F5 _ 89. 46, 1C
        mov     edx, dword [edi]                        ; 100056F8 _ 8B. 17
        mov     eax, ebp                                ; 100056FA _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 100056FC _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 100056FF _ 8B. 4F, 08
        sub     eax, edx                                ; 10005702 _ 2B. C2
        add     ecx, eax                                ; 10005704 _ 03. C8
        mov     dword [edi], ebp                        ; 10005706 _ 89. 2F
        mov     dword [edi+8H], ecx                     ; 10005708 _ 89. 4F, 08
        mov     ecx, dword [esp+14H]                    ; 1000570B _ 8B. 4C 24, 14
        mov     dword [esi+34H], ecx                    ; 1000570F _ 89. 4E, 34
        pop     edi                                     ; 10005712 _ 5F
        pop     esi                                     ; 10005713 _ 5E
        pop     ebp                                     ; 10005714 _ 5D
        mov     eax, 4294967293                         ; 10005715 _ B8, FFFFFFFD
        pop     ebx                                     ; 1000571A _ 5B
        add     esp, 20                                 ; 1000571B _ 83. C4, 14
        ret                                             ; 1000571E _ C3

        nop                                             ; 1000571F _ 90
