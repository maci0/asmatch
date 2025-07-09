; ---- 10002770 ----
?_0162: ; Local function
        sub     esp, 640                                ; 10002770 _ 81. EC, 00000280
        mov     eax, dword [esp+284H]                   ; 10002776 _ 8B. 84 24, 00000284
        push    ebp                                     ; 1000277D _ 55
        push    esi                                     ; 1000277E _ 56
        push    0                                       ; 1000277F _ 6A, 00
        mov     ecx, dword [eax+4H]                     ; 10002781 _ 8B. 48, 04
        mov     byte [esp+16H], 0                       ; 10002784 _ C6. 44 24, 16, 00
        mov     dword [esp+28H], ecx                    ; 10002789 _ 89. 4C 24, 28
        call    near [imp_SetUnhandledExceptionFilter]  ; 1000278D _ FF. 15, 10024040(d)
        lea     edx, [esp+188H]                         ; 10002793 _ 8D. 94 24, 00000188
        push    256                                     ; 1000279A _ 68, 00000100
        push    edx                                     ; 1000279F _ 52
        push    0                                       ; 100027A0 _ 6A, 00
        call    near [imp_GetModuleFileNameA]           ; 100027A2 _ FF. 15, 1002403C(d)
        test    eax, eax                                ; 100027A8 _ 85. C0
        je      ?_0212                                  ; 100027AA _ 0F 84, 000006B6
        mov     cl, byte [esp+188H]                     ; 100027B0 _ 8A. 8C 24, 00000188
        lea     eax, [esp+188H]                         ; 100027B7 _ 8D. 84 24, 00000188
        test    cl, cl                                  ; 100027BE _ 84. C9
        jz      ?_0164                                  ; 100027C0 _ 74, 13
?_0163: mov     cl, byte [eax+1H]                       ; 100027C2 _ 8A. 48, 01
        inc     eax                                     ; 100027C5 _ 40
        test    cl, cl                                  ; 100027C6 _ 84. C9
        jnz     ?_0163                                  ; 100027C8 _ 75, F8
        lea     ecx, [esp+188H]                         ; 100027CA _ 8D. 8C 24, 00000188
        cmp     eax, ecx                                ; 100027D1 _ 3B. C1
        jc      ?_0165                                  ; 100027D3 _ 72, 11
?_0164: cmp     byte [eax], 46                          ; 100027D5 _ 80. 38, 2E
        jz      ?_0166                                  ; 100027D8 _ 74, 11
        dec     eax                                     ; 100027DA _ 48
        lea     edx, [esp+188H]                         ; 100027DB _ 8D. 94 24, 00000188
        cmp     eax, edx                                ; 100027E2 _ 3B. C2
        jnc     ?_0164                                  ; 100027E4 _ 73, EF
?_0165: cmp     byte [eax], 46                          ; 100027E6 _ 80. 38, 2E
        jnz     ?_0167                                  ; 100027E9 _ 75, 10
?_0166: inc     eax                                     ; 100027EB _ 40
        mov     byte [eax], 100                         ; 100027EC _ C6. 00, 64
        inc     eax                                     ; 100027EF _ 40
        mov     byte [eax], 98                          ; 100027F0 _ C6. 00, 62
        inc     eax                                     ; 100027F3 _ 40
        mov     byte [eax], 103                         ; 100027F4 _ C6. 00, 67
        mov     byte [eax+1H], 0                        ; 100027F7 _ C6. 40, 01, 00
?_0167: mov     esi, dword [imp_CreateFileA]            ; 100027FB _ 8B. 35, 10024038(d)
        push    0                                       ; 10002801 _ 6A, 00
        push    128                                     ; 10002803 _ 68, 00000080
        push    3                                       ; 10002808 _ 6A, 03
        push    0                                       ; 1000280A _ 6A, 00
        push    1                                       ; 1000280C _ 6A, 01
        lea     eax, [esp+19CH]                         ; 1000280E _ 8D. 84 24, 0000019C
        push    -2147483648                             ; 10002815 _ 68, 80000000
        push    eax                                     ; 1000281A _ 50
        call    esi                                     ; 1000281B _ FF. D6
        mov     ebp, eax                                ; 1000281D _ 8B. E8
        cmp     ebp, -1                                 ; 1000281F _ 83. FD, FF
        mov     dword [esp+28H], ebp                    ; 10002822 _ 89. 6C 24, 28
        je      ?_0211                                  ; 10002826 _ 0F 84, 00000621
        push    ebx                                     ; 1000282C _ 53
        push    edi                                     ; 1000282D _ 57
        mov     edi, dword [imp_ReadFile]               ; 1000282E _ 8B. 3D, 10024034(d)
        lea     ecx, [esp+20H]                          ; 10002834 _ 8D. 4C 24, 20
        push    0                                       ; 10002838 _ 6A, 00
        push    ecx                                     ; 1000283A _ 51
        lea     edx, [esp+24H]                          ; 1000283B _ 8D. 54 24, 24
        push    4                                       ; 1000283F _ 6A, 04
        push    edx                                     ; 10002841 _ 52
        push    ebp                                     ; 10002842 _ 55
        call    edi                                     ; 10002843 _ FF. D7
        cmp     dword [esp+20H], 4                      ; 10002845 _ 83. 7C 24, 20, 04
        jne     ?_0209                                  ; 1000284A _ 0F 85, 000005D9
        mov     eax, dword [esp+1CH]                    ; 10002850 _ 8B. 44 24, 1C
        push    4                                       ; 10002854 _ 6A, 04
        push    4096                                    ; 10002856 _ 68, 00001000
        push    eax                                     ; 1000285B _ 50
        push    0                                       ; 1000285C _ 6A, 00
        call    near [imp_VirtualAlloc]                 ; 1000285E _ FF. 15, 10024030(d)
        mov     ebx, eax                                ; 10002864 _ 8B. D8
        test    ebx, ebx                                ; 10002866 _ 85. DB
        mov     dword [esp+34H], ebx                    ; 10002868 _ 89. 5C 24, 34
        je      ?_0208                                  ; 1000286C _ 0F 84, 000005A9
        mov     edx, dword [esp+1CH]                    ; 10002872 _ 8B. 54 24, 1C
        lea     ecx, [esp+20H]                          ; 10002876 _ 8D. 4C 24, 20
        push    0                                       ; 1000287A _ 6A, 00
        push    ecx                                     ; 1000287C _ 51
        push    edx                                     ; 1000287D _ 52
        push    ebx                                     ; 1000287E _ 53
        push    ebp                                     ; 1000287F _ 55
        call    edi                                     ; 10002880 _ FF. D7
        mov     eax, dword [esp+1CH]                    ; 10002882 _ 8B. 44 24, 1C
        mov     ecx, dword [esp+20H]                    ; 10002886 _ 8B. 4C 24, 20
        cmp     eax, ecx                                ; 1000288A _ 3B. C1
        jne     ?_0207                                  ; 1000288C _ 0F 85, 00000557
        push    0                                       ; 10002892 _ 6A, 00
        push    128                                     ; 10002894 _ 68, 00000080
        push    4                                       ; 10002899 _ 6A, 04
        push    0                                       ; 1000289B _ 6A, 00
        push    0                                       ; 1000289D _ 6A, 00
        push    1073741824                              ; 1000289F _ 68, 40000000
        push    ?_5096                                  ; 100028A4 _ 68, 10027318(d)
        call    esi                                     ; 100028A9 _ FF. D6
        mov     ebp, eax                                ; 100028AB _ 8B. E8
        mov     eax, dword [ebx]                        ; 100028AD _ 8B. 03
        mov     edx, dword [esp+20H]                    ; 100028AF _ 8B. 54 24, 20
        lea     ecx, [ebx+10H]                          ; 100028B3 _ 8D. 4B, 10
        shr     edx, 2                                  ; 100028B6 _ C1. EA, 02
        sub     edx, 4                                  ; 100028B9 _ 83. EA, 04
        mov     dword [esp+1CH], 0                      ; 100028BC _ C7. 44 24, 1C, 00000000
        jz      ?_0169                                  ; 100028C4 _ 74, 2C
?_0168: mov     edx, eax                                ; 100028C6 _ 8B. D0
        add     ecx, 4                                  ; 100028C8 _ 83. C1, 04
        shr     edx, 17                                 ; 100028CB _ C1. EA, 11
        shl     eax, 15                                 ; 100028CE _ C1. E0, 0F
        or      eax, edx                                ; 100028D1 _ 0B. C2
        mov     edx, dword [ecx-4H]                     ; 100028D3 _ 8B. 51, FC
        xor     edx, eax                                ; 100028D6 _ 33. D0
        mov     dword [ecx-4H], edx                     ; 100028D8 _ 89. 51, FC
        mov     esi, dword [esp+20H]                    ; 100028DB _ 8B. 74 24, 20
        mov     edx, dword [esp+1CH]                    ; 100028DF _ 8B. 54 24, 1C
        shr     esi, 2                                  ; 100028E3 _ C1. EE, 02
        inc     edx                                     ; 100028E6 _ 42
        sub     esi, 4                                  ; 100028E7 _ 83. EE, 04
        cmp     edx, esi                                ; 100028EA _ 3B. D6
        mov     dword [esp+1CH], edx                    ; 100028EC _ 89. 54 24, 1C
        jc      ?_0168                                  ; 100028F0 _ 72, D4
?_0169: cmp     ebp, -1                                 ; 100028F2 _ 83. FD, FF
        je      ?_0206                                  ; 100028F5 _ 0F 84, 000004B8
        call    near [imp_GetCurrentProcess]            ; 100028FB _ FF. 15, 1002402C(d)
        mov     cx, word [?_5094]                       ; 10002901 _ 66: 8B. 0D, 10027314(d)
        mov     esi, ?_5093                             ; 10002908 _ BE, 100272F8(d)
        mov     word [esp+14H], cx                      ; 1000290D _ 66: 89. 4C 24, 14
        mov     ecx, 6                                  ; 10002912 _ B9, 00000006
        lea     edi, [esp+74H]                          ; 10002917 _ 8D. 7C 24, 74
        mov     dl, byte [?_5095]                       ; 1000291B _ 8A. 15, 10027316(d)
        rep movsd                                       ; 10002921 _ F3: A5
        movsw                                           ; 10002923 _ 66: A5
        mov     dword [esp+38H], eax                    ; 10002925 _ 89. 44 24, 38
        mov     eax, dword [esp+2CH]                    ; 10002929 _ 8B. 44 24, 2C
        push    2                                       ; 1000292D _ 6A, 02
        push    0                                       ; 1000292F _ 6A, 00
        mov     ebx, dword [eax+0C4H]                   ; 10002931 _ 8B. 98, 000000C4
        push    -1                                      ; 10002937 _ 6A, FF
        push    ebp                                     ; 10002939 _ 55
        mov     dword [esp+38H], 2048                   ; 1000293A _ C7. 44 24, 38, 00000800
        mov     byte [esp+26H], dl                      ; 10002942 _ 88. 54 24, 26
        mov     byte [esp+2BH], 32                      ; 10002946 _ C6. 44 24, 2B, 20
        movsb                                           ; 1000294B _ A4
        call    near [imp_SetFilePointer]               ; 1000294C _ FF. 15, 10024028(d)
        mov     esi, dword [imp_WriteFile]              ; 10002952 _ 8B. 35, 10024024(d)
        lea     eax, [esp+10H]                          ; 10002958 _ 8D. 44 24, 10
        push    0                                       ; 1000295C _ 6A, 00
        push    eax                                     ; 1000295E _ 50
        lea     ecx, [esp+7CH]                          ; 1000295F _ 8D. 4C 24, 7C
        push    26                                      ; 10002963 _ 6A, 1A
        push    ecx                                     ; 10002965 _ 51
        push    ebp                                     ; 10002966 _ 55
        call    esi                                     ; 10002967 _ FF. D6
        lea     edx, [esp+90H]                          ; 10002969 _ 8D. 94 24, 00000090
        push    256                                     ; 10002970 _ 68, 00000100
        push    edx                                     ; 10002975 _ 52
        push    0                                       ; 10002976 _ 6A, 00
        push    0                                       ; 10002978 _ 6A, 00
        push    2                                       ; 1000297A _ 6A, 02
        push    1024                                    ; 1000297C _ 68, 00000400
        call    near [imp_GetDateFormatA]               ; 10002981 _ FF. 15, 10024020(d)
        test    eax, eax                                ; 10002987 _ 85. C0
        jz      ?_0170                                  ; 10002989 _ 74, 25
        lea     ecx, [esp+10H]                          ; 1000298B _ 8D. 4C 24, 10
        push    0                                       ; 1000298F _ 6A, 00
        dec     eax                                     ; 10002991 _ 48
        push    ecx                                     ; 10002992 _ 51
        lea     edx, [esp+98H]                          ; 10002993 _ 8D. 94 24, 00000098
        push    eax                                     ; 1000299A _ 50
        push    edx                                     ; 1000299B _ 52
        push    ebp                                     ; 1000299C _ 55
        call    esi                                     ; 1000299D _ FF. D6
        lea     eax, [esp+10H]                          ; 1000299F _ 8D. 44 24, 10
        push    0                                       ; 100029A3 _ 6A, 00
        push    eax                                     ; 100029A5 _ 50
        lea     ecx, [esp+23H]                          ; 100029A6 _ 8D. 4C 24, 23
        push    1                                       ; 100029AA _ 6A, 01
        push    ecx                                     ; 100029AC _ 51
        push    ebp                                     ; 100029AD _ 55
        call    esi                                     ; 100029AE _ FF. D6
?_0170: lea     edx, [esp+90H]                          ; 100029B0 _ 8D. 94 24, 00000090
        push    256                                     ; 100029B7 _ 68, 00000100
        push    edx                                     ; 100029BC _ 52
        push    0                                       ; 100029BD _ 6A, 00
        push    0                                       ; 100029BF _ 6A, 00
        push    8                                       ; 100029C1 _ 6A, 08
        push    1024                                    ; 100029C3 _ 68, 00000400
        call    near [imp_GetTimeFormatA]               ; 100029C8 _ FF. 15, 1002401C(d)
        test    eax, eax                                ; 100029CE _ 85. C0
        jz      ?_0171                                  ; 100029D0 _ 74, 25
        lea     ecx, [esp+10H]                          ; 100029D2 _ 8D. 4C 24, 10
        push    0                                       ; 100029D6 _ 6A, 00
        dec     eax                                     ; 100029D8 _ 48
        push    ecx                                     ; 100029D9 _ 51
        lea     edx, [esp+98H]                          ; 100029DA _ 8D. 94 24, 00000098
        push    eax                                     ; 100029E1 _ 50
        push    edx                                     ; 100029E2 _ 52
        push    ebp                                     ; 100029E3 _ 55
        call    esi                                     ; 100029E4 _ FF. D6
        lea     eax, [esp+10H]                          ; 100029E6 _ 8D. 44 24, 10
        push    0                                       ; 100029EA _ 6A, 00
        push    eax                                     ; 100029EC _ 50
        lea     ecx, [esp+1CH]                          ; 100029ED _ 8D. 4C 24, 1C
        push    2                                       ; 100029F1 _ 6A, 02
        push    ecx                                     ; 100029F3 _ 51
        push    ebp                                     ; 100029F4 _ 55
        call    esi                                     ; 100029F5 _ FF. D6
?_0171: mov     edi, dword [esp+294H]                   ; 100029F7 _ 8B. BC 24, 00000294
        mov     edx, dword [edi]                        ; 100029FE _ 8B. 17
        mov     eax, dword [edx]                        ; 10002A00 _ 8B. 02
        cmp     eax, 3221225614                         ; 10002A02 _ 3D, C000008E
        ja      ?_0185                                  ; 10002A07 _ 0F 87, 00000188
        je      ?_0183                                  ; 10002A0D _ 0F 84, 0000015E
        cmp     eax, 3221225501                         ; 10002A13 _ 3D, C000001D
        ja      ?_0178                                  ; 10002A18 _ 0F 87, 000000F6
        je      ?_0177                                  ; 10002A1E _ 0F 84, 000000DD
        cmp     eax, 3221225477                         ; 10002A24 _ 3D, C0000005
        ja      ?_0176                                  ; 10002A29 _ 0F 87, 000000B4
        jz      ?_0173                                  ; 10002A2F _ 74, 38
        cmp     eax, 2147483651                         ; 10002A31 _ 3D, 80000003
        jz      ?_0172                                  ; 10002A36 _ 74, 1E
        cmp     eax, 2147483652                         ; 10002A38 _ 3D, 80000004
        jne     ?_0197                                  ; 10002A3D _ 0F 85, 00000211
        lea     eax, [esp+10H]                          ; 10002A43 _ 8D. 44 24, 10
        push    0                                       ; 10002A47 _ 6A, 00
        push    eax                                     ; 10002A49 _ 50
        push    11                                      ; 10002A4A _ 6A, 0B
        push    ?_5092                                  ; 10002A4C _ 68, 100272EC(d)
        jmp     ?_0184                                  ; 10002A51 _ E9, 00000129

?_0172: lea     eax, [esp+10H]                          ; 10002A56 _ 8D. 44 24, 10
        push    0                                       ; 10002A5A _ 6A, 00
        push    eax                                     ; 10002A5C _ 50
        push    10                                      ; 10002A5D _ 6A, 0A
        push    ?_5091                                  ; 10002A5F _ 68, 100272E0(d)
        jmp     ?_0184                                  ; 10002A64 _ E9, 00000116

?_0173: lea     eax, [esp+10H]                          ; 10002A69 _ 8D. 44 24, 10
        push    0                                       ; 10002A6D _ 6A, 00
        push    eax                                     ; 10002A6F _ 50
        push    17                                      ; 10002A70 _ 6A, 11
        push    ?_5090                                  ; 10002A72 _ 68, 100272CC(d)
        push    ebp                                     ; 10002A77 _ 55
        call    esi                                     ; 10002A78 _ FF. D6
        mov     ecx, dword [edi]                        ; 10002A7A _ 8B. 0F
        push    0                                       ; 10002A7C _ 6A, 00
        mov     eax, dword [ecx+14H]                    ; 10002A7E _ 8B. 41, 14
        test    eax, eax                                ; 10002A81 _ 85. C0
        jnz     ?_0174                                  ; 10002A83 _ 75, 0E
        lea     edx, [esp+14H]                          ; 10002A85 _ 8D. 54 24, 14
        push    edx                                     ; 10002A89 _ 52
        push    5                                       ; 10002A8A _ 6A, 05
        push    ?_5089                                  ; 10002A8C _ 68, 100272C4(d)
        jmp     ?_0175                                  ; 10002A91 _ EB, 0C

?_0174: lea     eax, [esp+14H]                          ; 10002A93 _ 8D. 44 24, 14
        push    eax                                     ; 10002A97 _ 50
        push    6                                       ; 10002A98 _ 6A, 06
        push    ?_5088                                  ; 10002A9A _ 68, 100272BC(d)
?_0175: push    ebp                                     ; 10002A9F _ 55
        call    esi                                     ; 10002AA0 _ FF. D6
        mov     ecx, dword [edi]                        ; 10002AA2 _ 8B. 0F
        lea     eax, [esp+90H]                          ; 10002AA4 _ 8D. 84 24, 00000090
        mov     edx, dword [ecx+18H]                    ; 10002AAB _ 8B. 51, 18
        push    edx                                     ; 10002AAE _ 52
        push    ?_5087                                  ; 10002AAF _ 68, 100272B4(d)
        push    eax                                     ; 10002AB4 _ 50
        call    ?_3039                                  ; 10002AB5 _ E8, 000177DF
        add     esp, 12                                 ; 10002ABA _ 83. C4, 0C
        lea     ecx, [esp+10H]                          ; 10002ABD _ 8D. 4C 24, 10
        lea     edi, [esp+90H]                          ; 10002AC1 _ 8D. BC 24, 00000090
        xor     eax, eax                                ; 10002AC8 _ 33. C0
        push    0                                       ; 10002ACA _ 6A, 00
        push    ecx                                     ; 10002ACC _ 51
        or      ecx, 0FFFFFFFFH                         ; 10002ACD _ 83. C9, FF
        lea     edx, [esp+98H]                          ; 10002AD0 _ 8D. 94 24, 00000098
        repne scasb                                     ; 10002AD7 _ F2: AE
        not     ecx                                     ; 10002AD9 _ F7. D1
        dec     ecx                                     ; 10002ADB _ 49
        push    ecx                                     ; 10002ADC _ 51
        push    edx                                     ; 10002ADD _ 52
        jmp     ?_0195                                  ; 10002ADE _ E9, 0000015D

?_0176: cmp     eax, 3221225478                         ; 10002AE3 _ 3D, C0000006
        jne     ?_0197                                  ; 10002AE8 _ 0F 85, 00000166
        lea     edx, [esp+10H]                          ; 10002AEE _ 8D. 54 24, 10
        push    0                                       ; 10002AF2 _ 6A, 00
        push    edx                                     ; 10002AF4 _ 52
        push    13                                      ; 10002AF5 _ 6A, 0D
        push    ?_5086                                  ; 10002AF7 _ 68, 100272A4(d)
        jmp     ?_0195                                  ; 10002AFC _ E9, 0000013F

?_0177: lea     edx, [esp+10H]                          ; 10002B01 _ 8D. 54 24, 10
        push    0                                       ; 10002B05 _ 6A, 00
        push    edx                                     ; 10002B07 _ 52
        push    19                                      ; 10002B08 _ 6A, 13
        push    ?_5085                                  ; 10002B0A _ 68, 10027290(d)
        jmp     ?_0195                                  ; 10002B0F _ E9, 0000012C

?_0178: add     eax, 1073741787                         ; 10002B14 _ 05, 3FFFFFDB
        cmp     eax, 104                                ; 10002B19 _ 83. F8, 68
        ja      ?_0197                                  ; 10002B1C _ 0F 87, 00000132
        xor     edx, edx                                ; 10002B22 _ 33. D2
        mov     dl, byte [?_0215+eax]                   ; 10002B24 _ 8A. 90, 10002EB0(d)
        jmp     near [?_0214+edx*4]                     ; 10002B2A _ FF. 24 95, 10002E9C(d)

?_0179: lea     eax, [esp+10H]                          ; 10002B31 _ 8D. 44 24, 10
        push    0                                       ; 10002B35 _ 6A, 00
        push    eax                                     ; 10002B37 _ 50
        push    21                                      ; 10002B38 _ 6A, 15
        push    ?_5084                                  ; 10002B3A _ 68, 10027278(d)
        jmp     ?_0184                                  ; 10002B3F _ EB, 3E

?_0180: lea     eax, [esp+10H]                          ; 10002B41 _ 8D. 44 24, 10
        push    0                                       ; 10002B45 _ 6A, 00
        push    eax                                     ; 10002B47 _ 50
        push    20                                      ; 10002B48 _ 6A, 14
        push    ?_5083                                  ; 10002B4A _ 68, 10027260(d)
        jmp     ?_0184                                  ; 10002B4F _ EB, 2E

?_0181: lea     eax, [esp+10H]                          ; 10002B51 _ 8D. 44 24, 10
        push    0                                       ; 10002B55 _ 6A, 00
        push    eax                                     ; 10002B57 _ 50
        push    19                                      ; 10002B58 _ 6A, 13
        push    ?_5082                                  ; 10002B5A _ 68, 1002724C(d)
        jmp     ?_0184                                  ; 10002B5F _ EB, 1E

?_0182: lea     eax, [esp+10H]                          ; 10002B61 _ 8D. 44 24, 10
        push    0                                       ; 10002B65 _ 6A, 00
        push    eax                                     ; 10002B67 _ 50
        push    24                                      ; 10002B68 _ 6A, 18
        push    ?_5081                                  ; 10002B6A _ 68, 10027230(d)
        jmp     ?_0184                                  ; 10002B6F _ EB, 0E

?_0183: lea     eax, [esp+10H]                          ; 10002B71 _ 8D. 44 24, 10
        push    0                                       ; 10002B75 _ 6A, 00
        push    eax                                     ; 10002B77 _ 50
        push    18                                      ; 10002B78 _ 6A, 12
        push    ?_5080                                  ; 10002B7A _ 68, 1002721C(d)
?_0184: push    ebp                                     ; 10002B7F _ 55
        call    esi                                     ; 10002B80 _ FF. D6
        lea     ecx, [esp+10H]                          ; 10002B82 _ 8D. 4C 24, 10
        push    0                                       ; 10002B86 _ 6A, 00
        push    ecx                                     ; 10002B88 _ 51
        lea     edx, [esp+1CH]                          ; 10002B89 _ 8D. 54 24, 1C
        push    2                                       ; 10002B8D _ 6A, 02
        push    edx                                     ; 10002B8F _ 52
        jmp     ?_0196                                  ; 10002B90 _ E9, 000000BC

?_0185: add     eax, 1073741681                         ; 10002B95 _ 05, 3FFFFF71
        cmp     eax, 110                                ; 10002B9A _ 83. F8, 6E
        ja      ?_0197                                  ; 10002B9D _ 0F 87, 000000B1
        xor     ecx, ecx                                ; 10002BA3 _ 33. C9
        mov     cl, byte [?_0217+eax]                   ; 10002BA5 _ 8A. 88, 10002F44(d)
        jmp     near [?_0216+ecx*4]                     ; 10002BAB _ FF. 24 8D, 10002F1C(d)

?_0186: lea     edx, [esp+10H]                          ; 10002BB2 _ 8D. 54 24, 10
        push    0                                       ; 10002BB6 _ 6A, 00
        push    edx                                     ; 10002BB8 _ 52
        push    18                                      ; 10002BB9 _ 6A, 12
        push    ?_5079                                  ; 10002BBB _ 68, 10027208(d)
        jmp     ?_0195                                  ; 10002BC0 _ EB, 7E

?_0187: lea     edx, [esp+10H]                          ; 10002BC2 _ 8D. 54 24, 10
        push    0                                       ; 10002BC6 _ 6A, 00
        push    edx                                     ; 10002BC8 _ 52
        push    21                                      ; 10002BC9 _ 6A, 15
        push    ?_5078                                  ; 10002BCB _ 68, 100271F0(d)
        jmp     ?_0195                                  ; 10002BD0 _ EB, 6E

?_0188: lea     edx, [esp+10H]                          ; 10002BD2 _ 8D. 54 24, 10
        push    0                                       ; 10002BD6 _ 6A, 00
        push    edx                                     ; 10002BD8 _ 52
        push    12                                      ; 10002BD9 _ 6A, 0C
        push    ?_5077                                  ; 10002BDB _ 68, 100271E0(d)
        jmp     ?_0195                                  ; 10002BE0 _ EB, 5E

?_0189: lea     edx, [esp+10H]                          ; 10002BE2 _ 8D. 54 24, 10
        push    0                                       ; 10002BE6 _ 6A, 00
        push    edx                                     ; 10002BE8 _ 52
        push    15                                      ; 10002BE9 _ 6A, 0F
        push    ?_5076                                  ; 10002BEB _ 68, 100271D0(d)
        jmp     ?_0195                                  ; 10002BF0 _ EB, 4E

?_0190: lea     edx, [esp+10H]                          ; 10002BF2 _ 8D. 54 24, 10
        push    0                                       ; 10002BF6 _ 6A, 00
        push    edx                                     ; 10002BF8 _ 52
        push    13                                      ; 10002BF9 _ 6A, 0D
        push    ?_5075                                  ; 10002BFB _ 68, 100271C0(d)
        jmp     ?_0195                                  ; 10002C00 _ EB, 3E

?_0191: lea     edx, [esp+10H]                          ; 10002C02 _ 8D. 54 24, 10
        push    0                                       ; 10002C06 _ 6A, 00
        push    edx                                     ; 10002C08 _ 52
        push    18                                      ; 10002C09 _ 6A, 12
        push    ?_5074                                  ; 10002C0B _ 68, 100271AC(d)
        jmp     ?_0195                                  ; 10002C10 _ EB, 2E

?_0192: lea     edx, [esp+10H]                          ; 10002C12 _ 8D. 54 24, 10
        push    0                                       ; 10002C16 _ 6A, 00
        push    edx                                     ; 10002C18 _ 52
        push    12                                      ; 10002C19 _ 6A, 0C
        push    ?_5073                                  ; 10002C1B _ 68, 1002719C(d)
        jmp     ?_0195                                  ; 10002C20 _ EB, 1E

?_0193: lea     edx, [esp+10H]                          ; 10002C22 _ 8D. 54 24, 10
        push    0                                       ; 10002C26 _ 6A, 00
        push    edx                                     ; 10002C28 _ 52
        push    16                                      ; 10002C29 _ 6A, 10
        push    ?_5072                                  ; 10002C2B _ 68, 10027188(d)
        jmp     ?_0195                                  ; 10002C30 _ EB, 0E

?_0194: lea     edx, [esp+10H]                          ; 10002C32 _ 8D. 54 24, 10
        push    0                                       ; 10002C36 _ 6A, 00
        push    edx                                     ; 10002C38 _ 52
        push    14                                      ; 10002C39 _ 6A, 0E
        push    ?_5071                                  ; 10002C3B _ 68, 10027178(d)
?_0195: push    ebp                                     ; 10002C40 _ 55
        call    esi                                     ; 10002C41 _ FF. D6
        lea     eax, [esp+10H]                          ; 10002C43 _ 8D. 44 24, 10
        push    0                                       ; 10002C47 _ 6A, 00
        push    eax                                     ; 10002C49 _ 50
        lea     ecx, [esp+1CH]                          ; 10002C4A _ 8D. 4C 24, 1C
        push    2                                       ; 10002C4E _ 6A, 02
        push    ecx                                     ; 10002C50 _ 51
?_0196: push    ebp                                     ; 10002C51 _ 55
        call    esi                                     ; 10002C52 _ FF. D6
?_0197: mov     eax, dword [esp+2CH]                    ; 10002C54 _ 8B. 44 24, 2C
        mov     edx, dword [esp+34H]                    ; 10002C58 _ 8B. 54 24, 34
        mov     dword [esp+3CH], edx                    ; 10002C5C _ 89. 54 24, 3C
        mov     dword [esp+40H], ebp                    ; 10002C60 _ 89. 6C 24, 40
        mov     ecx, dword [eax+0B8H]                   ; 10002C64 _ 8B. 88, 000000B8
        xor     eax, eax                                ; 10002C6A _ 33. C0
        add     ebx, -4                                 ; 10002C6C _ 83. C3, FC
        mov     dword [esp+44H], ecx                    ; 10002C6F _ 89. 4C 24, 44
        mov     dword [esp+48H], eax                    ; 10002C73 _ 89. 44 24, 48
        mov     dword [esp+4CH], eax                    ; 10002C77 _ 89. 44 24, 4C
        mov     dword [esp+50H], eax                    ; 10002C7B _ 89. 44 24, 50
        mov     dword [esp+54H], eax                    ; 10002C7F _ 89. 44 24, 54
        mov     dword [esp+24H], ebx                    ; 10002C83 _ 89. 5C 24, 24
?_0198: mov     eax, dword [esp+44H]                    ; 10002C87 _ 8B. 44 24, 44
        lea     edx, [esp+58H]                          ; 10002C8B _ 8D. 54 24, 58
        push    28                                      ; 10002C8F _ 6A, 1C
        push    edx                                     ; 10002C91 _ 52
        push    eax                                     ; 10002C92 _ 50
        call    near [imp_VirtualQuery]                 ; 10002C93 _ FF. 15, 10024018(d)
        mov     ecx, dword [esp+6CH]                    ; 10002C99 _ 8B. 4C 24, 6C
        push    ecx                                     ; 10002C9D _ 51
        call    ?_0233                                  ; 10002C9E _ E8, 000004CD
        add     esp, 4                                  ; 10002CA3 _ 83. C4, 04
        test    al, al                                  ; 10002CA6 _ 84. C0
        je      ?_0203                                  ; 10002CA8 _ 0F 84, 00000083
        cmp     dword [esp+68H], 4096                   ; 10002CAE _ 81. 7C 24, 68, 00001000
        jnz     ?_0203                                  ; 10002CB6 _ 75, 79
        mov     edx, dword [esp+2CH]                    ; 10002CB8 _ 8B. 54 24, 2C
        mov     eax, dword [esp+44H]                    ; 10002CBC _ 8B. 44 24, 44
        cmp     eax, dword [edx+0B8H]                   ; 10002CC0 _ 3B. 82, 000000B8
        jz      ?_0202                                  ; 10002CC6 _ 74, 54
        mov     edi, 7                                  ; 10002CC8 _ BF, 00000007
        lea     ebx, [esp+90H]                          ; 10002CCD _ 8D. 9C 24, 00000090
        jmp     ?_0200                                  ; 10002CD4 _ EB, 04

?_0199: mov     eax, dword [esp+44H]                    ; 10002CD6 _ 8B. 44 24, 44
?_0200: push    0                                       ; 10002CDA _ 6A, 00
        push    edi                                     ; 10002CDC _ 57
        sub     eax, edi                                ; 10002CDD _ 2B. C7
        push    ebx                                     ; 10002CDF _ 53
        push    eax                                     ; 10002CE0 _ 50
        mov     eax, dword [esp+48H]                    ; 10002CE1 _ 8B. 44 24, 48
        push    eax                                     ; 10002CE5 _ 50
        call    near [imp_ReadProcessMemory]            ; 10002CE6 _ FF. 15, 10024014(d)
        test    eax, eax                                ; 10002CEC _ 85. C0
        jnz     ?_0201                                  ; 10002CEE _ 75, 06
        dec     edi                                     ; 10002CF0 _ 4F
        inc     ebx                                     ; 10002CF1 _ 43
        test    edi, edi                                ; 10002CF2 _ 85. FF
        jg      ?_0199                                  ; 10002CF4 _ 7F, E0
?_0201: mov     edx, dword [esp+44H]                    ; 10002CF6 _ 8B. 54 24, 44
        lea     ecx, [esp+48H]                          ; 10002CFA _ 8D. 4C 24, 48
        push    ecx                                     ; 10002CFE _ 51
        push    edx                                     ; 10002CFF _ 52
        lea     eax, [esp+9FH]                          ; 10002D00 _ 8D. 84 24, 0000009F
        push    edi                                     ; 10002D07 _ 57
        push    eax                                     ; 10002D08 _ 50
        call    ?_0240                                  ; 10002D09 _ E8, 00000552
        add     esp, 16                                 ; 10002D0E _ 83. C4, 10
        test    al, al                                  ; 10002D11 _ 84. C0
        seta    al                                      ; 10002D13 _ 0F 97. C0
        and     al, 01H                                 ; 10002D16 _ 24, 01
        test    al, al                                  ; 10002D18 _ 84. C0
        jz      ?_0203                                  ; 10002D1A _ 74, 15
?_0202: lea     ecx, [esp+3CH]                          ; 10002D1C _ 8D. 4C 24, 3C
        push    ecx                                     ; 10002D20 _ 51
        call    ?_0218                                  ; 10002D21 _ E8, 0000029A
        add     esp, 4                                  ; 10002D26 _ 83. C4, 04
        test    al, al                                  ; 10002D29 _ 84. C0
        jz      ?_0203                                  ; 10002D2B _ 74, 04
        dec     dword [esp+28H]                         ; 10002D2D _ FF. 4C 24, 28
?_0203: mov     ecx, dword [esp+24H]                    ; 10002D31 _ 8B. 4C 24, 24
        mov     eax, dword [esp+28H]                    ; 10002D35 _ 8B. 44 24, 28
        add     ecx, 4                                  ; 10002D39 _ 83. C1, 04
        test    eax, eax                                ; 10002D3C _ 85. C0
        mov     dword [esp+24H], ecx                    ; 10002D3E _ 89. 4C 24, 24
        jle     ?_0204                                  ; 10002D42 _ 7E, 1F
        push    0                                       ; 10002D44 _ 6A, 00
        lea     edx, [esp+48H]                          ; 10002D46 _ 8D. 54 24, 48
        push    4                                       ; 10002D4A _ 6A, 04
        mov     eax, ecx                                ; 10002D4C _ 8B. C1
        mov     ecx, dword [esp+40H]                    ; 10002D4E _ 8B. 4C 24, 40
        push    edx                                     ; 10002D52 _ 52
        push    eax                                     ; 10002D53 _ 50
        push    ecx                                     ; 10002D54 _ 51
        call    near [imp_ReadProcessMemory]            ; 10002D55 _ FF. 15, 10024014(d)
        test    eax, eax                                ; 10002D5B _ 85. C0
        jne     ?_0198                                  ; 10002D5D _ 0F 85, FFFFFF24
?_0204: mov     eax, dword [?_5511]                     ; 10002D63 _ A1, 10034614(d)
        test    eax, eax                                ; 10002D68 _ 85. C0
        jz      ?_0205                                  ; 10002D6A _ 74, 0B
        push    ebp                                     ; 10002D6C _ 55
        call    eax                                     ; 10002D6D _ FF. D0
        add     esp, 4                                  ; 10002D6F _ 83. C4, 04
        mov     byte [esp+1AH], 1                       ; 10002D72 _ C6. 44 24, 1A, 01
?_0205: lea     edx, [esp+10H]                          ; 10002D77 _ 8D. 54 24, 10
        push    0                                       ; 10002D7B _ 6A, 00
        push    edx                                     ; 10002D7D _ 52
        lea     eax, [esp+1EH]                          ; 10002D7E _ 8D. 44 24, 1E
        push    1                                       ; 10002D82 _ 6A, 01
        push    eax                                     ; 10002D84 _ 50
        push    ebp                                     ; 10002D85 _ 55
        call    esi                                     ; 10002D86 _ FF. D6
        push    ebp                                     ; 10002D88 _ 55
        call    near [imp_CloseHandle]                  ; 10002D89 _ FF. 15, 10024010(d)
        push    32768                                   ; 10002D8F _ 68, 00008000
        push    0                                       ; 10002D94 _ 6A, 00
        mov     ebx, dword [esp+3CH]                    ; 10002D96 _ 8B. 5C 24, 3C
        mov     ebp, dword [esp+38H]                    ; 10002D9A _ 8B. 6C 24, 38
        push    ebx                                     ; 10002D9E _ 53
        call    near [imp_VirtualFree]                  ; 10002D9F _ FF. 15, 1002400C(d)
        push    ebp                                     ; 10002DA5 _ 55
        call    near [imp_CloseHandle]                  ; 10002DA6 _ FF. 15, 10024010(d)
        pop     edi                                     ; 10002DAC _ 5F
        pop     ebx                                     ; 10002DAD _ 5B
        jmp     ?_0212                                  ; 10002DAE _ E9, 000000B3

?_0206: push    1                                       ; 10002DB3 _ 6A, 01
        push    ?_5070                                  ; 10002DB5 _ 68, 10027164(d)
        push    527                                     ; 10002DBA _ 68, 0000020F
        push    ?_5069                                  ; 10002DBF _ 68, 10027144(d)
        call    ?_0267                                  ; 10002DC4 _ E8, 00000877
        mov     ebp, dword [esp+40H]                    ; 10002DC9 _ 8B. 6C 24, 40
        add     esp, 16                                 ; 10002DCD _ 83. C4, 10
        push    32768                                   ; 10002DD0 _ 68, 00008000
        push    0                                       ; 10002DD5 _ 6A, 00
        push    ebx                                     ; 10002DD7 _ 53
        call    near [imp_VirtualFree]                  ; 10002DD8 _ FF. 15, 1002400C(d)
        push    ebp                                     ; 10002DDE _ 55
        call    near [imp_CloseHandle]                  ; 10002DDF _ FF. 15, 10024010(d)
        pop     edi                                     ; 10002DE5 _ 5F
        pop     ebx                                     ; 10002DE6 _ 5B
        jmp     ?_0212                                  ; 10002DE7 _ EB, 7D

?_0207: push    1                                       ; 10002DE9 _ 6A, 01
        push    ?_5068                                  ; 10002DEB _ 68, 1002712C(d)
        push    531                                     ; 10002DF0 _ 68, 00000213
        push    ?_5069                                  ; 10002DF5 _ 68, 10027144(d)
        call    ?_0267                                  ; 10002DFA _ E8, 00000841
        add     esp, 16                                 ; 10002DFF _ 83. C4, 10
        push    32768                                   ; 10002E02 _ 68, 00008000
        push    0                                       ; 10002E07 _ 6A, 00
        push    ebx                                     ; 10002E09 _ 53
        call    near [imp_VirtualFree]                  ; 10002E0A _ FF. 15, 1002400C(d)
        push    ebp                                     ; 10002E10 _ 55
        call    near [imp_CloseHandle]                  ; 10002E11 _ FF. 15, 10024010(d)
        pop     edi                                     ; 10002E17 _ 5F
        pop     ebx                                     ; 10002E18 _ 5B
        jmp     ?_0212                                  ; 10002E19 _ EB, 4B

?_0208: push    1                                       ; 10002E1B _ 6A, 01
        push    ?_5067                                  ; 10002E1D _ 68, 10027120(d)
        push    536                                     ; 10002E22 _ 68, 00000218
        jmp     ?_0210                                  ; 10002E27 _ EB, 0C

?_0209: push    1                                       ; 10002E29 _ 6A, 01
        push    ?_5066                                  ; 10002E2B _ 68, 10027110(d)
        push    539                                     ; 10002E30 _ 68, 0000021B
?_0210: push    ?_5069                                  ; 10002E35 _ 68, 10027144(d)
        call    ?_0267                                  ; 10002E3A _ E8, 00000801
        add     esp, 16                                 ; 10002E3F _ 83. C4, 10
        push    ebp                                     ; 10002E42 _ 55
        call    near [imp_CloseHandle]                  ; 10002E43 _ FF. 15, 10024010(d)
        pop     edi                                     ; 10002E49 _ 5F
        pop     ebx                                     ; 10002E4A _ 5B
        jmp     ?_0212                                  ; 10002E4B _ EB, 19

?_0211: push    1                                       ; 10002E4D _ 6A, 01
        push    ?_5065                                  ; 10002E4F _ 68, 10027104(d)
        push    544                                     ; 10002E54 _ 68, 00000220
        push    ?_5069                                  ; 10002E59 _ 68, 10027144(d)
        call    ?_0267                                  ; 10002E5E _ E8, 000007DD
        add     esp, 16                                 ; 10002E63 _ 83. C4, 10
?_0212: mov     eax, dword [?_5511]                     ; 10002E66 _ A1, 10034614(d)
        pop     esi                                     ; 10002E6B _ 5E
        test    eax, eax                                ; 10002E6C _ 85. C0
        pop     ebp                                     ; 10002E6E _ 5D
        jz      ?_0213                                  ; 10002E6F _ 74, 0F
        mov     cl, byte [esp+0AH]                      ; 10002E71 _ 8A. 4C 24, 0A
        test    cl, cl                                  ; 10002E75 _ 84. C9
        jnz     ?_0213                                  ; 10002E77 _ 75, 07
        push    -1                                      ; 10002E79 _ 6A, FF
        call    eax                                     ; 10002E7B _ FF. D0
        add     esp, 4                                  ; 10002E7D _ 83. C4, 04
?_0213: mov     ecx, dword [esp+284H]                   ; 10002E80 _ 8B. 8C 24, 00000284
        push    ecx                                     ; 10002E87 _ 51
        call    near [imp_UnhandledExceptionFilter]     ; 10002E88 _ FF. 15, 10024008(d)
        mov     eax, 1                                  ; 10002E8E _ B8, 00000001
        add     esp, 640                                ; 10002E93 _ 81. C4, 00000280
        ret     4                                       ; 10002E99 _ C2, 0004

?_0214:                                                 ; switch/case jump table
        dd ?_0182                                       ; 10002E9C _ 10002B61 (d)
        dd ?_0181                                       ; 10002EA0 _ 10002B51 (d)
        dd ?_0179                                       ; 10002EA4 _ 10002B31 (d)
        dd ?_0180                                       ; 10002EA8 _ 10002B41 (d)
        dd ?_0197                                       ; 10002EAC _ 10002C54 (d)

?_0215: db 00H, 01H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EB0 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EB8 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EC0 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EC8 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002ED0 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002ED8 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EE0 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EE8 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EF0 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002EF8 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002F00 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 04H       ; 10002F08 _ ........
        db 04H, 04H, 04H, 04H, 04H, 04H, 04H, 02H       ; 10002F10 _ ........
        db 03H, 8DH, 49H, 00H                           ; 10002F18 _ ..I.

?_0216:                                                 ; switch/case jump table
        dd ?_0186                                       ; 10002F1C _ 10002BB2 (d)
        dd ?_0187                                       ; 10002F20 _ 10002BC2 (d)
        dd ?_0188                                       ; 10002F24 _ 10002BD2 (d)
        dd ?_0189                                       ; 10002F28 _ 10002BE2 (d)
        dd ?_0190                                       ; 10002F2C _ 10002BF2 (d)
        dd ?_0191                                       ; 10002F30 _ 10002C02 (d)
        dd ?_0192                                       ; 10002F34 _ 10002C12 (d)
        dd ?_0193                                       ; 10002F38 _ 10002C22 (d)
        dd ?_0194                                       ; 10002F3C _ 10002C32 (d)
        dd ?_0197                                       ; 10002F40 _ 10002C54 (d)

?_0217: db 00H, 01H, 02H, 03H, 04H, 05H, 06H, 07H       ; 10002F44 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F4C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F54 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F5C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F64 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F6C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F74 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F7C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F84 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F8C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F94 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002F9C _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 09H, 09H       ; 10002FA4 _ ........
        db 09H, 09H, 09H, 09H, 09H, 09H, 08H, 90H       ; 10002FAC _ ........
        db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10002FB4 _ ........
        db 90H, 90H, 90H, 90H                           ; 10002FBC _ ....
?_0218: sub     esp, 28                                 ; 10002FC0 _ 83. EC, 1C
        push    ebx                                     ; 10002FC3 _ 53
        push    ebp                                     ; 10002FC4 _ 55
        push    esi                                     ; 10002FC5 _ 56
        mov     esi, dword [esp+2CH]                    ; 10002FC6 _ 8B. 74 24, 2C
        push    edi                                     ; 10002FCA _ 57
        mov     edx, dword [esi]                        ; 10002FCB _ 8B. 16
        mov     eax, dword [edx+0CH]                    ; 10002FCD _ 8B. 42, 0C
        mov     ecx, dword [edx+8H]                     ; 10002FD0 _ 8B. 4A, 08
        lea     edi, [eax+edx+10H]                      ; 10002FD3 _ 8D. 7C 10, 10
        xor     eax, eax                                ; 10002FD7 _ 33. C0
        test    ecx, ecx                                ; 10002FD9 _ 85. C9
        jbe     ?_0221                                  ; 10002FDB _ 76, 18
        mov     ebx, dword [esi+8H]                     ; 10002FDD _ 8B. 5E, 08
?_0219: cmp     ebx, dword [edi+4H]                     ; 10002FE0 _ 3B. 5F, 04
        jc      ?_0220                                  ; 10002FE3 _ 72, 05
        cmp     ebx, dword [edi+8H]                     ; 10002FE5 _ 3B. 5F, 08
        jbe     ?_0222                                  ; 10002FE8 _ 76, 15
?_0220: mov     ebp, dword [edi]                        ; 10002FEA _ 8B. 2F
        inc     eax                                     ; 10002FEC _ 40
        cmp     eax, ecx                                ; 10002FED _ 3B. C1
        lea     edi, [edi+ebp+10H]                      ; 10002FEF _ 8D. 7C 2F, 10
        jc      ?_0219                                  ; 10002FF3 _ 72, EB
?_0221: pop     edi                                     ; 10002FF5 _ 5F
        pop     esi                                     ; 10002FF6 _ 5E
        pop     ebp                                     ; 10002FF7 _ 5D
        xor     al, al                                  ; 10002FF8 _ 32. C0
        pop     ebx                                     ; 10002FFA _ 5B
        add     esp, 28                                 ; 10002FFB _ 83. C4, 1C
        ret                                             ; 10002FFE _ C3
