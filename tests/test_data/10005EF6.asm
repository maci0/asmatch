; ---- 10005EF6 ----
?_0588: ; Local function
        add     ebx, esi                                ; 10005EF6 _ 03. DE
        mov     dword [esp+98H], edi                    ; 10005EF8 _ 89. BC 24, 00000098
        mov     dword [ecx], ebx                        ; 10005EFF _ 89. 19
        xor     ecx, ecx                                ; 10005F01 _ 33. C9
        dec     edx                                     ; 10005F03 _ 4A
        jz      ?_0590                                  ; 10005F04 _ 74, 13
        xor     ebx, ebx                                ; 10005F06 _ 33. DB
?_0589: add     ecx, dword [esp+ebx+58H]                ; 10005F08 _ 03. 4C 1C, 58
        add     ebx, 4                                  ; 10005F0C _ 83. C3, 04
        dec     edx                                     ; 10005F0F _ 4A
        mov     dword [esp+ebx+98H], ecx                ; 10005F10 _ 89. 8C 1C, 00000098
        jnz     ?_0589                                  ; 10005F17 _ 75, EF
?_0590: mov     edx, dword [esp+114H]                   ; 10005F19 _ 8B. 94 24, 00000114
        xor     ebx, ebx                                ; 10005F20 _ 33. DB
?_0591: mov     ecx, dword [edx]                        ; 10005F22 _ 8B. 0A
        add     edx, 4                                  ; 10005F24 _ 83. C2, 04
        cmp     ecx, edi                                ; 10005F27 _ 3B. CF
        mov     dword [esp+1CH], edx                    ; 10005F29 _ 89. 54 24, 1C
        jz      ?_0592                                  ; 10005F2D _ 74, 23
        mov     edx, dword [esp+ecx*4+94H]              ; 10005F2F _ 8B. 94 8C, 00000094
        mov     esi, dword [esp+138H]                   ; 10005F36 _ 8B. B4 24, 00000138
        lea     ecx, [esp+ecx*4+94H]                    ; 10005F3D _ 8D. 8C 8C, 00000094
        mov     dword [esi+edx*4], ebx                  ; 10005F44 _ 89. 1C 96
        mov     esi, dword [esp+44H]                    ; 10005F47 _ 8B. 74 24, 44
        inc     edx                                     ; 10005F4B _ 42
        mov     dword [ecx], edx                        ; 10005F4C _ 89. 11
        mov     edx, dword [esp+1CH]                    ; 10005F4E _ 8B. 54 24, 1C
?_0592: mov     ecx, dword [esp+118H]                   ; 10005F52 _ 8B. 8C 24, 00000118
        inc     ebx                                     ; 10005F59 _ 43
        cmp     ebx, ecx                                ; 10005F5A _ 3B. D9
        jc      ?_0591                                  ; 10005F5C _ 72, C4
        mov     ecx, dword [esp+20H]                    ; 10005F5E _ 8B. 4C 24, 20
        mov     ebx, ebp                                ; 10005F62 _ 8B. DD
        neg     ebx                                     ; 10005F64 _ F7. DB
        mov     edx, dword [esp+ecx+94H]                ; 10005F66 _ 8B. 94 0C, 00000094
        mov     ecx, dword [esp+138H]                   ; 10005F6D _ 8B. 8C 24, 00000138
        mov     dword [esp+1CH], ecx                    ; 10005F74 _ 89. 4C 24, 1C
        mov     ecx, dword [esp+2CH]                    ; 10005F78 _ 8B. 4C 24, 2C
        cmp     eax, ecx                                ; 10005F7C _ 3B. C1
        mov     dword [esp+118H], edx                   ; 10005F7E _ 89. 94 24, 00000118
        mov     dword [esp+38H], edi                    ; 10005F85 _ 89. 7C 24, 38
        mov     dword [esp+94H], edi                    ; 10005F89 _ 89. BC 24, 00000094
        mov     dword [esp+18H], -1                     ; 10005F90 _ C7. 44 24, 18, FFFFFFFF
        mov     dword [esp+0D4H], edi                   ; 10005F98 _ 89. BC 24, 000000D4
        mov     dword [esp+40H], edi                    ; 10005F9F _ 89. 7C 24, 40
        mov     dword [esp+3CH], edi                    ; 10005FA3 _ 89. 7C 24, 3C
        jg      ?_0615                                  ; 10005FA7 _ 0F 8F, 00000299
        mov     esi, dword [esp+34H]                    ; 10005FAD _ 8B. 74 24, 34
        lea     edx, [eax-1H]                           ; 10005FB1 _ 8D. 50, FF
        lea     ecx, [esp+eax*4+54H]                    ; 10005FB4 _ 8D. 4C 84, 54
        mov     dword [esp+20H], edx                    ; 10005FB8 _ 89. 54 24, 20
        mov     dword [esp+28H], ecx                    ; 10005FBC _ 89. 4C 24, 28
?_0593: mov     edx, dword [esp+28H]                    ; 10005FC0 _ 8B. 54 24, 28
        mov     edx, dword [edx]                        ; 10005FC4 _ 8B. 12
        mov     ecx, edx                                ; 10005FC6 _ 8B. CA
        dec     edx                                     ; 10005FC8 _ 4A
        test    ecx, ecx                                ; 10005FC9 _ 85. C9
        mov     dword [esp+24H], edx                    ; 10005FCB _ 89. 54 24, 24
        je      ?_0614                                  ; 10005FCF _ 0F 84, 00000246
        jmp     ?_0595                                  ; 10005FD5 _ EB, 04

?_0594: mov     edx, dword [esp+24H]                    ; 10005FD7 _ 8B. 54 24, 24
?_0595: lea     ecx, [ebx+ebp]                          ; 10005FDB _ 8D. 0C 2B
        cmp     eax, ecx                                ; 10005FDE _ 3B. C1
        jle     ?_0603                                  ; 10005FE0 _ 0F 8E, 00000112
        inc     edx                                     ; 10005FE6 _ 42
        mov     dword [esp+50H], edx                    ; 10005FE7 _ 89. 54 24, 50
        jmp     ?_0597                                  ; 10005FEB _ EB, 08

?_0596: mov     ebp, dword [esp+10H]                    ; 10005FED _ 8B. 6C 24, 10
        mov     eax, dword [esp+14H]                    ; 10005FF1 _ 8B. 44 24, 14
?_0597: mov     edx, dword [esp+18H]                    ; 10005FF5 _ 8B. 54 24, 18
        add     ebx, ebp                                ; 10005FF9 _ 03. DD
        inc     edx                                     ; 10005FFB _ 42
        add     ecx, ebp                                ; 10005FFC _ 03. CD
        mov     dword [esp+18H], edx                    ; 10005FFE _ 89. 54 24, 18
        mov     edx, dword [esp+2CH]                    ; 10006002 _ 8B. 54 24, 2C
        sub     edx, ebx                                ; 10006006 _ 2B. D3
        mov     dword [esp+48H], ecx                    ; 10006008 _ 89. 4C 24, 48
        cmp     edx, ebp                                ; 1000600C _ 3B. D5
        jbe     ?_0598                                  ; 1000600E _ 76, 02
        mov     edx, ebp                                ; 10006010 _ 8B. D5
?_0598: mov     edi, dword [esp+50H]                    ; 10006012 _ 8B. 7C 24, 50
        mov     ecx, eax                                ; 10006016 _ 8B. C8
        sub     ecx, ebx                                ; 10006018 _ 2B. CB
        mov     eax, 1                                  ; 1000601A _ B8, 00000001
        shl     eax, cl                                 ; 1000601F _ D3. E0
        cmp     eax, edi                                ; 10006021 _ 3B. C7
        jbe     ?_0600                                  ; 10006023 _ 76, 2B
        mov     ebp, dword [esp+24H]                    ; 10006025 _ 8B. 6C 24, 24
        or      edi, 0FFFFFFFFH                         ; 10006029 _ 83. CF, FF
        sub     edi, ebp                                ; 1000602C _ 2B. FD
        mov     ebp, dword [esp+28H]                    ; 1000602E _ 8B. 6C 24, 28
        add     eax, edi                                ; 10006032 _ 03. C7
        cmp     ecx, edx                                ; 10006034 _ 3B. CA
        jnc     ?_0600                                  ; 10006036 _ 73, 18
        inc     ecx                                     ; 10006038 _ 41
        cmp     ecx, edx                                ; 10006039 _ 3B. CA
        jnc     ?_0600                                  ; 1000603B _ 73, 13
?_0599: mov     edi, dword [ebp+4H]                     ; 1000603D _ 8B. 7D, 04
        add     ebp, 4                                  ; 10006040 _ 83. C5, 04
        shl     eax, 1                                  ; 10006043 _ D1. E0
        cmp     eax, edi                                ; 10006045 _ 3B. C7
        jbe     ?_0600                                  ; 10006047 _ 76, 07
        sub     eax, edi                                ; 10006049 _ 2B. C7
        inc     ecx                                     ; 1000604B _ 41
        cmp     ecx, edx                                ; 1000604C _ 3B. CA
        jc      ?_0599                                  ; 1000604E _ 72, ED
?_0600: mov     ebp, dword [esp+134H]                   ; 10006050 _ 8B. AC 24, 00000134
        mov     edx, 1                                  ; 10006057 _ BA, 00000001
        shl     edx, cl                                 ; 1000605C _ D3. E2
        mov     eax, dword [ebp]                        ; 1000605E _ 8B. 45, 00
        mov     dword [esp+3CH], edx                    ; 10006061 _ 89. 54 24, 3C
        add     edx, eax                                ; 10006065 _ 03. D0
        cmp     edx, 1440                               ; 10006067 _ 81. FA, 000005A0
        ja      ?_0616                                  ; 1000606D _ 0F 87, 000001F6
        mov     edi, dword [esp+130H]                   ; 10006073 _ 8B. BC 24, 00000130
        mov     dword [ebp], edx                        ; 1000607A _ 89. 55, 00
        mov     edx, dword [esp+18H]                    ; 1000607D _ 8B. 54 24, 18
        lea     eax, [edi+eax*8]                        ; 10006081 _ 8D. 04 C7
        mov     edi, dword [esp+18H]                    ; 10006084 _ 8B. 7C 24, 18
        test    edx, edx                                ; 10006088 _ 85. D2
        lea     edi, [esp+edi*4+0D4H]                   ; 1000608A _ 8D. BC BC, 000000D4
        mov     dword [esp+40H], eax                    ; 10006091 _ 89. 44 24, 40
        mov     dword [esp+4CH], edi                    ; 10006095 _ 89. 7C 24, 4C
        mov     dword [edi], eax                        ; 10006099 _ 89. 07
        jz      ?_0601                                  ; 1000609B _ 74, 3E
        mov     edi, dword [esp+38H]                    ; 1000609D _ 8B. 7C 24, 38
        mov     eax, dword [esp+10H]                    ; 100060A1 _ 8B. 44 24, 10
        mov     esi, dword [esp+40H]                    ; 100060A5 _ 8B. 74 24, 40
        mov     byte [esp+30H], cl                      ; 100060A9 _ 88. 4C 24, 30
        mov     ecx, ebx                                ; 100060AD _ 8B. CB
        mov     dword [esp+edx*4+94H], edi              ; 100060AF _ 89. BC 94, 00000094
        mov     edx, dword [esp+4CH]                    ; 100060B6 _ 8B. 54 24, 4C
        mov     byte [esp+31H], al                      ; 100060BA _ 88. 44 24, 31
        sub     ecx, eax                                ; 100060BE _ 2B. C8
        mov     eax, edi                                ; 100060C0 _ 8B. C7
        shr     eax, cl                                 ; 100060C2 _ D3. E8
        mov     ecx, dword [edx-4H]                     ; 100060C4 _ 8B. 4A, FC
        mov     edx, dword [esp+30H]                    ; 100060C7 _ 8B. 54 24, 30
        sub     esi, ecx                                ; 100060CB _ 2B. F1
        sar     esi, 3                                  ; 100060CD _ C1. FE, 03
        sub     esi, eax                                ; 100060D0 _ 2B. F0
        mov     dword [ecx+eax*8], edx                  ; 100060D2 _ 89. 14 C1
        mov     dword [ecx+eax*8+4H], esi               ; 100060D5 _ 89. 74 C1, 04
        jmp     ?_0602                                  ; 100060D9 _ EB, 0D

?_0601: mov     ecx, dword [esp+128H]                   ; 100060DB _ 8B. 8C 24, 00000128
        mov     edi, dword [esp+38H]                    ; 100060E2 _ 8B. 7C 24, 38
        mov     dword [ecx], eax                        ; 100060E6 _ 89. 01
?_0602: mov     ecx, dword [esp+48H]                    ; 100060E8 _ 8B. 4C 24, 48
        mov     eax, dword [esp+14H]                    ; 100060EC _ 8B. 44 24, 14
        cmp     eax, ecx                                ; 100060F0 _ 3B. C1
        jg      ?_0596                                  ; 100060F2 _ 0F 8F, FFFFFEF5
?_0603: mov     ecx, dword [esp+138H]                   ; 100060F8 _ 8B. 8C 24, 00000138
        mov     dl, al                                  ; 100060FF _ 8A. D0
        mov     ebp, dword [esp+1CH]                    ; 10006101 _ 8B. 6C 24, 1C
        sub     dl, bl                                  ; 10006105 _ 2A. D3
        mov     byte [esp+31H], dl                      ; 10006107 _ 88. 54 24, 31
        mov     edx, dword [esp+118H]                   ; 1000610B _ 8B. 94 24, 00000118
        lea     ecx, [ecx+edx*4]                        ; 10006112 _ 8D. 0C 91
        cmp     ebp, ecx                                ; 10006115 _ 3B. E9
        jc      ?_0604                                  ; 10006117 _ 72, 07
        mov     byte [esp+30H], -64                     ; 10006119 _ C6. 44 24, 30, C0
        jmp     ?_0607                                  ; 1000611E _ EB, 49

?_0604: mov     esi, dword [ebp]                        ; 10006120 _ 8B. 75, 00
        mov     ecx, dword [esp+11CH]                   ; 10006123 _ 8B. 8C 24, 0000011C
        cmp     esi, ecx                                ; 1000612A _ 3B. F1
        jnc     ?_0605                                  ; 1000612C _ 73, 14
        cmp     esi, 256                                ; 1000612E _ 81. FE, 00000100
        sbb     dl, dl                                  ; 10006134 _ 1A. D2
        and     dl, 0FFFFFFA0H                          ; 10006136 _ 80. E2, A0
        add     dl, 96                                  ; 10006139 _ 80. C2, 60
        mov     byte [esp+30H], dl                      ; 1000613C _ 88. 54 24, 30
        jmp     ?_0606                                  ; 10006140 _ EB, 20

?_0605: sub     esi, ecx                                ; 10006142 _ 2B. F1
        mov     ecx, dword [esp+124H]                   ; 10006144 _ 8B. 8C 24, 00000124
        shl     esi, 2                                  ; 1000614B _ C1. E6, 02
        mov     dl, byte [esi+ecx]                      ; 1000614E _ 8A. 14 0E
        mov     ecx, dword [esp+120H]                   ; 10006151 _ 8B. 8C 24, 00000120
        add     dl, 80                                  ; 10006158 _ 80. C2, 50
        mov     esi, dword [esi+ecx]                    ; 1000615B _ 8B. 34 0E
        mov     byte [esp+30H], dl                      ; 1000615E _ 88. 54 24, 30
?_0606: add     ebp, 4                                  ; 10006162 _ 83. C5, 04
        mov     dword [esp+1CH], ebp                    ; 10006165 _ 89. 6C 24, 1C
?_0607: mov     ecx, eax                                ; 10006169 _ 8B. C8
        mov     edx, 1                                  ; 1000616B _ BA, 00000001
        sub     ecx, ebx                                ; 10006170 _ 2B. CB
        mov     eax, edi                                ; 10006172 _ 8B. C7
        shl     edx, cl                                 ; 10006174 _ D3. E2
        mov     ecx, ebx                                ; 10006176 _ 8B. CB
        shr     eax, cl                                 ; 10006178 _ D3. E8
        cmp     eax, dword [esp+3CH]                    ; 1000617A _ 3B. 44 24, 3C
        jnc     ?_0609                                  ; 1000617E _ 73, 21
        mov     ecx, dword [esp+40H]                    ; 10006180 _ 8B. 4C 24, 40
        lea     ecx, [ecx+eax*8]                        ; 10006184 _ 8D. 0C C1
?_0608: mov     ebp, dword [esp+30H]                    ; 10006187 _ 8B. 6C 24, 30
        add     eax, edx                                ; 1000618B _ 03. C2
        mov     dword [ecx], ebp                        ; 1000618D _ 89. 29
        lea     ebp, [edx*8]                            ; 1000618F _ 8D. 2C D5, 00000000
        mov     dword [ecx+4H], esi                     ; 10006196 _ 89. 71, 04
        add     ecx, ebp                                ; 10006199 _ 03. CD
        cmp     eax, dword [esp+3CH]                    ; 1000619B _ 3B. 44 24, 3C
        jc      ?_0608                                  ; 1000619F _ 72, E6
?_0609: mov     ecx, dword [esp+20H]                    ; 100061A1 _ 8B. 4C 24, 20
        mov     eax, 1                                  ; 100061A5 _ B8, 00000001
        shl     eax, cl                                 ; 100061AA _ D3. E0
        test    edi, eax                                ; 100061AC _ 85. C7
        jz      ?_0611                                  ; 100061AE _ 74, 08
?_0610: xor     edi, eax                                ; 100061B0 _ 33. F8
        shr     eax, 1                                  ; 100061B2 _ D1. E8
        test    edi, eax                                ; 100061B4 _ 85. C7
        jnz     ?_0610                                  ; 100061B6 _ 75, F8
?_0611: mov     edx, dword [esp+18H]                    ; 100061B8 _ 8B. 54 24, 18
        mov     ebp, 1                                  ; 100061BC _ BD, 00000001
        mov     ecx, ebx                                ; 100061C1 _ 8B. CB
        xor     edi, eax                                ; 100061C3 _ 33. F8
        shl     ebp, cl                                 ; 100061C5 _ D3. E5
        mov     ecx, dword [esp+edx*4+94H]              ; 100061C7 _ 8B. 8C 94, 00000094
        lea     eax, [esp+edx*4+94H]                    ; 100061CE _ 8D. 84 94, 00000094
        mov     dword [esp+38H], edi                    ; 100061D5 _ 89. 7C 24, 38
        dec     ebp                                     ; 100061D9 _ 4D
        and     ebp, edi                                ; 100061DA _ 23. EF
        cmp     ebp, ecx                                ; 100061DC _ 3B. E9
        jz      ?_0613                                  ; 100061DE _ 74, 20
?_0612: mov     ebp, dword [esp+10H]                    ; 100061E0 _ 8B. 6C 24, 10
        dec     edx                                     ; 100061E4 _ 4A
        sub     ebx, ebp                                ; 100061E5 _ 2B. DD
        mov     ebp, 1                                  ; 100061E7 _ BD, 00000001
        mov     ecx, ebx                                ; 100061EC _ 8B. CB
        sub     eax, 4                                  ; 100061EE _ 83. E8, 04
        shl     ebp, cl                                 ; 100061F1 _ D3. E5
        mov     ecx, dword [eax]                        ; 100061F3 _ 8B. 08
        dec     ebp                                     ; 100061F5 _ 4D
        and     ebp, edi                                ; 100061F6 _ 23. EF
        cmp     ebp, ecx                                ; 100061F8 _ 3B. E9
        jnz     ?_0612                                  ; 100061FA _ 75, E4
        mov     dword [esp+18H], edx                    ; 100061FC _ 89. 54 24, 18
?_0613: mov     eax, dword [esp+24H]                    ; 10006200 _ 8B. 44 24, 24
        mov     ebp, dword [esp+10H]                    ; 10006204 _ 8B. 6C 24, 10
        mov     edx, eax                                ; 10006208 _ 8B. D0
        dec     eax                                     ; 1000620A _ 48
        mov     dword [esp+24H], eax                    ; 1000620B _ 89. 44 24, 24
        mov     eax, dword [esp+14H]                    ; 1000620F _ 8B. 44 24, 14
        test    edx, edx                                ; 10006213 _ 85. D2
        jne     ?_0594                                  ; 10006215 _ 0F 85, FFFFFDBC
?_0614: mov     ecx, dword [esp+28H]                    ; 1000621B _ 8B. 4C 24, 28
        mov     edx, dword [esp+20H]                    ; 1000621F _ 8B. 54 24, 20
        add     ecx, 4                                  ; 10006223 _ 83. C1, 04
        inc     eax                                     ; 10006226 _ 40
        mov     dword [esp+28H], ecx                    ; 10006227 _ 89. 4C 24, 28
        mov     ecx, dword [esp+2CH]                    ; 1000622B _ 8B. 4C 24, 2C
        inc     edx                                     ; 1000622F _ 42
        cmp     eax, ecx                                ; 10006230 _ 3B. C1
        mov     dword [esp+14H], eax                    ; 10006232 _ 89. 44 24, 14
        mov     dword [esp+20H], edx                    ; 10006236 _ 89. 54 24, 20
        jle     ?_0593                                  ; 1000623A _ 0F 8E, FFFFFD80
        mov     esi, dword [esp+44H]                    ; 10006240 _ 8B. 74 24, 44
        xor     edi, edi                                ; 10006244 _ 33. FF
?_0615: cmp     esi, edi                                ; 10006246 _ 3B. F7
        je      ?_0577                                  ; 10006248 _ 0F 84, FFFFFBF8
        cmp     dword [esp+2CH], 1                      ; 1000624E _ 83. 7C 24, 2C, 01
        je      ?_0577                                  ; 10006253 _ 0F 84, FFFFFBED
        pop     edi                                     ; 10006259 _ 5F
        pop     esi                                     ; 1000625A _ 5E
        pop     ebp                                     ; 1000625B _ 5D
        mov     eax, 4294967291                         ; 1000625C _ B8, FFFFFFFB
        pop     ebx                                     ; 10006261 _ 5B
        add     esp, 256                                ; 10006262 _ 81. C4, 00000100
        ret                                             ; 10006268 _ C3
