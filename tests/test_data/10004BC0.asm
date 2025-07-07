; ---- 10004BC0 ----
?_0433: ; Local function
        sub     esp, 16                                 ; 10004BC0 _ 83. EC, 10
        push    ebx                                     ; 10004BC3 _ 53
        push    ebp                                     ; 10004BC4 _ 55
        push    esi                                     ; 10004BC5 _ 56
        mov     esi, dword [esp+20H]                    ; 10004BC6 _ 8B. 74 24, 20
        push    edi                                     ; 10004BCA _ 57
        mov     edi, dword [esp+28H]                    ; 10004BCB _ 8B. 7C 24, 28
        mov     edx, dword [esi+20H]                    ; 10004BCF _ 8B. 56, 20
        mov     eax, dword [esi+4H]                     ; 10004BD2 _ 8B. 46, 04
        mov     ecx, dword [edi+4H]                     ; 10004BD5 _ 8B. 4F, 04
        mov     ebp, dword [edi]                        ; 10004BD8 _ 8B. 2F
        mov     ebx, dword [esi+1CH]                    ; 10004BDA _ 8B. 5E, 1C
        mov     dword [esp+28H], ecx                    ; 10004BDD _ 89. 4C 24, 28
        mov     ecx, dword [esi+30H]                    ; 10004BE1 _ 8B. 4E, 30
        mov     dword [esp+24H], edx                    ; 10004BE4 _ 89. 54 24, 24
        mov     edx, dword [esi+34H]                    ; 10004BE8 _ 8B. 56, 34
        mov     dword [esp+10H], eax                    ; 10004BEB _ 89. 44 24, 10
        cmp     edx, ecx                                ; 10004BEF _ 3B. D1
        jnc     ?_0434                                  ; 10004BF1 _ 73, 05
        sub     ecx, edx                                ; 10004BF3 _ 2B. CA
        dec     ecx                                     ; 10004BF5 _ 49
        jmp     ?_0435                                  ; 10004BF6 _ EB, 05

?_0434: mov     ecx, dword [esi+2CH]                    ; 10004BF8 _ 8B. 4E, 2C
        sub     ecx, edx                                ; 10004BFB _ 2B. CA
?_0435: mov     dword [esp+14H], ecx                    ; 10004BFD _ 89. 4C 24, 14
?_0436: mov     ecx, dword [eax]                        ; 10004C01 _ 8B. 08
        cmp     ecx, 9                                  ; 10004C03 _ 83. F9, 09
        ja      ?_0495                                  ; 10004C06 _ 0F 87, 000006FB
        jmp     near [?_0496+ecx*4]                     ; 10004C0C _ FF. 24 8D, 10005340(d)

?_0437: cmp     dword [esp+14H], 258                    ; 10004C13 _ 81. 7C 24, 14, 00000102
        jc      ?_0440                                  ; 10004C1B _ 0F 82, 0000009C
        cmp     dword [esp+28H], 10                     ; 10004C21 _ 83. 7C 24, 28, 0A
        jc      ?_0440                                  ; 10004C26 _ 0F 82, 00000091
        mov     eax, dword [esp+24H]                    ; 10004C2C _ 8B. 44 24, 24
        mov     ecx, dword [esp+28H]                    ; 10004C30 _ 8B. 4C 24, 28
        mov     dword [esi+20H], eax                    ; 10004C34 _ 89. 46, 20
        mov     dword [esi+1CH], ebx                    ; 10004C37 _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 10004C3A _ 8B. 1F
        mov     eax, ebp                                ; 10004C3C _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 10004C3E _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 10004C41 _ 8B. 4F, 08
        sub     eax, ebx                                ; 10004C44 _ 2B. C3
        mov     dword [edi], ebp                        ; 10004C46 _ 89. 2F
        add     ecx, eax                                ; 10004C48 _ 03. C8
        mov     eax, dword [esp+10H]                    ; 10004C4A _ 8B. 44 24, 10
        mov     dword [edi+8H], ecx                     ; 10004C4E _ 89. 4F, 08
        mov     dword [esi+34H], edx                    ; 10004C51 _ 89. 56, 34
        mov     ecx, dword [eax+18H]                    ; 10004C54 _ 8B. 48, 18
        mov     edx, dword [eax+14H]                    ; 10004C57 _ 8B. 50, 14
        push    edi                                     ; 10004C5A _ 57
        push    esi                                     ; 10004C5B _ 56
        push    ecx                                     ; 10004C5C _ 51
        push    edx                                     ; 10004C5D _ 52
        xor     ecx, ecx                                ; 10004C5E _ 33. C9
        xor     edx, edx                                ; 10004C60 _ 33. D2
        mov     cl, byte [eax+11H]                      ; 10004C62 _ 8A. 48, 11
        mov     dl, byte [eax+10H]                      ; 10004C65 _ 8A. 50, 10
        push    ecx                                     ; 10004C68 _ 51
        push    edx                                     ; 10004C69 _ 52
        call    ?_0498                                  ; 10004C6A _ E8, 00000721
        mov     ecx, dword [edi+4H]                     ; 10004C6F _ 8B. 4F, 04
        mov     edx, dword [esi+20H]                    ; 10004C72 _ 8B. 56, 20
        mov     ebp, dword [edi]                        ; 10004C75 _ 8B. 2F
        mov     ebx, dword [esi+1CH]                    ; 10004C77 _ 8B. 5E, 1C
        mov     dword [esp+40H], ecx                    ; 10004C7A _ 89. 4C 24, 40
        mov     ecx, dword [esi+30H]                    ; 10004C7E _ 8B. 4E, 30
        mov     dword [esp+3CH], edx                    ; 10004C81 _ 89. 54 24, 3C
        mov     edx, dword [esi+34H]                    ; 10004C85 _ 8B. 56, 34
        add     esp, 24                                 ; 10004C88 _ 83. C4, 18
        cmp     edx, ecx                                ; 10004C8B _ 3B. D1
        mov     dword [esp+2CH], eax                    ; 10004C8D _ 89. 44 24, 2C
        jnc     ?_0438                                  ; 10004C91 _ 73, 05
        sub     ecx, edx                                ; 10004C93 _ 2B. CA
        dec     ecx                                     ; 10004C95 _ 49
        jmp     ?_0439                                  ; 10004C96 _ EB, 05

?_0438: mov     ecx, dword [esi+2CH]                    ; 10004C98 _ 8B. 4E, 2C
        sub     ecx, edx                                ; 10004C9B _ 2B. CA
?_0439: test    eax, eax                                ; 10004C9D _ 85. C0
        mov     dword [esp+14H], ecx                    ; 10004C9F _ 89. 4C 24, 14
        jz      ?_0440                                  ; 10004CA3 _ 74, 18
        mov     ecx, dword [esp+10H]                    ; 10004CA5 _ 8B. 4C 24, 10
        dec     eax                                     ; 10004CA9 _ 48
        neg     eax                                     ; 10004CAA _ F7. D8
        sbb     eax, eax                                ; 10004CAC _ 1B. C0
        and     eax, 02H                                ; 10004CAE _ 83. E0, 02
        add     eax, 7                                  ; 10004CB1 _ 83. C0, 07
        mov     dword [ecx], eax                        ; 10004CB4 _ 89. 01
        mov     eax, ecx                                ; 10004CB6 _ 8B. C1
        jmp     ?_0436                                  ; 10004CB8 _ E9, FFFFFF44

?_0440: mov     eax, dword [esp+10H]                    ; 10004CBD _ 8B. 44 24, 10
        xor     ecx, ecx                                ; 10004CC1 _ 33. C9
        mov     cl, byte [eax+10H]                      ; 10004CC3 _ 8A. 48, 10
        mov     dword [eax], 1                          ; 10004CC6 _ C7. 00, 00000001
        mov     dword [eax+0CH], ecx                    ; 10004CCC _ 89. 48, 0C
        mov     ecx, dword [eax+14H]                    ; 10004CCF _ 8B. 48, 14
        mov     dword [eax+8H], ecx                     ; 10004CD2 _ 89. 48, 08
?_0441: mov     eax, dword [eax+0CH]                    ; 10004CD5 _ 8B. 40, 0C
        cmp     ebx, eax                                ; 10004CD8 _ 3B. D8
        mov     dword [esp+18H], eax                    ; 10004CDA _ 89. 44 24, 18
        jnc     ?_0443                                  ; 10004CDE _ 73, 38
?_0442: mov     eax, dword [esp+28H]                    ; 10004CE0 _ 8B. 44 24, 28
        test    eax, eax                                ; 10004CE4 _ 85. C0
        je      ?_0486                                  ; 10004CE6 _ 0F 84, 0000047D
        dec     eax                                     ; 10004CEC _ 48
        mov     ecx, ebx                                ; 10004CED _ 8B. CB
        mov     dword [esp+28H], eax                    ; 10004CEF _ 89. 44 24, 28
        xor     eax, eax                                ; 10004CF3 _ 33. C0
        mov     al, byte [ebp]                          ; 10004CF5 _ 8A. 45, 00
        add     ebx, 8                                  ; 10004CF8 _ 83. C3, 08
        shl     eax, cl                                 ; 10004CFB _ D3. E0
        mov     ecx, dword [esp+24H]                    ; 10004CFD _ 8B. 4C 24, 24
        mov     dword [esp+2CH], 0                      ; 10004D01 _ C7. 44 24, 2C, 00000000
        or      ecx, eax                                ; 10004D09 _ 0B. C8
        mov     eax, dword [esp+18H]                    ; 10004D0B _ 8B. 44 24, 18
        inc     ebp                                     ; 10004D0F _ 45
        cmp     ebx, eax                                ; 10004D10 _ 3B. D8
        mov     dword [esp+24H], ecx                    ; 10004D12 _ 89. 4C 24, 24
        jc      ?_0442                                  ; 10004D16 _ 72, C8
?_0443: mov     ecx, dword [?_5137+eax*4]               ; 10004D18 _ 8B. 0C 85, 100287A0(d)
        mov     eax, dword [esp+24H]                    ; 10004D1F _ 8B. 44 24, 24
        and     ecx, eax                                ; 10004D23 _ 23. C8
        mov     eax, dword [esp+10H]                    ; 10004D25 _ 8B. 44 24, 10
        mov     eax, dword [eax+8H]                     ; 10004D29 _ 8B. 40, 08
        lea     eax, [eax+ecx*8]                        ; 10004D2C _ 8D. 04 C8
        xor     ecx, ecx                                ; 10004D2F _ 33. C9
        mov     dword [esp+18H], eax                    ; 10004D31 _ 89. 44 24, 18
        mov     cl, byte [eax+1H]                       ; 10004D35 _ 8A. 48, 01
        mov     eax, dword [esp+24H]                    ; 10004D38 _ 8B. 44 24, 24
        shr     eax, cl                                 ; 10004D3C _ D3. E8
        mov     dword [esp+1CH], ecx                    ; 10004D3E _ 89. 4C 24, 1C
        mov     dword [esp+24H], eax                    ; 10004D42 _ 89. 44 24, 24
        mov     eax, ecx                                ; 10004D46 _ 8B. C1
        sub     ebx, eax                                ; 10004D48 _ 2B. D8
        mov     eax, dword [esp+18H]                    ; 10004D4A _ 8B. 44 24, 18
        xor     ecx, ecx                                ; 10004D4E _ 33. C9
        mov     cl, byte [eax]                          ; 10004D50 _ 8A. 08
        test    ecx, ecx                                ; 10004D52 _ 85. C9
        jnz     ?_0444                                  ; 10004D54 _ 75, 15
        mov     ecx, dword [eax+4H]                     ; 10004D56 _ 8B. 48, 04
        mov     eax, dword [esp+10H]                    ; 10004D59 _ 8B. 44 24, 10
        mov     dword [eax+8H], ecx                     ; 10004D5D _ 89. 48, 08
        mov     dword [eax], 6                          ; 10004D60 _ C7. 00, 00000006
        jmp     ?_0436                                  ; 10004D66 _ E9, FFFFFE96

?_0444: test    cl, 10H                                 ; 10004D6B _ F6. C1, 10
        jz      ?_0445                                  ; 10004D6E _ 74, 1F
        mov     eax, dword [esp+10H]                    ; 10004D70 _ 8B. 44 24, 10
        and     ecx, 0FH                                ; 10004D74 _ 83. E1, 0F
        mov     dword [eax+8H], ecx                     ; 10004D77 _ 89. 48, 08
        mov     ecx, dword [esp+18H]                    ; 10004D7A _ 8B. 4C 24, 18
        mov     ecx, dword [ecx+4H]                     ; 10004D7E _ 8B. 49, 04
        mov     dword [eax], 2                          ; 10004D81 _ C7. 00, 00000002
        mov     dword [eax+4H], ecx                     ; 10004D87 _ 89. 48, 04
        jmp     ?_0436                                  ; 10004D8A _ E9, FFFFFE72

?_0445: test    cl, 40H                                 ; 10004D8F _ F6. C1, 40
        jnz     ?_0447                                  ; 10004D92 _ 75, 1D
?_0446: mov     eax, dword [esp+10H]                    ; 10004D94 _ 8B. 44 24, 10
        mov     dword [eax+0CH], ecx                    ; 10004D98 _ 89. 48, 0C
        mov     eax, dword [esp+18H]                    ; 10004D9B _ 8B. 44 24, 18
        mov     ecx, dword [eax+4H]                     ; 10004D9F _ 8B. 48, 04
        lea     ecx, [eax+ecx*8]                        ; 10004DA2 _ 8D. 0C C8
        mov     eax, dword [esp+10H]                    ; 10004DA5 _ 8B. 44 24, 10
        mov     dword [eax+8H], ecx                     ; 10004DA9 _ 89. 48, 08
        jmp     ?_0436                                  ; 10004DAC _ E9, FFFFFE50

?_0447: mov     eax, dword [esp+10H]                    ; 10004DB1 _ 8B. 44 24, 10
        test    cl, 20H                                 ; 10004DB5 _ F6. C1, 20
        je      ?_0485                                  ; 10004DB8 _ 0F 84, 0000039C
        mov     dword [eax], 7                          ; 10004DBE _ C7. 00, 00000007
        jmp     ?_0436                                  ; 10004DC4 _ E9, FFFFFE38

?_0448: mov     eax, dword [eax+8H]                     ; 10004DC9 _ 8B. 40, 08
        cmp     ebx, eax                                ; 10004DCC _ 3B. D8
        mov     dword [esp+18H], eax                    ; 10004DCE _ 89. 44 24, 18
        jnc     ?_0450                                  ; 10004DD2 _ 73, 38
?_0449: mov     eax, dword [esp+28H]                    ; 10004DD4 _ 8B. 44 24, 28
        test    eax, eax                                ; 10004DD8 _ 85. C0
        je      ?_0486                                  ; 10004DDA _ 0F 84, 00000389
        dec     eax                                     ; 10004DE0 _ 48
        mov     ecx, ebx                                ; 10004DE1 _ 8B. CB
        mov     dword [esp+28H], eax                    ; 10004DE3 _ 89. 44 24, 28
        xor     eax, eax                                ; 10004DE7 _ 33. C0
        mov     al, byte [ebp]                          ; 10004DE9 _ 8A. 45, 00
        add     ebx, 8                                  ; 10004DEC _ 83. C3, 08
        shl     eax, cl                                 ; 10004DEF _ D3. E0
        mov     ecx, dword [esp+24H]                    ; 10004DF1 _ 8B. 4C 24, 24
        mov     dword [esp+2CH], 0                      ; 10004DF5 _ C7. 44 24, 2C, 00000000
        or      ecx, eax                                ; 10004DFD _ 0B. C8
        mov     eax, dword [esp+18H]                    ; 10004DFF _ 8B. 44 24, 18
        inc     ebp                                     ; 10004E03 _ 45
        cmp     ebx, eax                                ; 10004E04 _ 3B. D8
        mov     dword [esp+24H], ecx                    ; 10004E06 _ 89. 4C 24, 24
        jc      ?_0449                                  ; 10004E0A _ 72, C8
?_0450: mov     ecx, dword [?_5137+eax*4]               ; 10004E0C _ 8B. 0C 85, 100287A0(d)
        mov     eax, dword [esp+24H]                    ; 10004E13 _ 8B. 44 24, 24
        and     ecx, eax                                ; 10004E17 _ 23. C8
        mov     eax, dword [esp+10H]                    ; 10004E19 _ 8B. 44 24, 10
        add     dword [eax+4H], ecx                     ; 10004E1D _ 01. 48, 04
        mov     ecx, dword [esp+18H]                    ; 10004E20 _ 8B. 4C 24, 18
        mov     eax, dword [esp+24H]                    ; 10004E24 _ 8B. 44 24, 24
        shr     eax, cl                                 ; 10004E28 _ D3. E8
        mov     dword [esp+24H], eax                    ; 10004E2A _ 89. 44 24, 24
        mov     eax, ecx                                ; 10004E2E _ 8B. C1
        sub     ebx, eax                                ; 10004E30 _ 2B. D8
        mov     eax, dword [esp+10H]                    ; 10004E32 _ 8B. 44 24, 10
        xor     ecx, ecx                                ; 10004E36 _ 33. C9
        mov     cl, byte [eax+11H]                      ; 10004E38 _ 8A. 48, 11
        mov     dword [eax], 3                          ; 10004E3B _ C7. 00, 00000003
        mov     dword [eax+0CH], ecx                    ; 10004E41 _ 89. 48, 0C
        mov     ecx, dword [eax+18H]                    ; 10004E44 _ 8B. 48, 18
        mov     dword [eax+8H], ecx                     ; 10004E47 _ 89. 48, 08
?_0451: mov     eax, dword [eax+0CH]                    ; 10004E4A _ 8B. 40, 0C
        cmp     ebx, eax                                ; 10004E4D _ 3B. D8
        mov     dword [esp+18H], eax                    ; 10004E4F _ 89. 44 24, 18
        jnc     ?_0453                                  ; 10004E53 _ 73, 38
?_0452: mov     eax, dword [esp+28H]                    ; 10004E55 _ 8B. 44 24, 28
        test    eax, eax                                ; 10004E59 _ 85. C0
        je      ?_0486                                  ; 10004E5B _ 0F 84, 00000308
        dec     eax                                     ; 10004E61 _ 48
        mov     ecx, ebx                                ; 10004E62 _ 8B. CB
        mov     dword [esp+28H], eax                    ; 10004E64 _ 89. 44 24, 28
        xor     eax, eax                                ; 10004E68 _ 33. C0
        mov     al, byte [ebp]                          ; 10004E6A _ 8A. 45, 00
        add     ebx, 8                                  ; 10004E6D _ 83. C3, 08
        shl     eax, cl                                 ; 10004E70 _ D3. E0
        mov     ecx, dword [esp+24H]                    ; 10004E72 _ 8B. 4C 24, 24
        mov     dword [esp+2CH], 0                      ; 10004E76 _ C7. 44 24, 2C, 00000000
        or      ecx, eax                                ; 10004E7E _ 0B. C8
        mov     eax, dword [esp+18H]                    ; 10004E80 _ 8B. 44 24, 18
        inc     ebp                                     ; 10004E84 _ 45
        cmp     ebx, eax                                ; 10004E85 _ 3B. D8
        mov     dword [esp+24H], ecx                    ; 10004E87 _ 89. 4C 24, 24
        jc      ?_0452                                  ; 10004E8B _ 72, C8
?_0453: mov     ecx, dword [?_5137+eax*4]               ; 10004E8D _ 8B. 0C 85, 100287A0(d)
        mov     eax, dword [esp+24H]                    ; 10004E94 _ 8B. 44 24, 24
        and     ecx, eax                                ; 10004E98 _ 23. C8
        mov     eax, dword [esp+10H]                    ; 10004E9A _ 8B. 44 24, 10
        mov     eax, dword [eax+8H]                     ; 10004E9E _ 8B. 40, 08
        lea     eax, [eax+ecx*8]                        ; 10004EA1 _ 8D. 04 C8
        xor     ecx, ecx                                ; 10004EA4 _ 33. C9
        mov     dword [esp+18H], eax                    ; 10004EA6 _ 89. 44 24, 18
        mov     cl, byte [eax+1H]                       ; 10004EAA _ 8A. 48, 01
        mov     eax, dword [esp+24H]                    ; 10004EAD _ 8B. 44 24, 24
        shr     eax, cl                                 ; 10004EB1 _ D3. E8
        mov     dword [esp+1CH], ecx                    ; 10004EB3 _ 89. 4C 24, 1C
        sub     ebx, ecx                                ; 10004EB7 _ 2B. D9
        xor     ecx, ecx                                ; 10004EB9 _ 33. C9
        mov     dword [esp+24H], eax                    ; 10004EBB _ 89. 44 24, 24
        mov     eax, dword [esp+18H]                    ; 10004EBF _ 8B. 44 24, 18
        mov     cl, byte [eax]                          ; 10004EC3 _ 8A. 08
        test    cl, 10H                                 ; 10004EC5 _ F6. C1, 10
        jz      ?_0454                                  ; 10004EC8 _ 74, 1F
        mov     eax, dword [esp+10H]                    ; 10004ECA _ 8B. 44 24, 10
        and     ecx, 0FH                                ; 10004ECE _ 83. E1, 0F
        mov     dword [eax+8H], ecx                     ; 10004ED1 _ 89. 48, 08
        mov     ecx, dword [esp+18H]                    ; 10004ED4 _ 8B. 4C 24, 18
        mov     ecx, dword [ecx+4H]                     ; 10004ED8 _ 8B. 49, 04
        mov     dword [eax], 4                          ; 10004EDB _ C7. 00, 00000004
        mov     dword [eax+0CH], ecx                    ; 10004EE1 _ 89. 48, 0C
        jmp     ?_0436                                  ; 10004EE4 _ E9, FFFFFD18

?_0454: test    cl, 40H                                 ; 10004EE9 _ F6. C1, 40
        jne     ?_0487                                  ; 10004EEC _ 0F 85, 000002B2
        jmp     ?_0446                                  ; 10004EF2 _ E9, FFFFFE9D

?_0455: mov     eax, dword [eax+8H]                     ; 10004EF7 _ 8B. 40, 08
        cmp     ebx, eax                                ; 10004EFA _ 3B. D8
        mov     dword [esp+18H], eax                    ; 10004EFC _ 89. 44 24, 18
        jnc     ?_0457                                  ; 10004F00 _ 73, 38
?_0456: mov     eax, dword [esp+28H]                    ; 10004F02 _ 8B. 44 24, 28
        test    eax, eax                                ; 10004F06 _ 85. C0
        je      ?_0486                                  ; 10004F08 _ 0F 84, 0000025B
        dec     eax                                     ; 10004F0E _ 48
        mov     ecx, ebx                                ; 10004F0F _ 8B. CB
        mov     dword [esp+28H], eax                    ; 10004F11 _ 89. 44 24, 28
        xor     eax, eax                                ; 10004F15 _ 33. C0
        mov     al, byte [ebp]                          ; 10004F17 _ 8A. 45, 00
        add     ebx, 8                                  ; 10004F1A _ 83. C3, 08
        shl     eax, cl                                 ; 10004F1D _ D3. E0
        mov     ecx, dword [esp+24H]                    ; 10004F1F _ 8B. 4C 24, 24
        mov     dword [esp+2CH], 0                      ; 10004F23 _ C7. 44 24, 2C, 00000000
        or      ecx, eax                                ; 10004F2B _ 0B. C8
        mov     eax, dword [esp+18H]                    ; 10004F2D _ 8B. 44 24, 18
        inc     ebp                                     ; 10004F31 _ 45
        cmp     ebx, eax                                ; 10004F32 _ 3B. D8
        mov     dword [esp+24H], ecx                    ; 10004F34 _ 89. 4C 24, 24
        jc      ?_0456                                  ; 10004F38 _ 72, C8
?_0457: mov     ecx, dword [?_5137+eax*4]               ; 10004F3A _ 8B. 0C 85, 100287A0(d)
        mov     eax, dword [esp+24H]                    ; 10004F41 _ 8B. 44 24, 24
        and     ecx, eax                                ; 10004F45 _ 23. C8
        mov     eax, dword [esp+10H]                    ; 10004F47 _ 8B. 44 24, 10
        add     dword [eax+0CH], ecx                    ; 10004F4B _ 01. 48, 0C
        mov     ecx, dword [esp+18H]                    ; 10004F4E _ 8B. 4C 24, 18
        mov     eax, dword [esp+24H]                    ; 10004F52 _ 8B. 44 24, 24
        shr     eax, cl                                 ; 10004F56 _ D3. E8
        mov     dword [esp+24H], eax                    ; 10004F58 _ 89. 44 24, 24
        mov     eax, ecx                                ; 10004F5C _ 8B. C1
        sub     ebx, eax                                ; 10004F5E _ 2B. D8
        mov     eax, dword [esp+10H]                    ; 10004F60 _ 8B. 44 24, 10
        mov     dword [eax], 5                          ; 10004F64 _ C7. 00, 00000005
?_0458: mov     eax, dword [esi+28H]                    ; 10004F6A _ 8B. 46, 28
        mov     ecx, edx                                ; 10004F6D _ 8B. CA
        sub     ecx, eax                                ; 10004F6F _ 2B. C8
        mov     eax, dword [esp+10H]                    ; 10004F71 _ 8B. 44 24, 10
        mov     eax, dword [eax+0CH]                    ; 10004F75 _ 8B. 40, 0C
        cmp     ecx, eax                                ; 10004F78 _ 3B. C8
        jnc     ?_0459                                  ; 10004F7A _ 73, 17
        mov     eax, dword [esi+2CH]                    ; 10004F7C _ 8B. 46, 2C
        mov     ecx, dword [esi+28H]                    ; 10004F7F _ 8B. 4E, 28
        sub     eax, ecx                                ; 10004F82 _ 2B. C1
        mov     ecx, dword [esp+10H]                    ; 10004F84 _ 8B. 4C 24, 10
        sub     eax, dword [ecx+0CH]                    ; 10004F88 _ 2B. 41, 0C
        add     eax, edx                                ; 10004F8B _ 03. C2
        mov     dword [esp+1CH], eax                    ; 10004F8D _ 89. 44 24, 1C
        jmp     ?_0460                                  ; 10004F91 _ EB, 08

?_0459: mov     ecx, edx                                ; 10004F93 _ 8B. CA
        sub     ecx, eax                                ; 10004F95 _ 2B. C8
        mov     dword [esp+1CH], ecx                    ; 10004F97 _ 89. 4C 24, 1C
?_0460: mov     eax, dword [esp+10H]                    ; 10004F9B _ 8B. 44 24, 10
        mov     ecx, dword [eax+4H]                     ; 10004F9F _ 8B. 48, 04
        test    ecx, ecx                                ; 10004FA2 _ 85. C9
        je      ?_0473                                  ; 10004FA4 _ 0F 84, 000000E2
?_0461: mov     ecx, dword [esp+14H]                    ; 10004FAA _ 8B. 4C 24, 14
        test    ecx, ecx                                ; 10004FAE _ 85. C9
        jne     ?_0471                                  ; 10004FB0 _ 0F 85, 00000095
        mov     eax, dword [esi+2CH]                    ; 10004FB6 _ 8B. 46, 2C
        cmp     edx, eax                                ; 10004FB9 _ 3B. D0
        mov     dword [esp+18H], eax                    ; 10004FBB _ 89. 44 24, 18
        jnz     ?_0464                                  ; 10004FBF _ 75, 23
        mov     eax, dword [esi+30H]                    ; 10004FC1 _ 8B. 46, 30
        mov     ecx, dword [esi+28H]                    ; 10004FC4 _ 8B. 4E, 28
        cmp     eax, ecx                                ; 10004FC7 _ 3B. C1
        jz      ?_0464                                  ; 10004FC9 _ 74, 19
        mov     edx, ecx                                ; 10004FCB _ 8B. D1
        cmp     edx, eax                                ; 10004FCD _ 3B. D0
        jnc     ?_0462                                  ; 10004FCF _ 73, 05
        sub     eax, edx                                ; 10004FD1 _ 2B. C2
        dec     eax                                     ; 10004FD3 _ 48
        jmp     ?_0463                                  ; 10004FD4 _ EB, 06

?_0462: mov     eax, dword [esp+18H]                    ; 10004FD6 _ 8B. 44 24, 18
        sub     eax, edx                                ; 10004FDA _ 2B. C2
?_0463: test    eax, eax                                ; 10004FDC _ 85. C0
        mov     dword [esp+14H], eax                    ; 10004FDE _ 89. 44 24, 14
        jnz     ?_0470                                  ; 10004FE2 _ 75, 63
?_0464: mov     dword [esi+34H], edx                    ; 10004FE4 _ 89. 56, 34
        mov     edx, dword [esp+2CH]                    ; 10004FE7 _ 8B. 54 24, 2C
        push    edx                                     ; 10004FEB _ 52
        push    edi                                     ; 10004FEC _ 57
        push    esi                                     ; 10004FED _ 56
        call    ?_0630                                  ; 10004FEE _ E8, 0000144D
        mov     edx, dword [esi+34H]                    ; 10004FF3 _ 8B. 56, 34
        mov     dword [esp+38H], eax                    ; 10004FF6 _ 89. 44 24, 38
        mov     eax, dword [esi+30H]                    ; 10004FFA _ 8B. 46, 30
        add     esp, 12                                 ; 10004FFD _ 83. C4, 0C
        cmp     edx, eax                                ; 10005000 _ 3B. D0
        jnc     ?_0465                                  ; 10005002 _ 73, 07
        mov     ecx, eax                                ; 10005004 _ 8B. C8
        sub     ecx, edx                                ; 10005006 _ 2B. CA
        dec     ecx                                     ; 10005008 _ 49
        jmp     ?_0466                                  ; 10005009 _ EB, 05

?_0465: mov     ecx, dword [esi+2CH]                    ; 1000500B _ 8B. 4E, 2C
        sub     ecx, edx                                ; 1000500E _ 2B. CA
?_0466: mov     dword [esp+14H], ecx                    ; 10005010 _ 89. 4C 24, 14
        mov     ecx, dword [esi+2CH]                    ; 10005014 _ 8B. 4E, 2C
        cmp     edx, ecx                                ; 10005017 _ 3B. D1
        mov     dword [esp+18H], ecx                    ; 10005019 _ 89. 4C 24, 18
        jnz     ?_0469                                  ; 1000501D _ 75, 1C
        mov     ecx, dword [esi+28H]                    ; 1000501F _ 8B. 4E, 28
        cmp     eax, ecx                                ; 10005022 _ 3B. C1
        jz      ?_0469                                  ; 10005024 _ 74, 15
        mov     edx, ecx                                ; 10005026 _ 8B. D1
        cmp     edx, eax                                ; 10005028 _ 3B. D0
        jnc     ?_0467                                  ; 1000502A _ 73, 05
        sub     eax, edx                                ; 1000502C _ 2B. C2
        dec     eax                                     ; 1000502E _ 48
        jmp     ?_0468                                  ; 1000502F _ EB, 06

?_0467: mov     eax, dword [esp+18H]                    ; 10005031 _ 8B. 44 24, 18
        sub     eax, edx                                ; 10005035 _ 2B. C2
?_0468: mov     dword [esp+14H], eax                    ; 10005037 _ 89. 44 24, 14
?_0469: mov     eax, dword [esp+14H]                    ; 1000503B _ 8B. 44 24, 14
        test    eax, eax                                ; 1000503F _ 85. C0
        je      ?_0489                                  ; 10005041 _ 0F 84, 000001A6
?_0470: mov     eax, dword [esp+10H]                    ; 10005047 _ 8B. 44 24, 10
?_0471: mov     ecx, dword [esp+1CH]                    ; 1000504B _ 8B. 4C 24, 1C
        inc     edx                                     ; 1000504F _ 42
        mov     dword [esp+2CH], 0                      ; 10005050 _ C7. 44 24, 2C, 00000000
        mov     cl, byte [ecx]                          ; 10005058 _ 8A. 09
        mov     byte [edx-1H], cl                       ; 1000505A _ 88. 4A, FF
        mov     ecx, dword [esp+1CH]                    ; 1000505D _ 8B. 4C 24, 1C
        inc     ecx                                     ; 10005061 _ 41
        mov     dword [esp+1CH], ecx                    ; 10005062 _ 89. 4C 24, 1C
        mov     ecx, dword [esp+14H]                    ; 10005066 _ 8B. 4C 24, 14
        dec     ecx                                     ; 1000506A _ 49
        mov     dword [esp+14H], ecx                    ; 1000506B _ 89. 4C 24, 14
        mov     ecx, dword [esp+1CH]                    ; 1000506F _ 8B. 4C 24, 1C
        cmp     ecx, dword [esi+2CH]                    ; 10005073 _ 3B. 4E, 2C
        jnz     ?_0472                                  ; 10005076 _ 75, 07
        mov     ecx, dword [esi+28H]                    ; 10005078 _ 8B. 4E, 28
        mov     dword [esp+1CH], ecx                    ; 1000507B _ 89. 4C 24, 1C
?_0472: mov     ecx, dword [eax+4H]                     ; 1000507F _ 8B. 48, 04
        dec     ecx                                     ; 10005082 _ 49
        mov     dword [eax+4H], ecx                     ; 10005083 _ 89. 48, 04
        jne     ?_0461                                  ; 10005086 _ 0F 85, FFFFFF1E
?_0473: mov     dword [eax], 0                          ; 1000508C _ C7. 00, 00000000
        jmp     ?_0436                                  ; 10005092 _ E9, FFFFFB6A

?_0474: mov     ecx, dword [esp+14H]                    ; 10005097 _ 8B. 4C 24, 14
        test    ecx, ecx                                ; 1000509B _ 85. C9
        jne     ?_0484                                  ; 1000509D _ 0F 85, 00000095
        mov     eax, dword [esi+2CH]                    ; 100050A3 _ 8B. 46, 2C
        cmp     edx, eax                                ; 100050A6 _ 3B. D0
        mov     dword [esp+18H], eax                    ; 100050A8 _ 89. 44 24, 18
        jnz     ?_0477                                  ; 100050AC _ 75, 23
        mov     eax, dword [esi+30H]                    ; 100050AE _ 8B. 46, 30
        mov     ecx, dword [esi+28H]                    ; 100050B1 _ 8B. 4E, 28
        cmp     eax, ecx                                ; 100050B4 _ 3B. C1
        jz      ?_0477                                  ; 100050B6 _ 74, 19
        mov     edx, ecx                                ; 100050B8 _ 8B. D1
        cmp     edx, eax                                ; 100050BA _ 3B. D0
        jnc     ?_0475                                  ; 100050BC _ 73, 05
        sub     eax, edx                                ; 100050BE _ 2B. C2
        dec     eax                                     ; 100050C0 _ 48
        jmp     ?_0476                                  ; 100050C1 _ EB, 06

?_0475: mov     eax, dword [esp+18H]                    ; 100050C3 _ 8B. 44 24, 18
        sub     eax, edx                                ; 100050C7 _ 2B. C2
?_0476: test    eax, eax                                ; 100050C9 _ 85. C0
        mov     dword [esp+14H], eax                    ; 100050CB _ 89. 44 24, 14
        jnz     ?_0483                                  ; 100050CF _ 75, 63
?_0477: mov     dword [esi+34H], edx                    ; 100050D1 _ 89. 56, 34
        mov     edx, dword [esp+2CH]                    ; 100050D4 _ 8B. 54 24, 2C
        push    edx                                     ; 100050D8 _ 52
        push    edi                                     ; 100050D9 _ 57
        push    esi                                     ; 100050DA _ 56
        call    ?_0630                                  ; 100050DB _ E8, 00001360
        mov     edx, dword [esi+34H]                    ; 100050E0 _ 8B. 56, 34
        mov     dword [esp+38H], eax                    ; 100050E3 _ 89. 44 24, 38
        mov     eax, dword [esi+30H]                    ; 100050E7 _ 8B. 46, 30
        add     esp, 12                                 ; 100050EA _ 83. C4, 0C
        cmp     edx, eax                                ; 100050ED _ 3B. D0
        jnc     ?_0478                                  ; 100050EF _ 73, 07
        mov     ecx, eax                                ; 100050F1 _ 8B. C8
        sub     ecx, edx                                ; 100050F3 _ 2B. CA
        dec     ecx                                     ; 100050F5 _ 49
        jmp     ?_0479                                  ; 100050F6 _ EB, 05

?_0478: mov     ecx, dword [esi+2CH]                    ; 100050F8 _ 8B. 4E, 2C
        sub     ecx, edx                                ; 100050FB _ 2B. CA
?_0479: mov     dword [esp+14H], ecx                    ; 100050FD _ 89. 4C 24, 14
        mov     ecx, dword [esi+2CH]                    ; 10005101 _ 8B. 4E, 2C
        cmp     edx, ecx                                ; 10005104 _ 3B. D1
        mov     dword [esp+18H], ecx                    ; 10005106 _ 89. 4C 24, 18
        jnz     ?_0482                                  ; 1000510A _ 75, 1C
        mov     ecx, dword [esi+28H]                    ; 1000510C _ 8B. 4E, 28
        cmp     eax, ecx                                ; 1000510F _ 3B. C1
        jz      ?_0482                                  ; 10005111 _ 74, 15
        mov     edx, ecx                                ; 10005113 _ 8B. D1
        cmp     edx, eax                                ; 10005115 _ 3B. D0
        jnc     ?_0480                                  ; 10005117 _ 73, 05
        sub     eax, edx                                ; 10005119 _ 2B. C2
        dec     eax                                     ; 1000511B _ 48
        jmp     ?_0481                                  ; 1000511C _ EB, 06

?_0480: mov     eax, dword [esp+18H]                    ; 1000511E _ 8B. 44 24, 18
        sub     eax, edx                                ; 10005122 _ 2B. C2
?_0481: mov     dword [esp+14H], eax                    ; 10005124 _ 89. 44 24, 14
?_0482: mov     eax, dword [esp+14H]                    ; 10005128 _ 8B. 44 24, 14
        test    eax, eax                                ; 1000512C _ 85. C0
        je      ?_0489                                  ; 1000512E _ 0F 84, 000000B9
?_0483: mov     eax, dword [esp+10H]                    ; 10005134 _ 8B. 44 24, 10
?_0484: mov     cl, byte [eax+8H]                       ; 10005138 _ 8A. 48, 08
        mov     dword [esp+2CH], 0                      ; 1000513B _ C7. 44 24, 2C, 00000000
        mov     byte [edx], cl                          ; 10005143 _ 88. 0A
        mov     ecx, dword [esp+14H]                    ; 10005145 _ 8B. 4C 24, 14
        inc     edx                                     ; 10005149 _ 42
        dec     ecx                                     ; 1000514A _ 49
        mov     dword [esp+14H], ecx                    ; 1000514B _ 89. 4C 24, 14
        mov     dword [eax], 0                          ; 1000514F _ C7. 00, 00000000
        jmp     ?_0436                                  ; 10005155 _ E9, FFFFFAA7

?_0485: mov     dword [eax], 9                          ; 1000515A _ C7. 00, 00000009
        mov     dword [edi+18H], ?_5120                 ; 10005160 _ C7. 47, 18, 1002751C(d)
        jmp     ?_0488                                  ; 10005167 _ EB, 4C

?_0486: mov     eax, dword [esp+24H]                    ; 10005169 _ 8B. 44 24, 24
        mov     dword [esi+1CH], ebx                    ; 1000516D _ 89. 5E, 1C
        mov     dword [esi+20H], eax                    ; 10005170 _ 89. 46, 20
        mov     ebx, dword [edi]                        ; 10005173 _ 8B. 1F
        mov     eax, dword [edi+8H]                     ; 10005175 _ 8B. 47, 08
        mov     ecx, ebp                                ; 10005178 _ 8B. CD
        sub     ecx, ebx                                ; 1000517A _ 2B. CB
        mov     dword [edi+4H], 0                       ; 1000517C _ C7. 47, 04, 00000000
        add     eax, ecx                                ; 10005183 _ 03. C1
        mov     dword [edi], ebp                        ; 10005185 _ 89. 2F
        mov     dword [edi+8H], eax                     ; 10005187 _ 89. 47, 08
        mov     dword [esi+34H], edx                    ; 1000518A _ 89. 56, 34
        mov     edx, dword [esp+2CH]                    ; 1000518D _ 8B. 54 24, 2C
        push    edx                                     ; 10005191 _ 52
        push    edi                                     ; 10005192 _ 57
        push    esi                                     ; 10005193 _ 56
        call    ?_0630                                  ; 10005194 _ E8, 000012A7
        add     esp, 12                                 ; 10005199 _ 83. C4, 0C
        pop     edi                                     ; 1000519C _ 5F
        pop     esi                                     ; 1000519D _ 5E
        pop     ebp                                     ; 1000519E _ 5D
        pop     ebx                                     ; 1000519F _ 5B
        add     esp, 16                                 ; 100051A0 _ 83. C4, 10
        ret                                             ; 100051A3 _ C3

?_0487: mov     eax, dword [esp+10H]                    ; 100051A4 _ 8B. 44 24, 10
        mov     dword [eax], 9                          ; 100051A8 _ C7. 00, 00000009
        mov     dword [edi+18H], ?_5119                 ; 100051AE _ C7. 47, 18, 10027504(d)
?_0488: mov     ecx, dword [esp+24H]                    ; 100051B5 _ 8B. 4C 24, 24
        mov     eax, dword [esp+28H]                    ; 100051B9 _ 8B. 44 24, 28
        mov     dword [esi+20H], ecx                    ; 100051BD _ 89. 4E, 20
        mov     dword [esi+1CH], ebx                    ; 100051C0 _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 100051C3 _ 8B. 1F
        mov     ecx, ebp                                ; 100051C5 _ 8B. CD
        mov     dword [edi+4H], eax                     ; 100051C7 _ 89. 47, 04
        mov     eax, dword [edi+8H]                     ; 100051CA _ 8B. 47, 08
        sub     ecx, ebx                                ; 100051CD _ 2B. CB
        push    -3                                      ; 100051CF _ 6A, FD
        add     eax, ecx                                ; 100051D1 _ 03. C1
        push    edi                                     ; 100051D3 _ 57
        mov     dword [edi+8H], eax                     ; 100051D4 _ 89. 47, 08
        mov     dword [edi], ebp                        ; 100051D7 _ 89. 2F
        push    esi                                     ; 100051D9 _ 56
        mov     dword [esi+34H], edx                    ; 100051DA _ 89. 56, 34
        call    ?_0630                                  ; 100051DD _ E8, 0000125E
        add     esp, 12                                 ; 100051E2 _ 83. C4, 0C
        pop     edi                                     ; 100051E5 _ 5F
        pop     esi                                     ; 100051E6 _ 5E
        pop     ebp                                     ; 100051E7 _ 5D
        pop     ebx                                     ; 100051E8 _ 5B
        add     esp, 16                                 ; 100051E9 _ 83. C4, 10
        ret                                             ; 100051EC _ C3

?_0489: mov     eax, dword [esp+24H]                    ; 100051ED _ 8B. 44 24, 24
        mov     ecx, dword [esp+28H]                    ; 100051F1 _ 8B. 4C 24, 28
        mov     dword [esi+20H], eax                    ; 100051F5 _ 89. 46, 20
        mov     dword [esi+1CH], ebx                    ; 100051F8 _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 100051FB _ 8B. 1F
        mov     eax, ebp                                ; 100051FD _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 100051FF _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 10005202 _ 8B. 4F, 08
        sub     eax, ebx                                ; 10005205 _ 2B. C3
        mov     dword [edi], ebp                        ; 10005207 _ 89. 2F
        add     ecx, eax                                ; 10005209 _ 03. C8
        mov     dword [edi+8H], ecx                     ; 1000520B _ 89. 4F, 08
        mov     ecx, dword [esp+2CH]                    ; 1000520E _ 8B. 4C 24, 2C
        push    ecx                                     ; 10005212 _ 51
        push    edi                                     ; 10005213 _ 57
        push    esi                                     ; 10005214 _ 56
        mov     dword [esi+34H], edx                    ; 10005215 _ 89. 56, 34
        call    ?_0630                                  ; 10005218 _ E8, 00001223
        add     esp, 12                                 ; 1000521D _ 83. C4, 0C
        pop     edi                                     ; 10005220 _ 5F
        pop     esi                                     ; 10005221 _ 5E
        pop     ebp                                     ; 10005222 _ 5D
        pop     ebx                                     ; 10005223 _ 5B
        add     esp, 16                                 ; 10005224 _ 83. C4, 10
        ret                                             ; 10005227 _ C3

?_0490: cmp     ebx, 7                                  ; 10005228 _ 83. FB, 07
        jbe     ?_0491                                  ; 1000522B _ 76, 0D
        mov     ecx, dword [esp+28H]                    ; 1000522D _ 8B. 4C 24, 28
        sub     ebx, 8                                  ; 10005231 _ 83. EB, 08
        inc     ecx                                     ; 10005234 _ 41
        dec     ebp                                     ; 10005235 _ 4D
        mov     dword [esp+28H], ecx                    ; 10005236 _ 89. 4C 24, 28
?_0491: mov     dword [esi+34H], edx                    ; 1000523A _ 89. 56, 34
        mov     edx, dword [esp+2CH]                    ; 1000523D _ 8B. 54 24, 2C
        push    edx                                     ; 10005241 _ 52
        push    edi                                     ; 10005242 _ 57
        push    esi                                     ; 10005243 _ 56
        call    ?_0630                                  ; 10005244 _ E8, 000011F7
        mov     edx, dword [esi+34H]                    ; 10005249 _ 8B. 56, 34
        mov     ecx, dword [esi+30H]                    ; 1000524C _ 8B. 4E, 30
        add     esp, 12                                 ; 1000524F _ 83. C4, 0C
        cmp     ecx, edx                                ; 10005252 _ 3B. CA
        jz      ?_0492                                  ; 10005254 _ 74, 37
        mov     ecx, dword [esp+24H]                    ; 10005256 _ 8B. 4C 24, 24
        mov     dword [esi+1CH], ebx                    ; 1000525A _ 89. 5E, 1C
        mov     dword [esi+20H], ecx                    ; 1000525D _ 89. 4E, 20
        mov     ecx, dword [esp+28H]                    ; 10005260 _ 8B. 4C 24, 28
        mov     ebx, dword [edi]                        ; 10005264 _ 8B. 1F
        mov     dword [edi+4H], ecx                     ; 10005266 _ 89. 4F, 04
        mov     ecx, ebp                                ; 10005269 _ 8B. CD
        push    eax                                     ; 1000526B _ 50
        sub     ecx, ebx                                ; 1000526C _ 2B. CB
        mov     ebx, dword [edi+8H]                     ; 1000526E _ 8B. 5F, 08
        add     ebx, ecx                                ; 10005271 _ 03. D9
        push    edi                                     ; 10005273 _ 57
        mov     dword [edi+8H], ebx                     ; 10005274 _ 89. 5F, 08
        mov     dword [edi], ebp                        ; 10005277 _ 89. 2F
        push    esi                                     ; 10005279 _ 56
        mov     dword [esi+34H], edx                    ; 1000527A _ 89. 56, 34
        call    ?_0630                                  ; 1000527D _ E8, 000011BE
        add     esp, 12                                 ; 10005282 _ 83. C4, 0C
        pop     edi                                     ; 10005285 _ 5F
        pop     esi                                     ; 10005286 _ 5E
        pop     ebp                                     ; 10005287 _ 5D
        pop     ebx                                     ; 10005288 _ 5B
        add     esp, 16                                 ; 10005289 _ 83. C4, 10
        ret                                             ; 1000528C _ C3

?_0492: mov     eax, dword [esp+10H]                    ; 1000528D _ 8B. 44 24, 10
        mov     dword [eax], 8                          ; 10005291 _ C7. 00, 00000008
?_0493: mov     ecx, dword [esp+24H]                    ; 10005297 _ 8B. 4C 24, 24
        mov     eax, dword [esp+28H]                    ; 1000529B _ 8B. 44 24, 28
        mov     dword [esi+20H], ecx                    ; 1000529F _ 89. 4E, 20
        mov     dword [esi+1CH], ebx                    ; 100052A2 _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 100052A5 _ 8B. 1F
        mov     ecx, ebp                                ; 100052A7 _ 8B. CD
        mov     dword [edi+4H], eax                     ; 100052A9 _ 89. 47, 04
        mov     eax, dword [edi+8H]                     ; 100052AC _ 8B. 47, 08
        sub     ecx, ebx                                ; 100052AF _ 2B. CB
        push    1                                       ; 100052B1 _ 6A, 01
        add     eax, ecx                                ; 100052B3 _ 03. C1
        push    edi                                     ; 100052B5 _ 57
        mov     dword [edi+8H], eax                     ; 100052B6 _ 89. 47, 08
        mov     dword [edi], ebp                        ; 100052B9 _ 89. 2F
        push    esi                                     ; 100052BB _ 56
        mov     dword [esi+34H], edx                    ; 100052BC _ 89. 56, 34
        call    ?_0630                                  ; 100052BF _ E8, 0000117C
        add     esp, 12                                 ; 100052C4 _ 83. C4, 0C
        pop     edi                                     ; 100052C7 _ 5F
        pop     esi                                     ; 100052C8 _ 5E
        pop     ebp                                     ; 100052C9 _ 5D
        pop     ebx                                     ; 100052CA _ 5B
        add     esp, 16                                 ; 100052CB _ 83. C4, 10
        ret                                             ; 100052CE _ C3

?_0494: mov     eax, dword [esp+24H]                    ; 100052CF _ 8B. 44 24, 24
        mov     ecx, dword [esp+28H]                    ; 100052D3 _ 8B. 4C 24, 28
        mov     dword [esi+20H], eax                    ; 100052D7 _ 89. 46, 20
        mov     dword [esi+1CH], ebx                    ; 100052DA _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 100052DD _ 8B. 1F
        mov     eax, ebp                                ; 100052DF _ 8B. C5
        mov     dword [edi+4H], ecx                     ; 100052E1 _ 89. 4F, 04
        mov     ecx, dword [edi+8H]                     ; 100052E4 _ 8B. 4F, 08
        sub     eax, ebx                                ; 100052E7 _ 2B. C3
        push    -3                                      ; 100052E9 _ 6A, FD
        add     ecx, eax                                ; 100052EB _ 03. C8
        push    edi                                     ; 100052ED _ 57
        mov     dword [edi+8H], ecx                     ; 100052EE _ 89. 4F, 08
        mov     dword [edi], ebp                        ; 100052F1 _ 89. 2F
        push    esi                                     ; 100052F3 _ 56
        mov     dword [esi+34H], edx                    ; 100052F4 _ 89. 56, 34
        call    ?_0630                                  ; 100052F7 _ E8, 00001144
        add     esp, 12                                 ; 100052FC _ 83. C4, 0C
        pop     edi                                     ; 100052FF _ 5F
        pop     esi                                     ; 10005300 _ 5E
        pop     ebp                                     ; 10005301 _ 5D
        pop     ebx                                     ; 10005302 _ 5B
        add     esp, 16                                 ; 10005303 _ 83. C4, 10
        ret                                             ; 10005306 _ C3

