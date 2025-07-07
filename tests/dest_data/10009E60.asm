; ---- 10009E60 ----
?_1040: ; Local function
        sub     esp, 420                                ; 10009E60 _ 81. EC, 000001A4
        mov     eax, ?_5763                             ; 10009E66 _ B8, 101DEB14(d)
?_1041: mov     dword [eax-14H], 0                      ; 10009E6B _ C7. 40, EC, 00000000
        mov     dword [eax], -1                         ; 10009E72 _ C7. 00, FFFFFFFF
        add     eax, 2507364                            ; 10009E78 _ 05, 00264264
        cmp     eax, ?_5772                             ; 10009E7D _ 3D, 114FFE34(d)
        jl      ?_1041                                  ; 10009E82 _ 7C, E7
        push    esi                                     ; 10009E84 _ 56
        lea     eax, [esp+18H]                          ; 10009E85 _ 8D. 44 24, 18
        push    edi                                     ; 10009E89 _ 57
        push    eax                                     ; 10009E8A _ 50
        push    257                                     ; 10009E8B _ 68, 00000101
        call    near [imp_WS2_32_Ordinal_115]           ; 10009E90 _ FF. 15, 10024178(d)
        push    6                                       ; 10009E96 _ 6A, 06
        push    1                                       ; 10009E98 _ 6A, 01
        push    2                                       ; 10009E9A _ 6A, 02
        call    near [imp_WS2_32_Ordinal_23]            ; 10009E9C _ FF. 15, 10024180(d)
        mov     esi, eax                                ; 10009EA2 _ 8B. F0
        cmp     esi, -1                                 ; 10009EA4 _ 83. FE, FF
        je      ?_1045                                  ; 10009EA7 _ 0F 84, 00000139
        mov     edi, dword [imp_WS2_32_Ordinal_21]      ; 10009EAD _ 8B. 3D, 10024184(d)
        lea     ecx, [esp+8H]                           ; 10009EB3 _ 8D. 4C 24, 08
        push    4                                       ; 10009EB7 _ 6A, 04
        push    ecx                                     ; 10009EB9 _ 51
        push    4                                       ; 10009EBA _ 6A, 04
        push    65535                                   ; 10009EBC _ 68, 0000FFFF
        push    esi                                     ; 10009EC1 _ 56
        mov     dword [esp+1CH], 1                      ; 10009EC2 _ C7. 44 24, 1C, 00000001
        call    edi                                     ; 10009ECA _ FF. D7
        cmp     eax, -1                                 ; 10009ECC _ 83. F8, FF
        je      ?_1044                                  ; 10009ECF _ 0F 84, 00000101
        lea     edx, [esp+8H]                           ; 10009ED5 _ 8D. 54 24, 08
        push    4                                       ; 10009ED9 _ 6A, 04
        push    edx                                     ; 10009EDB _ 52
        push    -129                                    ; 10009EDC _ 68, FFFFFF7F
        push    65535                                   ; 10009EE1 _ 68, 0000FFFF
        push    esi                                     ; 10009EE6 _ 56
        mov     dword [esp+1CH], 1                      ; 10009EE7 _ C7. 44 24, 1C, 00000001
        call    edi                                     ; 10009EEF _ FF. D7
        cmp     eax, -1                                 ; 10009EF1 _ 83. F8, FF
        je      ?_1044                                  ; 10009EF4 _ 0F 84, 000000DC
        lea     eax, [esp+8H]                           ; 10009EFA _ 8D. 44 24, 08
        push    4                                       ; 10009EFE _ 6A, 04
        push    eax                                     ; 10009F00 _ 50
        push    4098                                    ; 10009F01 _ 68, 00001002
        push    65535                                   ; 10009F06 _ 68, 0000FFFF
        push    esi                                     ; 10009F0B _ 56
        mov     dword [esp+1CH], 131072                 ; 10009F0C _ C7. 44 24, 1C, 00020000
        call    edi                                     ; 10009F14 _ FF. D7
        cmp     eax, -1                                 ; 10009F16 _ 83. F8, FF
        jnz     ?_1042                                  ; 10009F19 _ 75, 1E
        push    1                                       ; 10009F1B _ 6A, 01
        push    ?_5178                                  ; 10009F1D _ 68, 100293E4(d)
        push    1060                                    ; 10009F22 _ 68, 00000424
        push    ?_5209                                  ; 10009F27 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009F2C _ E8, FFFF970F
        add     esp, 16                                 ; 10009F31 _ 83. C4, 10
        jmp     ?_1044                                  ; 10009F34 _ E9, 0000009D

?_1042: lea     ecx, [esp+8H]                           ; 10009F39 _ 8D. 4C 24, 08
        push    4                                       ; 10009F3D _ 6A, 04
        push    ecx                                     ; 10009F3F _ 51
        push    4097                                    ; 10009F40 _ 68, 00001001
        push    65535                                   ; 10009F45 _ 68, 0000FFFF
        push    esi                                     ; 10009F4A _ 56
        mov     dword [esp+1CH], 131072                 ; 10009F4B _ C7. 44 24, 1C, 00020000
        call    edi                                     ; 10009F53 _ FF. D7
        cmp     eax, -1                                 ; 10009F55 _ 83. F8, FF
        jnz     ?_1043                                  ; 10009F58 _ 75, 1B
        push    1                                       ; 10009F5A _ 6A, 01
        push    ?_5177                                  ; 10009F5C _ 68, 100293C4(d)
        push    1067                                    ; 10009F61 _ 68, 0000042B
        push    ?_5209                                  ; 10009F66 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009F6B _ E8, FFFF96D0
        add     esp, 16                                 ; 10009F70 _ 83. C4, 10
        jmp     ?_1044                                  ; 10009F73 _ EB, 61

?_1043: lea     edx, [esp+8H]                           ; 10009F75 _ 8D. 54 24, 08
        mov     dword [esp+8H], 1                       ; 10009F79 _ C7. 44 24, 08, 00000001
        push    edx                                     ; 10009F81 _ 52
        push    -2147195266                             ; 10009F82 _ 68, 8004667E
        push    esi                                     ; 10009F87 _ 56
        call    near [imp_WS2_32_Ordinal_10]            ; 10009F88 _ FF. 15, 1002416C(d)
        cmp     eax, -1                                 ; 10009F8E _ 83. F8, FF
        jz      ?_1044                                  ; 10009F91 _ 74, 43
        mov     eax, dword [esp+1B0H]                   ; 10009F93 _ 8B. 84 24, 000001B0
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esp+0CH], 2                       ; 10009F9A _ 66: C7. 44 24, 0C, 0002
        push    eax                                     ; 10009FA1 _ 50
        mov     dword [esp+14H], 0                      ; 10009FA2 _ C7. 44 24, 14, 00000000
        call    near [imp_WS2_32_Ordinal_9]             ; 10009FAA _ FF. 15, 1002418C(d)
        lea     ecx, [esp+0CH]                          ; 10009FB0 _ 8D. 4C 24, 0C
        push    16                                      ; 10009FB4 _ 6A, 10
        push    ecx                                     ; 10009FB6 _ 51
        push    esi                                     ; 10009FB7 _ 56
        mov     word [esp+1AH], ax                      ; 10009FB8 _ 66: 89. 44 24, 1A
        call    near [imp_WS2_32_Ordinal_2]             ; 10009FBD _ FF. 15, 10024190(d)
        cmp     eax, -1                                 ; 10009FC3 _ 83. F8, FF
        jz      ?_1044                                  ; 10009FC6 _ 74, 0E
        push    5                                       ; 10009FC8 _ 6A, 05
        push    esi                                     ; 10009FCA _ 56
        call    near [imp_WS2_32_Ordinal_13]            ; 10009FCB _ FF. 15, 10024160(d)
        cmp     eax, -1                                 ; 10009FD1 _ 83. F8, FF
        jnz     ?_1046                                  ; 10009FD4 _ 75, 22
?_1044: push    2                                       ; 10009FD6 _ 6A, 02
        push    esi                                     ; 10009FD8 _ 56
        call    near [imp_WS2_32_Ordinal_22]            ; 10009FD9 _ FF. 15, 10024174(d)
        push    esi                                     ; 10009FDF _ 56
        call    near [imp_WS2_32_Ordinal_3]             ; 10009FE0 _ FF. 15, 10024198(d)
?_1045: call    near [imp_WS2_32_Ordinal_116]           ; 10009FE6 _ FF. 15, 1002417C(d)
        pop     edi                                     ; 10009FEC _ 5F
        or      eax, 0FFFFFFFFH                         ; 10009FED _ 83. C8, FF
        pop     esi                                     ; 10009FF0 _ 5E
        add     esp, 420                                ; 10009FF1 _ 81. C4, 000001A4
        ret                                             ; 10009FF7 _ C3

