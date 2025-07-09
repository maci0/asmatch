; ---- 100142B4 ----
?_2216: ; Local function
        push    ?_5695                                  ; 100142B4 _ 68, 101DE460(d)
        push    esi                                     ; 100142B9 _ 56
        call    ?_2086                                  ; 100142BA _ E8, FFFFE1B1
        mov     al, byte [?_5696]                       ; 100142BF _ A0, 101DE464(d)
        add     esp, 8                                  ; 100142C4 _ 83. C4, 08
        test    al, 02H                                 ; 100142C7 _ A8, 02
        je      ?_2232                                  ; 100142C9 _ 0F 84, 000002D7
        mov     eax, dword [?_5695]                     ; 100142CF _ A1, 101DE460(d)
        cmp     eax, 65626                              ; 100142D4 _ 3D, 0001005A
        jg      ?_2232                                  ; 100142D9 _ 0F 8F, 000002C7
        cmp     eax, 65555                              ; 100142DF _ 3D, 00010013
        jl      ?_2232                                  ; 100142E4 _ 0F 8C, 000002BC
        push    esi                                     ; 100142EA _ 56
        push    1                                       ; 100142EB _ 6A, 01
        push    4                                       ; 100142ED _ 6A, 04
        push    ?_5380                                  ; 100142EF _ 68, 10030B6C(d)
        mov     dword [?_5547], edi                     ; 100142F4 _ 89. 3D, 1003546C(d)
        call    ?_2085                                  ; 100142FA _ E8, FFFFE141
        add     esp, 16                                 ; 100142FF _ 83. C4, 10
        test    eax, eax                                ; 10014302 _ 85. C0
        je      ?_2230                                  ; 10014304 _ 0F 84, 00000267
        push    esi                                     ; 1001430A _ 56
        push    1                                       ; 1001430B _ 6A, 01
        push    4                                       ; 1001430D _ 6A, 04
        push    ?_5776                                  ; 1001430F _ 68, 1176408C(d)
        call    ?_2085                                  ; 10014314 _ E8, FFFFE127
        add     esp, 16                                 ; 10014319 _ 83. C4, 10
        test    eax, eax                                ; 1001431C _ 85. C0
        je      ?_2230                                  ; 1001431E _ 0F 84, 0000024D
        push    esi                                     ; 10014324 _ 56
        push    1                                       ; 10014325 _ 6A, 01
        push    14                                      ; 10014327 _ 6A, 0E
        push    ?_5628                                  ; 10014329 _ 68, 10035880(d)
        call    ?_2085                                  ; 1001432E _ E8, FFFFE10D
        add     esp, 16                                 ; 10014333 _ 83. C4, 10
        test    eax, eax                                ; 10014336 _ 85. C0
        je      ?_2230                                  ; 10014338 _ 0F 84, 00000233
        push    esi                                     ; 1001433E _ 56
        push    1                                       ; 1001433F _ 6A, 01
        push    1                                       ; 10014341 _ 6A, 01
        push    ?_5532                                  ; 10014343 _ 68, 10035439(d)
        call    ?_2085                                  ; 10014348 _ E8, FFFFE0F3
        add     esp, 16                                 ; 1001434D _ 83. C4, 10
        test    eax, eax                                ; 10014350 _ 85. C0
        je      ?_2230                                  ; 10014352 _ 0F 84, 00000219
        push    esi                                     ; 10014358 _ 56
        push    1                                       ; 10014359 _ 6A, 01
        push    4                                       ; 1001435B _ 6A, 04
        push    ?_5547                                  ; 1001435D _ 68, 1003546C(d)
        call    ?_2085                                  ; 10014362 _ E8, FFFFE0D9
        add     esp, 16                                 ; 10014367 _ 83. C4, 10
        test    eax, eax                                ; 1001436A _ 85. C0
        je      ?_2230                                  ; 1001436C _ 0F 84, 000001FF
        push    esi                                     ; 10014372 _ 56
        push    1                                       ; 10014373 _ 6A, 01
        push    4                                       ; 10014375 _ 6A, 04
        push    ?_5529                                  ; 10014377 _ 68, 1003542C(d)
        call    ?_2085                                  ; 1001437C _ E8, FFFFE0BF
        add     esp, 16                                 ; 10014381 _ 83. C4, 10
        test    eax, eax                                ; 10014384 _ 85. C0
        je      ?_2230                                  ; 10014386 _ 0F 84, 000001E5
        push    esi                                     ; 1001438C _ 56
        push    1                                       ; 1001438D _ 6A, 01
        push    4                                       ; 1001438F _ 6A, 04
        push    ?_5530                                  ; 10014391 _ 68, 10035430(d)
        call    ?_2085                                  ; 10014396 _ E8, FFFFE0A5
        add     esp, 16                                 ; 1001439B _ 83. C4, 10
        test    eax, eax                                ; 1001439E _ 85. C0
        je      ?_2230                                  ; 100143A0 _ 0F 84, 000001CB
        push    esi                                     ; 100143A6 _ 56
        push    1                                       ; 100143A7 _ 6A, 01
        push    4                                       ; 100143A9 _ 6A, 04
        push    ?_5531                                  ; 100143AB _ 68, 10035434(d)
        call    ?_2085                                  ; 100143B0 _ E8, FFFFE08B
        add     esp, 16                                 ; 100143B5 _ 83. C4, 10
        test    eax, eax                                ; 100143B8 _ 85. C0
        je      ?_2230                                  ; 100143BA _ 0F 84, 000001B1
        push    esi                                     ; 100143C0 _ 56
        push    1                                       ; 100143C1 _ 6A, 01
        push    4                                       ; 100143C3 _ 6A, 04
        push    ?_5534                                  ; 100143C5 _ 68, 10035440(d)
        call    ?_2085                                  ; 100143CA _ E8, FFFFE071
        push    esi                                     ; 100143CF _ 56
        push    1                                       ; 100143D0 _ 6A, 01
        push    24                                      ; 100143D2 _ 6A, 18
        push    ?_5699                                  ; 100143D4 _ 68, 101DE580(d)
        call    ?_2085                                  ; 100143D9 _ E8, FFFFE062
        mov     eax, dword [?_5338]                     ; 100143DE _ A1, 1002D4EC(d)
        add     esp, 32                                 ; 100143E3 _ 83. C4, 20
        cmp     eax, 65584                              ; 100143E6 _ 3D, 00010030
        jl      ?_2217                                  ; 100143EB _ 7C, 12
        push    esi                                     ; 100143ED _ 56
        push    1                                       ; 100143EE _ 6A, 01
        push    4                                       ; 100143F0 _ 6A, 04
        push    ?_5381                                  ; 100143F2 _ 68, 10030B70(d)
        call    ?_2085                                  ; 100143F7 _ E8, FFFFE044
        add     esp, 16                                 ; 100143FC _ 83. C4, 10
?_2217: cmp     dword [?_5338], 65597                   ; 100143FF _ 81. 3D, 1002D4EC(d), 0001003D
        jl      ?_2218                                  ; 10014409 _ 7C, 14
        push    esi                                     ; 1001440B _ 56
        push    1                                       ; 1001440C _ 6A, 01
        push    4                                       ; 1001440E _ 6A, 04
        push    ?_5527                                  ; 10014410 _ 68, 10035408(d)
        call    ?_2085                                  ; 10014415 _ E8, FFFFE026
        add     esp, 16                                 ; 1001441A _ 83. C4, 10
        jmp     ?_2219                                  ; 1001441D _ EB, 0A

?_2218: mov     dword [?_5527], 1000000                 ; 1001441F _ C7. 05, 10035408(d), 000F4240
?_2219: push    esi                                     ; 10014429 _ 56
        call    ?_2117                                  ; 1001442A _ E8, FFFFE3A1
        add     esp, 4                                  ; 1001442F _ 83. C4, 04
        test    eax, eax                                ; 10014432 _ 85. C0
        jnz     ?_2220                                  ; 10014434 _ 75, 11
        push    1                                       ; 10014436 _ 6A, 01
        push    ?_5355                                  ; 10014438 _ 68, 1002D6B4(d)
        push    4660                                    ; 1001443D _ 68, 00001234
        jmp     ?_2231                                  ; 10014442 _ E9, 00000136

?_2220: push    esi                                     ; 10014447 _ 56
        call    ?_2122                                  ; 10014448 _ E8, FFFFE4A3
        add     esp, 4                                  ; 1001444D _ 83. C4, 04
        test    eax, eax                                ; 10014450 _ 85. C0
        jnz     ?_2221                                  ; 10014452 _ 75, 11
        push    1                                       ; 10014454 _ 6A, 01
        push    ?_5354                                  ; 10014456 _ 68, 1002D690(d)
        push    4669                                    ; 1001445B _ 68, 0000123D
        jmp     ?_2233                                  ; 10014460 _ E9, 0000014D

?_2221: push    esi                                     ; 10014465 _ 56
        call    ?_2143                                  ; 10014466 _ E8, FFFFEA45
        add     esp, 4                                  ; 1001446B _ 83. C4, 04
        test    eax, eax                                ; 1001446E _ 85. C0
        jnz     ?_2222                                  ; 10014470 _ 75, 11
        push    1                                       ; 10014472 _ 6A, 01
        push    ?_5353                                  ; 10014474 _ 68, 1002D668(d)
        push    4678                                    ; 10014479 _ 68, 00001246
        jmp     ?_2228                                  ; 1001447E _ E9, 000000B3

?_2222: push    esi                                     ; 10014483 _ 56
        call    ?_2153                                  ; 10014484 _ E8, FFFFEDA7
        add     esp, 4                                  ; 10014489 _ 83. C4, 04
        test    eax, eax                                ; 1001448C _ 85. C0
        jnz     ?_2223                                  ; 1001448E _ 75, 11
        push    1                                       ; 10014490 _ 6A, 01
        push    ?_5352                                  ; 10014492 _ 68, 1002D644(d)
        push    4687                                    ; 10014497 _ 68, 0000124F
        jmp     ?_2231                                  ; 1001449C _ E9, 000000DC

?_2223: mov     eax, ?_5633                             ; 100144A1 _ B8, 100358A2(d)
        mov     ecx, 65535                              ; 100144A6 _ B9, 0000FFFF
?_2224: cmp     word [eax-2H], cx                       ; 100144AB _ 66: 39. 48, FE
        jz      ?_2225                                  ; 100144AF _ 74, 08
        cmp     byte [eax], 6                           ; 100144B1 _ 80. 38, 06
        jnz     ?_2225                                  ; 100144B4 _ 75, 03
        mov     byte [eax], 5                           ; 100144B6 _ C6. 00, 05
?_2225: add     eax, 540                                ; 100144B9 _ 05, 0000021C
        cmp     eax, ?_5657                             ; 100144BE _ 3D, 1009ACA2(d)
        jl      ?_2224                                  ; 100144C3 _ 7C, E6
        push    esi                                     ; 100144C5 _ 56
        call    ?_2177                                  ; 100144C6 _ E8, FFFFF645
        add     esp, 4                                  ; 100144CB _ 83. C4, 04
        test    eax, eax                                ; 100144CE _ 85. C0
        jnz     ?_2226                                  ; 100144D0 _ 75, 11
        push    1                                       ; 100144D2 _ 6A, 01
        push    ?_5351                                  ; 100144D4 _ 68, 1002D620(d)
        push    4699                                    ; 100144D9 _ 68, 0000125B
        jmp     ?_2233                                  ; 100144DE _ E9, 000000CF

?_2226: mov     eax, dword [?_5338]                     ; 100144E3 _ A1, 1002D4EC(d)
        cmp     eax, 65605                              ; 100144E8 _ 3D, 00010045
        jl      ?_2227                                  ; 100144ED _ 7C, 32
        push    eax                                     ; 100144EF _ 50
        push    esi                                     ; 100144F0 _ 56
        call    ?_1253                                  ; 100144F1 _ E8, FFFF75FA
        add     esp, 8                                  ; 100144F6 _ 83. C4, 08
        test    eax, eax                                ; 100144F9 _ 85. C0
        jnz     ?_2227                                  ; 100144FB _ 75, 24
        push    1                                       ; 100144FD _ 6A, 01
        push    ?_5350                                  ; 100144FF _ 68, 1002D5FC(d)
        push    4710                                    ; 10014504 _ 68, 00001266
        push    ?_5346                                  ; 10014509 _ 68, 1002D550(d)
        call    ?_0267                                  ; 1001450E _ E8, FFFEF12D
        push    esi                                     ; 10014513 _ 56
        call    ?_0905                                  ; 10014514 _ E8, FFFF47F7
        add     esp, 20                                 ; 10014519 _ 83. C4, 14
        xor     eax, eax                                ; 1001451C _ 33. C0
        pop     edi                                     ; 1001451E _ 5F
        pop     esi                                     ; 1001451F _ 5E
        ret                                             ; 10014520 _ C3

?_2227: call    ?_2192                                  ; 10014521 _ E8, FFFFFB4A
        test    eax, eax                                ; 10014526 _ 85. C0
        jnz     ?_2229                                  ; 10014528 _ 75, 36
        push    1                                       ; 1001452A _ 6A, 01
        push    ?_5349                                  ; 1001452C _ 68, 1002D5CC(d)
        push    4719                                    ; 10014531 _ 68, 0000126F
?_2228: push    ?_5346                                  ; 10014536 _ 68, 1002D550(d)
        call    ?_0267                                  ; 1001453B _ E8, FFFEF100
        push    esi                                     ; 10014540 _ 56
        call    ?_0905                                  ; 10014541 _ E8, FFFF47CA
        mov     edx, dword [?_5698]                     ; 10014546 _ 8B. 15, 101DE560(d)
        push    edx                                     ; 1001454C _ 52
        call    ?_0663                                  ; 1001454D _ E8, FFFF22CE
        add     esp, 24                                 ; 10014552 _ 83. C4, 18
        mov     dword [?_5698], edi                     ; 10014555 _ 89. 3D, 101DE560(d)
        xor     eax, eax                                ; 1001455B _ 33. C0
        pop     edi                                     ; 1001455D _ 5F
        pop     esi                                     ; 1001455E _ 5E
        ret                                             ; 1001455F _ C3

?_2229: push    esi                                     ; 10014560 _ 56
        call    ?_0905                                  ; 10014561 _ E8, FFFF47AA
        add     esp, 4                                  ; 10014566 _ 83. C4, 04
        mov     eax, 1                                  ; 10014569 _ B8, 00000001
        pop     edi                                     ; 1001456E _ 5F
        pop     esi                                     ; 1001456F _ 5E
        ret                                             ; 10014570 _ C3

?_2230: push    1                                       ; 10014571 _ 6A, 01
        push    ?_5348                                  ; 10014573 _ 68, 1002D5A8(d)
        push    4638                                    ; 10014578 _ 68, 0000121E
?_2231: push    ?_5346                                  ; 1001457D _ 68, 1002D550(d)
        call    ?_0267                                  ; 10014582 _ E8, FFFEF0B9
        push    esi                                     ; 10014587 _ 56
        call    ?_0905                                  ; 10014588 _ E8, FFFF4783
        mov     eax, dword [?_5698]                     ; 1001458D _ A1, 101DE560(d)
        push    eax                                     ; 10014592 _ 50
        call    ?_0663                                  ; 10014593 _ E8, FFFF2288
        add     esp, 24                                 ; 10014598 _ 83. C4, 18
        mov     dword [?_5698], edi                     ; 1001459B _ 89. 3D, 101DE560(d)
        xor     eax, eax                                ; 100145A1 _ 33. C0
        pop     edi                                     ; 100145A3 _ 5F
        pop     esi                                     ; 100145A4 _ 5E
        ret                                             ; 100145A5 _ C3

?_2232: push    1                                       ; 100145A6 _ 6A, 01
        push    ?_5348                                  ; 100145A8 _ 68, 1002D5A8(d)
        push    4618                                    ; 100145AD _ 68, 0000120A
?_2233: push    ?_5346                                  ; 100145B2 _ 68, 1002D550(d)
        call    ?_0267                                  ; 100145B7 _ E8, FFFEF084
        push    esi                                     ; 100145BC _ 56
        call    ?_0905                                  ; 100145BD _ E8, FFFF474E
        mov     ecx, dword [?_5698]                     ; 100145C2 _ 8B. 0D, 101DE560(d)
        push    ecx                                     ; 100145C8 _ 51
        call    ?_0663                                  ; 100145C9 _ E8, FFFF2252
        add     esp, 24                                 ; 100145CE _ 83. C4, 18
        mov     dword [?_5698], edi                     ; 100145D1 _ 89. 3D, 101DE560(d)
        xor     eax, eax                                ; 100145D7 _ 33. C0
        pop     edi                                     ; 100145D9 _ 5F
        pop     esi                                     ; 100145DA _ 5E
        ret                                             ; 100145DB _ C3

        nop                                             ; 100145DC _ 90
        nop                                             ; 100145DD _ 90
        nop                                             ; 100145DE _ 90
        nop                                             ; 100145DF _ 90
?_2234: sub     esp, 36                                 ; 100145E0 _ 83. EC, 24
        push    ebx                                     ; 100145E3 _ 53
        mov     ebx, dword [esp+2CH]                    ; 100145E4 _ 8B. 5C 24, 2C
        mov     eax, dword [ebx]                        ; 100145E8 _ 8B. 03
        test    ah, 60H                                 ; 100145EA _ F6. C4, 60
        jz      ?_2235                                  ; 100145ED _ 74, 34
        push    1                                       ; 100145EF _ 6A, 01
        push    ?_5359                                  ; 100145F1 _ 68, 1002D740(d)
        push    580                                     ; 100145F6 _ 68, 00000244
        push    ?_5358                                  ; 100145FB _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014600 _ E8, FFFEF03B
        mov     eax, dword [esp+40H]                    ; 10014605 _ 8B. 44 24, 40
        push    eax                                     ; 10014609 _ 50
        push    ebx                                     ; 1001460A _ 53
        mov     byte [eax], 2                           ; 1001460B _ C6. 00, 02
        call    ?_1110                                  ; 1001460E _ E8, FFFF638D
        add     esp, 24                                 ; 10014613 _ 83. C4, 18
        inc     eax                                     ; 10014616 _ 40
        neg     eax                                     ; 10014617 _ F7. D8
        sbb     eax, eax                                ; 10014619 _ 1B. C0
        pop     ebx                                     ; 1001461B _ 5B
        neg     eax                                     ; 1001461C _ F7. D8
        dec     eax                                     ; 1001461E _ 48
        add     esp, 36                                 ; 1001461F _ 83. C4, 24
        ret                                             ; 10014622 _ C3
