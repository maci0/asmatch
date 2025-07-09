; ---- 10003E40 ----
?_0346: ; Local function
        sub     esp, 48                                 ; 10003E40 _ 83. EC, 30
        mov     eax, dword [esp+38H]                    ; 10003E43 _ 8B. 44 24, 38
        push    ebx                                     ; 10003E47 _ 53
        mov     ebx, dword [esp+38H]                    ; 10003E48 _ 8B. 5C 24, 38
        push    ebp                                     ; 10003E4C _ 55
        mov     ecx, dword [eax]                        ; 10003E4D _ 8B. 08
        mov     edx, dword [eax+4H]                     ; 10003E4F _ 8B. 50, 04
        mov     eax, dword [ebx+20H]                    ; 10003E52 _ 8B. 43, 20
        mov     ebp, dword [ebx+1CH]                    ; 10003E55 _ 8B. 6B, 1C
        mov     dword [esp+8H], ecx                     ; 10003E58 _ 89. 4C 24, 08
        mov     ecx, dword [ebx+34H]                    ; 10003E5C _ 8B. 4B, 34
        mov     dword [esp+10H], eax                    ; 10003E5F _ 89. 44 24, 10
        mov     eax, dword [ebx+30H]                    ; 10003E63 _ 8B. 43, 30
        push    esi                                     ; 10003E66 _ 56
        cmp     ecx, eax                                ; 10003E67 _ 3B. C8
        push    edi                                     ; 10003E69 _ 57
        mov     dword [esp+14H], edx                    ; 10003E6A _ 89. 54 24, 14
        mov     dword [esp+44H], ecx                    ; 10003E6E _ 89. 4C 24, 44
        jnc     ?_0347                                  ; 10003E72 _ 73, 05
        sub     eax, ecx                                ; 10003E74 _ 2B. C1
        dec     eax                                     ; 10003E76 _ 48
        jmp     ?_0348                                  ; 10003E77 _ EB, 05

?_0347: mov     eax, dword [ebx+2CH]                    ; 10003E79 _ 8B. 43, 2C
        sub     eax, ecx                                ; 10003E7C _ 2B. C1
?_0348: mov     dword [esp+1CH], eax                    ; 10003E7E _ 89. 44 24, 1C
?_0349: mov     eax, dword [ebx]                        ; 10003E82 _ 8B. 03
        cmp     eax, 9                                  ; 10003E84 _ 83. F8, 09
        ja      ?_0427                                  ; 10003E87 _ 0F 87, 00000C2E
        jmp     near [?_0428+eax*4]                     ; 10003E8D _ FF. 24 85, 10004B00(d)

?_0350: mov     esi, dword [esp+18H]                    ; 10003E94 _ 8B. 74 24, 18
        cmp     ebp, 3                                  ; 10003E98 _ 83. FD, 03
        jnc     ?_0352                                  ; 10003E9B _ 73, 3C
        mov     eax, dword [esp+14H]                    ; 10003E9D _ 8B. 44 24, 14
        mov     edi, dword [esp+10H]                    ; 10003EA1 _ 8B. 7C 24, 10
?_0351: test    eax, eax                                ; 10003EA5 _ 85. C0
        je      ?_0401                                  ; 10003EA7 _ 0F 84, 00000707
        xor     ecx, ecx                                ; 10003EAD _ 33. C9
        dec     eax                                     ; 10003EAF _ 48
        mov     cl, byte [edi]                          ; 10003EB0 _ 8A. 0F
        mov     dword [esp+4CH], 0                      ; 10003EB2 _ C7. 44 24, 4C, 00000000
        mov     edx, ecx                                ; 10003EBA _ 8B. D1
        mov     ecx, ebp                                ; 10003EBC _ 8B. CD
        shl     edx, cl                                 ; 10003EBE _ D3. E2
        add     ebp, 8                                  ; 10003EC0 _ 83. C5, 08
        mov     dword [esp+14H], eax                    ; 10003EC3 _ 89. 44 24, 14
        or      esi, edx                                ; 10003EC7 _ 0B. F2
        inc     edi                                     ; 10003EC9 _ 47
        cmp     ebp, 3                                  ; 10003ECA _ 83. FD, 03
        mov     dword [esp+18H], esi                    ; 10003ECD _ 89. 74 24, 18
        mov     dword [esp+10H], edi                    ; 10003ED1 _ 89. 7C 24, 10
        jc      ?_0351                                  ; 10003ED5 _ 72, CE
        jmp     ?_0353                                  ; 10003ED7 _ EB, 04

?_0352: mov     edi, dword [esp+10H]                    ; 10003ED9 _ 8B. 7C 24, 10
?_0353: mov     eax, esi                                ; 10003EDD _ 8B. C6
        and     eax, 07H                                ; 10003EDF _ 83. E0, 07
        mov     ecx, eax                                ; 10003EE2 _ 8B. C8
        shr     eax, 1                                  ; 10003EE4 _ D1. E8
        and     ecx, 01H                                ; 10003EE6 _ 83. E1, 01
        cmp     eax, 3                                  ; 10003EE9 _ 83. F8, 03
        mov     dword [ebx+18H], ecx                    ; 10003EEC _ 89. 4B, 18
        ja      ?_0349                                  ; 10003EEF _ 77, 91
        jmp     near [?_0429+eax*4]                     ; 10003EF1 _ FF. 24 85, 10004B28(d)

?_0354: sub     ebp, 3                                  ; 10003EF8 _ 83. ED, 03
        mov     dword [ebx], 1                          ; 10003EFB _ C7. 03, 00000001
        mov     ecx, ebp                                ; 10003F01 _ 8B. CD
        and     ecx, 07H                                ; 10003F03 _ 83. E1, 07
        shr     esi, 3                                  ; 10003F06 _ C1. EE, 03
        shr     esi, cl                                 ; 10003F09 _ D3. EE
        sub     ebp, ecx                                ; 10003F0B _ 2B. E9
        mov     dword [esp+18H], esi                    ; 10003F0D _ 89. 74 24, 18
        jmp     ?_0349                                  ; 10003F11 _ E9, FFFFFF6C

?_0355: mov     edx, dword [esp+48H]                    ; 10003F16 _ 8B. 54 24, 48
        lea     eax, [esp+24H]                          ; 10003F1A _ 8D. 44 24, 24
        push    edx                                     ; 10003F1E _ 52
        lea     ecx, [esp+2CH]                          ; 10003F1F _ 8D. 4C 24, 2C
        push    eax                                     ; 10003F23 _ 50
        lea     edx, [esp+34H]                          ; 10003F24 _ 8D. 54 24, 34
        push    ecx                                     ; 10003F28 _ 51
        lea     eax, [esp+3CH]                          ; 10003F29 _ 8D. 44 24, 3C
        push    edx                                     ; 10003F2D _ 52
        push    eax                                     ; 10003F2E _ 50
        call    ?_0629                                  ; 10003F2F _ E8, 000024DC
        mov     ecx, dword [esp+5CH]                    ; 10003F34 _ 8B. 4C 24, 5C
        mov     edx, dword [esp+38H]                    ; 10003F38 _ 8B. 54 24, 38
        mov     eax, dword [esp+3CH]                    ; 10003F3C _ 8B. 44 24, 3C
        push    ecx                                     ; 10003F40 _ 51
        mov     ecx, dword [esp+44H]                    ; 10003F41 _ 8B. 4C 24, 44
        push    edx                                     ; 10003F45 _ 52
        mov     edx, dword [esp+4CH]                    ; 10003F46 _ 8B. 54 24, 4C
        push    eax                                     ; 10003F4A _ 50
        push    ecx                                     ; 10003F4B _ 51
        push    edx                                     ; 10003F4C _ 52
        call    ?_0431                                  ; 10003F4D _ E8, 00000C2E
        add     esp, 40                                 ; 10003F52 _ 83. C4, 28
        mov     dword [ebx+4H], eax                     ; 10003F55 _ 89. 43, 04
        test    eax, eax                                ; 10003F58 _ 85. C0
        je      ?_0402                                  ; 10003F5A _ 0F 84, 00000693
        shr     esi, 3                                  ; 10003F60 _ C1. EE, 03
        mov     dword [esp+18H], esi                    ; 10003F63 _ 89. 74 24, 18
        sub     ebp, 3                                  ; 10003F67 _ 83. ED, 03
        mov     dword [ebx], 6                          ; 10003F6A _ C7. 03, 00000006
        jmp     ?_0349                                  ; 10003F70 _ E9, FFFFFF0D

?_0356: shr     esi, 3                                  ; 10003F75 _ C1. EE, 03
        mov     dword [esp+18H], esi                    ; 10003F78 _ 89. 74 24, 18
        sub     ebp, 3                                  ; 10003F7C _ 83. ED, 03
        mov     dword [ebx], 3                          ; 10003F7F _ C7. 03, 00000003
        jmp     ?_0349                                  ; 10003F85 _ E9, FFFFFEF8

?_0357: mov     esi, dword [esp+18H]                    ; 10003F8A _ 8B. 74 24, 18
        mov     edi, dword [esp+14H]                    ; 10003F8E _ 8B. 7C 24, 14
        mov     eax, dword [esp+10H]                    ; 10003F92 _ 8B. 44 24, 10
        cmp     ebp, 32                                 ; 10003F96 _ 83. FD, 20
        jnc     ?_0359                                  ; 10003F99 _ 73, 2C
?_0358: xor     edx, edx                                ; 10003F9B _ 33. D2
        cmp     edi, edx                                ; 10003F9D _ 3B. FA
        je      ?_0404                                  ; 10003F9F _ 0F 84, 000006D9
        xor     ecx, ecx                                ; 10003FA5 _ 33. C9
        mov     dword [esp+4CH], edx                    ; 10003FA7 _ 89. 54 24, 4C
        mov     cl, byte [eax]                          ; 10003FAB _ 8A. 08
        dec     edi                                     ; 10003FAD _ 4F
        mov     edx, ecx                                ; 10003FAE _ 8B. D1
        mov     ecx, ebp                                ; 10003FB0 _ 8B. CD
        shl     edx, cl                                 ; 10003FB2 _ D3. E2
        add     ebp, 8                                  ; 10003FB4 _ 83. C5, 08
        mov     dword [esp+14H], edi                    ; 10003FB7 _ 89. 7C 24, 14
        or      esi, edx                                ; 10003FBB _ 0B. F2
        inc     eax                                     ; 10003FBD _ 40
        cmp     ebp, 32                                 ; 10003FBE _ 83. FD, 20
        mov     dword [esp+10H], eax                    ; 10003FC1 _ 89. 44 24, 10
        jc      ?_0358                                  ; 10003FC5 _ 72, D4
?_0359: mov     edx, esi                                ; 10003FC7 _ 8B. D6
        mov     ecx, esi                                ; 10003FC9 _ 8B. CE
        not     edx                                     ; 10003FCB _ F7. D2
        and     ecx, 0FFFFH                             ; 10003FCD _ 81. E1, 0000FFFF
        shr     edx, 16                                 ; 10003FD3 _ C1. EA, 10
        xor     edx, ecx                                ; 10003FD6 _ 33. D1
        jne     ?_0405                                  ; 10003FD8 _ 0F 85, 000006DB
        xor     ebp, ebp                                ; 10003FDE _ 33. ED
        mov     eax, ecx                                ; 10003FE0 _ 8B. C1
        cmp     eax, ebp                                ; 10003FE2 _ 3B. C5
        mov     dword [ebx+4H], ecx                     ; 10003FE4 _ 89. 4B, 04
        mov     dword [esp+18H], ebp                    ; 10003FE7 _ 89. 6C 24, 18
        je      ?_0372                                  ; 10003FEB _ 0F 84, 0000012A
        mov     eax, 2                                  ; 10003FF1 _ B8, 00000002
        mov     dword [ebx], eax                        ; 10003FF6 _ 89. 03
        jmp     ?_0349                                  ; 10003FF8 _ E9, FFFFFE85

?_0360: mov     edi, dword [esp+14H]                    ; 10003FFD _ 8B. 7C 24, 14
        test    edi, edi                                ; 10004001 _ 85. FF
        je      ?_0406                                  ; 10004003 _ 0F 84, 000006F5
        mov     ecx, dword [esp+1CH]                    ; 10004009 _ 8B. 4C 24, 1C
        test    ecx, ecx                                ; 1000400D _ 85. C9
        jne     ?_0369                                  ; 1000400F _ 0F 85, 000000A1
        mov     ecx, dword [ebx+2CH]                    ; 10004015 _ 8B. 4B, 2C
        mov     edx, dword [esp+44H]                    ; 10004018 _ 8B. 54 24, 44
        cmp     edx, ecx                                ; 1000401C _ 3B. D1
        jnz     ?_0363                                  ; 1000401E _ 75, 25
        mov     eax, dword [ebx+30H]                    ; 10004020 _ 8B. 43, 30
        mov     esi, dword [ebx+28H]                    ; 10004023 _ 8B. 73, 28
        cmp     eax, esi                                ; 10004026 _ 3B. C6
        jz      ?_0363                                  ; 10004028 _ 74, 1B
        mov     edx, esi                                ; 1000402A _ 8B. D6
        cmp     edx, eax                                ; 1000402C _ 3B. D0
        mov     dword [esp+44H], edx                    ; 1000402E _ 89. 54 24, 44
        jnc     ?_0361                                  ; 10004032 _ 73, 07
        sub     eax, edx                                ; 10004034 _ 2B. C2
        dec     eax                                     ; 10004036 _ 48
        mov     ecx, eax                                ; 10004037 _ 8B. C8
        jmp     ?_0362                                  ; 10004039 _ EB, 02

?_0361: sub     ecx, edx                                ; 1000403B _ 2B. CA
?_0362: test    ecx, ecx                                ; 1000403D _ 85. C9
        mov     dword [esp+1CH], ecx                    ; 1000403F _ 89. 4C 24, 1C
        jnz     ?_0369                                  ; 10004043 _ 75, 71
?_0363: mov     eax, dword [esp+4CH]                    ; 10004045 _ 8B. 44 24, 4C
        mov     edi, dword [esp+48H]                    ; 10004049 _ 8B. 7C 24, 48
        push    eax                                     ; 1000404D _ 50
        push    edi                                     ; 1000404E _ 57
        push    ebx                                     ; 1000404F _ 53
        mov     dword [ebx+34H], edx                    ; 10004050 _ 89. 53, 34
        call    ?_0630                                  ; 10004053 _ E8, 000023E8
        mov     edx, dword [ebx+34H]                    ; 10004058 _ 8B. 53, 34
        mov     esi, dword [ebx+30H]                    ; 1000405B _ 8B. 73, 30
        add     esp, 12                                 ; 1000405E _ 83. C4, 0C
        cmp     edx, esi                                ; 10004061 _ 3B. D6
        mov     dword [esp+4CH], eax                    ; 10004063 _ 89. 44 24, 4C
        mov     dword [esp+44H], edx                    ; 10004067 _ 89. 54 24, 44
        jnc     ?_0364                                  ; 1000406B _ 73, 07
        mov     ecx, esi                                ; 1000406D _ 8B. CE
        sub     ecx, edx                                ; 1000406F _ 2B. CA
        dec     ecx                                     ; 10004071 _ 49
        jmp     ?_0365                                  ; 10004072 _ EB, 05

?_0364: mov     ecx, dword [ebx+2CH]                    ; 10004074 _ 8B. 4B, 2C
        sub     ecx, edx                                ; 10004077 _ 2B. CA
?_0365: mov     eax, dword [ebx+2CH]                    ; 10004079 _ 8B. 43, 2C
        mov     dword [esp+1CH], ecx                    ; 1000407C _ 89. 4C 24, 1C
        cmp     edx, eax                                ; 10004080 _ 3B. D0
        mov     dword [esp+20H], eax                    ; 10004082 _ 89. 44 24, 20
        jnz     ?_0368                                  ; 10004086 _ 75, 22
        mov     eax, dword [ebx+28H]                    ; 10004088 _ 8B. 43, 28
        cmp     esi, eax                                ; 1000408B _ 3B. F0
        jz      ?_0368                                  ; 1000408D _ 74, 1B
        mov     edx, eax                                ; 1000408F _ 8B. D0
        cmp     edx, esi                                ; 10004091 _ 3B. D6
        mov     dword [esp+44H], edx                    ; 10004093 _ 89. 54 24, 44
        jnc     ?_0366                                  ; 10004097 _ 73, 07
        sub     esi, edx                                ; 10004099 _ 2B. F2
        dec     esi                                     ; 1000409B _ 4E
        mov     ecx, esi                                ; 1000409C _ 8B. CE
        jmp     ?_0367                                  ; 1000409E _ EB, 06

?_0366: mov     ecx, dword [esp+20H]                    ; 100040A0 _ 8B. 4C 24, 20
        sub     ecx, edx                                ; 100040A4 _ 2B. CA
?_0367: mov     dword [esp+1CH], ecx                    ; 100040A6 _ 89. 4C 24, 1C
?_0368: test    ecx, ecx                                ; 100040AA _ 85. C9
        je      ?_0407                                  ; 100040AC _ 0F 84, 00000693
        mov     edi, dword [esp+14H]                    ; 100040B2 _ 8B. 7C 24, 14
?_0369: mov     eax, dword [ebx+4H]                     ; 100040B6 _ 8B. 43, 04
        mov     dword [esp+4CH], 0                      ; 100040B9 _ C7. 44 24, 4C, 00000000
        cmp     eax, edi                                ; 100040C1 _ 3B. C7
        jbe     ?_0370                                  ; 100040C3 _ 76, 02
        mov     eax, edi                                ; 100040C5 _ 8B. C7
?_0370: cmp     eax, ecx                                ; 100040C7 _ 3B. C1
        jbe     ?_0371                                  ; 100040C9 _ 76, 02
        mov     eax, ecx                                ; 100040CB _ 8B. C1
?_0371: mov     esi, dword [esp+10H]                    ; 100040CD _ 8B. 74 24, 10
        mov     edi, dword [esp+44H]                    ; 100040D1 _ 8B. 7C 24, 44
        mov     ecx, eax                                ; 100040D5 _ 8B. C8
        mov     edx, ecx                                ; 100040D7 _ 8B. D1
        shr     ecx, 2                                  ; 100040D9 _ C1. E9, 02
        rep movsd                                       ; 100040DC _ F3: A5
        mov     ecx, edx                                ; 100040DE _ 8B. CA
        mov     edx, dword [esp+1CH]                    ; 100040E0 _ 8B. 54 24, 1C
        and     ecx, 03H                                ; 100040E4 _ 83. E1, 03
        sub     edx, eax                                ; 100040E7 _ 2B. D0
        rep movsb                                       ; 100040E9 _ F3: A4
        mov     ecx, dword [esp+10H]                    ; 100040EB _ 8B. 4C 24, 10
        mov     edi, dword [esp+14H]                    ; 100040EF _ 8B. 7C 24, 14
        mov     esi, dword [esp+44H]                    ; 100040F3 _ 8B. 74 24, 44
        add     ecx, eax                                ; 100040F7 _ 03. C8
        mov     dword [esp+10H], ecx                    ; 100040F9 _ 89. 4C 24, 10
        mov     ecx, dword [ebx+4H]                     ; 100040FD _ 8B. 4B, 04
        sub     edi, eax                                ; 10004100 _ 2B. F8
        add     esi, eax                                ; 10004102 _ 03. F0
        sub     ecx, eax                                ; 10004104 _ 2B. C8
        mov     dword [esp+14H], edi                    ; 10004106 _ 89. 7C 24, 14
        mov     dword [esp+44H], esi                    ; 1000410A _ 89. 74 24, 44
        mov     dword [esp+1CH], edx                    ; 1000410E _ 89. 54 24, 1C
        mov     dword [ebx+4H], ecx                     ; 10004112 _ 89. 4B, 04
        jne     ?_0349                                  ; 10004115 _ 0F 85, FFFFFD67
?_0372: mov     eax, dword [ebx+18H]                    ; 1000411B _ 8B. 43, 18
        neg     eax                                     ; 1000411E _ F7. D8
        sbb     eax, eax                                ; 10004120 _ 1B. C0
        and     eax, 07H                                ; 10004122 _ 83. E0, 07
        mov     dword [ebx], eax                        ; 10004125 _ 89. 03
        jmp     ?_0349                                  ; 10004127 _ E9, FFFFFD56

?_0373: mov     edi, dword [esp+18H]                    ; 1000412C _ 8B. 7C 24, 18
        cmp     ebp, 14                                 ; 10004130 _ 83. FD, 0E
        jnc     ?_0375                                  ; 10004133 _ 73, 36
        mov     esi, dword [esp+14H]                    ; 10004135 _ 8B. 74 24, 14
        mov     eax, dword [esp+10H]                    ; 10004139 _ 8B. 44 24, 10
?_0374: test    esi, esi                                ; 1000413D _ 85. F6
        je      ?_0408                                  ; 1000413F _ 0F 84, 0000063F
        xor     ecx, ecx                                ; 10004145 _ 33. C9
        dec     esi                                     ; 10004147 _ 4E
        mov     cl, byte [eax]                          ; 10004148 _ 8A. 08
        mov     dword [esp+4CH], 0                      ; 1000414A _ C7. 44 24, 4C, 00000000
        mov     edx, ecx                                ; 10004152 _ 8B. D1
        mov     ecx, ebp                                ; 10004154 _ 8B. CD
        shl     edx, cl                                 ; 10004156 _ D3. E2
        add     ebp, 8                                  ; 10004158 _ 83. C5, 08
        mov     dword [esp+14H], esi                    ; 1000415B _ 89. 74 24, 14
        or      edi, edx                                ; 1000415F _ 0B. FA
        inc     eax                                     ; 10004161 _ 40
        cmp     ebp, 14                                 ; 10004162 _ 83. FD, 0E
        mov     dword [esp+10H], eax                    ; 10004165 _ 89. 44 24, 10
        jc      ?_0374                                  ; 10004169 _ 72, D2
?_0375: mov     eax, edi                                ; 1000416B _ 8B. C7
        and     eax, 3FFFH                              ; 1000416D _ 25, 00003FFF
        mov     ecx, eax                                ; 10004172 _ 8B. C8
        mov     dword [ebx+4H], eax                     ; 10004174 _ 89. 43, 04
        and     ecx, 1FH                                ; 10004177 _ 83. E1, 1F
        cmp     ecx, 29                                 ; 1000417A _ 83. F9, 1D
        ja      ?_0410                                  ; 1000417D _ 0F 87, 00000680
        mov     edx, eax                                ; 10004183 _ 8B. D0
        and     edx, 3E0H                               ; 10004185 _ 81. E2, 000003E0
        cmp     edx, 928                                ; 1000418B _ 81. FA, 000003A0
        ja      ?_0410                                  ; 10004191 _ 0F 87, 0000066C
        mov     esi, dword [esp+48H]                    ; 10004197 _ 8B. 74 24, 48
        push    4                                       ; 1000419B _ 6A, 04
        shr     eax, 5                                  ; 1000419D _ C1. E8, 05
        and     eax, 1FH                                ; 100041A0 _ 83. E0, 1F
        lea     eax, [eax+ecx+102H]                     ; 100041A3 _ 8D. 84 08, 00000102
        mov     ecx, dword [esi+28H]                    ; 100041AA _ 8B. 4E, 28
        push    eax                                     ; 100041AD _ 50
        push    ecx                                     ; 100041AE _ 51
        call    near [esi+20H]                          ; 100041AF _ FF. 56, 20
        add     esp, 12                                 ; 100041B2 _ 83. C4, 0C
        mov     dword [ebx+0CH], eax                    ; 100041B5 _ 89. 43, 0C
        test    eax, eax                                ; 100041B8 _ 85. C0
        je      ?_0409                                  ; 100041BA _ 0F 84, 00000607
        shr     edi, 14                                 ; 100041C0 _ C1. EF, 0E
        sub     ebp, 14                                 ; 100041C3 _ 83. ED, 0E
        mov     dword [ebx+8H], 0                       ; 100041C6 _ C7. 43, 08, 00000000
        mov     dword [ebx], 4                          ; 100041CD _ C7. 03, 00000004
        jmp     ?_0377                                  ; 100041D3 _ EB, 08

?_0376: mov     edi, dword [esp+18H]                    ; 100041D5 _ 8B. 7C 24, 18
        mov     esi, dword [esp+48H]                    ; 100041D9 _ 8B. 74 24, 48
?_0377: mov     edx, dword [ebx+4H]                     ; 100041DD _ 8B. 53, 04
        mov     eax, dword [ebx+8H]                     ; 100041E0 _ 8B. 43, 08
        shr     edx, 10                                 ; 100041E3 _ C1. EA, 0A
        add     edx, 4                                  ; 100041E6 _ 83. C2, 04
        cmp     eax, edx                                ; 100041E9 _ 3B. C2
        jnc     ?_0381                                  ; 100041EB _ 73, 6E
?_0378: cmp     ebp, 3                                  ; 100041ED _ 83. FD, 03
        jnc     ?_0380                                  ; 100041F0 _ 73, 38
        mov     eax, dword [esp+10H]                    ; 100041F2 _ 8B. 44 24, 10
?_0379: mov     ecx, dword [esp+14H]                    ; 100041F6 _ 8B. 4C 24, 14
        test    ecx, ecx                                ; 100041FA _ 85. C9
        je      ?_0411                                  ; 100041FC _ 0F 84, 0000064E
        mov     edx, ecx                                ; 10004202 _ 8B. D1
        xor     ecx, ecx                                ; 10004204 _ 33. C9
        mov     cl, byte [eax]                          ; 10004206 _ 8A. 08
        dec     edx                                     ; 10004208 _ 4A
        mov     dword [esp+14H], edx                    ; 10004209 _ 89. 54 24, 14
        mov     edx, ecx                                ; 1000420D _ 8B. D1
        mov     ecx, ebp                                ; 1000420F _ 8B. CD
        add     ebp, 8                                  ; 10004211 _ 83. C5, 08
        shl     edx, cl                                 ; 10004214 _ D3. E2
        mov     dword [esp+4CH], 0                      ; 10004216 _ C7. 44 24, 4C, 00000000
        or      edi, edx                                ; 1000421E _ 0B. FA
        inc     eax                                     ; 10004220 _ 40
        cmp     ebp, 3                                  ; 10004221 _ 83. FD, 03
        mov     dword [esp+10H], eax                    ; 10004224 _ 89. 44 24, 10
        jc      ?_0379                                  ; 10004228 _ 72, CC
?_0380: mov     ecx, dword [ebx+8H]                     ; 1000422A _ 8B. 4B, 08
        mov     eax, edi                                ; 1000422D _ 8B. C7
        and     eax, 07H                                ; 1000422F _ 83. E0, 07
        sub     ebp, 3                                  ; 10004232 _ 83. ED, 03
        mov     edx, dword [?_4888+ecx*4]               ; 10004235 _ 8B. 14 8D, 10024650(d)
        mov     ecx, dword [ebx+0CH]                    ; 1000423C _ 8B. 4B, 0C
        shr     edi, 3                                  ; 1000423F _ C1. EF, 03
        mov     dword [ecx+edx*4], eax                  ; 10004242 _ 89. 04 91
        mov     edx, dword [ebx+8H]                     ; 10004245 _ 8B. 53, 08
        inc     edx                                     ; 10004248 _ 42
        mov     dword [ebx+8H], edx                     ; 10004249 _ 89. 53, 08
        mov     eax, edx                                ; 1000424C _ 8B. C2
        mov     edx, dword [ebx+4H]                     ; 1000424E _ 8B. 53, 04
        shr     edx, 10                                 ; 10004251 _ C1. EA, 0A
        add     edx, 4                                  ; 10004254 _ 83. C2, 04
        cmp     eax, edx                                ; 10004257 _ 3B. C2
        jc      ?_0378                                  ; 10004259 _ 72, 92
?_0381: mov     ecx, dword [ebx+8H]                     ; 1000425B _ 8B. 4B, 08
        mov     eax, 19                                 ; 1000425E _ B8, 00000013
        cmp     ecx, eax                                ; 10004263 _ 3B. C8
        jnc     ?_0383                                  ; 10004265 _ 73, 21
?_0382: mov     ecx, dword [ebx+8H]                     ; 10004267 _ 8B. 4B, 08
        mov     edx, dword [?_4888+ecx*4]               ; 1000426A _ 8B. 14 8D, 10024650(d)
        mov     ecx, dword [ebx+0CH]                    ; 10004271 _ 8B. 4B, 0C
        mov     dword [ecx+edx*4], 0                    ; 10004274 _ C7. 04 91, 00000000
        mov     edx, dword [ebx+8H]                     ; 1000427B _ 8B. 53, 08
        inc     edx                                     ; 1000427E _ 42
        mov     ecx, edx                                ; 1000427F _ 8B. CA
        mov     dword [ebx+8H], edx                     ; 10004281 _ 89. 53, 08
        cmp     ecx, eax                                ; 10004284 _ 3B. C8
        jc      ?_0382                                  ; 10004286 _ 72, DF
?_0383: mov     edx, dword [ebx+24H]                    ; 10004288 _ 8B. 53, 24
        push    esi                                     ; 1000428B _ 56
        lea     ecx, [ebx+14H]                          ; 1000428C _ 8D. 4B, 14
        lea     eax, [ebx+10H]                          ; 1000428F _ 8D. 43, 10
        push    edx                                     ; 10004292 _ 52
        mov     edx, dword [ebx+0CH]                    ; 10004293 _ 8B. 53, 0C
        push    ecx                                     ; 10004296 _ 51
        push    eax                                     ; 10004297 _ 50
        push    edx                                     ; 10004298 _ 52
        mov     dword [eax], 7                          ; 10004299 _ C7. 00, 00000007
        call    ?_0570                                  ; 1000429F _ E8, 00001A5C
        add     esp, 20                                 ; 100042A4 _ 83. C4, 14
        mov     dword [esp+18H], eax                    ; 100042A7 _ 89. 44 24, 18
        test    eax, eax                                ; 100042AB _ 85. C0
        jne     ?_0412                                  ; 100042AD _ 0F 85, 000005DC
        mov     dword [ebx+8H], eax                     ; 100042B3 _ 89. 43, 08
        mov     dword [ebx], 5                          ; 100042B6 _ C7. 03, 00000005
        jmp     ?_0385                                  ; 100042BC _ EB, 08

?_0384: mov     edi, dword [esp+18H]                    ; 100042BE _ 8B. 7C 24, 18
        mov     esi, dword [esp+48H]                    ; 100042C2 _ 8B. 74 24, 48
?_0385: mov     eax, dword [ebx+4H]                     ; 100042C6 _ 8B. 43, 04
        mov     ecx, dword [ebx+8H]                     ; 100042C9 _ 8B. 4B, 08
        mov     edx, eax                                ; 100042CC _ 8B. D0
        and     eax, 1FH                                ; 100042CE _ 83. E0, 1F
        shr     edx, 5                                  ; 100042D1 _ C1. EA, 05
        and     edx, 1FH                                ; 100042D4 _ 83. E2, 1F
        lea     eax, [edx+eax+102H]                     ; 100042D7 _ 8D. 84 02, 00000102
        cmp     ecx, eax                                ; 100042DE _ 3B. C8
        jnc     ?_0396                                  ; 100042E0 _ 0F 83, 0000018B
?_0386: mov     eax, dword [ebx+10H]                    ; 100042E6 _ 8B. 43, 10
        cmp     ebp, eax                                ; 100042E9 _ 3B. E8
        jnc     ?_0388                                  ; 100042EB _ 73, 3B
?_0387: mov     ecx, dword [esp+14H]                    ; 100042ED _ 8B. 4C 24, 14
        test    ecx, ecx                                ; 100042F1 _ 85. C9
        je      ?_0413                                  ; 100042F3 _ 0F 84, 000005B0
        mov     edx, ecx                                ; 100042F9 _ 8B. D1
        xor     ecx, ecx                                ; 100042FB _ 33. C9
        dec     edx                                     ; 100042FD _ 4A
        mov     dword [esp+4CH], 0                      ; 100042FE _ C7. 44 24, 4C, 00000000
        mov     dword [esp+14H], edx                    ; 10004306 _ 89. 54 24, 14
        mov     edx, dword [esp+10H]                    ; 1000430A _ 8B. 54 24, 10
        mov     cl, byte [edx]                          ; 1000430E _ 8A. 0A
        mov     edx, ecx                                ; 10004310 _ 8B. D1
        mov     ecx, ebp                                ; 10004312 _ 8B. CD
        shl     edx, cl                                 ; 10004314 _ D3. E2
        mov     ecx, dword [esp+10H]                    ; 10004316 _ 8B. 4C 24, 10
        add     ebp, 8                                  ; 1000431A _ 83. C5, 08
        or      edi, edx                                ; 1000431D _ 0B. FA
        inc     ecx                                     ; 1000431F _ 41
        cmp     ebp, eax                                ; 10004320 _ 3B. E8
        mov     dword [esp+10H], ecx                    ; 10004322 _ 89. 4C 24, 10
        jc      ?_0387                                  ; 10004326 _ 72, C5
?_0388: mov     eax, dword [?_5137+eax*4]               ; 10004328 _ 8B. 04 85, 100287A0(d)
        mov     ecx, dword [ebx+14H]                    ; 1000432F _ 8B. 4B, 14
        and     eax, edi                                ; 10004332 _ 23. C7
        xor     edx, edx                                ; 10004334 _ 33. D2
        mov     dl, byte [ecx+eax*8+1H]                 ; 10004336 _ 8A. 54 C1, 01
        lea     eax, [ecx+eax*8]                        ; 1000433A _ 8D. 04 C1
        mov     dword [esp+18H], edx                    ; 1000433D _ 89. 54 24, 18
        mov     eax, dword [eax+4H]                     ; 10004341 _ 8B. 40, 04
        cmp     eax, 16                                 ; 10004344 _ 83. F8, 10
        mov     dword [esp+34H], eax                    ; 10004347 _ 89. 44 24, 34
        jnc     ?_0389                                  ; 1000434B _ 73, 18
        mov     ecx, edx                                ; 1000434D _ 8B. CA
        sub     ebp, edx                                ; 1000434F _ 2B. EA
        mov     edx, dword [ebx+0CH]                    ; 10004351 _ 8B. 53, 0C
        shr     edi, cl                                 ; 10004354 _ D3. EF
        mov     ecx, dword [ebx+8H]                     ; 10004356 _ 8B. 4B, 08
        mov     dword [edx+ecx*4], eax                  ; 10004359 _ 89. 04 8A
        mov     eax, dword [ebx+8H]                     ; 1000435C _ 8B. 43, 08
        inc     eax                                     ; 1000435F _ 40
        jmp     ?_0395                                  ; 10004360 _ E9, 000000E9

?_0389: cmp     eax, 18                                 ; 10004365 _ 83. F8, 12
        mov     ecx, 7                                  ; 10004368 _ B9, 00000007
        jz      ?_0390                                  ; 1000436D _ 74, 03
        lea     ecx, [eax-0EH]                          ; 1000436F _ 8D. 48, F2
?_0390: sub     eax, 18                                 ; 10004372 _ 83. E8, 12
        mov     dword [esp+1CH], ecx                    ; 10004375 _ 89. 4C 24, 1C
        neg     eax                                     ; 10004379 _ F7. D8
        sbb     eax, eax                                ; 1000437B _ 1B. C0
        add     ecx, edx                                ; 1000437D _ 03. CA
        and     al, 0FFFFFFF8H                          ; 1000437F _ 24, F8
        mov     dword [esp+20H], ecx                    ; 10004381 _ 89. 4C 24, 20
        add     eax, 11                                 ; 10004385 _ 83. C0, 0B
        cmp     ebp, ecx                                ; 10004388 _ 3B. E9
        jnc     ?_0392                                  ; 1000438A _ 73, 43
?_0391: mov     ecx, dword [esp+14H]                    ; 1000438C _ 8B. 4C 24, 14
        test    ecx, ecx                                ; 10004390 _ 85. C9
        je      ?_0413                                  ; 10004392 _ 0F 84, 00000511
        mov     edx, ecx                                ; 10004398 _ 8B. D1
        xor     ecx, ecx                                ; 1000439A _ 33. C9
        dec     edx                                     ; 1000439C _ 4A
        mov     dword [esp+4CH], 0                      ; 1000439D _ C7. 44 24, 4C, 00000000
        mov     dword [esp+14H], edx                    ; 100043A5 _ 89. 54 24, 14
        mov     edx, dword [esp+10H]                    ; 100043A9 _ 8B. 54 24, 10
        mov     cl, byte [edx]                          ; 100043AD _ 8A. 0A
        mov     edx, ecx                                ; 100043AF _ 8B. D1
        mov     ecx, ebp                                ; 100043B1 _ 8B. CD
        shl     edx, cl                                 ; 100043B3 _ D3. E2
        mov     ecx, dword [esp+10H]                    ; 100043B5 _ 8B. 4C 24, 10
        add     ebp, 8                                  ; 100043B9 _ 83. C5, 08
        or      edi, edx                                ; 100043BC _ 0B. FA
        inc     ecx                                     ; 100043BE _ 41
        mov     dword [esp+10H], ecx                    ; 100043BF _ 89. 4C 24, 10
        mov     ecx, dword [esp+20H]                    ; 100043C3 _ 8B. 4C 24, 20
        cmp     ebp, ecx                                ; 100043C7 _ 3B. E9
        jc      ?_0391                                  ; 100043C9 _ 72, C1
        mov     edx, dword [esp+18H]                    ; 100043CB _ 8B. 54 24, 18
?_0392: mov     ecx, edx                                ; 100043CF _ 8B. CA
        shr     edi, cl                                 ; 100043D1 _ D3. EF
        mov     ecx, dword [esp+1CH]                    ; 100043D3 _ 8B. 4C 24, 1C
        mov     ecx, dword [?_5137+ecx*4]               ; 100043D7 _ 8B. 0C 8D, 100287A0(d)
        and     ecx, edi                                ; 100043DE _ 23. CF
        add     eax, ecx                                ; 100043E0 _ 03. C1
        mov     ecx, dword [esp+1CH]                    ; 100043E2 _ 8B. 4C 24, 1C
        shr     edi, cl                                 ; 100043E6 _ D3. EF
        add     ecx, edx                                ; 100043E8 _ 03. CA
        mov     dword [esp+18H], eax                    ; 100043EA _ 89. 44 24, 18
        sub     ebp, ecx                                ; 100043EE _ 2B. E9
        mov     ecx, dword [ebx+8H]                     ; 100043F0 _ 8B. 4B, 08
        mov     dword [esp+1CH], ecx                    ; 100043F3 _ 89. 4C 24, 1C
        mov     ecx, dword [ebx+4H]                     ; 100043F7 _ 8B. 4B, 04
        mov     edx, ecx                                ; 100043FA _ 8B. D1
        and     ecx, 1FH                                ; 100043FC _ 83. E1, 1F
        shr     edx, 5                                  ; 100043FF _ C1. EA, 05
        and     edx, 1FH                                ; 10004402 _ 83. E2, 1F
        lea     ecx, [edx+ecx+102H]                     ; 10004405 _ 8D. 8C 0A, 00000102
        mov     edx, dword [esp+1CH]                    ; 1000440C _ 8B. 54 24, 1C
        add     eax, edx                                ; 10004410 _ 03. C2
        cmp     eax, ecx                                ; 10004412 _ 3B. C1
        ja      ?_0414                                  ; 10004414 _ 0F 87, 000004CE
        cmp     dword [esp+34H], 16                     ; 1000441A _ 83. 7C 24, 34, 10
        jnz     ?_0393                                  ; 1000441F _ 75, 14
        mov     eax, edx                                ; 10004421 _ 8B. C2
        cmp     eax, 1                                  ; 10004423 _ 83. F8, 01
        jc      ?_0414                                  ; 10004426 _ 0F 82, 000004BC
        mov     ecx, dword [ebx+0CH]                    ; 1000442C _ 8B. 4B, 0C
        mov     ecx, dword [ecx+eax*4-4H]               ; 1000442F _ 8B. 4C 81, FC
        jmp     ?_0394                                  ; 10004433 _ EB, 06

?_0393: mov     eax, dword [esp+1CH]                    ; 10004435 _ 8B. 44 24, 1C
        xor     ecx, ecx                                ; 10004439 _ 33. C9
?_0394: mov     edx, dword [ebx+0CH]                    ; 1000443B _ 8B. 53, 0C
        inc     eax                                     ; 1000443E _ 40
        mov     dword [edx+eax*4-4H], ecx               ; 1000443F _ 89. 4C 82, FC
        mov     edx, dword [esp+18H]                    ; 10004443 _ 8B. 54 24, 18
        dec     edx                                     ; 10004447 _ 4A
        mov     dword [esp+18H], edx                    ; 10004448 _ 89. 54 24, 18
        jnz     ?_0394                                  ; 1000444C _ 75, ED
?_0395: mov     dword [ebx+8H], eax                     ; 1000444E _ 89. 43, 08
        mov     eax, dword [ebx+4H]                     ; 10004451 _ 8B. 43, 04
        mov     ecx, dword [ebx+8H]                     ; 10004454 _ 8B. 4B, 08
        mov     edx, eax                                ; 10004457 _ 8B. D0
        shr     edx, 5                                  ; 10004459 _ C1. EA, 05
        and     edx, 1FH                                ; 1000445C _ 83. E2, 1F
        and     eax, 1FH                                ; 1000445F _ 83. E0, 1F
        lea     eax, [edx+eax+102H]                     ; 10004462 _ 8D. 84 02, 00000102
        cmp     ecx, eax                                ; 10004469 _ 3B. C8
        jc      ?_0386                                  ; 1000446B _ 0F 82, FFFFFE75
?_0396: mov     ecx, dword [ebx+24H]                    ; 10004471 _ 8B. 4B, 24
        mov     eax, dword [ebx+4H]                     ; 10004474 _ 8B. 43, 04
        push    esi                                     ; 10004477 _ 56
        push    ecx                                     ; 10004478 _ 51
        lea     edx, [esp+40H]                          ; 10004479 _ 8D. 54 24, 40
        lea     ecx, [esp+44H]                          ; 1000447D _ 8D. 4C 24, 44
        push    edx                                     ; 10004481 _ 52
        push    ecx                                     ; 10004482 _ 51
        lea     edx, [esp+2CH]                          ; 10004483 _ 8D. 54 24, 2C
        lea     ecx, [esp+30H]                          ; 10004487 _ 8D. 4C 24, 30
        push    edx                                     ; 1000448B _ 52
        mov     edx, dword [ebx+0CH]                    ; 1000448C _ 8B. 53, 0C
        push    ecx                                     ; 1000448F _ 51
        mov     ecx, eax                                ; 10004490 _ 8B. C8
        shr     ecx, 5                                  ; 10004492 _ C1. E9, 05
        and     ecx, 1FH                                ; 10004495 _ 83. E1, 1F
        and     eax, 1FH                                ; 10004498 _ 83. E0, 1F
        inc     ecx                                     ; 1000449B _ 41
        push    edx                                     ; 1000449C _ 52
        add     eax, 257                                ; 1000449D _ 05, 00000101
        push    ecx                                     ; 100044A2 _ 51
        push    eax                                     ; 100044A3 _ 50
        mov     dword [ebx+14H], 0                      ; 100044A4 _ C7. 43, 14, 00000000
        mov     dword [esp+44H], 9                      ; 100044AB _ C7. 44 24, 44, 00000009
        mov     dword [esp+40H], 6                      ; 100044B3 _ C7. 44 24, 40, 00000006
        call    ?_0617                                  ; 100044BB _ E8, 00001DC0
        mov     edx, dword [ebx+0CH]                    ; 100044C0 _ 8B. 53, 0C
        mov     dword [esp+3CH], eax                    ; 100044C3 _ 89. 44 24, 3C
        mov     eax, dword [esi+28H]                    ; 100044C7 _ 8B. 46, 28
        push    edx                                     ; 100044CA _ 52
        push    eax                                     ; 100044CB _ 50
        call    near [esi+24H]                          ; 100044CC _ FF. 56, 24
        mov     eax, dword [esp+44H]                    ; 100044CF _ 8B. 44 24, 44
        add     esp, 44                                 ; 100044D3 _ 83. C4, 2C
        test    eax, eax                                ; 100044D6 _ 85. C0
        jne     ?_0415                                  ; 100044D8 _ 0F 85, 0000045E
        mov     ecx, dword [esp+38H]                    ; 100044DE _ 8B. 4C 24, 38
        mov     edx, dword [esp+3CH]                    ; 100044E2 _ 8B. 54 24, 3C
        mov     eax, dword [esp+1CH]                    ; 100044E6 _ 8B. 44 24, 1C
        push    esi                                     ; 100044EA _ 56
        push    ecx                                     ; 100044EB _ 51
        mov     ecx, dword [esp+28H]                    ; 100044EC _ 8B. 4C 24, 28
        push    edx                                     ; 100044F0 _ 52
        push    eax                                     ; 100044F1 _ 50
        push    ecx                                     ; 100044F2 _ 51
        call    ?_0431                                  ; 100044F3 _ E8, 00000688
        add     esp, 20                                 ; 100044F8 _ 83. C4, 14
        test    eax, eax                                ; 100044FB _ 85. C0
        je      ?_0418                                  ; 100044FD _ 0F 84, 00000485
        mov     dword [ebx+4H], eax                     ; 10004503 _ 89. 43, 04
        mov     dword [ebx], 6                          ; 10004506 _ C7. 03, 00000006
        jmp     ?_0398                                  ; 1000450C _ EB, 08

?_0397: mov     edi, dword [esp+18H]                    ; 1000450E _ 8B. 7C 24, 18
        mov     esi, dword [esp+48H]                    ; 10004512 _ 8B. 74 24, 48
?_0398: mov     eax, dword [esp+10H]                    ; 10004516 _ 8B. 44 24, 10
        mov     edx, dword [esp+14H]                    ; 1000451A _ 8B. 54 24, 14
        mov     dword [ebx+20H], edi                    ; 1000451E _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 10004521 _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 10004524 _ 8B. 3E
        mov     ecx, eax                                ; 10004526 _ 8B. C8
        mov     dword [esi+4H], edx                     ; 10004528 _ 89. 56, 04
        mov     edx, dword [esi+8H]                     ; 1000452B _ 8B. 56, 08
        sub     ecx, edi                                ; 1000452E _ 2B. CF
        mov     dword [esi], eax                        ; 10004530 _ 89. 06
        mov     eax, dword [esp+4CH]                    ; 10004532 _ 8B. 44 24, 4C
        add     edx, ecx                                ; 10004536 _ 03. D1
        mov     dword [esi+8H], edx                     ; 10004538 _ 89. 56, 08
        mov     edx, dword [esp+44H]                    ; 1000453B _ 8B. 54 24, 44
        push    eax                                     ; 1000453F _ 50
        push    esi                                     ; 10004540 _ 56
        push    ebx                                     ; 10004541 _ 53
        mov     dword [ebx+34H], edx                    ; 10004542 _ 89. 53, 34
        call    ?_0433                                  ; 10004545 _ E8, 00000676
        add     esp, 12                                 ; 1000454A _ 83. C4, 0C
        cmp     eax, 1                                  ; 1000454D _ 83. F8, 01
        jne     ?_0422                                  ; 10004550 _ 0F 85, 000004C2
        mov     ecx, dword [ebx+4H]                     ; 10004556 _ 8B. 4B, 04
        push    esi                                     ; 10004559 _ 56
        push    ecx                                     ; 1000455A _ 51
        mov     dword [esp+54H], 0                      ; 1000455B _ C7. 44 24, 54, 00000000
        call    ?_0497                                  ; 10004563 _ E8, 00000E08
        mov     eax, dword [ebx+20H]                    ; 10004568 _ 8B. 43, 20
        mov     ecx, dword [ebx+34H]                    ; 1000456B _ 8B. 4B, 34
        mov     edi, dword [esi]                        ; 1000456E _ 8B. 3E
        mov     edx, dword [esi+4H]                     ; 10004570 _ 8B. 56, 04
        mov     ebp, dword [ebx+1CH]                    ; 10004573 _ 8B. 6B, 1C
        mov     dword [esp+20H], eax                    ; 10004576 _ 89. 44 24, 20
        mov     eax, dword [ebx+30H]                    ; 1000457A _ 8B. 43, 30
        add     esp, 8                                  ; 1000457D _ 83. C4, 08
        cmp     ecx, eax                                ; 10004580 _ 3B. C8
        mov     dword [esp+10H], edi                    ; 10004582 _ 89. 7C 24, 10
        mov     dword [esp+14H], edx                    ; 10004586 _ 89. 54 24, 14
        mov     dword [esp+44H], ecx                    ; 1000458A _ 89. 4C 24, 44
        jnc     ?_0399                                  ; 1000458E _ 73, 05
        sub     eax, ecx                                ; 10004590 _ 2B. C1
        dec     eax                                     ; 10004592 _ 48
        jmp     ?_0400                                  ; 10004593 _ EB, 05

?_0399: mov     eax, dword [ebx+2CH]                    ; 10004595 _ 8B. 43, 2C
        sub     eax, ecx                                ; 10004598 _ 2B. C1
?_0400: mov     dword [esp+1CH], eax                    ; 1000459A _ 89. 44 24, 1C
        mov     eax, dword [ebx+18H]                    ; 1000459E _ 8B. 43, 18
        test    eax, eax                                ; 100045A1 _ 85. C0
        jne     ?_0419                                  ; 100045A3 _ 0F 85, 0000041B
        mov     dword [ebx], 0                          ; 100045A9 _ C7. 03, 00000000
        jmp     ?_0349                                  ; 100045AF _ E9, FFFFF8CE

?_0401: mov     eax, dword [esp+48H]                    ; 100045B4 _ 8B. 44 24, 48
        mov     dword [ebx+20H], esi                    ; 100045B8 _ 89. 73, 20
        mov     dword [ebx+1CH], ebp                    ; 100045BB _ 89. 6B, 1C
        mov     ecx, edi                                ; 100045BE _ 8B. CF
        mov     edx, dword [eax]                        ; 100045C0 _ 8B. 10
        mov     ebp, dword [eax+8H]                     ; 100045C2 _ 8B. 68, 08
        sub     ecx, edx                                ; 100045C5 _ 2B. CA
        mov     edx, dword [esp+44H]                    ; 100045C7 _ 8B. 54 24, 44
        add     ebp, ecx                                ; 100045CB _ 03. E9
        mov     ecx, dword [esp+4CH]                    ; 100045CD _ 8B. 4C 24, 4C
        push    ecx                                     ; 100045D1 _ 51
        push    eax                                     ; 100045D2 _ 50
        mov     dword [eax+4H], 0                       ; 100045D3 _ C7. 40, 04, 00000000
        mov     dword [eax+8H], ebp                     ; 100045DA _ 89. 68, 08
        mov     dword [eax], edi                        ; 100045DD _ 89. 38
        push    ebx                                     ; 100045DF _ 53
        mov     dword [ebx+34H], edx                    ; 100045E0 _ 89. 53, 34
        call    ?_0630                                  ; 100045E3 _ E8, 00001E58
        add     esp, 12                                 ; 100045E8 _ 83. C4, 0C
        pop     edi                                     ; 100045EB _ 5F
        pop     esi                                     ; 100045EC _ 5E
        pop     ebp                                     ; 100045ED _ 5D
        pop     ebx                                     ; 100045EE _ 5B
        add     esp, 48                                 ; 100045EF _ 83. C4, 30
        ret                                             ; 100045F2 _ C3

?_0402: mov     eax, dword [esp+48H]                    ; 100045F3 _ 8B. 44 24, 48
        mov     edx, dword [esp+14H]                    ; 100045F7 _ 8B. 54 24, 14
        mov     dword [ebx+20H], esi                    ; 100045FB _ 89. 73, 20
        mov     dword [ebx+1CH], ebp                    ; 100045FE _ 89. 6B, 1C
        mov     ebp, dword [eax+8H]                     ; 10004601 _ 8B. 68, 08
        mov     dword [eax+4H], edx                     ; 10004604 _ 89. 50, 04
        mov     edx, dword [eax]                        ; 10004607 _ 8B. 10
        mov     ecx, edi                                ; 10004609 _ 8B. CF
        sub     ecx, edx                                ; 1000460B _ 2B. CA
        mov     edx, dword [esp+44H]                    ; 1000460D _ 8B. 54 24, 44
        add     ebp, ecx                                ; 10004611 _ 03. E9
        push    -4                                      ; 10004613 _ 6A, FC
        push    eax                                     ; 10004615 _ 50
        mov     dword [eax+8H], ebp                     ; 10004616 _ 89. 68, 08
        mov     dword [eax], edi                        ; 10004619 _ 89. 38
        push    ebx                                     ; 1000461B _ 53
        mov     dword [ebx+34H], edx                    ; 1000461C _ 89. 53, 34
        call    ?_0630                                  ; 1000461F _ E8, 00001E1C
        add     esp, 12                                 ; 10004624 _ 83. C4, 0C
        pop     edi                                     ; 10004627 _ 5F
        pop     esi                                     ; 10004628 _ 5E
        pop     ebp                                     ; 10004629 _ 5D
        pop     ebx                                     ; 1000462A _ 5B
        add     esp, 48                                 ; 1000462B _ 83. C4, 30
        ret                                             ; 1000462E _ C3

?_0403: mov     eax, dword [esp+48H]                    ; 1000462F _ 8B. 44 24, 48
        mov     ecx, dword [esp+14H]                    ; 10004633 _ 8B. 4C 24, 14
        mov     dword [ebx], 9                          ; 10004637 _ C7. 03, 00000009
        add     ebp, -3                                 ; 1000463D _ 83. C5, FD
        shr     esi, 3                                  ; 10004640 _ C1. EE, 03
        mov     dword [eax+18H], ?_5118                 ; 10004643 _ C7. 40, 18, 100274F0(d)
        mov     dword [ebx+20H], esi                    ; 1000464A _ 89. 73, 20
        mov     dword [ebx+1CH], ebp                    ; 1000464D _ 89. 6B, 1C
        mov     ebp, dword [eax+8H]                     ; 10004650 _ 8B. 68, 08
        mov     dword [eax+4H], ecx                     ; 10004653 _ 89. 48, 04
        mov     ecx, dword [eax]                        ; 10004656 _ 8B. 08
        mov     edx, edi                                ; 10004658 _ 8B. D7
        push    -3                                      ; 1000465A _ 6A, FD
        sub     edx, ecx                                ; 1000465C _ 2B. D1
        mov     ecx, dword [esp+48H]                    ; 1000465E _ 8B. 4C 24, 48
        add     ebp, edx                                ; 10004662 _ 03. EA
        push    eax                                     ; 10004664 _ 50
        mov     dword [eax+8H], ebp                     ; 10004665 _ 89. 68, 08
        mov     dword [eax], edi                        ; 10004668 _ 89. 38
        push    ebx                                     ; 1000466A _ 53
        mov     dword [ebx+34H], ecx                    ; 1000466B _ 89. 4B, 34
        call    ?_0630                                  ; 1000466E _ E8, 00001DCD
        add     esp, 12                                 ; 10004673 _ 83. C4, 0C
        pop     edi                                     ; 10004676 _ 5F
        pop     esi                                     ; 10004677 _ 5E
        pop     ebp                                     ; 10004678 _ 5D
        pop     ebx                                     ; 10004679 _ 5B
        add     esp, 48                                 ; 1000467A _ 83. C4, 30
        ret                                             ; 1000467D _ C3

?_0404: mov     ecx, dword [esp+48H]                    ; 1000467E _ 8B. 4C 24, 48
        mov     dword [ebx+20H], esi                    ; 10004682 _ 89. 73, 20
        mov     dword [ebx+1CH], ebp                    ; 10004685 _ 89. 6B, 1C
        mov     esi, dword [ecx]                        ; 10004688 _ 8B. 31
        mov     ebp, dword [ecx+8H]                     ; 1000468A _ 8B. 69, 08
        mov     dword [ecx+4H], edx                     ; 1000468D _ 89. 51, 04
        mov     edx, eax                                ; 10004690 _ 8B. D0
        sub     edx, esi                                ; 10004692 _ 2B. D6
        mov     dword [ecx], eax                        ; 10004694 _ 89. 01
        mov     eax, dword [esp+44H]                    ; 10004696 _ 8B. 44 24, 44
        add     ebp, edx                                ; 1000469A _ 03. EA
        mov     edx, dword [esp+4CH]                    ; 1000469C _ 8B. 54 24, 4C
        mov     dword [ecx+8H], ebp                     ; 100046A0 _ 89. 69, 08
        push    edx                                     ; 100046A3 _ 52
        push    ecx                                     ; 100046A4 _ 51
        push    ebx                                     ; 100046A5 _ 53
        mov     dword [ebx+34H], eax                    ; 100046A6 _ 89. 43, 34
        call    ?_0630                                  ; 100046A9 _ E8, 00001D92
        add     esp, 12                                 ; 100046AE _ 83. C4, 0C
        pop     edi                                     ; 100046B1 _ 5F
        pop     esi                                     ; 100046B2 _ 5E
        pop     ebp                                     ; 100046B3 _ 5D
        pop     ebx                                     ; 100046B4 _ 5B
        add     esp, 48                                 ; 100046B5 _ 83. C4, 30
        ret                                             ; 100046B8 _ C3

?_0405: mov     ecx, dword [esp+48H]                    ; 100046B9 _ 8B. 4C 24, 48
        mov     dword [ebx], 9                          ; 100046BD _ C7. 03, 00000009
        mov     edx, eax                                ; 100046C3 _ 8B. D0
        push    -3                                      ; 100046C5 _ 6A, FD
        mov     dword [ecx+18H], ?_5117                 ; 100046C7 _ C7. 41, 18, 100274D0(d)
        mov     dword [ebx+20H], esi                    ; 100046CE _ 89. 73, 20
        mov     dword [ebx+1CH], ebp                    ; 100046D1 _ 89. 6B, 1C
        mov     esi, dword [ecx]                        ; 100046D4 _ 8B. 31
        mov     ebp, dword [ecx+8H]                     ; 100046D6 _ 8B. 69, 08
        sub     edx, esi                                ; 100046D9 _ 2B. D6
        add     ebp, edx                                ; 100046DB _ 03. EA
        mov     dword [ecx], eax                        ; 100046DD _ 89. 01
        mov     eax, dword [esp+48H]                    ; 100046DF _ 8B. 44 24, 48
        push    ecx                                     ; 100046E3 _ 51
        mov     dword [ecx+4H], edi                     ; 100046E4 _ 89. 79, 04
        mov     dword [ecx+8H], ebp                     ; 100046E7 _ 89. 69, 08
        push    ebx                                     ; 100046EA _ 53
        mov     dword [ebx+34H], eax                    ; 100046EB _ 89. 43, 34
        call    ?_0630                                  ; 100046EE _ E8, 00001D4D
        add     esp, 12                                 ; 100046F3 _ 83. C4, 0C
        pop     edi                                     ; 100046F6 _ 5F
        pop     esi                                     ; 100046F7 _ 5E
        pop     ebp                                     ; 100046F8 _ 5D
        pop     ebx                                     ; 100046F9 _ 5B
        add     esp, 48                                 ; 100046FA _ 83. C4, 30
        ret                                             ; 100046FD _ C3

?_0406: mov     ecx, dword [esp+18H]                    ; 100046FE _ 8B. 4C 24, 18
        mov     eax, dword [esp+48H]                    ; 10004702 _ 8B. 44 24, 48
        mov     dword [ebx+20H], ecx                    ; 10004706 _ 89. 4B, 20
        mov     ecx, dword [esp+10H]                    ; 10004709 _ 8B. 4C 24, 10
        mov     dword [ebx+1CH], ebp                    ; 1000470D _ 89. 6B, 1C
        mov     esi, dword [eax]                        ; 10004710 _ 8B. 30
        mov     ebp, dword [eax+8H]                     ; 10004712 _ 8B. 68, 08
        mov     edx, ecx                                ; 10004715 _ 8B. D1
        sub     edx, esi                                ; 10004717 _ 2B. D6
        mov     dword [eax], ecx                        ; 10004719 _ 89. 08
        mov     ecx, dword [esp+44H]                    ; 1000471B _ 8B. 4C 24, 44
        add     ebp, edx                                ; 1000471F _ 03. EA
        mov     edx, dword [esp+4CH]                    ; 10004721 _ 8B. 54 24, 4C
        mov     dword [eax+4H], 0                       ; 10004725 _ C7. 40, 04, 00000000
        push    edx                                     ; 1000472C _ 52
        push    eax                                     ; 1000472D _ 50
        mov     dword [eax+8H], ebp                     ; 1000472E _ 89. 68, 08
        push    ebx                                     ; 10004731 _ 53
        mov     dword [ebx+34H], ecx                    ; 10004732 _ 89. 4B, 34
        call    ?_0630                                  ; 10004735 _ E8, 00001D06
        add     esp, 12                                 ; 1000473A _ 83. C4, 0C
        pop     edi                                     ; 1000473D _ 5F
        pop     esi                                     ; 1000473E _ 5E
        pop     ebp                                     ; 1000473F _ 5D
        pop     ebx                                     ; 10004740 _ 5B
        add     esp, 48                                 ; 10004741 _ 83. C4, 30
        ret                                             ; 10004744 _ C3

?_0407: mov     eax, dword [esp+18H]                    ; 10004745 _ 8B. 44 24, 18
        mov     ecx, dword [esp+14H]                    ; 10004749 _ 8B. 4C 24, 14
        mov     dword [ebx+20H], eax                    ; 1000474D _ 89. 43, 20
        mov     eax, dword [esp+10H]                    ; 10004750 _ 8B. 44 24, 10
        mov     dword [ebx+1CH], ebp                    ; 10004754 _ 89. 6B, 1C
        mov     ebp, dword [edi]                        ; 10004757 _ 8B. 2F
        mov     esi, dword [edi+8H]                     ; 10004759 _ 8B. 77, 08
        mov     dword [edi+4H], ecx                     ; 1000475C _ 89. 4F, 04
        mov     ecx, eax                                ; 1000475F _ 8B. C8
        mov     dword [edi], eax                        ; 10004761 _ 89. 07
        sub     ecx, ebp                                ; 10004763 _ 2B. CD
        add     esi, ecx                                ; 10004765 _ 03. F1
        mov     dword [edi+8H], esi                     ; 10004767 _ 89. 77, 08
        mov     dword [ebx+34H], edx                    ; 1000476A _ 89. 53, 34
        mov     edx, dword [esp+4CH]                    ; 1000476D _ 8B. 54 24, 4C
        push    edx                                     ; 10004771 _ 52
        push    edi                                     ; 10004772 _ 57
        push    ebx                                     ; 10004773 _ 53
        call    ?_0630                                  ; 10004774 _ E8, 00001CC7
        add     esp, 12                                 ; 10004779 _ 83. C4, 0C
        pop     edi                                     ; 1000477C _ 5F
        pop     esi                                     ; 1000477D _ 5E
        pop     ebp                                     ; 1000477E _ 5D
        pop     ebx                                     ; 1000477F _ 5B
        add     esp, 48                                 ; 10004780 _ 83. C4, 30
        ret                                             ; 10004783 _ C3

?_0408: mov     eax, dword [esp+48H]                    ; 10004784 _ 8B. 44 24, 48
        mov     ecx, dword [esp+10H]                    ; 10004788 _ 8B. 4C 24, 10
        mov     dword [ebx+20H], edi                    ; 1000478C _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 1000478F _ 89. 6B, 1C
        mov     esi, dword [eax]                        ; 10004792 _ 8B. 30
        mov     ebp, dword [eax+8H]                     ; 10004794 _ 8B. 68, 08
        mov     edx, ecx                                ; 10004797 _ 8B. D1
        mov     dword [eax], ecx                        ; 10004799 _ 89. 08
        mov     ecx, dword [esp+44H]                    ; 1000479B _ 8B. 4C 24, 44
        sub     edx, esi                                ; 1000479F _ 2B. D6
        add     ebp, edx                                ; 100047A1 _ 03. EA
        mov     edx, dword [esp+4CH]                    ; 100047A3 _ 8B. 54 24, 4C
        push    edx                                     ; 100047A7 _ 52
        push    eax                                     ; 100047A8 _ 50
        mov     dword [eax+4H], 0                       ; 100047A9 _ C7. 40, 04, 00000000
        mov     dword [eax+8H], ebp                     ; 100047B0 _ 89. 68, 08
        push    ebx                                     ; 100047B3 _ 53
        mov     dword [ebx+34H], ecx                    ; 100047B4 _ 89. 4B, 34
        call    ?_0630                                  ; 100047B7 _ E8, 00001C84
        add     esp, 12                                 ; 100047BC _ 83. C4, 0C
        pop     edi                                     ; 100047BF _ 5F
        pop     esi                                     ; 100047C0 _ 5E
        pop     ebp                                     ; 100047C1 _ 5D
        pop     ebx                                     ; 100047C2 _ 5B
        add     esp, 48                                 ; 100047C3 _ 83. C4, 30
        ret                                             ; 100047C6 _ C3

?_0409: mov     eax, dword [esp+14H]                    ; 100047C7 _ 8B. 44 24, 14
        mov     dword [ebx+20H], edi                    ; 100047CB _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 100047CE _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 100047D1 _ 8B. 3E
        mov     edx, dword [esi+8H]                     ; 100047D3 _ 8B. 56, 08
        mov     dword [esi+4H], eax                     ; 100047D6 _ 89. 46, 04
        mov     eax, dword [esp+10H]                    ; 100047D9 _ 8B. 44 24, 10
        push    -4                                      ; 100047DD _ 6A, FC
        mov     ecx, eax                                ; 100047DF _ 8B. C8
        push    esi                                     ; 100047E1 _ 56
        sub     ecx, edi                                ; 100047E2 _ 2B. CF
        mov     dword [esi], eax                        ; 100047E4 _ 89. 06
        add     edx, ecx                                ; 100047E6 _ 03. D1
        push    ebx                                     ; 100047E8 _ 53
        mov     dword [esi+8H], edx                     ; 100047E9 _ 89. 56, 08
        mov     edx, dword [esp+50H]                    ; 100047EC _ 8B. 54 24, 50
        mov     dword [ebx+34H], edx                    ; 100047F0 _ 89. 53, 34
        call    ?_0630                                  ; 100047F3 _ E8, 00001C48
        add     esp, 12                                 ; 100047F8 _ 83. C4, 0C
        pop     edi                                     ; 100047FB _ 5F
        pop     esi                                     ; 100047FC _ 5E
        pop     ebp                                     ; 100047FD _ 5D
        pop     ebx                                     ; 100047FE _ 5B
        add     esp, 48                                 ; 100047FF _ 83. C4, 30
        ret                                             ; 10004802 _ C3

?_0410: mov     eax, dword [esp+48H]                    ; 10004803 _ 8B. 44 24, 48
        mov     ecx, dword [esp+14H]                    ; 10004807 _ 8B. 4C 24, 14
        mov     dword [ebx], 9                          ; 1000480B _ C7. 03, 00000009
        push    -3                                      ; 10004811 _ 6A, FD
        mov     dword [eax+18H], ?_5116                 ; 10004813 _ C7. 40, 18, 100274AC(d)
        mov     dword [ebx+20H], edi                    ; 1000481A _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 1000481D _ 89. 6B, 1C
        mov     esi, dword [eax]                        ; 10004820 _ 8B. 30
        mov     ebp, dword [eax+8H]                     ; 10004822 _ 8B. 68, 08
        mov     dword [eax+4H], ecx                     ; 10004825 _ 89. 48, 04
        mov     ecx, dword [esp+14H]                    ; 10004828 _ 8B. 4C 24, 14
        push    eax                                     ; 1000482C _ 50
        mov     edx, ecx                                ; 1000482D _ 8B. D1
        mov     dword [eax], ecx                        ; 1000482F _ 89. 08
        mov     ecx, dword [esp+4CH]                    ; 10004831 _ 8B. 4C 24, 4C
        sub     edx, esi                                ; 10004835 _ 2B. D6
        add     ebp, edx                                ; 10004837 _ 03. EA
        push    ebx                                     ; 10004839 _ 53
        mov     dword [eax+8H], ebp                     ; 1000483A _ 89. 68, 08
        mov     dword [ebx+34H], ecx                    ; 1000483D _ 89. 4B, 34
        call    ?_0630                                  ; 10004840 _ E8, 00001BFB
        add     esp, 12                                 ; 10004845 _ 83. C4, 0C
        pop     edi                                     ; 10004848 _ 5F
        pop     esi                                     ; 10004849 _ 5E
        pop     ebp                                     ; 1000484A _ 5D
        pop     ebx                                     ; 1000484B _ 5B
        add     esp, 48                                 ; 1000484C _ 83. C4, 30
        ret                                             ; 1000484F _ C3

?_0411: mov     eax, dword [esp+10H]                    ; 10004850 _ 8B. 44 24, 10
        mov     dword [ebx+20H], edi                    ; 10004854 _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 10004857 _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 1000485A _ 8B. 3E
        mov     ecx, dword [esi+8H]                     ; 1000485C _ 8B. 4E, 08
        mov     edx, eax                                ; 1000485F _ 8B. D0
        sub     edx, edi                                ; 10004861 _ 2B. D7
        mov     dword [esi], eax                        ; 10004863 _ 89. 06
        mov     eax, dword [esp+44H]                    ; 10004865 _ 8B. 44 24, 44
        add     ecx, edx                                ; 10004869 _ 03. CA
        mov     dword [esi+8H], ecx                     ; 1000486B _ 89. 4E, 08
        mov     ecx, dword [esp+4CH]                    ; 1000486E _ 8B. 4C 24, 4C
        push    ecx                                     ; 10004872 _ 51
        push    esi                                     ; 10004873 _ 56
        mov     dword [esi+4H], 0                       ; 10004874 _ C7. 46, 04, 00000000
        push    ebx                                     ; 1000487B _ 53
        mov     dword [ebx+34H], eax                    ; 1000487C _ 89. 43, 34
        call    ?_0630                                  ; 1000487F _ E8, 00001BBC
        add     esp, 12                                 ; 10004884 _ 83. C4, 0C
        pop     edi                                     ; 10004887 _ 5F
        pop     esi                                     ; 10004888 _ 5E
        pop     ebp                                     ; 10004889 _ 5D
        pop     ebx                                     ; 1000488A _ 5B
        add     esp, 48                                 ; 1000488B _ 83. C4, 30
        ret                                             ; 1000488E _ C3

?_0412: mov     edx, dword [ebx+0CH]                    ; 1000488F _ 8B. 53, 0C
        mov     eax, dword [esi+28H]                    ; 10004892 _ 8B. 46, 28
        push    edx                                     ; 10004895 _ 52
        push    eax                                     ; 10004896 _ 50
        call    near [esi+24H]                          ; 10004897 _ FF. 56, 24
        mov     eax, dword [esp+20H]                    ; 1000489A _ 8B. 44 24, 20
        add     esp, 8                                  ; 1000489E _ 83. C4, 08
        cmp     eax, -3                                 ; 100048A1 _ 83. F8, FD
        jmp     ?_0416                                  ; 100048A4 _ E9, 00000098

?_0413: mov     eax, dword [esp+10H]                    ; 100048A9 _ 8B. 44 24, 10
        mov     dword [ebx+20H], edi                    ; 100048AD _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 100048B0 _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 100048B3 _ 8B. 3E
        mov     ecx, dword [esi+8H]                     ; 100048B5 _ 8B. 4E, 08
        mov     edx, eax                                ; 100048B8 _ 8B. D0
        sub     edx, edi                                ; 100048BA _ 2B. D7
        mov     dword [esi], eax                        ; 100048BC _ 89. 06
        mov     eax, dword [esp+44H]                    ; 100048BE _ 8B. 44 24, 44
        add     ecx, edx                                ; 100048C2 _ 03. CA
        mov     dword [esi+8H], ecx                     ; 100048C4 _ 89. 4E, 08
        mov     ecx, dword [esp+4CH]                    ; 100048C7 _ 8B. 4C 24, 4C
        push    ecx                                     ; 100048CB _ 51
        push    esi                                     ; 100048CC _ 56
        mov     dword [esi+4H], 0                       ; 100048CD _ C7. 46, 04, 00000000
        push    ebx                                     ; 100048D4 _ 53
        mov     dword [ebx+34H], eax                    ; 100048D5 _ 89. 43, 34
        call    ?_0630                                  ; 100048D8 _ E8, 00001B63
        add     esp, 12                                 ; 100048DD _ 83. C4, 0C
        pop     edi                                     ; 100048E0 _ 5F
        pop     esi                                     ; 100048E1 _ 5E
        pop     ebp                                     ; 100048E2 _ 5D
        pop     ebx                                     ; 100048E3 _ 5B
        add     esp, 48                                 ; 100048E4 _ 83. C4, 30
        ret                                             ; 100048E7 _ C3

?_0414: mov     edx, dword [ebx+0CH]                    ; 100048E8 _ 8B. 53, 0C
        mov     eax, dword [esi+28H]                    ; 100048EB _ 8B. 46, 28
        push    edx                                     ; 100048EE _ 52
        push    eax                                     ; 100048EF _ 50
        call    near [esi+24H]                          ; 100048F0 _ FF. 56, 24
        mov     eax, dword [esp+18H]                    ; 100048F3 _ 8B. 44 24, 18
        mov     ecx, dword [esp+1CH]                    ; 100048F7 _ 8B. 4C 24, 1C
        mov     dword [ebx], 9                          ; 100048FB _ C7. 03, 00000009
        mov     dword [esi+18H], ?_5115                 ; 10004901 _ C7. 46, 18, 10027490(d)
        mov     dword [ebx+20H], edi                    ; 10004908 _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 1000490B _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 1000490E _ 8B. 3E
        mov     edx, eax                                ; 10004910 _ 8B. D0
        mov     dword [esi+4H], ecx                     ; 10004912 _ 89. 4E, 04
        mov     ecx, dword [esi+8H]                     ; 10004915 _ 8B. 4E, 08
        sub     edx, edi                                ; 10004918 _ 2B. D7
        mov     dword [esi], eax                        ; 1000491A _ 89. 06
        mov     eax, dword [esp+4CH]                    ; 1000491C _ 8B. 44 24, 4C
        add     ecx, edx                                ; 10004920 _ 03. CA
        push    -3                                      ; 10004922 _ 6A, FD
        push    esi                                     ; 10004924 _ 56
        mov     dword [esi+8H], ecx                     ; 10004925 _ 89. 4E, 08
        push    ebx                                     ; 10004928 _ 53
        mov     dword [ebx+34H], eax                    ; 10004929 _ 89. 43, 34
        call    ?_0630                                  ; 1000492C _ E8, 00001B0F
        add     esp, 20                                 ; 10004931 _ 83. C4, 14
        pop     edi                                     ; 10004934 _ 5F
        pop     esi                                     ; 10004935 _ 5E
        pop     ebp                                     ; 10004936 _ 5D
        pop     ebx                                     ; 10004937 _ 5B
        add     esp, 48                                 ; 10004938 _ 83. C4, 30
        ret                                             ; 1000493B _ C3

?_0415: cmp     dword [esp+18H], -3                     ; 1000493C _ 83. 7C 24, 18, FD
?_0416: jnz     ?_0417                                  ; 10004941 _ 75, 06
        mov     dword [ebx], 9                          ; 10004943 _ C7. 03, 00000009
?_0417: mov     eax, dword [esp+10H]                    ; 10004949 _ 8B. 44 24, 10
        mov     ecx, dword [esp+14H]                    ; 1000494D _ 8B. 4C 24, 14
        mov     dword [ebx+20H], edi                    ; 10004951 _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 10004954 _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 10004957 _ 8B. 3E
        mov     edx, eax                                ; 10004959 _ 8B. D0
        mov     dword [esi+4H], ecx                     ; 1000495B _ 89. 4E, 04
        mov     ecx, dword [esi+8H]                     ; 1000495E _ 8B. 4E, 08
        sub     edx, edi                                ; 10004961 _ 2B. D7
        mov     dword [esi], eax                        ; 10004963 _ 89. 06
        mov     eax, dword [esp+44H]                    ; 10004965 _ 8B. 44 24, 44
        add     ecx, edx                                ; 10004969 _ 03. CA
        mov     dword [esi+8H], ecx                     ; 1000496B _ 89. 4E, 08
        mov     ecx, dword [esp+18H]                    ; 1000496E _ 8B. 4C 24, 18
        push    ecx                                     ; 10004972 _ 51
        push    esi                                     ; 10004973 _ 56
        push    ebx                                     ; 10004974 _ 53
        mov     dword [ebx+34H], eax                    ; 10004975 _ 89. 43, 34
        call    ?_0630                                  ; 10004978 _ E8, 00001AC3
        add     esp, 12                                 ; 1000497D _ 83. C4, 0C
        pop     edi                                     ; 10004980 _ 5F
        pop     esi                                     ; 10004981 _ 5E
        pop     ebp                                     ; 10004982 _ 5D
        pop     ebx                                     ; 10004983 _ 5B
        add     esp, 48                                 ; 10004984 _ 83. C4, 30
        ret                                             ; 10004987 _ C3

?_0418: mov     eax, dword [esp+10H]                    ; 10004988 _ 8B. 44 24, 10
        mov     edx, dword [esp+14H]                    ; 1000498C _ 8B. 54 24, 14
        mov     dword [ebx+20H], edi                    ; 10004990 _ 89. 7B, 20
        mov     dword [ebx+1CH], ebp                    ; 10004993 _ 89. 6B, 1C
        mov     edi, dword [esi]                        ; 10004996 _ 8B. 3E
        mov     ecx, eax                                ; 10004998 _ 8B. C8
        mov     dword [esi+4H], edx                     ; 1000499A _ 89. 56, 04
        mov     edx, dword [esi+8H]                     ; 1000499D _ 8B. 56, 08
        sub     ecx, edi                                ; 100049A0 _ 2B. CF
        push    -4                                      ; 100049A2 _ 6A, FC
        add     edx, ecx                                ; 100049A4 _ 03. D1
        push    esi                                     ; 100049A6 _ 56
        mov     dword [esi+8H], edx                     ; 100049A7 _ 89. 56, 08
        mov     edx, dword [esp+4CH]                    ; 100049AA _ 8B. 54 24, 4C
        mov     dword [esi], eax                        ; 100049AE _ 89. 06
        push    ebx                                     ; 100049B0 _ 53
        mov     dword [ebx+34H], edx                    ; 100049B1 _ 89. 53, 34
        call    ?_0630                                  ; 100049B4 _ E8, 00001A87
        add     esp, 12                                 ; 100049B9 _ 83. C4, 0C
        pop     edi                                     ; 100049BC _ 5F
        pop     esi                                     ; 100049BD _ 5E
        pop     ebp                                     ; 100049BE _ 5D
        pop     ebx                                     ; 100049BF _ 5B
        add     esp, 48                                 ; 100049C0 _ 83. C4, 30
        ret                                             ; 100049C3 _ C3

?_0419: mov     dword [ebx], 7                          ; 100049C4 _ C7. 03, 00000007
        jmp     ?_0421                                  ; 100049CA _ EB, 0C

?_0420: mov     ecx, dword [esp+44H]                    ; 100049CC _ 8B. 4C 24, 44
        mov     edi, dword [esp+10H]                    ; 100049D0 _ 8B. 7C 24, 10
        mov     esi, dword [esp+48H]                    ; 100049D4 _ 8B. 74 24, 48
?_0421: mov     eax, dword [esp+4CH]                    ; 100049D8 _ 8B. 44 24, 4C
        mov     dword [ebx+34H], ecx                    ; 100049DC _ 89. 4B, 34
        push    eax                                     ; 100049DF _ 50
        push    esi                                     ; 100049E0 _ 56
        push    ebx                                     ; 100049E1 _ 53
        call    ?_0630                                  ; 100049E2 _ E8, 00001A59
        mov     ecx, dword [ebx+34H]                    ; 100049E7 _ 8B. 4B, 34
        mov     edx, dword [ebx+30H]                    ; 100049EA _ 8B. 53, 30
        add     esp, 12                                 ; 100049ED _ 83. C4, 0C
        cmp     edx, ecx                                ; 100049F0 _ 3B. D1
        jz      ?_0423                                  ; 100049F2 _ 74, 37
        mov     edx, dword [esp+18H]                    ; 100049F4 _ 8B. 54 24, 18
        mov     dword [ebx+1CH], ebp                    ; 100049F8 _ 89. 6B, 1C
        mov     dword [ebx+20H], edx                    ; 100049FB _ 89. 53, 20
        mov     edx, dword [esp+14H]                    ; 100049FE _ 8B. 54 24, 14
        mov     ebp, dword [esi]                        ; 10004A02 _ 8B. 2E
        mov     dword [esi+4H], edx                     ; 10004A04 _ 89. 56, 04
        mov     edx, edi                                ; 10004A07 _ 8B. D7
        mov     dword [esi], edi                        ; 10004A09 _ 89. 3E
        sub     edx, ebp                                ; 10004A0B _ 2B. D5
        mov     ebp, dword [esi+8H]                     ; 10004A0D _ 8B. 6E, 08
        add     ebp, edx                                ; 10004A10 _ 03. EA
        mov     dword [esi+8H], ebp                     ; 10004A12 _ 89. 6E, 08
        mov     dword [ebx+34H], ecx                    ; 10004A15 _ 89. 4B, 34
?_0422: push    eax                                     ; 10004A18 _ 50
        push    esi                                     ; 10004A19 _ 56
        push    ebx                                     ; 10004A1A _ 53
        call    ?_0630                                  ; 10004A1B _ E8, 00001A20
        add     esp, 12                                 ; 10004A20 _ 83. C4, 0C
        pop     edi                                     ; 10004A23 _ 5F
        pop     esi                                     ; 10004A24 _ 5E
        pop     ebp                                     ; 10004A25 _ 5D
        pop     ebx                                     ; 10004A26 _ 5B
        add     esp, 48                                 ; 10004A27 _ 83. C4, 30
        ret                                             ; 10004A2A _ C3

?_0423: mov     dword [ebx], 8                          ; 10004A2B _ C7. 03, 00000008
        jmp     ?_0425                                  ; 10004A31 _ EB, 0C

?_0424: mov     ecx, dword [esp+44H]                    ; 10004A33 _ 8B. 4C 24, 44
        mov     edi, dword [esp+10H]                    ; 10004A37 _ 8B. 7C 24, 10
        mov     esi, dword [esp+48H]                    ; 10004A3B _ 8B. 74 24, 48
?_0425: mov     eax, dword [esp+18H]                    ; 10004A3F _ 8B. 44 24, 18
        mov     edx, dword [esp+14H]                    ; 10004A43 _ 8B. 54 24, 14
        mov     dword [ebx+20H], eax                    ; 10004A47 _ 89. 43, 20
        mov     dword [ebx+1CH], ebp                    ; 10004A4A _ 89. 6B, 1C
        mov     ebp, dword [esi]                        ; 10004A4D _ 8B. 2E
        mov     eax, edi                                ; 10004A4F _ 8B. C7
        mov     dword [esi+4H], edx                     ; 10004A51 _ 89. 56, 04
        mov     edx, dword [esi+8H]                     ; 10004A54 _ 8B. 56, 08
        sub     eax, ebp                                ; 10004A57 _ 2B. C5
        push    1                                       ; 10004A59 _ 6A, 01
        add     edx, eax                                ; 10004A5B _ 03. D0
        push    esi                                     ; 10004A5D _ 56
        mov     dword [esi+8H], edx                     ; 10004A5E _ 89. 56, 08
        mov     dword [esi], edi                        ; 10004A61 _ 89. 3E
        push    ebx                                     ; 10004A63 _ 53
        mov     dword [ebx+34H], ecx                    ; 10004A64 _ 89. 4B, 34
        call    ?_0630                                  ; 10004A67 _ E8, 000019D4
        add     esp, 12                                 ; 10004A6C _ 83. C4, 0C
        pop     edi                                     ; 10004A6F _ 5F
        pop     esi                                     ; 10004A70 _ 5E
        pop     ebp                                     ; 10004A71 _ 5D
        pop     ebx                                     ; 10004A72 _ 5B
        add     esp, 48                                 ; 10004A73 _ 83. C4, 30
        ret                                             ; 10004A76 _ C3

?_0426: mov     ecx, dword [esp+18H]                    ; 10004A77 _ 8B. 4C 24, 18
        mov     eax, dword [esp+48H]                    ; 10004A7B _ 8B. 44 24, 48
        mov     edx, dword [esp+14H]                    ; 10004A7F _ 8B. 54 24, 14
        mov     dword [ebx+20H], ecx                    ; 10004A83 _ 89. 4B, 20
        mov     ecx, dword [esp+10H]                    ; 10004A86 _ 8B. 4C 24, 10
        mov     dword [ebx+1CH], ebp                    ; 10004A8A _ 89. 6B, 1C
        mov     esi, dword [eax]                        ; 10004A8D _ 8B. 30
        mov     ebp, dword [eax+8H]                     ; 10004A8F _ 8B. 68, 08
        mov     dword [eax+4H], edx                     ; 10004A92 _ 89. 50, 04
        mov     edx, ecx                                ; 10004A95 _ 8B. D1
        sub     edx, esi                                ; 10004A97 _ 2B. D6
        mov     dword [eax], ecx                        ; 10004A99 _ 89. 08
        mov     ecx, dword [esp+44H]                    ; 10004A9B _ 8B. 4C 24, 44
        add     ebp, edx                                ; 10004A9F _ 03. EA
        push    -3                                      ; 10004AA1 _ 6A, FD
        push    eax                                     ; 10004AA3 _ 50
        mov     dword [eax+8H], ebp                     ; 10004AA4 _ 89. 68, 08
        push    ebx                                     ; 10004AA7 _ 53
        mov     dword [ebx+34H], ecx                    ; 10004AA8 _ 89. 4B, 34
        call    ?_0630                                  ; 10004AAB _ E8, 00001990
        add     esp, 12                                 ; 10004AB0 _ 83. C4, 0C
        pop     edi                                     ; 10004AB3 _ 5F
        pop     esi                                     ; 10004AB4 _ 5E
        pop     ebp                                     ; 10004AB5 _ 5D
        pop     ebx                                     ; 10004AB6 _ 5B
        add     esp, 48                                 ; 10004AB7 _ 83. C4, 30
        ret                                             ; 10004ABA _ C3
