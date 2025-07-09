; ---- 1000AAC0 ----
?_1119: ; Local function
        sub     esp, 8                                  ; 1000AAC0 _ 83. EC, 08
        push    ebx                                     ; 1000AAC3 _ 53
        push    ebp                                     ; 1000AAC4 _ 55
        mov     ebp, ?_5765                             ; 1000AAC5 _ BD, 10442CF0(d)
        push    esi                                     ; 1000AACA _ 56
        push    edi                                     ; 1000AACB _ 57
        mov     dword [esp+14H], ebp                    ; 1000AACC _ 89. 6C 24, 14
?_1120: mov     esi, dword [ebp]                        ; 1000AAD0 _ 8B. 75, 00
        xor     ebx, ebx                                ; 1000AAD3 _ 33. DB
        test    esi, esi                                ; 1000AAD5 _ 85. F6
        je      ?_1136                                  ; 1000AAD7 _ 0F 84, 00000237
?_1121: mov     ecx, dword [esi+95H]                    ; 1000AADD _ 8B. 8E, 00000095
        lea     eax, [esi+95H]                          ; 1000AAE3 _ 8D. 86, 00000095
        mov     dword [esp+10H], ecx                    ; 1000AAE9 _ 89. 4C 24, 10
        mov     cl, byte [esi]                          ; 1000AAED _ 8A. 0E
        test    ebx, ebx                                ; 1000AAEF _ 85. DB
        mov     edi, 1                                  ; 1000AAF1 _ BF, 00000001
        jnz     ?_1123                                  ; 1000AAF6 _ 75, 10
        cmp     cl, 5                                   ; 1000AAF8 _ 80. F9, 05
        jnz     ?_1125                                  ; 1000AAFB _ 75, 3B
        mov     ebx, esi                                ; 1000AAFD _ 8B. DE
?_1122: test    ebx, ebx                                ; 1000AAFF _ 85. DB
        jz      ?_1125                                  ; 1000AB01 _ 74, 35
        jmp     ?_1135                                  ; 1000AB03 _ E9, 00000200

?_1123: cmp     cl, 6                                   ; 1000AB08 _ 80. F9, 06
        jnz     ?_1122                                  ; 1000AB0B _ 75, F2
        push    ebx                                     ; 1000AB0D _ 53
        call    ?_1380                                  ; 1000AB0E _ E8, 00001EED
        add     esp, 4                                  ; 1000AB13 _ 83. C4, 04
        test    eax, eax                                ; 1000AB16 _ 85. C0
        jnz     ?_1124                                  ; 1000AB18 _ 75, 02
        xor     edi, edi                                ; 1000AB1A _ 33. FF
?_1124: mov     edx, dword [ebx+95H]                    ; 1000AB1C _ 8B. 93, 00000095
        lea     eax, [ebx+95H]                          ; 1000AB22 _ 8D. 83, 00000095
        mov     esi, ebx                                ; 1000AB28 _ 8B. F3
        xor     ebx, ebx                                ; 1000AB2A _ 33. DB
        test    edi, edi                                ; 1000AB2C _ 85. FF
        mov     dword [esp+10H], edx                    ; 1000AB2E _ 89. 54 24, 10
        je      ?_1135                                  ; 1000AB32 _ 0F 84, 000001D0
?_1125: cmp     esi, dword [ebp]                        ; 1000AB38 _ 3B. 75, 00
        jnz     ?_1126                                  ; 1000AB3B _ 75, 09
        mov     ecx, dword [esp+10H]                    ; 1000AB3D _ 8B. 4C 24, 10
        mov     dword [ebp], ecx                        ; 1000AB41 _ 89. 4D, 00
        jmp     ?_1127                                  ; 1000AB44 _ EB, 1C

?_1126: mov     edx, dword [esi+91H]                    ; 1000AB46 _ 8B. 96, 00000091
        mov     ecx, dword [eax]                        ; 1000AB4C _ 8B. 08
        mov     dword [edx+95H], ecx                    ; 1000AB4E _ 89. 8A, 00000095
        mov     edx, dword [eax]                        ; 1000AB54 _ 8B. 10
        mov     ecx, dword [esi+91H]                    ; 1000AB56 _ 8B. 8E, 00000091
        mov     dword [edx+91H], ecx                    ; 1000AB5C _ 89. 8A, 00000091
?_1127: mov     dword [esi+91H], 0                      ; 1000AB62 _ C7. 86, 00000091, 00000000
        mov     edx, dword [ebp+8H]                     ; 1000AB6C _ 8B. 55, 08
        mov     dword [eax], edx                        ; 1000AB6F _ 89. 10
        mov     dword [ebp+8H], esi                     ; 1000AB71 _ 89. 75, 08
        mov     al, byte [esi]                          ; 1000AB74 _ 8A. 06
        cmp     al, 106                                 ; 1000AB76 _ 3C, 6A
        jnc     ?_1134                                  ; 1000AB78 _ 0F 83, 00000171
        cmp     al, 32                                  ; 1000AB7E _ 3C, 20
        jnz     ?_1128                                  ; 1000AB80 _ 75, 42
        cmp     byte [esi+10H], 14                      ; 1000AB82 _ 80. 7E, 10, 0E
        jnz     ?_1128                                  ; 1000AB86 _ 75, 3C
        xor     ecx, ecx                                ; 1000AB88 _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000AB8A _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000AB8D _ 8B. C1
        shl     eax, 4                                  ; 1000AB8F _ C1. E0, 04
        add     eax, ecx                                ; 1000AB92 _ 03. C1
        shl     eax, 8                                  ; 1000AB94 _ C1. E0, 08
        add     eax, ecx                                ; 1000AB97 _ 03. C1
        shl     eax, 4                                  ; 1000AB99 _ C1. E0, 04
        add     eax, ecx                                ; 1000AB9C _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000AB9E _ 8D. 04 C0
        test    byte [?_5761+eax*4], 40H                ; 1000ABA1 _ F6. 04 85, 101DEB00(d), 40
        jz      ?_1128                                  ; 1000ABA9 _ 74, 19
        push    1                                       ; 1000ABAB _ 6A, 01
        push    ?_5233                                  ; 1000ABAD _ 68, 10029ADC(d)
        push    1838                                    ; 1000ABB2 _ 68, 0000072E
        push    ?_5209                                  ; 1000ABB7 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000ABBC _ E8, FFFF8A7F
        add     esp, 16                                 ; 1000ABC1 _ 83. C4, 10
?_1128: xor     ecx, ecx                                ; 1000ABC4 _ 33. C9
        push    0                                       ; 1000ABC6 _ 6A, 00
        mov     cl, byte [esi]                          ; 1000ABC8 _ 8A. 0E
        push    esi                                     ; 1000ABCA _ 56
        call    near [?_5258+ecx*4]                     ; 1000ABCB _ FF. 14 8D, 1002C3F8(d)
        add     esp, 8                                  ; 1000ABD2 _ 83. C4, 08
        test    eax, eax                                ; 1000ABD5 _ 85. C0
        jne     ?_1133                                  ; 1000ABD7 _ 0F 85, 000000BB
        cmp     byte [esi], 32                          ; 1000ABDD _ 80. 3E, 20
        jnz     ?_1129                                  ; 1000ABE0 _ 75, 33
        cmp     byte [esi+10H], 14                      ; 1000ABE2 _ 80. 7E, 10, 0E
        jnz     ?_1129                                  ; 1000ABE6 _ 75, 2D
        xor     ecx, ecx                                ; 1000ABE8 _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000ABEA _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000ABED _ 8B. C1
        shl     eax, 4                                  ; 1000ABEF _ C1. E0, 04
        add     eax, ecx                                ; 1000ABF2 _ 03. C1
        shl     eax, 8                                  ; 1000ABF4 _ C1. E0, 08
        add     eax, ecx                                ; 1000ABF7 _ 03. C1
        shl     eax, 4                                  ; 1000ABF9 _ C1. E0, 04
        add     eax, ecx                                ; 1000ABFC _ 03. C1
        mov     ecx, 38                                 ; 1000ABFE _ B9, 00000026
        lea     edx, [eax+eax*8]                        ; 1000AC03 _ 8D. 14 C0
        lea     edi, [?_5764+edx*4]                     ; 1000AC06 _ 8D. 3C 95, 10442C54(d)
        rep movsd                                       ; 1000AC0D _ F3: A5
        movsb                                           ; 1000AC0F _ A4
        jmp     ?_1135                                  ; 1000AC10 _ E9, 000000F3

?_1129: xor     ecx, ecx                                ; 1000AC15 _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000AC17 _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000AC1A _ 8B. C1
        shl     eax, 4                                  ; 1000AC1C _ C1. E0, 04
        add     eax, ecx                                ; 1000AC1F _ 03. C1
        shl     eax, 8                                  ; 1000AC21 _ C1. E0, 08
        add     eax, ecx                                ; 1000AC24 _ 03. C1
        shl     eax, 4                                  ; 1000AC26 _ C1. E0, 04
        add     eax, ecx                                ; 1000AC29 _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000AC2B _ 8D. 04 C0
        mov     cl, byte [?_5761+eax*4]                 ; 1000AC2E _ 8A. 0C 85, 101DEB00(d)
        lea     eax, [?_5761+eax*4]                     ; 1000AC35 _ 8D. 04 85, 101DEB00(d)
        test    cl, 01H                                 ; 1000AC3C _ F6. C1, 01
        jz      ?_1130                                  ; 1000AC3F _ 74, 13
        push    esi                                     ; 1000AC41 _ 56
        push    eax                                     ; 1000AC42 _ 50
        call    ?_1110                                  ; 1000AC43 _ E8, FFFFFD58
        add     esp, 8                                  ; 1000AC48 _ 83. C4, 08
        cmp     eax, -1                                 ; 1000AC4B _ 83. F8, FF
        je      ?_1137                                  ; 1000AC4E _ 0F 84, 000000E0
?_1130: mov     dword [esi+4H], -1                      ; 1000AC54 _ C7. 46, 04, FFFFFFFF
        xor     ebp, ebp                                ; 1000AC5B _ 33. ED
        mov     edi, ?_5761                             ; 1000AC5D _ BF, 101DEB00(d)
?_1131: xor     eax, eax                                ; 1000AC62 _ 33. C0
        mov     al, byte [esi+3H]                       ; 1000AC64 _ 8A. 46, 03
        cmp     ebp, eax                                ; 1000AC67 _ 3B. E8
        jz      ?_1132                                  ; 1000AC69 _ 74, 18
        test    byte [edi], 01H                         ; 1000AC6B _ F6. 07, 01
        jz      ?_1132                                  ; 1000AC6E _ 74, 13
        push    esi                                     ; 1000AC70 _ 56
        push    edi                                     ; 1000AC71 _ 57
        call    ?_1110                                  ; 1000AC72 _ E8, FFFFFD29
        add     esp, 8                                  ; 1000AC77 _ 83. C4, 08
        cmp     eax, -1                                 ; 1000AC7A _ 83. F8, FF
        je      ?_1137                                  ; 1000AC7D _ 0F 84, 000000B1
?_1132: add     edi, 2507364                            ; 1000AC83 _ 81. C7, 00264264
        inc     ebp                                     ; 1000AC89 _ 45
        cmp     edi, ?_5770                             ; 1000AC8A _ 81. FF, 114FFE20(d)
        jl      ?_1131                                  ; 1000AC90 _ 7C, D0
        mov     ebp, dword [esp+14H]                    ; 1000AC92 _ 8B. 6C 24, 14
        jmp     ?_1135                                  ; 1000AC96 _ EB, 70

?_1133: xor     ecx, ecx                                ; 1000AC98 _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000AC9A _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000AC9D _ 8B. C1
        shl     eax, 4                                  ; 1000AC9F _ C1. E0, 04
        add     eax, ecx                                ; 1000ACA2 _ 03. C1
        shl     eax, 8                                  ; 1000ACA4 _ C1. E0, 08
        add     eax, ecx                                ; 1000ACA7 _ 03. C1
        shl     eax, 4                                  ; 1000ACA9 _ C1. E0, 04
        add     eax, ecx                                ; 1000ACAC _ 03. C1
        lea     ecx, [eax+eax*8]                        ; 1000ACAE _ 8D. 0C C0
        test    byte [?_5761+ecx*4], 01H                ; 1000ACB1 _ F6. 04 8D, 101DEB00(d), 01
        jz      ?_1135                                  ; 1000ACB9 _ 74, 4D
        xor     ecx, ecx                                ; 1000ACBB _ 33. C9
        push    esi                                     ; 1000ACBD _ 56
        mov     cl, byte [esi+3H]                       ; 1000ACBE _ 8A. 4E, 03
        mov     byte [esi], 2                           ; 1000ACC1 _ C6. 06, 02
        mov     eax, ecx                                ; 1000ACC4 _ 8B. C1
        shl     eax, 4                                  ; 1000ACC6 _ C1. E0, 04
        add     eax, ecx                                ; 1000ACC9 _ 03. C1
        shl     eax, 8                                  ; 1000ACCB _ C1. E0, 08
        add     eax, ecx                                ; 1000ACCE _ 03. C1
        shl     eax, 4                                  ; 1000ACD0 _ C1. E0, 04
        add     eax, ecx                                ; 1000ACD3 _ 03. C1
        lea     edx, [eax+eax*8]                        ; 1000ACD5 _ 8D. 14 C0
        lea     eax, [?_5761+edx*4]                     ; 1000ACD8 _ 8D. 04 95, 101DEB00(d)
        push    eax                                     ; 1000ACDF _ 50
        call    ?_1110                                  ; 1000ACE0 _ E8, FFFFFCBB
        add     esp, 8                                  ; 1000ACE5 _ 83. C4, 08
        cmp     eax, -1                                 ; 1000ACE8 _ 83. F8, FF
        jz      ?_1137                                  ; 1000ACEB _ 74, 47
        jmp     ?_1135                                  ; 1000ACED _ EB, 19

?_1134: push    1                                       ; 1000ACEF _ 6A, 01
        push    ?_5232                                  ; 1000ACF1 _ 68, 10029AC0(d)
        push    1878                                    ; 1000ACF6 _ 68, 00000756
        push    ?_5209                                  ; 1000ACFB _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AD00 _ E8, FFFF893B
        add     esp, 16                                 ; 1000AD05 _ 83. C4, 10
?_1135: mov     esi, dword [esp+10H]                    ; 1000AD08 _ 8B. 74 24, 10
        test    esi, esi                                ; 1000AD0C _ 85. F6
        jne     ?_1121                                  ; 1000AD0E _ 0F 85, FFFFFDC9
?_1136: add     ebp, 2507364                            ; 1000AD14 _ 81. C5, 00264264
        cmp     ebp, ?_5773                             ; 1000AD1A _ 81. FD, 11764010(d)
        mov     dword [esp+14H], ebp                    ; 1000AD20 _ 89. 6C 24, 14
        jl      ?_1120                                  ; 1000AD24 _ 0F 8C, FFFFFDA6
        pop     edi                                     ; 1000AD2A _ 5F
        pop     esi                                     ; 1000AD2B _ 5E
        pop     ebp                                     ; 1000AD2C _ 5D
        xor     eax, eax                                ; 1000AD2D _ 33. C0
        pop     ebx                                     ; 1000AD2F _ 5B
        add     esp, 8                                  ; 1000AD30 _ 83. C4, 08
        ret                                             ; 1000AD33 _ C3
