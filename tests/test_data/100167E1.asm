; ---- 100167E1 ----
?_2528: ; Local function
        mov     eax, dword [esp+10H]                    ; 100167E1 _ 8B. 44 24, 10
        cmp     eax, ebx                                ; 100167E5 _ 3B. C3
        jz      ?_2529                                  ; 100167E7 _ 74, 05
        lea     edi, [eax+5DH]                          ; 100167E9 _ 8D. 78, 5D
        jmp     ?_2531                                  ; 100167EC _ EB, 1B

?_2529: mov     eax, dword [esp+14H]                    ; 100167EE _ 8B. 44 24, 14
        cmp     eax, ebx                                ; 100167F2 _ 3B. C3
        jz      ?_2530                                  ; 100167F4 _ 74, 05
        lea     edi, [eax+14H]                          ; 100167F6 _ 8D. 78, 14
        jmp     ?_2531                                  ; 100167F9 _ EB, 0E

?_2530: mov     eax, dword [esp+18H]                    ; 100167FB _ 8B. 44 24, 18
        cmp     eax, ebx                                ; 100167FF _ 3B. C3
        jz      ?_2526                                  ; 10016801 _ 74, A7
        lea     edi, [eax+178H]                         ; 10016803 _ 8D. B8, 00000178
?_2531: cmp     edi, ebx                                ; 10016809 _ 3B. FB
        jz      ?_2536                                  ; 1001680B _ 74, 4E
        mov     eax, dword [edi]                        ; 1001680D _ 8B. 07
        cmp     eax, ebx                                ; 1001680F _ 3B. C3
        jz      ?_2534                                  ; 10016811 _ 74, 2A
?_2532: mov     ebp, eax                                ; 10016813 _ 8B. E8
        mov     eax, dword [eax+3FH]                    ; 10016815 _ 8B. 40, 3F
        cmp     eax, ebx                                ; 10016818 _ 3B. C3
        jnz     ?_2532                                  ; 1001681A _ 75, F7
        call    ?_2497                                  ; 1001681C _ E8, FFFFFD7F
        mov     esi, eax                                ; 10016821 _ 8B. F0
        cmp     esi, ebx                                ; 10016823 _ 3B. F3
        jnz     ?_2533                                  ; 10016825 _ 75, 11
        push    1                                       ; 10016827 _ 6A, 01
        push    ?_5420                                  ; 10016829 _ 68, 100312C8(d)
        push    3284                                    ; 1001682E _ 68, 00000CD4
        jmp     ?_2525                                  ; 10016833 _ E9, FFFFFF65

?_2533: mov     dword [ebp+3FH], esi                    ; 10016838 _ 89. 75, 3F
        jmp     ?_2536                                  ; 1001683B _ EB, 1E

?_2534: call    ?_2497                                  ; 1001683D _ E8, FFFFFD5E
        mov     esi, eax                                ; 10016842 _ 8B. F0
        cmp     esi, ebx                                ; 10016844 _ 3B. F3
        jnz     ?_2535                                  ; 10016846 _ 75, 11
        push    1                                       ; 10016848 _ 6A, 01
        push    ?_5420                                  ; 1001684A _ 68, 100312C8(d)
        push    3293                                    ; 1001684F _ 68, 00000CDD
        jmp     ?_2525                                  ; 10016854 _ E9, FFFFFF44

?_2535: mov     dword [edi], esi                        ; 10016859 _ 89. 37
?_2536: mov     ebp, dword [esp+428H]                   ; 1001685B _ 8B. AC 24, 00000428
        mov     ecx, dword [?_5693]                     ; 10016862 _ 8B. 0D, 101DE450(d)
        mov     eax, ebp                                ; 10016868 _ 8B. C5
        mov     edx, ebp                                ; 1001686A _ 8B. D5
        shl     eax, 6                                  ; 1001686C _ C1. E0, 06
        add     ecx, eax                                ; 1001686F _ 03. C8
        mov     eax, ebp                                ; 10016871 _ 8B. C5
        add     eax, ecx                                ; 10016873 _ 03. C1
        mov     word [esi], bp                          ; 10016875 _ 66: 89. 2E
        mov     dword [esp+1CH], eax                    ; 10016878 _ 89. 44 24, 1C
        mov     eax, dword [?_5380]                     ; 1001687C _ A1, 10030B6C(d)
        and     edx, 0FFFFH                             ; 10016881 _ 81. E2, 0000FFFF
        lea     ecx, [esp+20H]                          ; 10016887 _ 8D. 4C 24, 20
        push    edx                                     ; 1001688B _ 52
        push    eax                                     ; 1001688C _ 50
        push    ?_5419                                  ; 1001688D _ 68, 100312AC(d)
        push    ecx                                     ; 10016892 _ 51
        call    ?_3039                                  ; 10016893 _ E8, 00003A01
        lea     edx, [esp+30H]                          ; 10016898 _ 8D. 54 24, 30
        push    8                                       ; 1001689C _ 6A, 08
        push    edx                                     ; 1001689E _ 52
        push    3310                                    ; 1001689F _ 68, 00000CEE
        push    ?_5397                                  ; 100168A4 _ 68, 10031004(d)
        call    ?_0267                                  ; 100168A9 _ E8, FFFECD92
        mov     eax, dword [?_5380]                     ; 100168AE _ A1, 10030B6C(d)
        add     esp, 32                                 ; 100168B3 _ 83. C4, 20
        mov     dword [esi+2H], eax                     ; 100168B6 _ 89. 46, 02
        mov     edx, dword [?_5380]                     ; 100168B9 _ 8B. 15, 10030B6C(d)
        mov     eax, dword [esp+10H]                    ; 100168BF _ 8B. 44 24, 10
        inc     edx                                     ; 100168C3 _ 42
        cmp     eax, ebx                                ; 100168C4 _ 3B. C3
        mov     dword [?_5380], edx                     ; 100168C6 _ 89. 15, 10030B6C(d)
        jz      ?_2537                                  ; 100168CC _ 74, 08
        mov     ecx, dword [eax+1H]                     ; 100168CE _ 8B. 48, 01
        mov     dword [esi+0AH], ecx                    ; 100168D1 _ 89. 4E, 0A
        jmp     ?_2539                                  ; 100168D4 _ EB, 1E

?_2537: mov     eax, dword [esp+14H]                    ; 100168D6 _ 8B. 44 24, 14
        cmp     eax, ebx                                ; 100168DA _ 3B. C3
        jz      ?_2538                                  ; 100168DC _ 74, 08
        mov     edx, dword [eax+0AH]                    ; 100168DE _ 8B. 50, 0A
        mov     dword [esi+0AH], edx                    ; 100168E1 _ 89. 56, 0A
        jmp     ?_2539                                  ; 100168E4 _ EB, 0E

?_2538: mov     eax, dword [esp+18H]                    ; 100168E6 _ 8B. 44 24, 18
        cmp     eax, ebx                                ; 100168EA _ 3B. C3
        jz      ?_2539                                  ; 100168EC _ 74, 06
        mov     eax, dword [eax+4H]                     ; 100168EE _ 8B. 40, 04
        mov     dword [esi+0AH], eax                    ; 100168F1 _ 89. 46, 0A
?_2539: mov     ecx, dword [esp+424H]                   ; 100168F4 _ 8B. 8C 24, 00000424
        mov     edx, dword [esp+42CH]                   ; 100168FB _ 8B. 94 24, 0000042C
        mov     dword [esi+6H], ecx                     ; 10016902 _ 89. 4E, 06
        mov     dword [esi+0EH], edx                    ; 10016905 _ 89. 56, 0E
        mov     byte [esi+12H], 100                     ; 10016908 _ C6. 46, 12, 64
        mov     byte [esi+13H], 0                       ; 1001690C _ C6. 46, 13, 00
        mov     dword [esi+14H], ebx                    ; 10016910 _ 89. 5E, 14
        mov     dword [esi+3FH], ebx                    ; 10016913 _ 89. 5E, 3F
        mov     ecx, dword [?_5539]                     ; 10016916 _ 8B. 0D, 10035450(d)
        lea     ebx, [esi+1CH]                          ; 1001691C _ 8D. 5E, 1C
        inc     ecx                                     ; 1001691F _ 41
        xor     eax, eax                                ; 10016920 _ 33. C0
        mov     dword [?_5539], ecx                     ; 10016922 _ 89. 0D, 10035450(d)
        mov     ecx, 7                                  ; 10016928 _ B9, 00000007
        mov     edi, ebx                                ; 1001692D _ 8B. FB
        cmp     ebp, 352                                ; 1001692F _ 81. FD, 00000160
        rep stosd                                       ; 10016935 _ F3: AB
        stosw                                           ; 10016937 _ 66: AB
        stosb                                           ; 10016939 _ AA
        jg      ?_2554                                  ; 1001693A _ 0F 8F, 0000016B
        je      ?_2553                                  ; 10016940 _ 0F 84, 0000015C
        lea     eax, [ebp-0B8H]                         ; 10016946 _ 8D. 85, FFFFFF48
        cmp     eax, 166                                ; 1001694C _ 3D, 000000A6
        ja      ?_2557                                  ; 10016951 _ 0F 87, 00000186
        xor     ecx, ecx                                ; 10016957 _ 33. C9
        mov     cl, byte [?_2561+eax]                   ; 10016959 _ 8A. 88, 10016B1C(d)
        jmp     near [?_2560+ecx*4]                     ; 1001695F _ FF. 24 8D, 10016B04(d)

?_2540: or      eax, 0FFFFFFFFH                         ; 10016966 _ 83. C8, FF
        mov     dword [ebx], eax                        ; 10016969 _ 89. 03
        mov     dword [esi+20H], eax                    ; 1001696B _ 89. 46, 20
        mov     dword [esi+24H], eax                    ; 1001696E _ 89. 46, 24
        mov     edx, dword [?_5628]                     ; 10016971 _ 8B. 15, 10035880(d)
        dec     edx                                     ; 10016977 _ 4A
        mov     dword [esi+28H], edx                    ; 10016978 _ 89. 56, 28
        jmp     ?_2557                                  ; 1001697B _ E9, 0000015D

?_2541: or      eax, 0FFFFFFFFH                         ; 10016980 _ 83. C8, FF
        mov     dword [ebx], eax                        ; 10016983 _ 89. 03
        mov     dword [esi+20H], eax                    ; 10016985 _ 89. 46, 20
        mov     dword [esi+24H], eax                    ; 10016988 _ 89. 46, 24
        mov     dword [esi+28H], eax                    ; 1001698B _ 89. 46, 28
        jmp     ?_2557                                  ; 1001698E _ E9, 0000014A

?_2542: mov     byte [ebx], 6                           ; 10016993 _ C6. 03, 06
        jmp     ?_2557                                  ; 10016996 _ E9, 00000142

?_2543: mov     ecx, dword [esp+10H]                    ; 1001699B _ 8B. 4C 24, 10
        test    ecx, ecx                                ; 1001699F _ 85. C9
        jz      ?_2544                                  ; 100169A1 _ 74, 1B
        xor     eax, eax                                ; 100169A3 _ 33. C0
        mov     ax, word [ecx+27H]                      ; 100169A5 _ 66: 8B. 41, 27
        lea     eax, [eax+eax*2]                        ; 100169A9 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100169AC _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100169AF _ 8D. 04 C0
        mov     ecx, dword [?_5634+eax*4]               ; 100169B2 _ 8B. 0C 85, 100358A4(d)
        mov     dword [esi+0AH], ecx                    ; 100169B9 _ 89. 4E, 0A
        jmp     ?_2546                                  ; 100169BC _ EB, 27

?_2544: mov     eax, dword [esp+14H]                    ; 100169BE _ 8B. 44 24, 14
        test    eax, eax                                ; 100169C2 _ 85. C0
        jz      ?_2545                                  ; 100169C4 _ 74, 11
        push    eax                                     ; 100169C6 _ 50
        call    ?_2957                                  ; 100169C7 _ E8, 00003114
        mov     edx, dword [eax+4H]                     ; 100169CC _ 8B. 50, 04
        add     esp, 4                                  ; 100169CF _ 83. C4, 04
        mov     dword [esi+0AH], edx                    ; 100169D2 _ 89. 56, 0A
        jmp     ?_2546                                  ; 100169D5 _ EB, 0E

?_2545: mov     eax, dword [esp+18H]                    ; 100169D7 _ 8B. 44 24, 18
        test    eax, eax                                ; 100169DB _ 85. C0
        jz      ?_2546                                  ; 100169DD _ 74, 06
        mov     eax, dword [eax+4H]                     ; 100169DF _ 8B. 40, 04
        mov     dword [esi+0AH], eax                    ; 100169E2 _ 89. 46, 0A
?_2546: mov     edi, dword [esp+424H]                   ; 100169E5 _ 8B. BC 24, 00000424
        lea     ecx, [esp+18H]                          ; 100169EC _ 8D. 4C 24, 18
        push    edi                                     ; 100169F0 _ 57
        lea     edx, [esp+18H]                          ; 100169F1 _ 8D. 54 24, 18
        push    ecx                                     ; 100169F5 _ 51
        lea     eax, [esp+18H]                          ; 100169F6 _ 8D. 44 24, 18
        push    edx                                     ; 100169FA _ 52
        push    eax                                     ; 100169FB _ 50
        call    ?_2425                                  ; 100169FC _ E8, FFFFF48F
        add     esp, 16                                 ; 10016A01 _ 83. C4, 10
        test    eax, eax                                ; 10016A04 _ 85. C0
        jz      ?_2550                                  ; 10016A06 _ 74, 52
?_2547: mov     eax, dword [esp+10H]                    ; 10016A08 _ 8B. 44 24, 10
        test    eax, eax                                ; 10016A0C _ 85. C0
        jnz     ?_2550                                  ; 10016A0E _ 75, 4A
        mov     eax, dword [esp+14H]                    ; 10016A10 _ 8B. 44 24, 14
        test    eax, eax                                ; 10016A14 _ 85. C0
        jz      ?_2548                                  ; 10016A16 _ 74, 05
        mov     edi, dword [eax+6H]                     ; 10016A18 _ 8B. 78, 06
        jmp     ?_2549                                  ; 10016A1B _ EB, 21

?_2548: mov     eax, dword [esp+18H]                    ; 10016A1D _ 8B. 44 24, 18
        test    eax, eax                                ; 10016A21 _ 85. C0
        jz      ?_2549                                  ; 10016A23 _ 74, 19
        push    1                                       ; 10016A25 _ 6A, 01
        push    ?_5418                                  ; 10016A27 _ 68, 1003127C(d)
        push    3389                                    ; 10016A2C _ 68, 00000D3D
        push    ?_5397                                  ; 10016A31 _ 68, 10031004(d)
        call    ?_0267                                  ; 10016A36 _ E8, FFFECC05
        add     esp, 16                                 ; 10016A3B _ 83. C4, 10
?_2549: lea     ecx, [esp+18H]                          ; 10016A3E _ 8D. 4C 24, 18
        push    edi                                     ; 10016A42 _ 57
        lea     edx, [esp+18H]                          ; 10016A43 _ 8D. 54 24, 18
        push    ecx                                     ; 10016A47 _ 51
        lea     eax, [esp+18H]                          ; 10016A48 _ 8D. 44 24, 18
        push    edx                                     ; 10016A4C _ 52
        push    eax                                     ; 10016A4D _ 50
        call    ?_2425                                  ; 10016A4E _ E8, FFFFF43D
        add     esp, 16                                 ; 10016A53 _ 83. C4, 10
        test    eax, eax                                ; 10016A56 _ 85. C0
        jnz     ?_2547                                  ; 10016A58 _ 75, AE
?_2550: mov     byte [esi+28H], 0                       ; 10016A5A _ C6. 46, 28, 00
        mov     byte [esi+31H], 2                       ; 10016A5E _ C6. 46, 31, 02
        mov     eax, dword [esp+10H]                    ; 10016A62 _ 8B. 44 24, 10
        test    eax, eax                                ; 10016A66 _ 85. C0
        jz      ?_2551                                  ; 10016A68 _ 74, 07
        mov     ecx, dword [eax+1H]                     ; 10016A6A _ 8B. 48, 01
        mov     dword [ebx], ecx                        ; 10016A6D _ 89. 0B
        jmp     ?_2552                                  ; 10016A6F _ EB, 06

?_2551: mov     dword [ebx], -1                         ; 10016A71 _ C7. 03, FFFFFFFF
?_2552: mov     edx, dword [esi+2H]                     ; 10016A77 _ 8B. 56, 02
        push    1                                       ; 10016A7A _ 6A, 01
        push    477                                     ; 10016A7C _ 68, 000001DD
        push    edx                                     ; 10016A81 _ 52
        call    ?_2524                                  ; 10016A82 _ E8, FFFFFCD9
        xor     ecx, ecx                                ; 10016A87 _ 33. C9
        add     esp, 12                                 ; 10016A89 _ 83. C4, 0C
        mov     cx, word [esi]                          ; 10016A8C _ 66: 8B. 0E
        sub     ecx, 307                                ; 10016A8F _ 81. E9, 00000133
        mov     dword [eax+0EH], ecx                    ; 10016A95 _ 89. 48, 0E
        mov     dl, byte [esi]                          ; 10016A98 _ 8A. 16
        sub     dl, 51                                  ; 10016A9A _ 80. EA, 33
        mov     byte [eax+1CH], dl                      ; 10016A9D _ 88. 50, 1C
        jmp     ?_2557                                  ; 10016AA0 _ EB, 3B

?_2553: mov     dword [esi+20H], 15                     ; 10016AA2 _ C7. 46, 20, 0000000F
        jmp     ?_2557                                  ; 10016AA9 _ EB, 32

?_2554: lea     eax, [ebp-174H]                         ; 10016AAB _ 8D. 85, FFFFFE8C
        cmp     eax, 242                                ; 10016AB1 _ 3D, 000000F2
        ja      ?_2557                                  ; 10016AB6 _ 77, 25
        xor     ecx, ecx                                ; 10016AB8 _ 33. C9
        mov     cl, byte [?_2563+eax]                   ; 10016ABA _ 8A. 88, 10016BD0(d)
        jmp     near [?_2562+ecx*4]                     ; 10016AC0 _ FF. 24 8D, 10016BC4(d)

?_2555: mov     dword [esi+20H], 6                      ; 10016AC7 _ C7. 46, 20, 00000006
        jmp     ?_2557                                  ; 10016ACE _ EB, 0D

?_2556: mov     dword [ebx], 0                          ; 10016AD0 _ C7. 03, 00000000
        mov     dword [esi+20H], 0                      ; 10016AD6 _ C7. 46, 20, 00000000
?_2557: mov     edx, dword [esp+1CH]                    ; 10016ADD _ 8B. 54 24, 1C
        mov     al, byte [edx]                          ; 10016AE1 _ 8A. 02
        cmp     al, 23                                  ; 10016AE3 _ 3C, 17
        jz      ?_2558                                  ; 10016AE5 _ 74, 08
        cmp     al, 32                                  ; 10016AE7 _ 3C, 20
        jz      ?_2558                                  ; 10016AE9 _ 74, 04
        cmp     al, 37                                  ; 10016AEB _ 3C, 25
        jnz     ?_2559                                  ; 10016AED _ 75, 06
?_2558: mov     dword [ebx], 0                          ; 10016AEF _ C7. 03, 00000000
?_2559: mov     eax, esi                                ; 10016AF5 _ 8B. C6
        pop     edi                                     ; 10016AF7 _ 5F
        pop     esi                                     ; 10016AF8 _ 5E
        pop     ebp                                     ; 10016AF9 _ 5D
        pop     ebx                                     ; 10016AFA _ 5B
        add     esp, 1040                               ; 10016AFB _ 81. C4, 00000410
        ret                                             ; 10016B01 _ C3

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4

?_2560:                                                 ; switch/case jump table
        dd ?_2542                                       ; 10016B04 _ 10016993 (d)
        dd ?_2540                                       ; 10016B08 _ 10016966 (d)
        dd ?_2541                                       ; 10016B0C _ 10016980 (d)
        dd ?_2543                                       ; 10016B10 _ 1001699B (d)
        dd ?_2553                                       ; 10016B14 _ 10016AA2 (d)
        dd ?_2557                                       ; 10016B18 _ 10016ADD (d)

?_2561: db 00H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B1C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B24 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B2C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B34 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B3C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B44 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B4C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B54 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B5C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B64 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B6C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B74 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B7C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B84 _ ........
        db 05H, 05H, 05H, 05H, 01H, 02H, 05H, 05H       ; 10016B8C _ ........
        db 05H, 05H, 05H, 05H, 03H, 03H, 03H, 05H       ; 10016B94 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016B9C _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016BA4 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016BAC _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 05H, 05H       ; 10016BB4 _ ........
        db 05H, 05H, 05H, 05H, 05H, 05H, 04H, 90H       ; 10016BBC _ ........

?_2562:                                                 ; switch/case jump table
        dd ?_2555                                       ; 10016BC4 _ 10016AC7 (d)
        dd ?_2556                                       ; 10016BC8 _ 10016AD0 (d)
        dd ?_2557                                       ; 10016BCC _ 10016ADD (d)

?_2563: db 00H, 02H, 00H, 02H, 02H, 02H, 02H, 02H       ; 10016BD0 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016BD8 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016BE0 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016BE8 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016BF0 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016BF8 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C00 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C08 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C10 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C18 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C20 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C28 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C30 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C38 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C40 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C48 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C50 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C58 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C60 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C68 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C70 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C78 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C80 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C88 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C90 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016C98 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 01H       ; 10016CA0 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016CA8 _ ........
        db 02H, 02H, 01H, 02H, 02H, 02H, 02H, 02H       ; 10016CB0 _ ........
        db 02H, 02H, 02H, 02H, 02H, 02H, 02H, 02H       ; 10016CB8 _ ........
        db 02H, 02H, 01H, 90H, 90H, 90H, 90H, 90H       ; 10016CC0 _ ........
        db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10016CC8 _ ........
?_2564: sub     esp, 524                                ; 10016CD0 _ 81. EC, 0000020C
        push    esi                                     ; 10016CD6 _ 56
        mov     esi, dword [esp+218H]                   ; 10016CD7 _ 8B. B4 24, 00000218
        test    esi, esi                                ; 10016CDE _ 85. F6
        push    edi                                     ; 10016CE0 _ 57
        jnz     ?_2566                                  ; 10016CE1 _ 75, 24
        push    1                                       ; 10016CE3 _ 6A, 01
        push    ?_5424                                  ; 10016CE5 _ 68, 10031390(d)
        push    3572                                    ; 10016CEA _ 68, 00000DF4
        push    ?_5397                                  ; 10016CEF _ 68, 10031004(d)
        call    ?_0267                                  ; 10016CF4 _ E8, FFFEC947
        add     esp, 16                                 ; 10016CF9 _ 83. C4, 10
?_2565: pop     edi                                     ; 10016CFC _ 5F
        xor     eax, eax                                ; 10016CFD _ 33. C0
        pop     esi                                     ; 10016CFF _ 5E
        add     esp, 524                                ; 10016D00 _ 81. C4, 0000020C
        ret                                             ; 10016D06 _ C3
