; ---- 10007E40 ----
?_0815: ; Local function
        sub     esp, 8                                  ; 10007E40 _ 83. EC, 08
        mov     eax, dword [esp+10H]                    ; 10007E43 _ 8B. 44 24, 10
        push    ebx                                     ; 10007E47 _ 53
        xor     ebx, ebx                                ; 10007E48 _ 33. DB
        xor     edx, edx                                ; 10007E4A _ 33. D2
        mov     bx, word [eax+2H]                       ; 10007E4C _ 66: 8B. 58, 02
        push    esi                                     ; 10007E50 _ 56
        test    ebx, ebx                                ; 10007E51 _ 85. DB
        push    edi                                     ; 10007E53 _ 57
        mov     dword [esp+0CH], -1                     ; 10007E54 _ C7. 44 24, 0C, FFFFFFFF
        mov     ecx, 7                                  ; 10007E5C _ B9, 00000007
        mov     esi, 4                                  ; 10007E61 _ BE, 00000004
        jnz     ?_0816                                  ; 10007E66 _ 75, 0A
        mov     ecx, 138                                ; 10007E68 _ B9, 0000008A
        mov     esi, 3                                  ; 10007E6D _ BE, 00000003
?_0816: mov     edi, dword [esp+20H]                    ; 10007E72 _ 8B. 7C 24, 20
        test    edi, edi                                ; 10007E76 _ 85. FF
        jl      ?_0842                                  ; 10007E78 _ 0F 8C, 00000530
        add     eax, 6                                  ; 10007E7E _ 83. C0, 06
        inc     edi                                     ; 10007E81 _ 47
        mov     dword [esp+20H], eax                    ; 10007E82 _ 89. 44 24, 20
        mov     eax, dword [esp+18H]                    ; 10007E86 _ 8B. 44 24, 18
        push    ebp                                     ; 10007E8A _ 55
        mov     dword [esp+14H], edi                    ; 10007E8B _ 89. 7C 24, 14
?_0817: mov     edi, dword [esp+24H]                    ; 10007E8F _ 8B. 7C 24, 24
        mov     ebp, ebx                                ; 10007E93 _ 8B. EB
        xor     ebx, ebx                                ; 10007E95 _ 33. DB
        inc     edx                                     ; 10007E97 _ 42
        mov     bx, word [edi]                          ; 10007E98 _ 66: 8B. 1F
        cmp     edx, ecx                                ; 10007E9B _ 3B. D1
        mov     dword [esp+1CH], ebx                    ; 10007E9D _ 89. 5C 24, 1C
        mov     dword [esp+20H], edx                    ; 10007EA1 _ 89. 54 24, 20
        jge     ?_0818                                  ; 10007EA5 _ 7D, 08
        cmp     ebp, ebx                                ; 10007EA7 _ 3B. EB
        je      ?_0841                                  ; 10007EA9 _ 0F 84, 000004E4
?_0818: cmp     edx, esi                                ; 10007EAF _ 3B. D6
        jge     ?_0822                                  ; 10007EB1 _ 0F 8D, 000000AC
?_0819: mov     ecx, dword [eax+16B4H]                  ; 10007EB7 _ 8B. 88, 000016B4
        xor     esi, esi                                ; 10007EBD _ 33. F6
        mov     si, word [eax+ebp*4+0A76H]              ; 10007EBF _ 66: 8B. B4 A8, 00000A76
        mov     edi, 16                                 ; 10007EC7 _ BF, 00000010
        sub     edi, esi                                ; 10007ECC _ 2B. FE
        cmp     ecx, edi                                ; 10007ECE _ 3B. CF
        jle     ?_0820                                  ; 10007ED0 _ 7E, 67
        xor     edx, edx                                ; 10007ED2 _ 33. D2
        mov     dx, word [eax+ebp*4+0A74H]              ; 10007ED4 _ 66: 8B. 94 A8, 00000A74
        mov     edi, edx                                ; 10007EDC _ 8B. FA
        shl     edi, cl                                 ; 10007EDE _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 10007EE0 _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 10007EE3 _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 10007EEA _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 10007EED _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 10007EF3 _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 10007EF6 _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 10007EF9 _ 8B. 58, 08
        xor     ecx, ecx                                ; 10007EFC _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10007EFE _ 8A. 88, 000016B1
        inc     edi                                     ; 10007F04 _ 47
        mov     dword [eax+14H], edi                    ; 10007F05 _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 10007F08 _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 10007F0B _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 10007F0E _ 8B. B8, 000016B4
        inc     ecx                                     ; 10007F14 _ 41
        mov     dword [eax+14H], ecx                    ; 10007F15 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007F18 _ 66: B9, 0010
        sub     cx, di                                  ; 10007F1C _ 66: 2B. CF
        shr     dx, cl                                  ; 10007F1F _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 10007F22 _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 10007F29 _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 10007F2D _ 89. 90, 000016B4
        mov     edx, dword [esp+20H]                    ; 10007F33 _ 8B. 54 24, 20
        jmp     ?_0821                                  ; 10007F37 _ EB, 1A

?_0820: mov     di, word [eax+ebp*4+0A74H]              ; 10007F39 _ 66: 8B. BC A8, 00000A74
        shl     di, cl                                  ; 10007F41 _ 66: D3. E7
        or      word [eax+16B0H], di                    ; 10007F44 _ 66: 09. B8, 000016B0
        add     ecx, esi                                ; 10007F4B _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 10007F4D _ 89. 88, 000016B4
?_0821: dec     edx                                     ; 10007F53 _ 4A
        mov     dword [esp+20H], edx                    ; 10007F54 _ 89. 54 24, 20
        jne     ?_0819                                  ; 10007F58 _ 0F 85, FFFFFF59
        jmp     ?_0838                                  ; 10007F5E _ E9, 000003FC

?_0822: test    ebp, ebp                                ; 10007F63 _ 85. ED
        je      ?_0829                                  ; 10007F65 _ 0F 84, 000001C1
        cmp     ebp, dword [esp+10H]                    ; 10007F6B _ 3B. 6C 24, 10
        je      ?_0825                                  ; 10007F6F _ 0F 84, 000000A1
        mov     ecx, dword [eax+16B4H]                  ; 10007F75 _ 8B. 88, 000016B4
        xor     esi, esi                                ; 10007F7B _ 33. F6
        mov     si, word [eax+ebp*4+0A76H]              ; 10007F7D _ 66: 8B. B4 A8, 00000A76
        mov     edi, 16                                 ; 10007F85 _ BF, 00000010
        sub     edi, esi                                ; 10007F8A _ 2B. FE
        cmp     ecx, edi                                ; 10007F8C _ 3B. CF
        jle     ?_0823                                  ; 10007F8E _ 7E, 67
        xor     edx, edx                                ; 10007F90 _ 33. D2
        mov     dx, word [eax+ebp*4+0A74H]              ; 10007F92 _ 66: 8B. 94 A8, 00000A74
        mov     edi, edx                                ; 10007F9A _ 8B. FA
        shl     edi, cl                                 ; 10007F9C _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 10007F9E _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 10007FA1 _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 10007FA8 _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 10007FAB _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 10007FB1 _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 10007FB4 _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 10007FB7 _ 8B. 58, 08
        xor     ecx, ecx                                ; 10007FBA _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10007FBC _ 8A. 88, 000016B1
        inc     edi                                     ; 10007FC2 _ 47
        mov     dword [eax+14H], edi                    ; 10007FC3 _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 10007FC6 _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 10007FC9 _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 10007FCC _ 8B. B8, 000016B4
        inc     ecx                                     ; 10007FD2 _ 41
        mov     dword [eax+14H], ecx                    ; 10007FD3 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007FD6 _ 66: B9, 0010
        sub     cx, di                                  ; 10007FDA _ 66: 2B. CF
        shr     dx, cl                                  ; 10007FDD _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 10007FE0 _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 10007FE7 _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 10007FEB _ 89. 90, 000016B4
        mov     edx, dword [esp+20H]                    ; 10007FF1 _ 8B. 54 24, 20
        jmp     ?_0824                                  ; 10007FF5 _ EB, 1A

?_0823: mov     di, word [eax+ebp*4+0A74H]              ; 10007FF7 _ 66: 8B. BC A8, 00000A74
        shl     di, cl                                  ; 10007FFF _ 66: D3. E7
        or      word [eax+16B0H], di                    ; 10008002 _ 66: 09. B8, 000016B0
        add     ecx, esi                                ; 10008009 _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 1000800B _ 89. 88, 000016B4
?_0824: dec     edx                                     ; 10008011 _ 4A
        mov     dword [esp+20H], edx                    ; 10008012 _ 89. 54 24, 20
?_0825: mov     ecx, dword [eax+16B4H]                  ; 10008016 _ 8B. 88, 000016B4
        xor     esi, esi                                ; 1000801C _ 33. F6
        mov     si, word [eax+0AB6H]                    ; 1000801E _ 66: 8B. B0, 00000AB6
        mov     edi, 16                                 ; 10008025 _ BF, 00000010
        sub     edi, esi                                ; 1000802A _ 2B. FE
        cmp     ecx, edi                                ; 1000802C _ 3B. CF
        jle     ?_0826                                  ; 1000802E _ 7E, 66
        xor     edx, edx                                ; 10008030 _ 33. D2
        mov     dx, word [eax+0AB4H]                    ; 10008032 _ 66: 8B. 90, 00000AB4
        mov     edi, edx                                ; 10008039 _ 8B. FA
        shl     edi, cl                                 ; 1000803B _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 1000803D _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 10008040 _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 10008047 _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 1000804A _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 10008050 _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 10008053 _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 10008056 _ 8B. 58, 08
        xor     ecx, ecx                                ; 10008059 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 1000805B _ 8A. 88, 000016B1
        inc     edi                                     ; 10008061 _ 47
        mov     dword [eax+14H], edi                    ; 10008062 _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 10008065 _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 10008068 _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 1000806B _ 8B. B8, 000016B4
        inc     ecx                                     ; 10008071 _ 41
        mov     dword [eax+14H], ecx                    ; 10008072 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10008075 _ 66: B9, 0010
        sub     cx, di                                  ; 10008079 _ 66: 2B. CF
        shr     dx, cl                                  ; 1000807C _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 1000807F _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 10008086 _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 1000808A _ 89. 90, 000016B4
        mov     edx, dword [esp+20H]                    ; 10008090 _ 8B. 54 24, 20
        jmp     ?_0827                                  ; 10008094 _ EB, 19

?_0826: mov     di, word [eax+0AB4H]                    ; 10008096 _ 66: 8B. B8, 00000AB4
        shl     di, cl                                  ; 1000809D _ 66: D3. E7
        or      word [eax+16B0H], di                    ; 100080A0 _ 66: 09. B8, 000016B0
        add     ecx, esi                                ; 100080A7 _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100080A9 _ 89. 88, 000016B4
?_0827: mov     ecx, dword [eax+16B4H]                  ; 100080AF _ 8B. 88, 000016B4
        cmp     ecx, 14                                 ; 100080B5 _ 83. F9, 0E
        jle     ?_0828                                  ; 100080B8 _ 7E, 5E
        add     edx, -3                                 ; 100080BA _ 83. C2, FD
        mov     esi, edx                                ; 100080BD _ 8B. F2
        shl     esi, cl                                 ; 100080BF _ D3. E6
        mov     ecx, dword [eax+8H]                     ; 100080C1 _ 8B. 48, 08
        or      word [eax+16B0H], si                    ; 100080C4 _ 66: 09. B0, 000016B0
        mov     esi, dword [eax+14H]                    ; 100080CB _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 100080CE _ 8A. 98, 000016B0
        mov     byte [ecx+esi], bl                      ; 100080D4 _ 88. 1C 31
        mov     esi, dword [eax+14H]                    ; 100080D7 _ 8B. 70, 14
        mov     edi, dword [eax+8H]                     ; 100080DA _ 8B. 78, 08
        xor     ecx, ecx                                ; 100080DD _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 100080DF _ 8A. 88, 000016B1
        inc     esi                                     ; 100080E5 _ 46
        mov     dword [eax+14H], esi                    ; 100080E6 _ 89. 70, 14
        mov     byte [esi+edi], cl                      ; 100080E9 _ 88. 0C 3E
        mov     ecx, dword [eax+14H]                    ; 100080EC _ 8B. 48, 14
        mov     esi, dword [eax+16B4H]                  ; 100080EF _ 8B. B0, 000016B4
        inc     ecx                                     ; 100080F5 _ 41
        mov     dword [eax+14H], ecx                    ; 100080F6 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 100080F9 _ 66: B9, 0010
        sub     cx, si                                  ; 100080FD _ 66: 2B. CE
        shr     dx, cl                                  ; 10008100 _ 66: D3. EA
        add     esi, -14                                ; 10008103 _ 83. C6, F2
        mov     dword [eax+16B4H], esi                  ; 10008106 _ 89. B0, 000016B4
        mov     word [eax+16B0H], dx                    ; 1000810C _ 66: 89. 90, 000016B0
        jmp     ?_0838                                  ; 10008113 _ E9, 00000247

?_0828: add     edx, -3                                 ; 10008118 _ 83. C2, FD
        shl     edx, cl                                 ; 1000811B _ D3. E2
        or      word [eax+16B0H], dx                    ; 1000811D _ 66: 09. 90, 000016B0
        add     ecx, 2                                  ; 10008124 _ 83. C1, 02
        jmp     ?_0837                                  ; 10008127 _ E9, 0000022D

?_0829: cmp     edx, 10                                 ; 1000812C _ 83. FA, 0A
        jg      ?_0833                                  ; 1000812F _ 0F 8F, 00000116
        mov     ecx, dword [eax+16B4H]                  ; 10008135 _ 8B. 88, 000016B4
        xor     esi, esi                                ; 1000813B _ 33. F6
        mov     si, word [eax+0ABAH]                    ; 1000813D _ 66: 8B. B0, 00000ABA
        mov     edi, 16                                 ; 10008144 _ BF, 00000010
        sub     edi, esi                                ; 10008149 _ 2B. FE
        cmp     ecx, edi                                ; 1000814B _ 3B. CF
        jle     ?_0830                                  ; 1000814D _ 7E, 66
        xor     edx, edx                                ; 1000814F _ 33. D2
        mov     dx, word [eax+0AB8H]                    ; 10008151 _ 66: 8B. 90, 00000AB8
        mov     edi, edx                                ; 10008158 _ 8B. FA
        shl     edi, cl                                 ; 1000815A _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 1000815C _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 1000815F _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 10008166 _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 10008169 _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 1000816F _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 10008172 _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 10008175 _ 8B. 58, 08
        xor     ecx, ecx                                ; 10008178 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 1000817A _ 8A. 88, 000016B1
        inc     edi                                     ; 10008180 _ 47
        mov     dword [eax+14H], edi                    ; 10008181 _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 10008184 _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 10008187 _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 1000818A _ 8B. B8, 000016B4
        inc     ecx                                     ; 10008190 _ 41
        mov     dword [eax+14H], ecx                    ; 10008191 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10008194 _ 66: B9, 0010
        sub     cx, di                                  ; 10008198 _ 66: 2B. CF
        shr     dx, cl                                  ; 1000819B _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 1000819E _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 100081A5 _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 100081A9 _ 89. 90, 000016B4
        mov     edx, dword [esp+20H]                    ; 100081AF _ 8B. 54 24, 20
        jmp     ?_0831                                  ; 100081B3 _ EB, 19

?_0830: mov     di, word [eax+0AB8H]                    ; 100081B5 _ 66: 8B. B8, 00000AB8
        shl     di, cl                                  ; 100081BC _ 66: D3. E7
        or      word [eax+16B0H], di                    ; 100081BF _ 66: 09. B8, 000016B0
        add     ecx, esi                                ; 100081C6 _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100081C8 _ 89. 88, 000016B4
?_0831: mov     ecx, dword [eax+16B4H]                  ; 100081CE _ 8B. 88, 000016B4
        cmp     ecx, 13                                 ; 100081D4 _ 83. F9, 0D
        jle     ?_0832                                  ; 100081D7 _ 7E, 5E
        add     edx, -3                                 ; 100081D9 _ 83. C2, FD
        mov     esi, edx                                ; 100081DC _ 8B. F2
        shl     esi, cl                                 ; 100081DE _ D3. E6
        mov     ecx, dword [eax+8H]                     ; 100081E0 _ 8B. 48, 08
        or      word [eax+16B0H], si                    ; 100081E3 _ 66: 09. B0, 000016B0
        mov     esi, dword [eax+14H]                    ; 100081EA _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 100081ED _ 8A. 98, 000016B0
        mov     byte [ecx+esi], bl                      ; 100081F3 _ 88. 1C 31
        mov     esi, dword [eax+14H]                    ; 100081F6 _ 8B. 70, 14
        mov     edi, dword [eax+8H]                     ; 100081F9 _ 8B. 78, 08
        xor     ecx, ecx                                ; 100081FC _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 100081FE _ 8A. 88, 000016B1
        inc     esi                                     ; 10008204 _ 46
        mov     dword [eax+14H], esi                    ; 10008205 _ 89. 70, 14
        mov     byte [esi+edi], cl                      ; 10008208 _ 88. 0C 3E
        mov     ecx, dword [eax+14H]                    ; 1000820B _ 8B. 48, 14
        mov     esi, dword [eax+16B4H]                  ; 1000820E _ 8B. B0, 000016B4
        inc     ecx                                     ; 10008214 _ 41
        mov     dword [eax+14H], ecx                    ; 10008215 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10008218 _ 66: B9, 0010
        sub     cx, si                                  ; 1000821C _ 66: 2B. CE
        shr     dx, cl                                  ; 1000821F _ 66: D3. EA
        add     esi, -13                                ; 10008222 _ 83. C6, F3
        mov     dword [eax+16B4H], esi                  ; 10008225 _ 89. B0, 000016B4
        mov     word [eax+16B0H], dx                    ; 1000822B _ 66: 89. 90, 000016B0
        jmp     ?_0838                                  ; 10008232 _ E9, 00000128

?_0832: add     edx, -3                                 ; 10008237 _ 83. C2, FD
        shl     edx, cl                                 ; 1000823A _ D3. E2
        or      word [eax+16B0H], dx                    ; 1000823C _ 66: 09. 90, 000016B0
        add     ecx, 3                                  ; 10008243 _ 83. C1, 03
        jmp     ?_0837                                  ; 10008246 _ E9, 0000010E

?_0833: mov     ecx, dword [eax+16B4H]                  ; 1000824B _ 8B. 88, 000016B4
        xor     esi, esi                                ; 10008251 _ 33. F6
        mov     si, word [eax+0ABEH]                    ; 10008253 _ 66: 8B. B0, 00000ABE
        mov     edi, 16                                 ; 1000825A _ BF, 00000010
        sub     edi, esi                                ; 1000825F _ 2B. FE
        cmp     ecx, edi                                ; 10008261 _ 3B. CF
        jle     ?_0834                                  ; 10008263 _ 7E, 66
        xor     edx, edx                                ; 10008265 _ 33. D2
        mov     dx, word [eax+0ABCH]                    ; 10008267 _ 66: 8B. 90, 00000ABC
        mov     edi, edx                                ; 1000826E _ 8B. FA
        shl     edi, cl                                 ; 10008270 _ D3. E7
        mov     ecx, dword [eax+8H]                     ; 10008272 _ 8B. 48, 08
        or      word [eax+16B0H], di                    ; 10008275 _ 66: 09. B8, 000016B0
        mov     edi, dword [eax+14H]                    ; 1000827C _ 8B. 78, 14
        mov     bl, byte [eax+16B0H]                    ; 1000827F _ 8A. 98, 000016B0
        mov     byte [ecx+edi], bl                      ; 10008285 _ 88. 1C 39
        mov     edi, dword [eax+14H]                    ; 10008288 _ 8B. 78, 14
        mov     ebx, dword [eax+8H]                     ; 1000828B _ 8B. 58, 08
        xor     ecx, ecx                                ; 1000828E _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10008290 _ 8A. 88, 000016B1
        inc     edi                                     ; 10008296 _ 47
        mov     dword [eax+14H], edi                    ; 10008297 _ 89. 78, 14
        mov     byte [edi+ebx], cl                      ; 1000829A _ 88. 0C 1F
        mov     ecx, dword [eax+14H]                    ; 1000829D _ 8B. 48, 14
        mov     edi, dword [eax+16B4H]                  ; 100082A0 _ 8B. B8, 000016B4
        inc     ecx                                     ; 100082A6 _ 41
        mov     dword [eax+14H], ecx                    ; 100082A7 _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 100082AA _ 66: B9, 0010
        sub     cx, di                                  ; 100082AE _ 66: 2B. CF
        shr     dx, cl                                  ; 100082B1 _ 66: D3. EA
        mov     word [eax+16B0H], dx                    ; 100082B4 _ 66: 89. 90, 000016B0
        lea     edx, [edi+esi-10H]                      ; 100082BB _ 8D. 54 37, F0
        mov     dword [eax+16B4H], edx                  ; 100082BF _ 89. 90, 000016B4
        mov     edx, dword [esp+20H]                    ; 100082C5 _ 8B. 54 24, 20
        jmp     ?_0835                                  ; 100082C9 _ EB, 19

?_0834: mov     di, word [eax+0ABCH]                    ; 100082CB _ 66: 8B. B8, 00000ABC
        shl     di, cl                                  ; 100082D2 _ 66: D3. E7
        or      word [eax+16B0H], di                    ; 100082D5 _ 66: 09. B8, 000016B0
        add     ecx, esi                                ; 100082DC _ 03. CE
        mov     dword [eax+16B4H], ecx                  ; 100082DE _ 89. 88, 000016B4
?_0835: mov     ecx, dword [eax+16B4H]                  ; 100082E4 _ 8B. 88, 000016B4
        cmp     ecx, 9                                  ; 100082EA _ 83. F9, 09
        jle     ?_0836                                  ; 100082ED _ 7E, 5B
        add     edx, -11                                ; 100082EF _ 83. C2, F5
        mov     esi, edx                                ; 100082F2 _ 8B. F2
        shl     esi, cl                                 ; 100082F4 _ D3. E6
        mov     ecx, dword [eax+8H]                     ; 100082F6 _ 8B. 48, 08
        or      word [eax+16B0H], si                    ; 100082F9 _ 66: 09. B0, 000016B0
        mov     esi, dword [eax+14H]                    ; 10008300 _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 10008303 _ 8A. 98, 000016B0
        mov     byte [ecx+esi], bl                      ; 10008309 _ 88. 1C 31
        mov     esi, dword [eax+14H]                    ; 1000830C _ 8B. 70, 14
        mov     edi, dword [eax+8H]                     ; 1000830F _ 8B. 78, 08
        xor     ecx, ecx                                ; 10008312 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10008314 _ 8A. 88, 000016B1
        inc     esi                                     ; 1000831A _ 46
        mov     dword [eax+14H], esi                    ; 1000831B _ 89. 70, 14
        mov     byte [esi+edi], cl                      ; 1000831E _ 88. 0C 3E
        mov     ecx, dword [eax+14H]                    ; 10008321 _ 8B. 48, 14
        mov     esi, dword [eax+16B4H]                  ; 10008324 _ 8B. B0, 000016B4
        inc     ecx                                     ; 1000832A _ 41
        mov     dword [eax+14H], ecx                    ; 1000832B _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 1000832E _ 66: B9, 0010
        sub     cx, si                                  ; 10008332 _ 66: 2B. CE
        shr     dx, cl                                  ; 10008335 _ 66: D3. EA
        add     esi, -9                                 ; 10008338 _ 83. C6, F7
        mov     dword [eax+16B4H], esi                  ; 1000833B _ 89. B0, 000016B4
        mov     word [eax+16B0H], dx                    ; 10008341 _ 66: 89. 90, 000016B0
        jmp     ?_0838                                  ; 10008348 _ EB, 15

?_0836: add     edx, -11                                ; 1000834A _ 83. C2, F5
        shl     edx, cl                                 ; 1000834D _ D3. E2
        or      word [eax+16B0H], dx                    ; 1000834F _ 66: 09. 90, 000016B0
        add     ecx, 7                                  ; 10008356 _ 83. C1, 07
?_0837: mov     dword [eax+16B4H], ecx                  ; 10008359 _ 89. 88, 000016B4
?_0838: mov     ebx, dword [esp+1CH]                    ; 1000835F _ 8B. 5C 24, 1C
        xor     edx, edx                                ; 10008363 _ 33. D2
        test    ebx, ebx                                ; 10008365 _ 85. DB
        mov     dword [esp+10H], ebp                    ; 10008367 _ 89. 6C 24, 10
        jnz     ?_0839                                  ; 1000836B _ 75, 0C
        mov     ecx, 138                                ; 1000836D _ B9, 0000008A
        mov     esi, 3                                  ; 10008372 _ BE, 00000003
        jmp     ?_0841                                  ; 10008377 _ EB, 1A

?_0839: cmp     ebp, ebx                                ; 10008379 _ 3B. EB
        jnz     ?_0840                                  ; 1000837B _ 75, 0C
        mov     ecx, 6                                  ; 1000837D _ B9, 00000006
        mov     esi, 3                                  ; 10008382 _ BE, 00000003
        jmp     ?_0841                                  ; 10008387 _ EB, 0A

?_0840: mov     ecx, 7                                  ; 10008389 _ B9, 00000007
        mov     esi, 4                                  ; 1000838E _ BE, 00000004
?_0841: mov     ebp, dword [esp+24H]                    ; 10008393 _ 8B. 6C 24, 24
        mov     edi, dword [esp+14H]                    ; 10008397 _ 8B. 7C 24, 14
        add     ebp, 4                                  ; 1000839B _ 83. C5, 04
        dec     edi                                     ; 1000839E _ 4F
        mov     dword [esp+24H], ebp                    ; 1000839F _ 89. 6C 24, 24
        mov     dword [esp+14H], edi                    ; 100083A3 _ 89. 7C 24, 14
        jne     ?_0817                                  ; 100083A7 _ 0F 85, FFFFFAE2
        pop     ebp                                     ; 100083AD _ 5D
?_0842: pop     edi                                     ; 100083AE _ 5F
        pop     esi                                     ; 100083AF _ 5E
        pop     ebx                                     ; 100083B0 _ 5B
        add     esp, 8                                  ; 100083B1 _ 83. C4, 08
        ret                                             ; 100083B4 _ C3

        nop                                             ; 100083B5 _ 90
        nop                                             ; 100083B6 _ 90
        nop                                             ; 100083B7 _ 90
        nop                                             ; 100083B8 _ 90
        nop                                             ; 100083B9 _ 90
        nop                                             ; 100083BA _ 90
        nop                                             ; 100083BB _ 90
        nop                                             ; 100083BC _ 90
        nop                                             ; 100083BD _ 90
        nop                                             ; 100083BE _ 90
        nop                                             ; 100083BF _ 90

