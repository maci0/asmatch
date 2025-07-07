; ---- 10008E38 ----
?_0915: ; Local function
        mov     eax, ebp                                ; 10008E38 _ 8B. C5
        pop     esi                                     ; 10008E3A _ 5E
        pop     ebp                                     ; 10008E3B _ 5D
        ret                                             ; 10008E3C _ C3

        nop                                             ; 10008E3D _ 90
        nop                                             ; 10008E3E _ 90
        nop                                             ; 10008E3F _ 90
?_0916: push    ebp                                     ; 10008E40 _ 55
        mov     ebp, esp                                ; 10008E41 _ 8B. EC
        sub     esp, 268                                ; 10008E43 _ 81. EC, 0000010C
        push    ebx                                     ; 10008E49 _ 53
        push    esi                                     ; 10008E4A _ 56
        push    edi                                     ; 10008E4B _ 57
        mov     edi, dword [ebp+14H]                    ; 10008E4C _ 8B. 7D, 14
        test    edi, edi                                ; 10008E4F _ 85. FF
        mov     dword [ebp-4H], -1                      ; 10008E51 _ C7. 45, FC, FFFFFFFF
        je      ?_0925                                  ; 10008E58 _ 0F 84, 000001B0
        mov     cl, byte [edi+13CH]                     ; 10008E5E _ 8A. 8F, 0000013C
        test    cl, 01H                                 ; 10008E64 _ F6. C1, 01
        je      ?_0925                                  ; 10008E67 _ 0F 84, 000001A1
        lea     eax, [edi+100H]                         ; 10008E6D _ 8D. 87, 00000100
        mov     dword [ebp-0CH], eax                    ; 10008E73 _ 89. 45, F4
        mov     eax, dword [eax]                        ; 10008E76 _ 8B. 00
        test    eax, eax                                ; 10008E78 _ 85. C0
        jnz     ?_0917                                  ; 10008E7A _ 75, 09
        test    cl, 20H                                 ; 10008E7C _ F6. C1, 20
        je      ?_0925                                  ; 10008E7F _ 0F 84, 00000189
?_0917: mov     esi, dword [ebp+0CH]                    ; 10008E85 _ 8B. 75, 0C
        mov     dl, cl                                  ; 10008E88 _ 8A. D1
        imul    esi, dword [ebp+10H]                    ; 10008E8A _ 0F AF. 75, 10
        and     dl, 20H                                 ; 10008E8E _ 80. E2, 20
        mov     dword [ebp-8H], esi                     ; 10008E91 _ 89. 75, F8
        jz      ?_0918                                  ; 10008E94 _ 74, 14
        test    cl, 08H                                 ; 10008E96 _ F6. C1, 08
        jnz     ?_0918                                  ; 10008E99 _ 75, 0F
        mov     ebx, dword [edi+104H]                   ; 10008E9B _ 8B. 9F, 00000104
        cmp     ebx, esi                                ; 10008EA1 _ 3B. DE
        jnc     ?_0918                                  ; 10008EA3 _ 73, 05
        mov     dword [ebp-8H], ebx                     ; 10008EA5 _ 89. 5D, F8
        mov     esi, ebx                                ; 10008EA8 _ 8B. F3
?_0918: test    esi, esi                                ; 10008EAA _ 85. F6
        jnz     ?_0919                                  ; 10008EAC _ 75, 0C
        mov     dword [ebp-4H], esi                     ; 10008EAE _ 89. 75, FC
        mov     eax, esi                                ; 10008EB1 _ 8B. C6
        pop     edi                                     ; 10008EB3 _ 5F
        pop     esi                                     ; 10008EB4 _ 5E
        pop     ebx                                     ; 10008EB5 _ 5B
        mov     esp, ebp                                ; 10008EB6 _ 8B. E5
        pop     ebp                                     ; 10008EB8 _ 5D
        ret                                             ; 10008EB9 _ C3

?_0919: mov     ebx, dword [ebp+8H]                     ; 10008EBA _ 8B. 5D, 08
        test    ebx, ebx                                ; 10008EBD _ 85. DB
        je      ?_0925                                  ; 10008EBF _ 0F 84, 00000149
        test    dl, dl                                  ; 10008EC5 _ 84. D2
        je      ?_0922                                  ; 10008EC7 _ 0F 84, 0000008E
        test    cl, 08H                                 ; 10008ECD _ F6. C1, 08
        jz      ?_0920                                  ; 10008ED0 _ 74, 2E
        mov     eax, dword [ebp-0CH]                    ; 10008ED2 _ 8B. 45, F4
        push    2                                       ; 10008ED5 _ 6A, 02
        push    eax                                     ; 10008ED7 _ 50
        mov     dword [edi+10CH], ebx                   ; 10008ED8 _ 89. 9F, 0000010C
        mov     dword [edi+110H], esi                   ; 10008EDE _ 89. B7, 00000110
        call    ?_0539                                  ; 10008EE4 _ E8, FFFFC9E7
        mov     eax, dword [edi+110H]                   ; 10008EE9 _ 8B. 87, 00000110
        add     esp, 8                                  ; 10008EEF _ 83. C4, 08
        sub     esi, eax                                ; 10008EF2 _ 2B. F0
        mov     dword [ebp-4H], esi                     ; 10008EF4 _ 89. 75, FC
        mov     eax, esi                                ; 10008EF7 _ 8B. C6
        pop     edi                                     ; 10008EF9 _ 5F
        pop     esi                                     ; 10008EFA _ 5E
        pop     ebx                                     ; 10008EFB _ 5B
        mov     esp, ebp                                ; 10008EFC _ 8B. E5
        pop     ebp                                     ; 10008EFE _ 5D
        ret                                             ; 10008EFF _ C3

?_0920: mov     dword [ebp+10H], eax                    ; 10008F00 _ 89. 45, 10
        mov     edi, dword [ebp+8H]                     ; 10008F03 _ 8B. 7D, 08
        mov     esi, dword [ebp+10H]                    ; 10008F06 _ 8B. 75, 10
        mov     ebx, dword [ebp-8H]                     ; 10008F09 _ 8B. 5D, F8
        lea     ecx, [edi+edi*2]                        ; 10008F0C _ 8D. 0C 7F
        and     ecx, 03H                                ; 10008F0F _ 83. E1, 03
        sub     ebx, ecx                                ; 10008F12 _ 2B. D9
        jle     ?_0921                                  ; 10008F14 _ 7E, 0C
        rep movsb                                       ; 10008F16 _ F3: A4
        mov     ecx, ebx                                ; 10008F18 _ 8B. CB
        and     ebx, 03H                                ; 10008F1A _ 83. E3, 03
        shr     ecx, 2                                  ; 10008F1D _ C1. E9, 02
        rep movsd                                       ; 10008F20 _ F3: A5
?_0921: add     ecx, ebx                                ; 10008F22 _ 03. CB
        rep movsb                                       ; 10008F24 _ F3: A4
        mov     ecx, dword [ebp-0CH]                    ; 10008F26 _ 8B. 4D, F4
        mov     eax, dword [ebp-8H]                     ; 10008F29 _ 8B. 45, F8
        mov     dword [ebp-4H], eax                     ; 10008F2C _ 89. 45, FC
        mov     edi, dword [ecx]                        ; 10008F2F _ 8B. 39
        add     edi, eax                                ; 10008F31 _ 03. F8
        mov     dword [ecx], edi                        ; 10008F33 _ 89. 39
        mov     ecx, dword [ebp+14H]                    ; 10008F35 _ 8B. 4D, 14
        pop     edi                                     ; 10008F38 _ 5F
        mov     esi, dword [ecx+104H]                   ; 10008F39 _ 8B. B1, 00000104
        mov     edx, dword [ecx+108H]                   ; 10008F3F _ 8B. 91, 00000108
        sub     esi, eax                                ; 10008F45 _ 2B. F0
        add     edx, eax                                ; 10008F47 _ 03. D0
        mov     dword [ecx+104H], esi                   ; 10008F49 _ 89. B1, 00000104
        pop     esi                                     ; 10008F4F _ 5E
        mov     dword [ecx+108H], edx                   ; 10008F50 _ 89. 91, 00000108
        pop     ebx                                     ; 10008F56 _ 5B
        mov     esp, ebp                                ; 10008F57 _ 8B. E5
        pop     ebp                                     ; 10008F59 _ 5D
        ret                                             ; 10008F5A _ C3

?_0922: test    cl, 10H                                 ; 10008F5B _ F6. C1, 10
        jz      ?_0923                                  ; 10008F5E _ 74, 7F
        push    esi                                     ; 10008F60 _ 56
        push    ebx                                     ; 10008F61 _ 53
        push    eax                                     ; 10008F62 _ 50
        call    ?_0881                                  ; 10008F63 _ E8, FFFFFB28
        mov     dword [ebp-4H], eax                     ; 10008F68 _ 89. 45, FC
        mov     al, byte [edi+13CH]                     ; 10008F6B _ 8A. 87, 0000013C
        add     esp, 12                                 ; 10008F71 _ 83. C4, 0C
        test    al, 04H                                 ; 10008F74 _ A8, 04
        je      ?_0925                                  ; 10008F76 _ 0F 84, 00000092
        cmp     dword [ebp-4H], 2                       ; 10008F7C _ 83. 7D, FC, 02
        jc      ?_0925                                  ; 10008F80 _ 0F 82, 00000088
        and     al, 0FFFFFFFBH                          ; 10008F86 _ 24, FB
        xor     ecx, ecx                                ; 10008F88 _ 33. C9
        mov     byte [edi+13CH], al                     ; 10008F8A _ 88. 87, 0000013C
        mov     cl, byte [ebx]                          ; 10008F90 _ 8A. 0B
        cmp     ecx, dword [?_5183]                     ; 10008F92 _ 3B. 0D, 10029450(d)
        jnz     ?_0925                                  ; 10008F98 _ 75, 74
        mov     eax, dword [?_5184]                     ; 10008F9A _ A1, 10029454(d)
        xor     edx, edx                                ; 10008F9F _ 33. D2
        mov     dl, byte [ebx+1H]                       ; 10008FA1 _ 8A. 53, 01
        cmp     edx, eax                                ; 10008FA4 _ 3B. D0
        jnz     ?_0925                                  ; 10008FA6 _ 75, 66
        push    edi                                     ; 10008FA8 _ 57
        lea     eax, [ebp-10CH]                         ; 10008FA9 _ 8D. 85, FFFFFEF4
        push    ?_5186                                  ; 10008FAF _ 68, 10029474(d)
        push    eax                                     ; 10008FB4 _ 50
        call    ?_3039                                  ; 10008FB5 _ E8, 000112DF
        lea     ecx, [ebp-10CH]                         ; 10008FBA _ 8D. 8D, FFFFFEF4
        push    1                                       ; 10008FC0 _ 6A, 01
        push    ecx                                     ; 10008FC2 _ 51
        push    1460                                    ; 10008FC3 _ 68, 000005B4
        push    ?_5185                                  ; 10008FC8 _ 68, 10029458(d)
        call    ?_0267                                  ; 10008FCD _ E8, FFFFA66E
        mov     eax, dword [ebp-4H]                     ; 10008FD2 _ 8B. 45, FC
        add     esp, 28                                 ; 10008FD5 _ 83. C4, 1C
        pop     edi                                     ; 10008FD8 _ 5F
        pop     esi                                     ; 10008FD9 _ 5E
        pop     ebx                                     ; 10008FDA _ 5B
        mov     esp, ebp                                ; 10008FDB _ 8B. E5
        pop     ebp                                     ; 10008FDD _ 5D
        ret                                             ; 10008FDE _ C3

?_0923: test    cl, 08H                                 ; 10008FDF _ F6. C1, 08
        jz      ?_0924                                  ; 10008FE2 _ 74, 15
        push    esi                                     ; 10008FE4 _ 56
        push    ebx                                     ; 10008FE5 _ 53
        push    eax                                     ; 10008FE6 _ 50
        call    ?_0303                                  ; 10008FE7 _ E8, FFFFA974
        add     esp, 12                                 ; 10008FEC _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 10008FEF _ 89. 45, FC
        pop     edi                                     ; 10008FF2 _ 5F
        pop     esi                                     ; 10008FF3 _ 5E
        pop     ebx                                     ; 10008FF4 _ 5B
        mov     esp, ebp                                ; 10008FF5 _ 8B. E5
        pop     ebp                                     ; 10008FF7 _ 5D
        ret                                             ; 10008FF8 _ C3

?_0924: mov     edx, dword [ebp+10H]                    ; 10008FF9 _ 8B. 55, 10
        push    eax                                     ; 10008FFC _ 50
        mov     eax, dword [ebp+0CH]                    ; 10008FFD _ 8B. 45, 0C
        push    edx                                     ; 10009000 _ 52
        push    eax                                     ; 10009001 _ 50
        push    ebx                                     ; 10009002 _ 53
        call    ?_3143                                  ; 10009003 _ E8, 00011A62
        add     esp, 16                                 ; 10009008 _ 83. C4, 10
        mov     dword [ebp-4H], eax                     ; 1000900B _ 89. 45, FC
?_0925: mov     eax, dword [ebp-4H]                     ; 1000900E _ 8B. 45, FC
        pop     edi                                     ; 10009011 _ 5F
        pop     esi                                     ; 10009012 _ 5E
        pop     ebx                                     ; 10009013 _ 5B
        mov     esp, ebp                                ; 10009014 _ 8B. E5
        pop     ebp                                     ; 10009016 _ 5D
        ret                                             ; 10009017 _ C3

        nop                                             ; 10009018 _ 90
        nop                                             ; 10009019 _ 90
        nop                                             ; 1000901A _ 90
        nop                                             ; 1000901B _ 90
        nop                                             ; 1000901C _ 90
        nop                                             ; 1000901D _ 90
        nop                                             ; 1000901E _ 90
        nop                                             ; 1000901F _ 90
?_0926: sub     esp, 12                                 ; 10009020 _ 83. EC, 0C
        push    ebx                                     ; 10009023 _ 53
        push    ebp                                     ; 10009024 _ 55
        push    esi                                     ; 10009025 _ 56
        push    edi                                     ; 10009026 _ 57
        mov     edi, dword [esp+20H]                    ; 10009027 _ 8B. 7C 24, 20
        xor     eax, eax                                ; 1000902B _ 33. C0
        mov     bl, 1                                   ; 1000902D _ B3, 01
        mov     byte [esp+14H], 1                       ; 1000902F _ C6. 44 24, 14, 01
        test    edi, edi                                ; 10009034 _ 85. FF
        mov     byte [esp+18H], bl                      ; 10009036 _ 88. 5C 24, 18
        mov     byte [esp+13H], bl                      ; 1000903A _ 88. 5C 24, 13
        je      ?_0947                                  ; 1000903E _ 0F 84, 0000026F
        mov     ebp, dword [esp+24H]                    ; 10009044 _ 8B. 6C 24, 24
        test    ebp, ebp                                ; 10009048 _ 85. ED
        jbe     ?_0947                                  ; 1000904A _ 0F 86, 00000263
        mov     eax, dword [esp+28H]                    ; 10009050 _ 8B. 44 24, 28
        mov     esi, eax                                ; 10009054 _ 8B. F0
        cmp     byte [eax], 0                           ; 10009056 _ 80. 38, 00
        jz      ?_0934                                  ; 10009059 _ 74, 48
?_0927: movsx   eax, byte [esi]                         ; 1000905B _ 0F BE. 06
        push    eax                                     ; 1000905E _ 50
        call    ?_3235                                  ; 1000905F _ E8, 0001205C
        add     eax, -78                                ; 10009064 _ 83. C0, B2
        add     esp, 4                                  ; 10009067 _ 83. C4, 04
        cmp     eax, 12                                 ; 1000906A _ 83. F8, 0C
        ja      ?_0933                                  ; 1000906D _ 77, 28
        xor     ecx, ecx                                ; 1000906F _ 33. C9
        mov     cl, byte [?_0949+eax]                   ; 10009071 _ 8A. 88, 100092D0(d)
        jmp     near [?_0948+ecx*4]                     ; 10009077 _ FF. 24 8D, 100092BC(d)

?_0928: xor     bl, bl                                  ; 1000907E _ 32. DB
        jmp     ?_0932                                  ; 10009080 _ EB, 10

?_0929: mov     byte [esp+14H], 1                       ; 10009082 _ C6. 44 24, 14, 01
        jmp     ?_0933                                  ; 10009087 _ EB, 0E

?_0930: mov     byte [esp+14H], 0                       ; 10009089 _ C6. 44 24, 14, 00
        jmp     ?_0933                                  ; 1000908E _ EB, 07

?_0931: mov     bl, 1                                   ; 10009090 _ B3, 01
?_0932: mov     byte [esp+13H], 0                       ; 10009092 _ C6. 44 24, 13, 00
?_0933: mov     al, byte [esi+1H]                       ; 10009097 _ 8A. 46, 01
        inc     esi                                     ; 1000909A _ 46
        test    al, al                                  ; 1000909B _ 84. C0
        jnz     ?_0927                                  ; 1000909D _ 75, BC
        mov     byte [esp+18H], bl                      ; 1000909F _ 88. 5C 24, 18
?_0934: push    16                                      ; 100090A3 _ 6A, 10
        push    320                                     ; 100090A5 _ 68, 00000140
        push    ?_5523                                  ; 100090AA _ 68, 10034670(d)
        call    ?_0695                                  ; 100090AF _ E8, FFFFDC6C
        mov     cl, byte [esp+20H]                      ; 100090B4 _ 8A. 4C 24, 20
        mov     esi, eax                                ; 100090B8 _ 8B. F0
        add     esp, 12                                 ; 100090BA _ 83. C4, 0C
        mov     dl, byte [esi+13CH]                     ; 100090BD _ 8A. 96, 0000013C
        and     dl, 0FFFFFFEBH                          ; 100090C3 _ 80. E2, EB
        or      dl, 22H                                 ; 100090C6 _ 80. CA, 22
        test    cl, cl                                  ; 100090C9 _ 84. C9
        mov     byte [esi+13CH], dl                     ; 100090CB _ 88. 96, 0000013C
        je      ?_0940                                  ; 100090D1 _ 0F 84, 000000A3
        mov     al, byte [esp+13H]                      ; 100090D7 _ 8A. 44 24, 13
        test    al, al                                  ; 100090DB _ 84. C0
        jz      ?_0938                                  ; 100090DD _ 74, 4A
        cmp     ebp, 10                                 ; 100090DF _ 83. FD, 0A
        ja      ?_0937                                  ; 100090E2 _ 77, 21
?_0935: xor     bl, bl                                  ; 100090E4 _ 32. DB
        mov     byte [esp+18H], bl                      ; 100090E6 _ 88. 5C 24, 18
?_0936: mov     dword [esi+100H], edi                   ; 100090EA _ 89. BE, 00000100
        mov     dword [esi+104H], ebp                   ; 100090F0 _ 89. AE, 00000104
        mov     dword [esi+108H], 0                     ; 100090F6 _ C7. 86, 00000108, 00000000
        jmp     ?_0945                                  ; 10009100 _ E9, 0000015D

?_0937: mov     edx, dword [?_5183]                     ; 10009105 _ 8B. 15, 10029450(d)
        xor     eax, eax                                ; 1000910B _ 33. C0
        mov     al, byte [edi]                          ; 1000910D _ 8A. 07
        cmp     eax, edx                                ; 1000910F _ 3B. C2
        jnz     ?_0935                                  ; 10009111 _ 75, D1
        mov     eax, dword [?_5184]                     ; 10009113 _ A1, 10029454(d)
        xor     edx, edx                                ; 10009118 _ 33. D2
        mov     dl, byte [edi+1H]                       ; 1000911A _ 8A. 57, 01
        cmp     edx, eax                                ; 1000911D _ 3B. D0
        jnz     ?_0935                                  ; 1000911F _ 75, C3
        mov     bl, 1                                   ; 10009121 _ B3, 01
        mov     byte [esp+18H], bl                      ; 10009123 _ 88. 5C 24, 18
        jmp     ?_0939                                  ; 10009127 _ EB, 04

?_0938: test    bl, bl                                  ; 10009129 _ 84. DB
        jz      ?_0936                                  ; 1000912B _ 74, BD
?_0939: lea     eax, [esi+100H]                         ; 1000912D _ 8D. 86, 00000100
        lea     ecx, [edi+0AH]                          ; 10009133 _ 8D. 4F, 0A
        push    56                                      ; 10009136 _ 6A, 38
        push    ?_5057                                  ; 10009138 _ 68, 1002706C(d)
        mov     dword [eax], ecx                        ; 1000913D _ 89. 08
        lea     edx, [ebp-0AH]                          ; 1000913F _ 8D. 55, F6
        xor     ecx, ecx                                ; 10009142 _ 33. C9
        push    -15                                     ; 10009144 _ 6A, F1
        push    eax                                     ; 10009146 _ 50
        mov     dword [esi+104H], edx                   ; 10009147 _ 89. 96, 00000104
        mov     dword [esi+10CH], ecx                   ; 1000914D _ 89. 8E, 0000010C
        mov     dword [esi+110H], ecx                   ; 10009153 _ 89. 8E, 00000110
        mov     dword [esi+120H], ecx                   ; 10009159 _ 89. 8E, 00000120
        mov     dword [esi+124H], ecx                   ; 1000915F _ 89. 8E, 00000124
        call    ?_0530                                  ; 10009165 _ E8, FFFFC656
        add     esp, 16                                 ; 1000916A _ 83. C4, 10
        test    eax, eax                                ; 1000916D _ 85. C0
        je      ?_0944                                  ; 1000916F _ 0F 84, 000000E9
        jmp     ?_0941                                  ; 10009175 _ E9, 000000A0

?_0940: test    bl, bl                                  ; 1000917A _ 84. DB
        je      ?_0943                                  ; 1000917C _ 0F 84, 000000C4
        cmp     ebp, 18                                 ; 10009182 _ 83. FD, 12
        jc      ?_0941                                  ; 10009185 _ 0F 82, 0000008F
        mov     al, byte [?_5183]                       ; 1000918B _ A0, 10029450(d)
        lea     ebp, [esi+100H]                         ; 10009190 _ 8D. AE, 00000100
        mov     byte [edi], al                          ; 10009196 _ 88. 07
        mov     cl, byte [?_5184]                       ; 10009198 _ 8A. 0D, 10029454(d)
        mov     byte [edi+1H], cl                       ; 1000919E _ 88. 4F, 01
        mov     ecx, dword [esp+24H]                    ; 100091A1 _ 8B. 4C 24, 24
        xor     eax, eax                                ; 100091A5 _ 33. C0
        lea     edx, [edi+0AH]                          ; 100091A7 _ 8D. 57, 0A
        push    eax                                     ; 100091AA _ 50
        add     ecx, -10                                ; 100091AB _ 83. C1, F6
        push    eax                                     ; 100091AE _ 50
        mov     byte [edi+2H], 8                        ; 100091AF _ C6. 47, 02, 08
        mov     byte [edi+8H], 0                        ; 100091B3 _ C6. 47, 08, 00
        mov     byte [edi+7H], 0                        ; 100091B7 _ C6. 47, 07, 00
        mov     byte [edi+6H], 0                        ; 100091BB _ C6. 47, 06, 00
        mov     byte [edi+5H], 0                        ; 100091BF _ C6. 47, 05, 00
        mov     byte [edi+4H], 0                        ; 100091C3 _ C6. 47, 04, 00
        mov     byte [edi+3H], 0                        ; 100091C7 _ C6. 47, 03, 00
        mov     byte [edi+9H], 11                       ; 100091CB _ C6. 47, 09, 0B
        push    eax                                     ; 100091CF _ 50
        mov     dword [ebp], eax                        ; 100091D0 _ 89. 45, 00
        mov     dword [esi+104H], eax                   ; 100091D3 _ 89. 86, 00000104
        mov     dword [esi+10CH], edx                   ; 100091D9 _ 89. 96, 0000010C
        mov     dword [esi+110H], ecx                   ; 100091DF _ 89. 8E, 00000110
        mov     dword [esi+120H], eax                   ; 100091E5 _ 89. 86, 00000120
        mov     dword [esi+124H], eax                   ; 100091EB _ 89. 86, 00000124
        call    ?_0011                                  ; 100091F1 _ E8, FFFF7FFA
        push    56                                      ; 100091F6 _ 6A, 38
        push    ?_5057                                  ; 100091F8 _ 68, 1002706C(d)
        push    0                                       ; 100091FD _ 6A, 00
        push    8                                       ; 100091FF _ 6A, 08
        push    -15                                     ; 10009201 _ 6A, F1
        push    8                                       ; 10009203 _ 6A, 08
        push    -1                                      ; 10009205 _ 6A, FF
        push    ebp                                     ; 10009207 _ 55
        mov     dword [esi+138H], eax                   ; 10009208 _ 89. 86, 00000138
        call    ?_0017                                  ; 1000920E _ E8, FFFF811D
        add     esp, 44                                 ; 10009213 _ 83. C4, 2C
        test    eax, eax                                ; 10009216 _ 85. C0
        jz      ?_0942                                  ; 10009218 _ 74, 18
?_0941: push    esi                                     ; 1000921A _ 56
        push    ?_5523                                  ; 1000921B _ 68, 10034670(d)
        call    ?_0706                                  ; 10009220 _ E8, FFFFDC0B
        add     esp, 8                                  ; 10009225 _ 83. C4, 08
        xor     eax, eax                                ; 10009228 _ 33. C0
        pop     edi                                     ; 1000922A _ 5F
        pop     esi                                     ; 1000922B _ 5E
        pop     ebp                                     ; 1000922C _ 5D
        pop     ebx                                     ; 1000922D _ 5B
        add     esp, 12                                 ; 1000922E _ 83. C4, 0C
        ret                                             ; 10009231 _ C3

?_0942: mov     cl, byte [esp+14H]                      ; 10009232 _ 8A. 4C 24, 14
        mov     ebp, dword [esp+24H]                    ; 10009236 _ 8B. 6C 24, 24
        mov     dword [esi+114H], 10                    ; 1000923A _ C7. 86, 00000114, 0000000A
        jmp     ?_0945                                  ; 10009244 _ EB, 1C

?_0943: mov     dword [esi+10CH], edi                   ; 10009246 _ 89. BE, 0000010C
        mov     dword [esi+110H], ebp                   ; 1000924C _ 89. AE, 00000110
        mov     dword [esi+114H], 0                     ; 10009252 _ C7. 86, 00000114, 00000000
        jmp     ?_0945                                  ; 1000925C _ EB, 04

?_0944: mov     cl, byte [esp+14H]                      ; 1000925E _ 8A. 4C 24, 14
?_0945: test    esi, esi                                ; 10009262 _ 85. F6
        jz      ?_0946                                  ; 10009264 _ 74, 4B
        mov     eax, dword [?_5524]                     ; 10009266 _ A1, 10034678(d)
        mov     edx, dword [esp+18H]                    ; 1000926B _ 8B. 54 24, 18
        inc     eax                                     ; 1000926F _ 40
        and     cl, 01H                                 ; 10009270 _ 80. E1, 01
        mov     dword [?_5524], eax                     ; 10009273 _ A3, 10034678(d)
        mov     al, byte [esi+13CH]                     ; 10009278 _ 8A. 86, 0000013C
        and     al, 0FFFFFFF6H                          ; 1000927E _ 24, F6
        and     bl, 01H                                 ; 10009280 _ 80. E3, 01
        xor     al, cl                                  ; 10009283 _ 32. C1
        and     edx, 0FFH                               ; 10009285 _ 81. E2, 000000FF
        shl     bl, 3                                   ; 1000928B _ C0. E3, 03
        or      al, bl                                  ; 1000928E _ 0A. C3
        push    edx                                     ; 10009290 _ 52
        mov     byte [esi+13CH], al                     ; 10009291 _ 88. 86, 0000013C
        mov     eax, dword [esp+18H]                    ; 10009297 _ 8B. 44 24, 18
        and     eax, 0FFH                               ; 1000929B _ 25, 000000FF
        push    eax                                     ; 100092A0 _ 50
        push    ebp                                     ; 100092A1 _ 55
        push    edi                                     ; 100092A2 _ 57
        push    ?_5187                                  ; 100092A3 _ 68, 100294A4(d)
        push    esi                                     ; 100092A8 _ 56
        call    ?_3039                                  ; 100092A9 _ E8, 00010FEB
        add     esp, 24                                 ; 100092AE _ 83. C4, 18
?_0946: mov     eax, esi                                ; 100092B1 _ 8B. C6
?_0947: pop     edi                                     ; 100092B3 _ 5F
        pop     esi                                     ; 100092B4 _ 5E
        pop     ebp                                     ; 100092B5 _ 5D
        pop     ebx                                     ; 100092B6 _ 5B
        add     esp, 12                                 ; 100092B7 _ 83. C4, 0C
        ret                                             ; 100092BA _ C3

        nop                                             ; 100092BB _ 90

?_0948:                                                 ; switch/case jump table
        dd ?_0928                                       ; 100092BC _ 1000907E (d)
        dd ?_0929                                       ; 100092C0 _ 10009082 (d)
        dd ?_0930                                       ; 100092C4 _ 10009089 (d)
        dd ?_0931                                       ; 100092C8 _ 10009090 (d)
        dd ?_0933                                       ; 100092CC _ 10009097 (d)

?_0949: db 00H, 04H, 04H, 04H, 01H, 04H, 04H, 04H       ; 100092D0 _ ........
        db 04H, 02H, 04H, 04H, 03H, 90H, 90H, 90H       ; 100092D8 _ ........
?_0950: mov     eax, dword [esp+8H]                     ; 100092E0 _ 8B. 44 24, 08
        imul    eax, dword [esp+0CH]                    ; 100092E4 _ 0F AF. 44 24, 0C
        push    eax                                     ; 100092E9 _ 50
        call    ?_3109                                  ; 100092EA _ E8, 00011508
        add     esp, 4                                  ; 100092EF _ 83. C4, 04
        ret                                             ; 100092F2 _ C3
        nop                                             ; 100092F3 _ 90
        nop                                             ; 100092F4 _ 90
        nop                                             ; 100092F5 _ 90
        nop                                             ; 100092F6 _ 90
        nop                                             ; 100092F7 _ 90
        nop                                             ; 100092F8 _ 90
        nop                                             ; 100092F9 _ 90
        nop                                             ; 100092FA _ 90
        nop                                             ; 100092FB _ 90
        nop                                             ; 100092FC _ 90
        nop                                             ; 100092FD _ 90
        nop                                             ; 100092FE _ 90
        nop                                             ; 100092FF _ 90
?_0951: mov     eax, dword [esp+8H]                     ; 10009300 _ 8B. 44 24, 08
        push    eax                                     ; 10009304 _ 50
        call    ?_3158                                  ; 10009305 _ E8, 00011877
        pop     ecx                                     ; 1000930A _ 59
        ret                                             ; 1000930B _ C3
        nop                                             ; 1000930C _ 90
        nop                                             ; 1000930D _ 90
        nop                                             ; 1000930E _ 90
        nop                                             ; 1000930F _ 90
?_0952: mov     eax, 1                                  ; 10009310 _ B8, 00000001
        ret     12                                      ; 10009315 _ C2, 000C

; Filling space: 8H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H

ALIGN   16

Init:
        mov     ecx, dword [esp+4H]                     ; 10009320 _ 8B. 4C 24, 04
        lea     eax, [esp+4H]                           ; 10009324 _ 8D. 44 24, 04
        push    eax                                     ; 10009328 _ 50
        push    0                                       ; 10009329 _ 6A, 00
        push    ecx                                     ; 1000932B _ 51
        push    ?_0955                                  ; 1000932C _ 68, 100093A0(d)
        push    0                                       ; 10009331 _ 6A, 00
        push    0                                       ; 10009333 _ 6A, 00
        call    near [imp_CreateThread]                 ; 10009335 _ FF. 15, 10024050(d)
        xor     edx, edx                                ; 1000933B _ 33. D2
        mov     dword [?_5778], eax                     ; 1000933D _ A3, 11764094(d)
        test    eax, eax                                ; 10009342 _ 85. C0
        setne   dl                                      ; 10009344 _ 0F 95. C2
        mov     eax, edx                                ; 10009347 _ 8B. C2
        ret                                             ; 10009349 _ C3

        nop                                             ; 1000934A _ 90
        nop                                             ; 1000934B _ 90
        nop                                             ; 1000934C _ 90
        nop                                             ; 1000934D _ 90
        nop                                             ; 1000934E _ 90
        nop                                             ; 1000934F _ 90

Exit:   ; Function begin
        mov     eax, dword [?_5778]                     ; 10009350 _ A1, 11764094(d)
        test    eax, eax                                ; 10009355 _ 85. C0
        jz      ?_0954                                  ; 10009357 _ 74, 3A
        push    esi                                     ; 10009359 _ 56
        mov     esi, dword [imp_Sleep]                  ; 1000935A _ 8B. 35, 10024058(d)
        mov     dword [?_5526], 1                       ; 10009360 _ C7. 05, 10034680(d), 00000001
?_0953: push    10                                      ; 1000936A _ 6A, 0A
        call    esi                                     ; 1000936C _ FF. D6
        mov     eax, dword [?_5526]                     ; 1000936E _ A1, 10034680(d)
        test    eax, eax                                ; 10009373 _ 85. C0
        jnz     ?_0953                                  ; 10009375 _ 75, F3
        mov     eax, dword [?_5778]                     ; 10009377 _ A1, 11764094(d)
        push    0                                       ; 1000937C _ 6A, 00
        push    eax                                     ; 1000937E _ 50
        call    near [imp_TerminateThread]              ; 1000937F _ FF. 15, 10024054(d)
        mov     ecx, dword [?_5778]                     ; 10009385 _ 8B. 0D, 11764094(d)
        push    ecx                                     ; 1000938B _ 51
        call    near [imp_CloseHandle]                  ; 1000938C _ FF. 15, 10024010(d)
        pop     esi                                     ; 10009392 _ 5E
?_0954: ret                                             ; 10009393 _ C3
; Exit End of function

        nop                                             ; 10009394 _ 90
        nop                                             ; 10009395 _ 90
        nop                                             ; 10009396 _ 90
        nop                                             ; 10009397 _ 90
        nop                                             ; 10009398 _ 90
        nop                                             ; 10009399 _ 90
        nop                                             ; 1000939A _ 90
        nop                                             ; 1000939B _ 90
        nop                                             ; 1000939C _ 90
        nop                                             ; 1000939D _ 90
        nop                                             ; 1000939E _ 90
        nop                                             ; 1000939F _ 90

