; ---- 10001D70 ----
?_0098: ; Local function
        push    ecx                                     ; 10001D70 _ 51
        push    ebp                                     ; 10001D71 _ 55
        push    esi                                     ; 10001D72 _ 56
        mov     esi, dword [esp+10H]                    ; 10001D73 _ 8B. 74 24, 10
        push    edi                                     ; 10001D77 _ 57
        xor     edi, edi                                ; 10001D78 _ 33. FF
?_0099: mov     eax, dword [esi+6CH]                    ; 10001D7A _ 8B. 46, 6C
        cmp     eax, 262                                ; 10001D7D _ 3D, 00000106
        jnc     ?_0101                                  ; 10001D82 _ 73, 27
        push    esi                                     ; 10001D84 _ 56
        call    ?_0081                                  ; 10001D85 _ E8, FFFFFE36
        mov     eax, dword [esi+6CH]                    ; 10001D8A _ 8B. 46, 6C
        add     esp, 4                                  ; 10001D8D _ 83. C4, 04
        cmp     eax, 262                                ; 10001D90 _ 3D, 00000106
        jnc     ?_0100                                  ; 10001D95 _ 73, 0C
        mov     ecx, dword [esp+18H]                    ; 10001D97 _ 8B. 4C 24, 18
        test    ecx, ecx                                ; 10001D9B _ 85. C9
        je      ?_0117                                  ; 10001D9D _ 0F 84, 000002F3
?_0100: test    eax, eax                                ; 10001DA3 _ 85. C0
        je      ?_0113                                  ; 10001DA5 _ 0F 84, 0000027F
?_0101: cmp     eax, 3                                  ; 10001DAB _ 83. F8, 03
        jc      ?_0102                                  ; 10001DAE _ 72, 41
        mov     eax, dword [esi+40H]                    ; 10001DB0 _ 8B. 46, 40
        mov     ecx, dword [esi+50H]                    ; 10001DB3 _ 8B. 4E, 50
        mov     edx, dword [esi+64H]                    ; 10001DB6 _ 8B. 56, 64
        mov     edi, dword [esi+30H]                    ; 10001DB9 _ 8B. 7E, 30
        shl     eax, cl                                 ; 10001DBC _ D3. E0
        xor     ecx, ecx                                ; 10001DBE _ 33. C9
        mov     cl, byte [edi+edx+2H]                   ; 10001DC0 _ 8A. 4C 17, 02
        mov     edi, dword [esi+4CH]                    ; 10001DC4 _ 8B. 7E, 4C
        xor     eax, ecx                                ; 10001DC7 _ 33. C1
        mov     ecx, dword [esi+3CH]                    ; 10001DC9 _ 8B. 4E, 3C
        and     eax, edi                                ; 10001DCC _ 23. C7
        xor     edi, edi                                ; 10001DCE _ 33. FF
        mov     dword [esi+40H], eax                    ; 10001DD0 _ 89. 46, 40
        mov     di, word [ecx+eax*2]                    ; 10001DD3 _ 66: 8B. 3C 41
        mov     eax, dword [esi+2CH]                    ; 10001DD7 _ 8B. 46, 2C
        mov     ecx, dword [esi+38H]                    ; 10001DDA _ 8B. 4E, 38
        and     eax, edx                                ; 10001DDD _ 23. C2
        mov     word [ecx+eax*2], di                    ; 10001DDF _ 66: 89. 3C 41
        mov     edx, dword [esi+40H]                    ; 10001DE3 _ 8B. 56, 40
        mov     eax, dword [esi+3CH]                    ; 10001DE6 _ 8B. 46, 3C
        mov     cx, word [esi+64H]                      ; 10001DE9 _ 66: 8B. 4E, 64
        mov     word [eax+edx*2], cx                    ; 10001DED _ 66: 89. 0C 50
?_0102: test    edi, edi                                ; 10001DF1 _ 85. FF
        jz      ?_0103                                  ; 10001DF3 _ 74, 27
        mov     edx, dword [esi+64H]                    ; 10001DF5 _ 8B. 56, 64
        mov     eax, dword [esi+24H]                    ; 10001DF8 _ 8B. 46, 24
        sub     edx, edi                                ; 10001DFB _ 2B. D7
        sub     eax, 262                                ; 10001DFD _ 2D, 00000106
        cmp     edx, eax                                ; 10001E02 _ 3B. D0
        ja      ?_0103                                  ; 10001E04 _ 77, 16
        cmp     dword [esi+80H], 2                      ; 10001E06 _ 83. BE, 00000080, 02
        jz      ?_0103                                  ; 10001E0D _ 74, 0D
        push    edi                                     ; 10001E0F _ 57
        push    esi                                     ; 10001E10 _ 56
        call    ?_0118                                  ; 10001E11 _ E8, 0000028A
        add     esp, 8                                  ; 10001E16 _ 83. C4, 08
        mov     dword [esi+58H], eax                    ; 10001E19 _ 89. 46, 58
?_0103: mov     eax, dword [esi+58H]                    ; 10001E1C _ 8B. 46, 58
        cmp     eax, 3                                  ; 10001E1F _ 83. F8, 03
        jc      ?_0108                                  ; 10001E22 _ 0F 82, 0000014C
        mov     edx, dword [esi+1698H]                  ; 10001E28 _ 8B. 96, 00001698
        mov     ebp, dword [esi+169CH]                  ; 10001E2E _ 8B. AE, 0000169C
        mov     cl, al                                  ; 10001E34 _ 8A. C8
        mov     ax, word [esi+64H]                      ; 10001E36 _ 66: 8B. 46, 64
        sub     ax, word [esi+68H]                      ; 10001E3A _ 66: 2B. 46, 68
        sub     cl, 3                                   ; 10001E3E _ 80. E9, 03
        mov     byte [esp+14H], cl                      ; 10001E41 _ 88. 4C 24, 14
        mov     word [ebp+edx*2], ax                    ; 10001E45 _ 66: 89. 44 55, 00
        mov     edx, dword [esi+1690H]                  ; 10001E4A _ 8B. 96, 00001690
        mov     ebp, dword [esi+1698H]                  ; 10001E50 _ 8B. AE, 00001698
        add     eax, 65535                              ; 10001E56 _ 05, 0000FFFF
        mov     byte [edx+ebp], cl                      ; 10001E5B _ 88. 0C 2A
        mov     edx, dword [esi+1698H]                  ; 10001E5E _ 8B. 96, 00001698
        mov     ecx, dword [esp+14H]                    ; 10001E64 _ 8B. 4C 24, 14
        inc     edx                                     ; 10001E68 _ 42
        mov     dword [esi+1698H], edx                  ; 10001E69 _ 89. 96, 00001698
        and     ecx, 0FFH                               ; 10001E6F _ 81. E1, 000000FF
        xor     edx, edx                                ; 10001E75 _ 33. D2
        mov     dl, byte [?_4903+ecx]                   ; 10001E77 _ 8A. 91, 100250FC(d)
        inc     word [esi+edx*4+490H]                   ; 10001E7D _ 66: FF. 84 96, 00000490
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 256                                 ; 10001E85 _ 66: 3D, 0100
        lea     ecx, [esi+edx*4+490H]                   ; 10001E89 _ 8D. 8C 96, 00000490
        jnc     ?_0104                                  ; 10001E90 _ 73, 11
        and     eax, 0FFFFH                             ; 10001E92 _ 25, 0000FFFF
        xor     ecx, ecx                                ; 10001E97 _ 33. C9
        mov     cl, byte [?_4901+eax]                   ; 10001E99 _ 8A. 88, 10024EFC(d)
        mov     eax, ecx                                ; 10001E9F _ 8B. C1
        jmp     ?_0105                                  ; 10001EA1 _ EB, 12

?_0104: and     eax, 0FFFFH                             ; 10001EA3 _ 25, 0000FFFF
        shr     eax, 7                                  ; 10001EA8 _ C1. E8, 07
        xor     edx, edx                                ; 10001EAB _ 33. D2
        mov     dl, byte [?_4902+eax]                   ; 10001EAD _ 8A. 90, 10024FFC(d)
        mov     eax, edx                                ; 10001EB3 _ 8B. C2
?_0105: inc     word [esi+eax*4+980H]                   ; 10001EB5 _ 66: FF. 84 86, 00000980
        mov     eax, dword [esi+1694H]                  ; 10001EBD _ 8B. 86, 00001694
        mov     edx, dword [esi+1698H]                  ; 10001EC3 _ 8B. 96, 00001698
        dec     eax                                     ; 10001EC9 _ 48
        xor     ecx, ecx                                ; 10001ECA _ 33. C9
        cmp     edx, eax                                ; 10001ECC _ 3B. D0
        mov     eax, dword [esi+58H]                    ; 10001ECE _ 8B. 46, 58
        mov     edx, dword [esi+78H]                    ; 10001ED1 _ 8B. 56, 78
        sete    cl                                      ; 10001ED4 _ 0F 94. C1
        mov     ebp, ecx                                ; 10001ED7 _ 8B. E9
        mov     ecx, dword [esi+6CH]                    ; 10001ED9 _ 8B. 4E, 6C
        sub     ecx, eax                                ; 10001EDC _ 2B. C8
        cmp     eax, edx                                ; 10001EDE _ 3B. C2
        mov     dword [esi+6CH], ecx                    ; 10001EE0 _ 89. 4E, 6C
        ja      ?_0107                                  ; 10001EE3 _ 77, 5E
        cmp     ecx, 3                                  ; 10001EE5 _ 83. F9, 03
        jc      ?_0107                                  ; 10001EE8 _ 72, 59
        dec     eax                                     ; 10001EEA _ 48
        mov     dword [esi+58H], eax                    ; 10001EEB _ 89. 46, 58
?_0106: mov     edx, dword [esi+64H]                    ; 10001EEE _ 8B. 56, 64
        mov     eax, dword [esi+30H]                    ; 10001EF1 _ 8B. 46, 30
        mov     edi, dword [esi+40H]                    ; 10001EF4 _ 8B. 7E, 40
        inc     edx                                     ; 10001EF7 _ 42
        xor     ecx, ecx                                ; 10001EF8 _ 33. C9
        mov     dword [esi+64H], edx                    ; 10001EFA _ 89. 56, 64
        mov     cl, byte [edx+eax+2H]                   ; 10001EFD _ 8A. 4C 02, 02
        mov     eax, ecx                                ; 10001F01 _ 8B. C1
        mov     ecx, dword [esi+50H]                    ; 10001F03 _ 8B. 4E, 50
        shl     edi, cl                                 ; 10001F06 _ D3. E7
        mov     ecx, dword [esi+3CH]                    ; 10001F08 _ 8B. 4E, 3C
        xor     eax, edi                                ; 10001F0B _ 33. C7
        mov     edi, dword [esi+4CH]                    ; 10001F0D _ 8B. 7E, 4C
        and     eax, edi                                ; 10001F10 _ 23. C7
        xor     edi, edi                                ; 10001F12 _ 33. FF
        mov     dword [esi+40H], eax                    ; 10001F14 _ 89. 46, 40
        mov     di, word [ecx+eax*2]                    ; 10001F17 _ 66: 8B. 3C 41
        mov     ecx, dword [esi+2CH]                    ; 10001F1B _ 8B. 4E, 2C
        mov     eax, dword [esi+38H]                    ; 10001F1E _ 8B. 46, 38
        and     edx, ecx                                ; 10001F21 _ 23. D1
        mov     word [eax+edx*2], di                    ; 10001F23 _ 66: 89. 3C 50
        mov     ecx, dword [esi+40H]                    ; 10001F27 _ 8B. 4E, 40
        mov     edx, dword [esi+3CH]                    ; 10001F2A _ 8B. 56, 3C
        mov     ax, word [esi+64H]                      ; 10001F2D _ 66: 8B. 46, 64
        mov     word [edx+ecx*2], ax                    ; 10001F31 _ 66: 89. 04 4A
        mov     eax, dword [esi+58H]                    ; 10001F35 _ 8B. 46, 58
        dec     eax                                     ; 10001F38 _ 48
        mov     dword [esi+58H], eax                    ; 10001F39 _ 89. 46, 58
        jnz     ?_0106                                  ; 10001F3C _ 75, B0
        jmp     ?_0109                                  ; 10001F3E _ E9, 0000009C

?_0107: mov     ecx, dword [esi+64H]                    ; 10001F43 _ 8B. 4E, 64
        mov     edx, dword [esi+30H]                    ; 10001F46 _ 8B. 56, 30
        add     ecx, eax                                ; 10001F49 _ 03. C8
        xor     eax, eax                                ; 10001F4B _ 33. C0
        add     edx, ecx                                ; 10001F4D _ 03. D1
        mov     dword [esi+64H], ecx                    ; 10001F4F _ 89. 4E, 64
        mov     ecx, dword [esi+50H]                    ; 10001F52 _ 8B. 4E, 50
        mov     dword [esi+58H], 0                      ; 10001F55 _ C7. 46, 58, 00000000
        mov     al, byte [edx]                          ; 10001F5C _ 8A. 02
        mov     dword [esi+40H], eax                    ; 10001F5E _ 89. 46, 40
        shl     eax, cl                                 ; 10001F61 _ D3. E0
        xor     ecx, ecx                                ; 10001F63 _ 33. C9
        mov     cl, byte [edx+1H]                       ; 10001F65 _ 8A. 4A, 01
        xor     eax, ecx                                ; 10001F68 _ 33. C1
        mov     ecx, dword [esi+4CH]                    ; 10001F6A _ 8B. 4E, 4C
        and     eax, ecx                                ; 10001F6D _ 23. C1
        mov     dword [esi+40H], eax                    ; 10001F6F _ 89. 46, 40
        jmp     ?_0110                                  ; 10001F72 _ EB, 6E

?_0108: mov     edx, dword [esi+64H]                    ; 10001F74 _ 8B. 56, 64
        mov     eax, dword [esi+30H]                    ; 10001F77 _ 8B. 46, 30
        mov     ecx, dword [esi+1698H]                  ; 10001F7A _ 8B. 8E, 00001698
        mov     al, byte [edx+eax]                      ; 10001F80 _ 8A. 04 02
        mov     edx, dword [esi+169CH]                  ; 10001F83 _ 8B. 96, 0000169C
        mov     byte [esp+0CH], al                      ; 10001F89 _ 88. 44 24, 0C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx+ecx*2], 0                     ; 10001F8D _ 66: C7. 04 4A, 0000
        mov     ecx, dword [esi+1690H]                  ; 10001F93 _ 8B. 8E, 00001690
        mov     edx, dword [esi+1698H]                  ; 10001F99 _ 8B. 96, 00001698
        mov     byte [ecx+edx], al                      ; 10001F9F _ 88. 04 11
        mov     eax, dword [esp+0CH]                    ; 10001FA2 _ 8B. 44 24, 0C
        mov     ebp, dword [esi+1698H]                  ; 10001FA6 _ 8B. AE, 00001698
        and     eax, 0FFH                               ; 10001FAC _ 25, 000000FF
        inc     ebp                                     ; 10001FB1 _ 45
        xor     edx, edx                                ; 10001FB2 _ 33. D2
        lea     eax, [esi+eax*4+8CH]                    ; 10001FB4 _ 8D. 84 86, 0000008C
        mov     dword [esi+1698H], ebp                  ; 10001FBB _ 89. AE, 00001698
        inc     word [eax]                              ; 10001FC1 _ 66: FF. 00
        mov     ecx, dword [esi+1694H]                  ; 10001FC4 _ 8B. 8E, 00001694
        mov     ebp, dword [esi+1698H]                  ; 10001FCA _ 8B. AE, 00001698
        dec     ecx                                     ; 10001FD0 _ 49
        cmp     ebp, ecx                                ; 10001FD1 _ 3B. E9
        mov     ecx, dword [esi+6CH]                    ; 10001FD3 _ 8B. 4E, 6C
        sete    dl                                      ; 10001FD6 _ 0F 94. C2
        dec     ecx                                     ; 10001FD9 _ 49
        mov     ebp, edx                                ; 10001FDA _ 8B. EA
        mov     dword [esi+6CH], ecx                    ; 10001FDC _ 89. 4E, 6C
?_0109: inc     dword [esi+64H]                         ; 10001FDF _ FF. 46, 64
?_0110: test    ebp, ebp                                ; 10001FE2 _ 85. ED
        je      ?_0099                                  ; 10001FE4 _ 0F 84, FFFFFD90
        mov     ecx, dword [esi+54H]                    ; 10001FEA _ 8B. 4E, 54
        test    ecx, ecx                                ; 10001FED _ 85. C9
        jl      ?_0111                                  ; 10001FEF _ 7C, 09
        mov     edx, dword [esi+30H]                    ; 10001FF1 _ 8B. 56, 30
        mov     eax, ecx                                ; 10001FF4 _ 8B. C1
        add     eax, edx                                ; 10001FF6 _ 03. C2
        jmp     ?_0112                                  ; 10001FF8 _ EB, 02

?_0111: xor     eax, eax                                ; 10001FFA _ 33. C0
?_0112: mov     edx, dword [esi+64H]                    ; 10001FFC _ 8B. 56, 64
        push    0                                       ; 10001FFF _ 6A, 00
        sub     edx, ecx                                ; 10002001 _ 2B. D1
        push    edx                                     ; 10002003 _ 52
        push    eax                                     ; 10002004 _ 50
        push    esi                                     ; 10002005 _ 56
        call    ?_0731                                  ; 10002006 _ E8, 000052A5
        mov     ecx, dword [esi]                        ; 1000200B _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 1000200D _ 8B. 46, 64
        push    ecx                                     ; 10002010 _ 51
        mov     dword [esi+54H], eax                    ; 10002011 _ 89. 46, 54
        call    ?_0055                                  ; 10002014 _ E8, FFFFF877
        mov     edx, dword [esi]                        ; 10002019 _ 8B. 16
        add     esp, 20                                 ; 1000201B _ 83. C4, 14
        mov     eax, dword [edx+10H]                    ; 1000201E _ 8B. 42, 10
        test    eax, eax                                ; 10002021 _ 85. C0
        jz      ?_0117                                  ; 10002023 _ 74, 71
        jmp     ?_0099                                  ; 10002025 _ E9, FFFFFD50

?_0113: mov     ecx, dword [esi+54H]                    ; 1000202A _ 8B. 4E, 54
        test    ecx, ecx                                ; 1000202D _ 85. C9
        jl      ?_0114                                  ; 1000202F _ 7C, 07
        mov     eax, dword [esi+30H]                    ; 10002031 _ 8B. 46, 30
        add     eax, ecx                                ; 10002034 _ 03. C1
        jmp     ?_0115                                  ; 10002036 _ EB, 02

?_0114: xor     eax, eax                                ; 10002038 _ 33. C0
?_0115: mov     ebp, dword [esp+18H]                    ; 1000203A _ 8B. 6C 24, 18
        xor     edx, edx                                ; 1000203E _ 33. D2
        cmp     ebp, 4                                  ; 10002040 _ 83. FD, 04
        sete    dl                                      ; 10002043 _ 0F 94. C2
        push    edx                                     ; 10002046 _ 52
        mov     edx, dword [esi+64H]                    ; 10002047 _ 8B. 56, 64
        sub     edx, ecx                                ; 1000204A _ 2B. D1
        push    edx                                     ; 1000204C _ 52
        push    eax                                     ; 1000204D _ 50
        push    esi                                     ; 1000204E _ 56
        call    ?_0731                                  ; 1000204F _ E8, 0000525C
        mov     ecx, dword [esi]                        ; 10002054 _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 10002056 _ 8B. 46, 64
        push    ecx                                     ; 10002059 _ 51
        mov     dword [esi+54H], eax                    ; 1000205A _ 89. 46, 54
        call    ?_0055                                  ; 1000205D _ E8, FFFFF82E
        mov     edx, dword [esi]                        ; 10002062 _ 8B. 16
        add     esp, 20                                 ; 10002064 _ 83. C4, 14
        mov     eax, dword [edx+10H]                    ; 10002067 _ 8B. 42, 10
        test    eax, eax                                ; 1000206A _ 85. C0
        jnz     ?_0116                                  ; 1000206C _ 75, 13
        mov     esi, ebp                                ; 1000206E _ 8B. F5
        xor     eax, eax                                ; 10002070 _ 33. C0
        cmp     esi, 4                                  ; 10002072 _ 83. FE, 04
        pop     edi                                     ; 10002075 _ 5F
        setne   al                                      ; 10002076 _ 0F 95. C0
        dec     eax                                     ; 10002079 _ 48
        pop     esi                                     ; 1000207A _ 5E
        and     eax, 02H                                ; 1000207B _ 83. E0, 02
        pop     ebp                                     ; 1000207E _ 5D
        pop     ecx                                     ; 1000207F _ 59
        ret                                             ; 10002080 _ C3

?_0116: mov     eax, dword [esp+18H]                    ; 10002081 _ 8B. 44 24, 18
        pop     edi                                     ; 10002085 _ 5F
        sub     eax, 4                                  ; 10002086 _ 83. E8, 04
        pop     esi                                     ; 10002089 _ 5E
        neg     eax                                     ; 1000208A _ F7. D8
        sbb     eax, eax                                ; 1000208C _ 1B. C0
        pop     ebp                                     ; 1000208E _ 5D
        and     al, 0FFFFFFFEH                          ; 1000208F _ 24, FE
        add     eax, 3                                  ; 10002091 _ 83. C0, 03
        pop     ecx                                     ; 10002094 _ 59
        ret                                             ; 10002095 _ C3

