; ---- 1000AF68 ----
?_1155: ; Local function
        push    ecx                                     ; 1000AF68 _ 51
        lea     eax, [esp+4H]                           ; 1000AF69 _ 8D. 44 24, 04
        push    ?_5160                                  ; 1000AF6D _ 68, 10028BDC(d)
        push    eax                                     ; 1000AF72 _ 50
        call    ?_3039                                  ; 1000AF73 _ E8, 0000F321
        lea     ecx, [esp+0CH]                          ; 1000AF78 _ 8D. 4C 24, 0C
        push    1                                       ; 1000AF7C _ 6A, 01
        push    ecx                                     ; 1000AF7E _ 51
        push    1929                                    ; 1000AF7F _ 68, 00000789
        push    ?_5209                                  ; 1000AF84 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AF89 _ E8, FFFF86B2
        add     esp, 28                                 ; 1000AF8E _ 83. C4, 1C
        add     esp, 256                                ; 1000AF91 _ 81. C4, 00000100
        ret                                             ; 1000AF97 _ C3

?_1156:                                                 ; switch/case jump table
        dd ?_1143                                       ; 1000AF98 _ 1000ADE8 (d)
        dd ?_1141                                       ; 1000AF9C _ 1000ADA8 (d)
        dd ?_1151                                       ; 1000AFA0 _ 1000AEE8 (d)
        dd ?_1149                                       ; 1000AFA4 _ 1000AEA8 (d)
        dd ?_1144                                       ; 1000AFA8 _ 1000AE08 (d)
        dd ?_1146                                       ; 1000AFAC _ 1000AE48 (d)
        dd ?_1150                                       ; 1000AFB0 _ 1000AEC8 (d)
        dd ?_1147                                       ; 1000AFB4 _ 1000AE68 (d)
        dd ?_1140                                       ; 1000AFB8 _ 1000AD88 (d)
        dd ?_1145                                       ; 1000AFBC _ 1000AE28 (d)
        dd ?_1152                                       ; 1000AFC0 _ 1000AF08 (d)
        dd ?_1154                                       ; 1000AFC4 _ 1000AF48 (d)
        dd ?_1142                                       ; 1000AFC8 _ 1000ADC8 (d)
        dd ?_1148                                       ; 1000AFCC _ 1000AE88 (d)
        dd ?_1153                                       ; 1000AFD0 _ 1000AF28 (d)
        dd ?_1139                                       ; 1000AFD4 _ 1000AD68 (d)
        dd ?_1155                                       ; 1000AFD8 _ 1000AF68 (d)

?_1157: db 00H, 10H, 10H, 10H, 10H, 10H, 10H, 10H       ; 1000AFDC _ ........
        db 10H, 10H, 01H, 10H, 10H, 10H, 10H, 10H       ; 1000AFE4 _ ........
        db 10H, 10H, 02H, 10H, 10H, 10H, 10H, 10H       ; 1000AFEC _ ........
        db 10H, 10H, 10H, 10H, 10H, 10H, 10H, 03H       ; 1000AFF4 _ ........
        db 04H, 10H, 05H, 10H, 06H, 10H, 10H, 10H       ; 1000AFFC _ ........
        db 10H, 07H, 10H, 10H, 10H, 10H, 08H, 10H       ; 1000B004 _ ........
        db 09H, 0AH, 0BH, 10H, 10H, 0CH, 0DH, 10H       ; 1000B00C _ ........
        db 0EH, 10H, 10H, 10H, 10H, 10H, 10H, 10H       ; 1000B014 _ ........
        db 10H, 10H, 10H, 10H, 10H, 10H, 10H, 10H       ; 1000B01C _ ........
        db 10H, 10H, 10H, 10H, 10H, 10H, 10H, 10H       ; 1000B024 _ ........
        db 10H, 10H, 10H, 10H, 10H, 10H, 10H, 10H       ; 1000B02C _ ........
        db 10H, 0FH, 90H, 90H, 90H, 90H, 90H, 90H       ; 1000B034 _ ........
        db 90H, 90H, 90H, 90H                           ; 1000B03C _ ....
?_1158: push    ebp                                     ; 1000B040 _ 55
        mov     ebp, esp                                ; 1000B041 _ 8B. EC
        push    ecx                                     ; 1000B043 _ 51
        push    ebx                                     ; 1000B044 _ 53
        push    edi                                     ; 1000B045 _ 57
        mov     dword [ebp-4H], 1008                    ; 1000B046 _ C7. 45, FC, 000003F0
        mov     edi, ?_5700                             ; 1000B04D _ BF, 101DE5A0(d)
        mov     ebx, dword [ebp-4H]                     ; 1000B052 _ 8B. 5D, FC
        xor     eax, eax                                ; 1000B055 _ 33. C0
        lea     ecx, [edi+edi*2]                        ; 1000B057 _ 8D. 0C 7F
        and     ecx, 03H                                ; 1000B05A _ 83. E1, 03
        sub     ebx, ecx                                ; 1000B05D _ 2B. D9
        jle     ?_1159                                  ; 1000B05F _ 7E, 0C
        rep stosb                                       ; 1000B061 _ F3: AA
        mov     ecx, ebx                                ; 1000B063 _ 8B. CB
        and     ebx, 03H                                ; 1000B065 _ 83. E3, 03
        shr     ecx, 2                                  ; 1000B068 _ C1. E9, 02
        rep stosd                                       ; 1000B06B _ F3: AB
?_1159: add     ecx, ebx                                ; 1000B06D _ 03. CB
        rep stosb                                       ; 1000B06F _ F3: AA
        xor     ecx, ecx                                ; 1000B071 _ 33. C9
        pop     edi                                     ; 1000B073 _ 5F
        mov     eax, ?_5701                             ; 1000B074 _ B8, 101DE5A4(d)
        or      edx, 0FFFFFFFFH                         ; 1000B079 _ 83. CA, FF
        pop     ebx                                     ; 1000B07C _ 5B
?_1160: mov     byte [eax-4H], cl                       ; 1000B07D _ 88. 48, FC
        mov     dword [eax], edx                        ; 1000B080 _ 89. 10
        mov     dword [eax+10H], edx                    ; 1000B082 _ 89. 50, 10
        add     eax, 24                                 ; 1000B085 _ 83. C0, 18
        inc     ecx                                     ; 1000B088 _ 41
        cmp     eax, ?_5751                             ; 1000B089 _ 3D, 101DE994(d)
        jl      ?_1160                                  ; 1000B08E _ 7C, ED
        mov     al, 1                                   ; 1000B090 _ B0, 01
        mov     byte [?_5707], 2                        ; 1000B092 _ C6. 05, 101DE5D8(d), 02
        mov     byte [?_5702], al                       ; 1000B099 _ A2, 101DE5A8(d)
        mov     byte [?_5706], al                       ; 1000B09E _ A2, 101DE5C0(d)
        mov     al, 4                                   ; 1000B0A3 _ B0, 04
        mov     byte [?_5708], 3                        ; 1000B0A5 _ C6. 05, 101DE5F0(d), 03
        mov     byte [?_5709], al                       ; 1000B0AC _ A2, 101DE608(d)
        mov     byte [?_5710], al                       ; 1000B0B1 _ A2, 101DE620(d)
        mov     al, 7                                   ; 1000B0B6 _ B0, 07
        mov     byte [?_5711], 5                        ; 1000B0B8 _ C6. 05, 101DE638(d), 05
        mov     byte [?_5712], 6                        ; 1000B0BF _ C6. 05, 101DE650(d), 06
        mov     byte [?_5713], al                       ; 1000B0C6 _ A2, 101DE668(d)
        mov     byte [?_5714], al                       ; 1000B0CB _ A2, 101DE680(d)
        mov     byte [?_5715], 8                        ; 1000B0D0 _ C6. 05, 101DE698(d), 08
        mov     byte [?_5716], 9                        ; 1000B0D7 _ C6. 05, 101DE6B0(d), 09
        mov     byte [?_5717], 10                       ; 1000B0DE _ C6. 05, 101DE6C8(d), 0A
        mov     byte [?_5718], 11                       ; 1000B0E5 _ C6. 05, 101DE6E0(d), 0B
        mov     byte [?_5719], 12                       ; 1000B0EC _ C6. 05, 101DE6F8(d), 0C
        mov     byte [?_5720], 13                       ; 1000B0F3 _ C6. 05, 101DE710(d), 0D
        mov     byte [?_5721], 14                       ; 1000B0FA _ C6. 05, 101DE728(d), 0E
        mov     byte [?_5722], 15                       ; 1000B101 _ C6. 05, 101DE740(d), 0F
        mov     byte [?_5723], 16                       ; 1000B108 _ C6. 05, 101DE758(d), 10
        mov     byte [?_5724], 17                       ; 1000B10F _ C6. 05, 101DE770(d), 11
        mov     byte [?_5725], 18                       ; 1000B116 _ C6. 05, 101DE788(d), 12
        mov     byte [?_5726], 19                       ; 1000B11D _ C6. 05, 101DE7A0(d), 13
        mov     byte [?_5727], 20                       ; 1000B124 _ C6. 05, 101DE7B8(d), 14
        mov     byte [?_5728], 21                       ; 1000B12B _ C6. 05, 101DE7D0(d), 15
        mov     byte [?_5729], 22                       ; 1000B132 _ C6. 05, 101DE7E8(d), 16
        mov     byte [?_5730], 23                       ; 1000B139 _ C6. 05, 101DE800(d), 17
        mov     byte [?_5731], 24                       ; 1000B140 _ C6. 05, 101DE818(d), 18
        mov     byte [?_5732], 25                       ; 1000B147 _ C6. 05, 101DE830(d), 19
        mov     byte [?_5733], 26                       ; 1000B14E _ C6. 05, 101DE848(d), 1A
        mov     byte [?_5734], 27                       ; 1000B155 _ C6. 05, 101DE860(d), 1B
        mov     byte [?_5737], 28                       ; 1000B15C _ C6. 05, 101DE878(d), 1C
        mov     byte [?_5738], 29                       ; 1000B163 _ C6. 05, 101DE890(d), 1D
        mov     byte [?_5739], 30                       ; 1000B16A _ C6. 05, 101DE8A8(d), 1E
        mov     byte [?_5740], 31                       ; 1000B171 _ C6. 05, 101DE8C0(d), 1F
        mov     byte [?_5741], 32                       ; 1000B178 _ C6. 05, 101DE8D8(d), 20
        mov     byte [?_5742], 33                       ; 1000B17F _ C6. 05, 101DE8F0(d), 21
        mov     byte [?_5743], 34                       ; 1000B186 _ C6. 05, 101DE908(d), 22
        mov     byte [?_5745], 35                       ; 1000B18D _ C6. 05, 101DE920(d), 23
        mov     byte [?_5746], 36                       ; 1000B194 _ C6. 05, 101DE938(d), 24
        mov     byte [?_5747], 37                       ; 1000B19B _ C6. 05, 101DE950(d), 25
        mov     byte [?_5748], 38                       ; 1000B1A2 _ C6. 05, 101DE968(d), 26
        mov     byte [?_5749], 39                       ; 1000B1A9 _ C6. 05, 101DE980(d), 27
        mov     esp, ebp                                ; 1000B1B0 _ 8B. E5
        pop     ebp                                     ; 1000B1B2 _ 5D
        ret                                             ; 1000B1B3 _ C3

        nop                                             ; 1000B1B4 _ 90
        nop                                             ; 1000B1B5 _ 90
        nop                                             ; 1000B1B6 _ 90
        nop                                             ; 1000B1B7 _ 90
        nop                                             ; 1000B1B8 _ 90
        nop                                             ; 1000B1B9 _ 90
        nop                                             ; 1000B1BA _ 90
        nop                                             ; 1000B1BB _ 90
        nop                                             ; 1000B1BC _ 90
        nop                                             ; 1000B1BD _ 90
        nop                                             ; 1000B1BE _ 90
        nop                                             ; 1000B1BF _ 90
?_1161: push    ebx                                     ; 1000B1C0 _ 53
        push    esi                                     ; 1000B1C1 _ 56
        mov     esi, dword [esp+0CH]                    ; 1000B1C2 _ 8B. 74 24, 0C
        mov     eax, dword [esi]                        ; 1000B1C6 _ 8B. 06
        push    eax                                     ; 1000B1C8 _ 50
        call    ?_2817                                  ; 1000B1C9 _ E8, 0000D2D2
        add     esp, 4                                  ; 1000B1CE _ 83. C4, 04
        test    eax, eax                                ; 1000B1D1 _ 85. C0
        jz      ?_1163                                  ; 1000B1D3 _ 74, 23
        mov     cl, byte [eax+168H]                     ; 1000B1D5 _ 8A. 88, 00000168
        test    cl, cl                                  ; 1000B1DB _ 84. C9
        jnz     ?_1163                                  ; 1000B1DD _ 75, 19
        mov     dl, byte [esi+4H]                       ; 1000B1DF _ 8A. 56, 04
        xor     ecx, ecx                                ; 1000B1E2 _ 33. C9
        mov     eax, ?_5700                             ; 1000B1E4 _ B8, 101DE5A0(d)
?_1162: cmp     byte [eax], dl                          ; 1000B1E9 _ 38. 10
        jz      ?_1164                                  ; 1000B1EB _ 74, 10
        add     eax, 24                                 ; 1000B1ED _ 83. C0, 18
        inc     ecx                                     ; 1000B1F0 _ 41
        cmp     eax, ?_5735                             ; 1000B1F1 _ 3D, 101DE870(d)
        jl      ?_1162                                  ; 1000B1F6 _ 7C, F1
?_1163: pop     esi                                     ; 1000B1F8 _ 5E
        xor     eax, eax                                ; 1000B1F9 _ 33. C0
        pop     ebx                                     ; 1000B1FB _ 5B
        ret                                             ; 1000B1FC _ C3

