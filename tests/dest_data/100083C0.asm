; ---- 100083C0 ----
?_0843: ; Local function
        mov     eax, dword [esp+4H]                     ; 100083C0 _ 8B. 44 24, 04
        sub     esp, 8                                  ; 100083C4 _ 83. EC, 08
        xor     ecx, ecx                                ; 100083C7 _ 33. C9
        mov     edx, dword [eax+1698H]                  ; 100083C9 _ 8B. 90, 00001698
        push    ebx                                     ; 100083CF _ 53
        push    ebp                                     ; 100083D0 _ 55
        mov     ebp, dword [esp+18H]                    ; 100083D1 _ 8B. 6C 24, 18
        push    esi                                     ; 100083D5 _ 56
        push    edi                                     ; 100083D6 _ 57
        test    edx, edx                                ; 100083D7 _ 85. D2
        je      ?_0858                                  ; 100083D9 _ 0F 84, 00000370
?_0844: mov     edx, dword [eax+169CH]                  ; 100083DF _ 8B. 90, 0000169C
        xor     edi, edi                                ; 100083E5 _ 33. FF
        xor     ebx, ebx                                ; 100083E7 _ 33. DB
        mov     di, word [edx+ecx*2]                    ; 100083E9 _ 66: 8B. 3C 4A
        mov     edx, dword [eax+1690H]                  ; 100083ED _ 8B. 90, 00001690
        mov     bl, byte [ecx+edx]                      ; 100083F3 _ 8A. 1C 11
        inc     ecx                                     ; 100083F6 _ 41
        test    edi, edi                                ; 100083F7 _ 85. FF
        mov     edx, ebx                                ; 100083F9 _ 8B. D3
        mov     dword [esp+14H], ecx                    ; 100083FB _ 89. 4C 24, 14
        jne     ?_0846                                  ; 100083FF _ 0F 85, 0000008B
        mov     di, word [ebp+edx*4+2H]                 ; 10008405 _ 66: 8B. 7C 95, 02
        mov     ecx, dword [eax+16B4H]                  ; 1000840A _ 8B. 88, 000016B4
        mov     esi, 16                                 ; 10008410 _ BE, 00000010
        sub     esi, edi                                ; 10008415 _ 2B. F7
        cmp     ecx, esi                                ; 10008417 _ 3B. CE
        jle     ?_0845                                  ; 10008419 _ 7E, 5F
        xor     esi, esi                                ; 1000841B _ 33. F6
        mov     si, word [ebp+edx*4]                    ; 1000841D _ 66: 8B. 74 95, 00
        mov     edx, esi                                ; 10008422 _ 8B. D6
        shl     edx, cl                                 ; 10008424 _ D3. E2
        mov     ecx, dword [eax+8H]                     ; 10008426 _ 8B. 48, 08
        or      word [eax+16B0H], dx                    ; 10008429 _ 66: 09. 90, 000016B0
        mov     edx, dword [eax+14H]                    ; 10008430 _ 8B. 50, 14
        mov     bl, byte [eax+16B0H]                    ; 10008433 _ 8A. 98, 000016B0
        mov     byte [ecx+edx], bl                      ; 10008439 _ 88. 1C 11
        mov     edx, dword [eax+14H]                    ; 1000843C _ 8B. 50, 14
        mov     ebx, dword [eax+8H]                     ; 1000843F _ 8B. 58, 08
        inc     edx                                     ; 10008442 _ 42
        mov     dword [eax+14H], edx                    ; 10008443 _ 89. 50, 14
        mov     ecx, edx                                ; 10008446 _ 8B. CA
        xor     edx, edx                                ; 10008448 _ 33. D2
        mov     dl, byte [eax+16B1H]                    ; 1000844A _ 8A. 90, 000016B1
        mov     byte [ecx+ebx], dl                      ; 10008450 _ 88. 14 19
        mov     ecx, dword [eax+14H]                    ; 10008453 _ 8B. 48, 14
        mov     edx, dword [eax+16B4H]                  ; 10008456 _ 8B. 90, 000016B4
        inc     ecx                                     ; 1000845C _ 41
        mov     dword [eax+14H], ecx                    ; 1000845D _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10008460 _ 66: B9, 0010
        sub     cx, dx                                  ; 10008464 _ 66: 2B. CA
        shr     si, cl                                  ; 10008467 _ 66: D3. EE
        lea     ecx, [edx+edi-10H]                      ; 1000846A _ 8D. 4C 3A, F0
        mov     word [eax+16B0H], si                    ; 1000846E _ 66: 89. B0, 000016B0
        jmp     ?_0856                                  ; 10008475 _ E9, 000002BD

?_0845: mov     dx, word [ebp+edx*4]                    ; 1000847A _ 66: 8B. 54 95, 00
        shl     dx, cl                                  ; 1000847F _ 66: D3. E2
        or      word [eax+16B0H], dx                    ; 10008482 _ 66: 09. 90, 000016B0
        add     ecx, edi                                ; 10008489 _ 03. CF
        jmp     ?_0856                                  ; 1000848B _ E9, 000002A7

?_0846: xor     ebx, ebx                                ; 10008490 _ 33. DB
        mov     ecx, dword [eax+16B4H]                  ; 10008492 _ 8B. 88, 000016B4
        mov     bl, byte [?_4903+edx]                   ; 10008498 _ 8A. 9A, 100250FC(d)
        xor     esi, esi                                ; 1000849E _ 33. F6
        mov     dword [esp+1CH], ebx                    ; 100084A0 _ 89. 5C 24, 1C
        mov     si, word [ebp+ebx*4+406H]               ; 100084A4 _ 66: 8B. B4 9D, 00000406
        mov     ebp, 16                                 ; 100084AC _ BD, 00000010
        sub     ebp, esi                                ; 100084B1 _ 2B. EE
        mov     dword [esp+10H], esi                    ; 100084B3 _ 89. 74 24, 10
        cmp     ecx, ebp                                ; 100084B7 _ 3B. CD
        jle     ?_0847                                  ; 100084B9 _ 7E, 71
        mov     ebp, dword [esp+20H]                    ; 100084BB _ 8B. 6C 24, 20
        xor     esi, esi                                ; 100084BF _ 33. F6
        mov     si, word [ebp+ebx*4+404H]               ; 100084C1 _ 66: 8B. B4 9D, 00000404
        mov     ebp, dword [eax+8H]                     ; 100084C9 _ 8B. 68, 08
        mov     ebx, esi                                ; 100084CC _ 8B. DE
        shl     ebx, cl                                 ; 100084CE _ D3. E3
        or      word [eax+16B0H], bx                    ; 100084D0 _ 66: 09. 98, 000016B0
        mov     ebx, dword [eax+14H]                    ; 100084D7 _ 8B. 58, 14
        mov     cl, byte [eax+16B0H]                    ; 100084DA _ 8A. 88, 000016B0
        mov     byte [ebx+ebp], cl                      ; 100084E0 _ 88. 0C 2B
        mov     ebx, dword [eax+14H]                    ; 100084E3 _ 8B. 58, 14
        inc     ebx                                     ; 100084E6 _ 43
        xor     ecx, ecx                                ; 100084E7 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 100084E9 _ 8A. 88, 000016B1
        mov     dword [eax+14H], ebx                    ; 100084EF _ 89. 58, 14
        mov     ebp, ebx                                ; 100084F2 _ 8B. EB
        mov     ebx, dword [eax+8H]                     ; 100084F4 _ 8B. 58, 08
        mov     byte [ebx+ebp], cl                      ; 100084F7 _ 88. 0C 2B
        mov     ecx, dword [eax+14H]                    ; 100084FA _ 8B. 48, 14
        mov     ebx, dword [eax+16B4H]                  ; 100084FD _ 8B. 98, 000016B4
        inc     ecx                                     ; 10008503 _ 41
        mov     dword [eax+14H], ecx                    ; 10008504 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10008507 _ 66: B9, 0010
        sub     cx, bx                                  ; 1000850B _ 66: 2B. CB
        shr     si, cl                                  ; 1000850E _ 66: D3. EE
        mov     ecx, dword [esp+10H]                    ; 10008511 _ 8B. 4C 24, 10
        lea     ecx, [ebx+ecx-10H]                      ; 10008515 _ 8D. 4C 0B, F0
        mov     ebx, dword [esp+1CH]                    ; 10008519 _ 8B. 5C 24, 1C
        mov     word [eax+16B0H], si                    ; 1000851D _ 66: 89. B0, 000016B0
        mov     dword [eax+16B4H], ecx                  ; 10008524 _ 89. 88, 000016B4
        jmp     ?_0848                                  ; 1000852A _ EB, 24

?_0847: mov     ebp, dword [esp+20H]                    ; 1000852C _ 8B. 6C 24, 20
        mov     bp, word [ebp+ebx*4+404H]               ; 10008530 _ 66: 8B. AC 9D, 00000404
        shl     bp, cl                                  ; 10008538 _ 66: D3. E5
        mov     ecx, dword [eax+16B4H]                  ; 1000853B _ 8B. 88, 000016B4
        or      word [eax+16B0H], bp                    ; 10008541 _ 66: 09. A8, 000016B0
        add     ecx, esi                                ; 10008548 _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 1000854A _ 89. 88, 000016B4
?_0848: mov     esi, dword [?_4893+ebx*4]               ; 10008550 _ 8B. 34 9D, 100248B8(d)
        test    esi, esi                                ; 10008557 _ 85. F6
        je      ?_0850                                  ; 10008559 _ 0F 84, 00000086
        mov     ecx, dword [?_4904+ebx*4]               ; 1000855F _ 8B. 0C 9D, 100251FC(d)
        mov     ebx, 16                                 ; 10008566 _ BB, 00000010
        sub     edx, ecx                                ; 1000856B _ 2B. D1
        mov     ecx, dword [eax+16B4H]                  ; 1000856D _ 8B. 88, 000016B4
        sub     ebx, esi                                ; 10008573 _ 2B. DE
        cmp     ecx, ebx                                ; 10008575 _ 3B. CB
        jle     ?_0849                                  ; 10008577 _ 7E, 5B
        mov     ebx, edx                                ; 10008579 _ 8B. DA
        mov     ebp, dword [eax+8H]                     ; 1000857B _ 8B. 68, 08
        shl     ebx, cl                                 ; 1000857E _ D3. E3
        or      word [eax+16B0H], bx                    ; 10008580 _ 66: 09. 98, 000016B0
        mov     ebx, dword [eax+14H]                    ; 10008587 _ 8B. 58, 14
        mov     cl, byte [eax+16B0H]                    ; 1000858A _ 8A. 88, 000016B0
        mov     byte [ebx+ebp], cl                      ; 10008590 _ 88. 0C 2B
        mov     ebx, dword [eax+14H]                    ; 10008593 _ 8B. 58, 14
        inc     ebx                                     ; 10008596 _ 43
        xor     ecx, ecx                                ; 10008597 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10008599 _ 8A. 88, 000016B1
        mov     dword [eax+14H], ebx                    ; 1000859F _ 89. 58, 14
        mov     ebp, ebx                                ; 100085A2 _ 8B. EB
        mov     ebx, dword [eax+8H]                     ; 100085A4 _ 8B. 58, 08
        mov     byte [ebx+ebp], cl                      ; 100085A7 _ 88. 0C 2B
        mov     ecx, dword [eax+14H]                    ; 100085AA _ 8B. 48, 14
        mov     ebx, dword [eax+16B4H]                  ; 100085AD _ 8B. 98, 000016B4
        inc     ecx                                     ; 100085B3 _ 41
        mov     dword [eax+14H], ecx                    ; 100085B4 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 100085B7 _ 66: B9, 0010
        sub     cx, bx                                  ; 100085BB _ 66: 2B. CB
        shr     dx, cl                                  ; 100085BE _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 100085C1 _ 66: 89. 90, 000016B0
        lea     edx, [ebx+esi-10H]                      ; 100085C8 _ 8D. 54 33, F0
        mov     dword [eax+16B4H], edx                  ; 100085CC _ 89. 90, 000016B4
        jmp     ?_0850                                  ; 100085D2 _ EB, 11

?_0849: shl     edx, cl                                 ; 100085D4 _ D3. E2
        or      word [eax+16B0H], dx                    ; 100085D6 _ 66: 09. 90, 000016B0
        add     ecx, esi                                ; 100085DD _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100085DF _ 89. 88, 000016B4
?_0850: dec     edi                                     ; 100085E5 _ 4F
        cmp     edi, 256                                ; 100085E6 _ 81. FF, 00000100
        jnc     ?_0851                                  ; 100085EC _ 73, 0A
        xor     ebx, ebx                                ; 100085EE _ 33. DB
        mov     bl, byte [?_4901+edi]                   ; 100085F0 _ 8A. 9F, 10024EFC(d)
        jmp     ?_0852                                  ; 100085F6 _ EB, 0D

?_0851: mov     ecx, edi                                ; 100085F8 _ 8B. CF
        shr     ecx, 7                                  ; 100085FA _ C1. E9, 07
        xor     ebx, ebx                                ; 100085FD _ 33. DB
        mov     bl, byte [?_4902+ecx]                   ; 100085FF _ 8A. 99, 10024FFC(d)
?_0852: mov     ebp, dword [esp+24H]                    ; 10008605 _ 8B. 6C 24, 24
        mov     ecx, dword [eax+16B4H]                  ; 10008609 _ 8B. 88, 000016B4
        xor     esi, esi                                ; 1000860F _ 33. F6
        mov     edx, 16                                 ; 10008611 _ BA, 00000010
        mov     si, word [ebp+ebx*4+2H]                 ; 10008616 _ 66: 8B. 74 9D, 02
        mov     dword [esp+1CH], ebx                    ; 1000861B _ 89. 5C 24, 1C
        sub     edx, esi                                ; 1000861F _ 2B. D6
        cmp     ecx, edx                                ; 10008621 _ 3B. CA
        jle     ?_0853                                  ; 10008623 _ 7E, 6A
        xor     edx, edx                                ; 10008625 _ 33. D2
        mov     dx, word [ebp+ebx*4]                    ; 10008627 _ 66: 8B. 54 9D, 00
        mov     ebp, dword [eax+8H]                     ; 1000862C _ 8B. 68, 08
        mov     ebx, edx                                ; 1000862F _ 8B. DA
        shl     ebx, cl                                 ; 10008631 _ D3. E3
        or      word [eax+16B0H], bx                    ; 10008633 _ 66: 09. 98, 000016B0
        mov     ebx, dword [eax+14H]                    ; 1000863A _ 8B. 58, 14
        mov     cl, byte [eax+16B0H]                    ; 1000863D _ 8A. 88, 000016B0
        mov     byte [ebx+ebp], cl                      ; 10008643 _ 88. 0C 2B
        mov     ebx, dword [eax+14H]                    ; 10008646 _ 8B. 58, 14
        inc     ebx                                     ; 10008649 _ 43
        xor     ecx, ecx                                ; 1000864A _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 1000864C _ 8A. 88, 000016B1
        mov     dword [eax+14H], ebx                    ; 10008652 _ 89. 58, 14
        mov     ebp, ebx                                ; 10008655 _ 8B. EB
        mov     ebx, dword [eax+8H]                     ; 10008657 _ 8B. 58, 08
        mov     byte [ebx+ebp], cl                      ; 1000865A _ 88. 0C 2B
        mov     ecx, dword [eax+14H]                    ; 1000865D _ 8B. 48, 14
        mov     ebx, dword [eax+16B4H]                  ; 10008660 _ 8B. 98, 000016B4
        inc     ecx                                     ; 10008666 _ 41
        mov     dword [eax+14H], ecx                    ; 10008667 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 1000866A _ 66: B9, 0010
        sub     cx, bx                                  ; 1000866E _ 66: 2B. CB
        mov     ebp, dword [esp+20H]                    ; 10008671 _ 8B. 6C 24, 20
        shr     dx, cl                                  ; 10008675 _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 10008678 _ 66: 89. 90, 000016B0
        lea     edx, [ebx+esi-10H]                      ; 1000867F _ 8D. 54 33, F0
        mov     ebx, dword [esp+1CH]                    ; 10008683 _ 8B. 5C 24, 1C
        mov     dword [eax+16B4H], edx                  ; 10008687 _ 89. 90, 000016B4
        jmp     ?_0854                                  ; 1000868D _ EB, 1B

?_0853: mov     dx, word [ebp+ebx*4]                    ; 1000868F _ 66: 8B. 54 9D, 00
        mov     ebp, dword [esp+20H]                    ; 10008694 _ 8B. 6C 24, 20
        shl     dx, cl                                  ; 10008698 _ 66: D3. E2
        or      word [eax+16B0H], dx                    ; 1000869B _ 66: 09. 90, 000016B0
        add     ecx, esi                                ; 100086A2 _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100086A4 _ 89. 88, 000016B4
?_0854: mov     edx, dword [?_4894+ebx*4]               ; 100086AA _ 8B. 14 9D, 1002492C(d)
        test    edx, edx                                ; 100086B1 _ 85. D2
        je      ?_0857                                  ; 100086B3 _ 0F 84, 00000084
        mov     ecx, dword [?_4905+ebx*4]               ; 100086B9 _ 8B. 0C 9D, 10025270(d)
        mov     esi, 16                                 ; 100086C0 _ BE, 00000010
        sub     edi, ecx                                ; 100086C5 _ 2B. F9
        mov     ecx, dword [eax+16B4H]                  ; 100086C7 _ 8B. 88, 000016B4
        sub     esi, edx                                ; 100086CD _ 2B. F2
        cmp     ecx, esi                                ; 100086CF _ 3B. CE
        jle     ?_0855                                  ; 100086D1 _ 7E, 59
        mov     esi, edi                                ; 100086D3 _ 8B. F7
        shl     esi, cl                                 ; 100086D5 _ D3. E6
        mov     ecx, dword [eax+8H]                     ; 100086D7 _ 8B. 48, 08
        or      word [eax+16B0H], si                    ; 100086DA _ 66: 09. B0, 000016B0
        mov     esi, dword [eax+14H]                    ; 100086E1 _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 100086E4 _ 8A. 98, 000016B0
        mov     byte [ecx+esi], bl                      ; 100086EA _ 88. 1C 31
        mov     esi, dword [eax+14H]                    ; 100086ED _ 8B. 70, 14
        mov     ebx, dword [eax+8H]                     ; 100086F0 _ 8B. 58, 08
        xor     ecx, ecx                                ; 100086F3 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 100086F5 _ 8A. 88, 000016B1
        inc     esi                                     ; 100086FB _ 46
        mov     dword [eax+14H], esi                    ; 100086FC _ 89. 70, 14
        mov     byte [esi+ebx], cl                      ; 100086FF _ 88. 0C 1E
        mov     ecx, dword [eax+14H]                    ; 10008702 _ 8B. 48, 14
        mov     esi, dword [eax+16B4H]                  ; 10008705 _ 8B. B0, 000016B4
        inc     ecx                                     ; 1000870B _ 41
        mov     dword [eax+14H], ecx                    ; 1000870C _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 1000870F _ 66: B9, 0010
        sub     cx, si                                  ; 10008713 _ 66: 2B. CE
        lea     edx, [esi+edx-10H]                      ; 10008716 _ 8D. 54 16, F0
        shr     di, cl                                  ; 1000871A _ 66: D3. EF
        mov     dword [eax+16B4H], edx                  ; 1000871D _ 89. 90, 000016B4
        mov     word [eax+16B0H], di                    ; 10008723 _ 66: 89. B8, 000016B0
        jmp     ?_0857                                  ; 1000872A _ EB, 11

?_0855: shl     edi, cl                                 ; 1000872C _ D3. E7
        or      word [eax+16B0H], di                    ; 1000872E _ 66: 09. B8, 000016B0
        add     ecx, edx                                ; 10008735 _ 03. CA
?_0856: mov     dword [eax+16B4H], ecx                  ; 10008737 _ 89. 88, 000016B4
?_0857: mov     ecx, dword [esp+14H]                    ; 1000873D _ 8B. 4C 24, 14
        mov     edx, dword [eax+1698H]                  ; 10008741 _ 8B. 90, 00001698
        cmp     ecx, edx                                ; 10008747 _ 3B. CA
        jc      ?_0844                                  ; 10008749 _ 0F 82, FFFFFC90
?_0858: mov     ecx, dword [eax+16B4H]                  ; 1000874F _ 8B. 88, 000016B4
        xor     esi, esi                                ; 10008755 _ 33. F6
        mov     si, word [ebp+402H]                     ; 10008757 _ 66: 8B. B5, 00000402
        mov     edx, 16                                 ; 1000875E _ BA, 00000010
        sub     edx, esi                                ; 10008763 _ 2B. D6
        cmp     ecx, edx                                ; 10008765 _ 3B. CA
        jle     ?_0859                                  ; 10008767 _ 7E, 62
        xor     edx, edx                                ; 10008769 _ 33. D2
        mov     dx, word [ebp+400H]                     ; 1000876B _ 66: 8B. 95, 00000400
        mov     edi, edx                                ; 10008772 _ 8B. FA
        shl     edi, cl                                 ; 10008774 _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 10008776 _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 10008779 _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 10008780 _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 10008783 _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 10008789 _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 1000878C _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 1000878F _ 8B. 58, 08
        xor     ecx, ecx                                ; 10008792 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10008794 _ 8A. 88, 000016B1
        inc     edi                                     ; 1000879A _ 47
        mov     dword [eax+14H], edi                    ; 1000879B _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 1000879E _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 100087A1 _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 100087A4 _ 8B. B8, 000016B4
        inc     ecx                                     ; 100087AA _ 41
        mov     dword [eax+14H], ecx                    ; 100087AB _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 100087AE _ 66: B9, 0010
        sub     cx, di                                  ; 100087B2 _ 66: 2B. CF
        shr     dx, cl                                  ; 100087B5 _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 100087B8 _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 100087BF _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 100087C3 _ 89. 90, 000016B4
        jmp     ?_0860                                  ; 100087C9 _ EB, 19

?_0859: mov     dx, word [ebp+400H]                     ; 100087CB _ 66: 8B. 95, 00000400
        shl     dx, cl                                  ; 100087D2 _ 66: D3. E2
        or      word [eax+16B0H], dx                    ; 100087D5 _ 66: 09. 90, 000016B0
        add     ecx, esi                                ; 100087DC _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100087DE _ 89. 88, 000016B4
?_0860: xor     ecx, ecx                                ; 100087E4 _ 33. C9
        pop     edi                                     ; 100087E6 _ 5F
        mov     cx, word [ebp+402H]                     ; 100087E7 _ 66: 8B. 8D, 00000402
        pop     esi                                     ; 100087EE _ 5E
        pop     ebp                                     ; 100087EF _ 5D
        mov     dword [eax+16ACH], ecx                  ; 100087F0 _ 89. 88, 000016AC
        pop     ebx                                     ; 100087F6 _ 5B
        add     esp, 8                                  ; 100087F7 _ 83. C4, 08
        ret                                             ; 100087FA _ C3

        nop                                             ; 100087FB _ 90
        nop                                             ; 100087FC _ 90
        nop                                             ; 100087FD _ 90
        nop                                             ; 100087FE _ 90
        nop                                             ; 100087FF _ 90

