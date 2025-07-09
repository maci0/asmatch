; ---- 10020D97 ----
?_4327: ; Local function
        push    ebp                                     ; 10020D97 _ 55
        mov     ebp, esp                                ; 10020D98 _ 8B. EC
        cmp     dword [ebp+0CH], 1                      ; 10020D9A _ 83. 7D, 0C, 01
        push    ebx                                     ; 10020D9E _ 53
        mov     ebx, dword [ebp+10H]                    ; 10020D9F _ 8B. 5D, 10
        push    esi                                     ; 10020DA2 _ 56
        jne     ?_4334                                  ; 10020DA3 _ 0F 85, 00000089
        mov     eax, dword [ebp+14H]                    ; 10020DA9 _ 8B. 45, 14
        mov     dword [ebp+10H], ebx                    ; 10020DAC _ 89. 5D, 10
        and     dword [ebp+10H], 03H                    ; 10020DAF _ 83. 65, 10, 03
        mov     esi, eax                                ; 10020DB3 _ 8B. F0
        jnz     ?_4328                                  ; 10020DB5 _ 75, 0B
        shl     esi, 2                                  ; 10020DB7 _ C1. E6, 02
        mov     eax, dword [?_5493+esi]                 ; 10020DBA _ 8B. 86, 10034030(d)
        jmp     ?_4329                                  ; 10020DC0 _ EB, 09

?_4328: shl     esi, 2                                  ; 10020DC2 _ C1. E6, 02
        mov     eax, dword [?_5495+esi]                 ; 10020DC5 _ 8B. 86, 10034064(d)
?_4329: mov     edx, ebx                                ; 10020DCB _ 8B. D3
        lea     ecx, [eax+1H]                           ; 10020DCD _ 8D. 48, 01
        imul    edx, edx, 365                           ; 10020DD0 _ 69. D2, 0000016D
        lea     eax, [ebx-1H]                           ; 10020DD6 _ 8D. 43, FF
        push    edi                                     ; 10020DD9 _ 57
        sar     eax, 2                                  ; 10020DDA _ C1. F8, 02
        mov     edi, ecx                                ; 10020DDD _ 8B. F9
        push    7                                       ; 10020DDF _ 6A, 07
        add     edi, eax                                ; 10020DE1 _ 03. F8
        lea     eax, [edx+edi-63DBH]                    ; 10020DE3 _ 8D. 84 3A, FFFF9C25
        pop     edi                                     ; 10020DEA _ 5F
        cdq                                             ; 10020DEB _ 99
        idiv    edi                                     ; 10020DEC _ F7. FF
        mov     eax, dword [ebp+18H]                    ; 10020DEE _ 8B. 45, 18
        pop     edi                                     ; 10020DF1 _ 5F
        cmp     edx, dword [ebp+1CH]                    ; 10020DF2 _ 3B. 55, 1C
        jg      ?_4330                                  ; 10020DF5 _ 7F, 0E
        imul    eax, eax, 7                             ; 10020DF7 _ 6B. C0, 07
        sub     eax, edx                                ; 10020DFA _ 2B. C2
        add     eax, dword [ebp+1CH]                    ; 10020DFC _ 03. 45, 1C
        lea     ecx, [ecx+eax-7H]                       ; 10020DFF _ 8D. 4C 01, F9
        jmp     ?_4331                                  ; 10020E03 _ EB, 0A

?_4330: imul    eax, eax, 7                             ; 10020E05 _ 6B. C0, 07
        sub     eax, edx                                ; 10020E08 _ 2B. C2
        add     eax, dword [ebp+1CH]                    ; 10020E0A _ 03. 45, 1C
        add     ecx, eax                                ; 10020E0D _ 03. C8
?_4331: cmp     dword [ebp+18H], 5                      ; 10020E0F _ 83. 7D, 18, 05
        jnz     ?_4337                                  ; 10020E13 _ 75, 38
        cmp     dword [ebp+10H], 0                      ; 10020E15 _ 83. 7D, 10, 00
        jnz     ?_4332                                  ; 10020E19 _ 75, 08
        mov     esi, dword [?_5494+esi]                 ; 10020E1B _ 8B. B6, 10034034(d)
        jmp     ?_4333                                  ; 10020E21 _ EB, 06

?_4332: mov     esi, dword [?_5496+esi]                 ; 10020E23 _ 8B. B6, 10034068(d)
?_4333: cmp     ecx, esi                                ; 10020E29 _ 3B. CE
        jle     ?_4337                                  ; 10020E2B _ 7E, 20
        sub     ecx, 7                                  ; 10020E2D _ 83. E9, 07
        jmp     ?_4337                                  ; 10020E30 _ EB, 1B

?_4334: mov     eax, dword [ebp+14H]                    ; 10020E32 _ 8B. 45, 14
        test    bl, 03H                                 ; 10020E35 _ F6. C3, 03
        jnz     ?_4335                                  ; 10020E38 _ 75, 09
        mov     ecx, dword [?_5493+eax*4]               ; 10020E3A _ 8B. 0C 85, 10034030(d)
        jmp     ?_4336                                  ; 10020E41 _ EB, 07

?_4335: mov     ecx, dword [?_5495+eax*4]               ; 10020E43 _ 8B. 0C 85, 10034064(d)
?_4336: add     ecx, dword [ebp+20H]                    ; 10020E4A _ 03. 4D, 20
?_4337: cmp     dword [ebp+8H], 1                       ; 10020E4D _ 83. 7D, 08, 01
        jnz     ?_4338                                  ; 10020E51 _ 75, 2B
        mov     eax, dword [ebp+24H]                    ; 10020E53 _ 8B. 45, 24
        mov     dword [?_5489], ecx                     ; 10020E56 _ 89. 0D, 1003401C(d)
        imul    eax, eax, 60                            ; 10020E5C _ 6B. C0, 3C
        add     eax, dword [ebp+28H]                    ; 10020E5F _ 03. 45, 28
        mov     dword [?_5488], ebx                     ; 10020E62 _ 89. 1D, 10034018(d)
        imul    eax, eax, 60                            ; 10020E68 _ 6B. C0, 3C
        add     eax, dword [ebp+2CH]                    ; 10020E6B _ 03. 45, 2C
        imul    eax, eax, 1000                          ; 10020E6E _ 69. C0, 000003E8
        add     eax, dword [ebp+30H]                    ; 10020E74 _ 03. 45, 30
        mov     dword [?_5490], eax                     ; 10020E77 _ A3, 10034020(d)
        jmp     ?_4342                                  ; 10020E7C _ EB, 55

?_4338: mov     eax, dword [ebp+24H]                    ; 10020E7E _ 8B. 45, 24
        mov     dword [?_5492], ecx                     ; 10020E81 _ 89. 0D, 1003402C(d)
        imul    eax, eax, 60                            ; 10020E87 _ 6B. C0, 3C
        add     eax, dword [ebp+28H]                    ; 10020E8A _ 03. 45, 28
        imul    eax, eax, 60                            ; 10020E8D _ 6B. C0, 3C
        add     eax, dword [?_5483]                     ; 10020E90 _ 03. 05, 10033F88(d)
        add     eax, dword [ebp+2CH]                    ; 10020E96 _ 03. 45, 2C
        imul    eax, eax, 1000                          ; 10020E99 _ 69. C0, 000003E8
        add     eax, dword [ebp+30H]                    ; 10020E9F _ 03. 45, 30
        mov     dword [?_5493], eax                     ; 10020EA2 _ A3, 10034030(d)
        jns     ?_4339                                  ; 10020EA7 _ 79, 0D
        add     eax, 86400000                           ; 10020EA9 _ 05, 05265C00
        dec     ecx                                     ; 10020EAE _ 49
        mov     dword [?_5493], eax                     ; 10020EAF _ A3, 10034030(d)
        jmp     ?_4340                                  ; 10020EB4 _ EB, 11

?_4339: mov     edx, 86400000                           ; 10020EB6 _ BA, 05265C00
        cmp     eax, edx                                ; 10020EBB _ 3B. C2
        jl      ?_4341                                  ; 10020EBD _ 7C, 0E
        sub     eax, edx                                ; 10020EBF _ 2B. C2
        inc     ecx                                     ; 10020EC1 _ 41
        mov     dword [?_5493], eax                     ; 10020EC2 _ A3, 10034030(d)
?_4340: mov     dword [?_5492], ecx                     ; 10020EC7 _ 89. 0D, 1003402C(d)
?_4341: mov     dword [?_5491], ebx                     ; 10020ECD _ 89. 1D, 10034028(d)
?_4342: pop     esi                                     ; 10020ED3 _ 5E
        pop     ebx                                     ; 10020ED4 _ 5B
        pop     ebp                                     ; 10020ED5 _ 5D
        ret                                             ; 10020ED6 _ C3
