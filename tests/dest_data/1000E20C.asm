; ---- 1000E20C ----
?_1561: ; Local function
        mov     edx, dword [?_5693]                     ; 1000E20C _ 8B. 15, 101DE450(d)
        xor     eax, eax                                ; 1000E212 _ 33. C0
        mov     ax, word [ebp+14H]                      ; 1000E214 _ 66: 8B. 45, 14
        mov     ebx, dword [ebp+16H]                    ; 1000E218 _ 8B. 5D, 16
        mov     ecx, eax                                ; 1000E21B _ 8B. C8
        mov     dword [esp+18H], ebx                    ; 1000E21D _ 89. 5C 24, 18
        shl     ecx, 6                                  ; 1000E221 _ C1. E1, 06
        add     edx, ecx                                ; 1000E224 _ 03. D1
        mov     dword [esp+18H], 4                      ; 1000E226 _ C7. 44 24, 18, 00000004
        add     eax, edx                                ; 1000E22E _ 03. C2
        mov     dword [esp+14H], eax                    ; 1000E230 _ 89. 44 24, 14
        lea     edi, [eax+26H]                          ; 1000E234 _ 8D. 78, 26
?_1562: mov     ax, word [edi+8H]                       ; 1000E237 _ 66: 8B. 47, 08
        test    ax, ax                                  ; 1000E23B _ 66: 85. C0
        jz      ?_1564                                  ; 1000E23E _ 74, 56
        and     eax, 0FFFFH                             ; 1000E240 _ 25, 0000FFFF
        push    eax                                     ; 1000E245 _ 50
        mov     eax, dword [esp+14H]                    ; 1000E246 _ 8B. 44 24, 14
        push    0                                       ; 1000E24A _ 6A, 00
        push    1                                       ; 1000E24C _ 6A, 01
        mov     ecx, dword [eax+14H]                    ; 1000E24E _ 8B. 48, 14
        push    ecx                                     ; 1000E251 _ 51
        call    ?_2482                                  ; 1000E252 _ E8, 00008209
        mov     esi, eax                                ; 1000E257 _ 8B. F0
        add     esp, 16                                 ; 1000E259 _ 83. C4, 10
        test    esi, esi                                ; 1000E25C _ 85. F6
        jz      ?_1563                                  ; 1000E25E _ 74, 34
        mov     edx, dword [esp+10H]                    ; 1000E260 _ 8B. 54 24, 10
        push    esi                                     ; 1000E264 _ 56
        push    edx                                     ; 1000E265 _ 52
        call    ?_2978                                  ; 1000E266 _ E8, 0000BA65
        xor     ecx, ecx                                ; 1000E26B _ 33. C9
        add     esp, 8                                  ; 1000E26D _ 83. C4, 08
        mov     cx, word [edi]                          ; 1000E270 _ 66: 8B. 0F
        cdq                                             ; 1000E273 _ 99
        idiv    ecx                                     ; 1000E274 _ F7. F9
        cmp     ebx, eax                                ; 1000E276 _ 3B. D8
        jl      ?_1564                                  ; 1000E278 _ 7C, 1C
        mov     edx, dword [esp+10H]                    ; 1000E27A _ 8B. 54 24, 10
        push    esi                                     ; 1000E27E _ 56
        push    edx                                     ; 1000E27F _ 52
        call    ?_2978                                  ; 1000E280 _ E8, 0000BA4B
        xor     ecx, ecx                                ; 1000E285 _ 33. C9
        add     esp, 8                                  ; 1000E287 _ 83. C4, 08
        mov     cx, word [edi]                          ; 1000E28A _ 66: 8B. 0F
        cdq                                             ; 1000E28D _ 99
        idiv    ecx                                     ; 1000E28E _ F7. F9
        mov     ebx, eax                                ; 1000E290 _ 8B. D8
        jmp     ?_1564                                  ; 1000E292 _ EB, 02

?_1563: xor     ebx, ebx                                ; 1000E294 _ 33. DB
?_1564: mov     eax, dword [esp+18H]                    ; 1000E296 _ 8B. 44 24, 18
        add     edi, 2                                  ; 1000E29A _ 83. C7, 02
        dec     eax                                     ; 1000E29D _ 48
        mov     dword [esp+18H], eax                    ; 1000E29E _ 89. 44 24, 18
        jnz     ?_1562                                  ; 1000E2A2 _ 75, 93
        mov     esi, dword [esp+14H]                    ; 1000E2A4 _ 8B. 74 24, 14
        xor     edx, edx                                ; 1000E2A8 _ 33. D2
        mov     ecx, dword [esp+10H]                    ; 1000E2AA _ 8B. 4C 24, 10
        xor     eax, eax                                ; 1000E2AE _ 33. C0
        mov     dx, word [esi+36H]                      ; 1000E2B0 _ 66: 8B. 56, 36
        mov     ax, word [ebp+14H]                      ; 1000E2B4 _ 66: 8B. 45, 14
        imul    edx, ebx                                ; 1000E2B8 _ 0F AF. D3
        push    edx                                     ; 1000E2BB _ 52
        push    eax                                     ; 1000E2BC _ 50
        push    ecx                                     ; 1000E2BD _ 51
        mov     dword [esp+24H], ebx                    ; 1000E2BE _ 89. 5C 24, 24
        call    ?_2983                                  ; 1000E2C2 _ E8, 0000BA69
        xor     ecx, ecx                                ; 1000E2C7 _ 33. C9
        add     esp, 12                                 ; 1000E2C9 _ 83. C4, 0C
        mov     cx, word [esi+36H]                      ; 1000E2CC _ 66: 8B. 4E, 36
        cdq                                             ; 1000E2D0 _ 99
        idiv    ecx                                     ; 1000E2D1 _ F7. F9
        cmp     ebx, eax                                ; 1000E2D3 _ 3B. D8
        jl      ?_1565                                  ; 1000E2D5 _ 7C, 06
        mov     ebx, eax                                ; 1000E2D7 _ 8B. D8
        mov     dword [esp+18H], ebx                    ; 1000E2D9 _ 89. 5C 24, 18
?_1565: test    ebx, ebx                                ; 1000E2DD _ 85. DB
        jnz     ?_1566                                  ; 1000E2DF _ 75, 11
        push    1                                       ; 1000E2E1 _ 6A, 01
        push    ?_5302                                  ; 1000E2E3 _ 68, 1002CF1C(d)
        push    12213                                   ; 1000E2E8 _ 68, 00002FB5
        jmp     ?_1571                                  ; 1000E2ED _ E9, 000000EF

?_1566: mov     edx, dword [esp+14H]                    ; 1000E2F2 _ 8B. 54 24, 14
        xor     ebp, ebp                                ; 1000E2F6 _ 33. ED
        lea     edi, [edx+2EH]                          ; 1000E2F8 _ 8D. 7A, 2E
?_1567: mov     ax, word [edi]                          ; 1000E2FB _ 66: 8B. 07
        test    ax, ax                                  ; 1000E2FE _ 66: 85. C0
        je      ?_1569                                  ; 1000E301 _ 0F 84, 00000082
        and     eax, 0FFFFH                             ; 1000E307 _ 25, 0000FFFF
        push    eax                                     ; 1000E30C _ 50
        mov     eax, dword [esp+14H]                    ; 1000E30D _ 8B. 44 24, 14
        push    0                                       ; 1000E311 _ 6A, 00
        push    1                                       ; 1000E313 _ 6A, 01
        mov     ecx, dword [eax+14H]                    ; 1000E315 _ 8B. 48, 14
        push    ecx                                     ; 1000E318 _ 51
        call    ?_2482                                  ; 1000E319 _ E8, 00008142
        mov     esi, eax                                ; 1000E31E _ 8B. F0
        add     esp, 16                                 ; 1000E320 _ 83. C4, 10
        test    esi, esi                                ; 1000E323 _ 85. F6
        je      ?_1570                                  ; 1000E325 _ 0F 84, 000000AA
        xor     edx, edx                                ; 1000E32B _ 33. D2
        mov     eax, dword [esi+0EH]                    ; 1000E32D _ 8B. 46, 0E
        mov     dx, word [edi-8H]                       ; 1000E330 _ 66: 8B. 57, F8
        xor     ecx, ecx                                ; 1000E334 _ 33. C9
        imul    edx, ebx                                ; 1000E336 _ 0F AF. D3
        sub     eax, edx                                ; 1000E339 _ 2B. C2
        mov     dword [esi+0EH], eax                    ; 1000E33B _ 89. 46, 0E
        mov     cl, byte [?_5532]                       ; 1000E33E _ 8A. 0D, 10035439(d)
        xor     eax, eax                                ; 1000E344 _ 33. C0
        mov     ax, word [edi]                          ; 1000E346 _ 66: 8B. 07
        push    eax                                     ; 1000E349 _ 50
        push    ecx                                     ; 1000E34A _ 51
        call    ?_2458                                  ; 1000E34B _ E8, 00007EF0
        add     esp, 8                                  ; 1000E350 _ 83. C4, 08
        test    eax, eax                                ; 1000E353 _ 85. C0
        jz      ?_1568                                  ; 1000E355 _ 74, 15
        mov     ecx, dword [esp+14H]                    ; 1000E357 _ 8B. 4C 24, 14
        xor     edx, edx                                ; 1000E35B _ 33. D2
        mov     dx, word [ecx+36H]                      ; 1000E35D _ 66: 8B. 51, 36
        mov     ecx, dword [eax+14H]                    ; 1000E361 _ 8B. 48, 14
        imul    edx, ebx                                ; 1000E364 _ 0F AF. D3
        add     ecx, edx                                ; 1000E367 _ 03. CA
        mov     dword [eax+14H], ecx                    ; 1000E369 _ 89. 48, 14
?_1568: mov     eax, dword [esi+0EH]                    ; 1000E36C _ 8B. 46, 0E
        test    eax, eax                                ; 1000E36F _ 85. C0
        jnz     ?_1569                                  ; 1000E371 _ 75, 16
        mov     eax, dword [esp+10H]                    ; 1000E373 _ 8B. 44 24, 10
        xor     edx, edx                                ; 1000E377 _ 33. D2
        mov     dx, word [edi]                          ; 1000E379 _ 66: 8B. 17
        add     eax, 20                                 ; 1000E37C _ 83. C0, 14
        push    edx                                     ; 1000E37F _ 52
        push    eax                                     ; 1000E380 _ 50
        call    ?_2502                                  ; 1000E381 _ E8, 0000824A
        add     esp, 8                                  ; 1000E386 _ 83. C4, 08
?_1569: inc     ebp                                     ; 1000E389 _ 45
        add     edi, 2                                  ; 1000E38A _ 83. C7, 02
        cmp     ebp, 4                                  ; 1000E38D _ 83. FD, 04
        jl      ?_1567                                  ; 1000E390 _ 0F 8C, FFFFFF65
        mov     ebp, dword [esp+24H]                    ; 1000E396 _ 8B. 6C 24, 24
        mov     edx, dword [esp+10H]                    ; 1000E39A _ 8B. 54 24, 10
        xor     ecx, ecx                                ; 1000E39E _ 33. C9
        mov     cx, word [ebp+14H]                      ; 1000E3A0 _ 66: 8B. 4D, 14
        mov     eax, dword [edx+14H]                    ; 1000E3A4 _ 8B. 42, 14
        push    ecx                                     ; 1000E3A7 _ 51
        push    0                                       ; 1000E3A8 _ 6A, 00
        push    1                                       ; 1000E3AA _ 6A, 01
        push    eax                                     ; 1000E3AC _ 50
        call    ?_2482                                  ; 1000E3AD _ E8, 000080AE
        mov     esi, eax                                ; 1000E3B2 _ 8B. F0
        add     esp, 16                                 ; 1000E3B4 _ 83. C4, 10
        test    esi, esi                                ; 1000E3B7 _ 85. F6
        jz      ?_1573                                  ; 1000E3B9 _ 74, 4C
        mov     edx, dword [esp+14H]                    ; 1000E3BB _ 8B. 54 24, 14
        xor     ecx, ecx                                ; 1000E3BF _ 33. C9
        mov     eax, dword [esi+0EH]                    ; 1000E3C1 _ 8B. 46, 0E
        mov     cx, word [edx+36H]                      ; 1000E3C4 _ 66: 8B. 4A, 36
        imul    ecx, ebx                                ; 1000E3C8 _ 0F AF. CB
        add     eax, ecx                                ; 1000E3CB _ 03. C1
        mov     dword [esi+0EH], eax                    ; 1000E3CD _ 89. 46, 0E
        jmp     ?_1580                                  ; 1000E3D0 _ E9, 000000B6

?_1570: push    1                                       ; 1000E3D5 _ 6A, 01
        push    ?_5301                                  ; 1000E3D7 _ 68, 1002CEF4(d)
        push    12253                                   ; 1000E3DC _ 68, 00002FDD
?_1571: push    ?_5260                                  ; 1000E3E1 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E3E6 _ E8, FFFF5255
        mov     eax, dword [esp+38H]                    ; 1000E3EB _ 8B. 44 24, 38
        add     esp, 16                                 ; 1000E3EF _ 83. C4, 10
        test    eax, eax                                ; 1000E3F2 _ 85. C0
        jz      ?_1572                                  ; 1000E3F4 _ 74, 04
        mov     byte [eax+1H], 8                        ; 1000E3F6 _ C6. 40, 01, 08
?_1572: pop     edi                                     ; 1000E3FA _ 5F
        pop     esi                                     ; 1000E3FB _ 5E
        pop     ebp                                     ; 1000E3FC _ 5D
        mov     eax, 1                                  ; 1000E3FD _ B8, 00000001
        pop     ebx                                     ; 1000E402 _ 5B
        add     esp, 16                                 ; 1000E403 _ 83. C4, 10
        ret                                             ; 1000E406 _ C3

?_1573: mov     edi, dword [esp+14H]                    ; 1000E407 _ 8B. 7C 24, 14
        xor     eax, eax                                ; 1000E40B _ 33. C0
        mov     edx, dword [esp+10H]                    ; 1000E40D _ 8B. 54 24, 10
        xor     ecx, ecx                                ; 1000E411 _ 33. C9
        mov     ax, word [edi+36H]                      ; 1000E413 _ 66: 8B. 47, 36
        mov     cx, word [ebp+14H]                      ; 1000E417 _ 66: 8B. 4D, 14
        imul    eax, ebx                                ; 1000E41B _ 0F AF. C3
        push    eax                                     ; 1000E41E _ 50
        mov     eax, dword [edx+2H]                     ; 1000E41F _ 8B. 42, 02
        push    ecx                                     ; 1000E422 _ 51
        push    eax                                     ; 1000E423 _ 50
        call    ?_2524                                  ; 1000E424 _ E8, 00008337
        mov     esi, eax                                ; 1000E429 _ 8B. F0
        add     esp, 12                                 ; 1000E42B _ 83. C4, 0C
        test    esi, esi                                ; 1000E42E _ 85. F6
        jnz     ?_1575                                  ; 1000E430 _ 75, 19
        mov     eax, dword [esp+28H]                    ; 1000E432 _ 8B. 44 24, 28
        test    eax, eax                                ; 1000E436 _ 85. C0
        jz      ?_1574                                  ; 1000E438 _ 74, 04
        mov     byte [eax+1H], 6                        ; 1000E43A _ C6. 40, 01, 06
?_1574: pop     edi                                     ; 1000E43E _ 5F
        pop     esi                                     ; 1000E43F _ 5E
        pop     ebp                                     ; 1000E440 _ 5D
        mov     eax, 1                                  ; 1000E441 _ B8, 00000001
        pop     ebx                                     ; 1000E446 _ 5B
        add     esp, 16                                 ; 1000E447 _ 83. C4, 10
        ret                                             ; 1000E44A _ C3

?_1575: mov     ecx, dword [esp+10H]                    ; 1000E44B _ 8B. 4C 24, 10
        cmp     word [ecx], 42                          ; 1000E44F _ 66: 83. 39, 2A
        jnz     ?_1576                                  ; 1000E453 _ 75, 03
        inc     dword [esi+0EH]                         ; 1000E455 _ FF. 46, 0E
?_1576: mov     al, byte [edi]                          ; 1000E458 _ 8A. 07
        cmp     al, 23                                  ; 1000E45A _ 3C, 17
        jz      ?_1577                                  ; 1000E45C _ 74, 04
        cmp     al, 37                                  ; 1000E45E _ 3C, 25
        jnz     ?_1580                                  ; 1000E460 _ 75, 29
?_1577: mov     edx, dword [esp+10H]                    ; 1000E462 _ 8B. 54 24, 10
        mov     ax, word [edx]                          ; 1000E466 _ 66: 8B. 02
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 1000E469 _ 66: 3D, 002A
        jz      ?_1578                                  ; 1000E46D _ 74, 06
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 1000E46F _ 66: 3D, 0116
        jnz     ?_1580                                  ; 1000E473 _ 75, 16
?_1578: mov     eax, dword [esp+1CH]                    ; 1000E475 _ 8B. 44 24, 1C
        mov     al, byte [eax+2H]                       ; 1000E479 _ 8A. 40, 02
        cmp     al, 6                                   ; 1000E47C _ 3C, 06
        jz      ?_1579                                  ; 1000E47E _ 74, 04
        cmp     al, 7                                   ; 1000E480 _ 3C, 07
        jnz     ?_1580                                  ; 1000E482 _ 75, 07
?_1579: mov     dword [esi+1CH], 4                      ; 1000E484 _ C7. 46, 1C, 00000004
?_1580: xor     ecx, ecx                                ; 1000E48B _ 33. C9
        push    100                                     ; 1000E48D _ 6A, 64
        mov     cx, word [ebp+14H]                      ; 1000E48F _ 66: 8B. 4D, 14
        push    ecx                                     ; 1000E493 _ 51
        call    ?_2933                                  ; 1000E494 _ E8, 0000B287
        fimul   dword [esp+20H]                         ; 1000E499 _ DA. 4C 24, 20
        call    ?_3298                                  ; 1000E49D _ E8, 0000D0C2
        mov     edx, dword [esp+18H]                    ; 1000E4A2 _ 8B. 54 24, 18
        mov     edi, eax                                ; 1000E4A6 _ 8B. F8
        push    edx                                     ; 1000E4A8 _ 52
        call    ?_2963                                  ; 1000E4A9 _ E8, 0000B6D2
        add     esp, 12                                 ; 1000E4AE _ 83. C4, 0C
        test    eax, eax                                ; 1000E4B1 _ 85. C0
        jz      ?_1581                                  ; 1000E4B3 _ 74, 03
        add     dword [eax+4DH], edi                    ; 1000E4B5 _ 01. 78, 4D
?_1581: xor     eax, eax                                ; 1000E4B8 _ 33. C0
        xor     ecx, ecx                                ; 1000E4BA _ 33. C9
        mov     ax, word [ebp+14H]                      ; 1000E4BC _ 66: 8B. 45, 14
        mov     cl, byte [?_5532]                       ; 1000E4C0 _ 8A. 0D, 10035439(d)
        push    eax                                     ; 1000E4C6 _ 50
        push    ecx                                     ; 1000E4C7 _ 51
        call    ?_2458                                  ; 1000E4C8 _ E8, 00007D73
        add     esp, 8                                  ; 1000E4CD _ 83. C4, 08
        test    eax, eax                                ; 1000E4D0 _ 85. C0
        jz      ?_1582                                  ; 1000E4D2 _ 74, 15
        mov     ecx, dword [esp+14H]                    ; 1000E4D4 _ 8B. 4C 24, 14
        xor     edx, edx                                ; 1000E4D8 _ 33. D2
        mov     dx, word [ecx+36H]                      ; 1000E4DA _ 66: 8B. 51, 36
        mov     ecx, dword [eax+10H]                    ; 1000E4DE _ 8B. 48, 10
        imul    edx, ebx                                ; 1000E4E1 _ 0F AF. D3
        add     ecx, edx                                ; 1000E4E4 _ 03. CA
        mov     dword [eax+10H], ecx                    ; 1000E4E6 _ 89. 48, 10
?_1582: mov     edx, dword [esp+1CH]                    ; 1000E4E9 _ 8B. 54 24, 1C
        push    edx                                     ; 1000E4ED _ 52
        call    ?_2821                                  ; 1000E4EE _ E8, 00009FED
        add     esp, 4                                  ; 1000E4F3 _ 83. C4, 04
        test    eax, eax                                ; 1000E4F6 _ 85. C0
        jz      ?_1583                                  ; 1000E4F8 _ 74, 03
        add     dword [eax+24H], edi                    ; 1000E4FA _ 01. 78, 24
?_1583: mov     eax, dword [esp+28H]                    ; 1000E4FD _ 8B. 44 24, 28
        test    eax, eax                                ; 1000E501 _ 85. C0
        jz      ?_1584                                  ; 1000E503 _ 74, 12
        mov     byte [eax], 1                           ; 1000E505 _ C6. 00, 01
        mov     ecx, dword [ebp+10H]                    ; 1000E508 _ 8B. 4D, 10
        cmp     ecx, -1                                 ; 1000E50B _ 83. F9, FF
        jz      ?_1584                                  ; 1000E50E _ 74, 07
        mov     byte [eax+1H], 3                        ; 1000E510 _ C6. 40, 01, 03
        mov     dword [eax+6H], esi                     ; 1000E514 _ 89. 70, 06
?_1584: pop     edi                                     ; 1000E517 _ 5F
        pop     esi                                     ; 1000E518 _ 5E
        pop     ebp                                     ; 1000E519 _ 5D
        xor     eax, eax                                ; 1000E51A _ 33. C0
        pop     ebx                                     ; 1000E51C _ 5B
        add     esp, 16                                 ; 1000E51D _ 83. C4, 10
        ret                                             ; 1000E520 _ C3

        nop                                             ; 1000E521 _ 90
        nop                                             ; 1000E522 _ 90
        nop                                             ; 1000E523 _ 90
        nop                                             ; 1000E524 _ 90
        nop                                             ; 1000E525 _ 90
        nop                                             ; 1000E526 _ 90
        nop                                             ; 1000E527 _ 90
        nop                                             ; 1000E528 _ 90
        nop                                             ; 1000E529 _ 90
        nop                                             ; 1000E52A _ 90
        nop                                             ; 1000E52B _ 90
        nop                                             ; 1000E52C _ 90
        nop                                             ; 1000E52D _ 90
        nop                                             ; 1000E52E _ 90
        nop                                             ; 1000E52F _ 90

