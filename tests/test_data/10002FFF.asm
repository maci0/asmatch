; ---- 10002FFF ----
?_0222: ; Local function
        mov     al, byte [?_5101]                       ; 10002FFF _ A0, 10027338(d)
        mov     ecx, dword [?_5100]                     ; 10003004 _ 8B. 0D, 10027334(d)
        mov     byte [esp+20H], al                      ; 1000300A _ 88. 44 24, 20
        mov     al, byte [?_5099]                       ; 1000300E _ A0, 10027330(d)
        mov     dword [esp+1CH], ecx                    ; 10003013 _ 89. 4C 24, 1C
        mov     ecx, dword [?_5098]                     ; 10003017 _ 8B. 0D, 1002732C(d)
        mov     byte [esp+28H], al                      ; 1000301D _ 88. 44 24, 28
        mov     eax, dword [esi+10H]                    ; 10003021 _ 8B. 46, 10
        mov     dword [esp+24H], ecx                    ; 10003024 _ 89. 4C 24, 24
        mov     cl, byte [?_5513]                       ; 10003028 _ 8A. 0D, 1003461C(d)
        test    eax, eax                                ; 1000302E _ 85. C0
        mov     dword [esp+14H], 0                      ; 10003030 _ C7. 44 24, 14, 00000000
        jnz     ?_0223                                  ; 10003038 _ 75, 08
        mov     ecx, dword [edi+4H]                     ; 1000303A _ 8B. 4F, 04
        mov     dword [esi+10H], ecx                    ; 1000303D _ 89. 4E, 10
        jmp     ?_0226                                  ; 10003040 _ EB, 45

?_0223: cmp     eax, dword [esi+0CH]                    ; 10003042 _ 3B. 46, 0C
        jnz     ?_0224                                  ; 10003045 _ 75, 0F
        mov     eax, dword [edi+4H]                     ; 10003047 _ 8B. 47, 04
        mov     dword [esi+10H], eax                    ; 1000304A _ 89. 46, 10
        mov     eax, dword [esi+18H]                    ; 1000304D _ 8B. 46, 18
        inc     eax                                     ; 10003050 _ 40
        mov     dword [esi+18H], eax                    ; 10003051 _ 89. 46, 18
        jmp     ?_0226                                  ; 10003054 _ EB, 31

?_0224: lea     eax, [esp+1CH]                          ; 10003056 _ 8D. 44 24, 1C
        mov     dword [esp+14H], eax                    ; 1000305A _ 89. 44 24, 14
        mov     eax, dword [esi+14H]                    ; 1000305E _ 8B. 46, 14
        test    eax, eax                                ; 10003061 _ 85. C0
        jbe     ?_0225                                  ; 10003063 _ 76, 1A
        cmp     dword [esi+18H], 1                      ; 10003065 _ 83. 7E, 18, 01
        ja      ?_0225                                  ; 10003069 _ 77, 14
        lea     ecx, [esp+24H]                          ; 1000306B _ 8D. 4C 24, 24
        dec     eax                                     ; 1000306F _ 48
        mov     dword [esp+14H], ecx                    ; 10003070 _ 89. 4C 24, 14
        mov     ecx, dword [edi+4H]                     ; 10003074 _ 8B. 4F, 04
        mov     dword [esi+10H], ecx                    ; 10003077 _ 89. 4E, 10
        mov     dword [esi+14H], eax                    ; 1000307A _ 89. 46, 14
        jmp     ?_0226                                  ; 1000307D _ EB, 08

?_0225: test    cl, cl                                  ; 1000307F _ 84. C9
        je      ?_0221                                  ; 10003081 _ 0F 84, FFFFFF6E
?_0226: mov     eax, dword [edi+0CH]                    ; 10003087 _ 8B. 47, 0C
        push    eax                                     ; 1000308A _ 50
        push    edx                                     ; 1000308B _ 52
        call    ?_0229                                  ; 1000308C _ E8, 000000AF
        mov     cx, word [?_5094]                       ; 10003091 _ 66: 8B. 0D, 10027314(d)
        mov     dl, byte [?_5095]                       ; 10003098 _ 8A. 15, 10027316(d)
        mov     ebx, dword [imp_WriteFile]              ; 1000309E _ 8B. 1D, 10024024(d)
        mov     ebp, eax                                ; 100030A4 _ 8B. E8
        mov     ax, word [?_5097]                       ; 100030A6 _ 66: A1, 10027328(d)
        add     esp, 8                                  ; 100030AC _ 83. C4, 08
        mov     word [esp+30H], ax                      ; 100030AF _ 66: 89. 44 24, 30
        mov     eax, dword [esp+14H]                    ; 100030B4 _ 8B. 44 24, 14
        test    eax, eax                                ; 100030B8 _ 85. C0
        mov     word [esp+10H], cx                      ; 100030BA _ 66: 89. 4C 24, 10
        mov     byte [esp+12H], dl                      ; 100030BF _ 88. 54 24, 12
        jz      ?_0227                                  ; 100030C3 _ 74, 12
        lea     ecx, [esp+18H]                          ; 100030C5 _ 8D. 4C 24, 18
        push    0                                       ; 100030C9 _ 6A, 00
        push    ecx                                     ; 100030CB _ 51
        mov     edx, eax                                ; 100030CC _ 8B. D0
        mov     eax, dword [esi+4H]                     ; 100030CE _ 8B. 46, 04
        push    4                                       ; 100030D1 _ 6A, 04
        push    edx                                     ; 100030D3 _ 52
        push    eax                                     ; 100030D4 _ 50
        call    ebx                                     ; 100030D5 _ FF. D3
?_0227: mov     edx, dword [edi]                        ; 100030D7 _ 8B. 17
        mov     eax, dword [esi+4H]                     ; 100030D9 _ 8B. 46, 04
        lea     ecx, [esp+18H]                          ; 100030DC _ 8D. 4C 24, 18
        push    0                                       ; 100030E0 _ 6A, 00
        dec     edx                                     ; 100030E2 _ 4A
        push    ecx                                     ; 100030E3 _ 51
        add     edi, 16                                 ; 100030E4 _ 83. C7, 10
        push    edx                                     ; 100030E7 _ 52
        push    edi                                     ; 100030E8 _ 57
        push    eax                                     ; 100030E9 _ 50
        call    ebx                                     ; 100030EA _ FF. D3
        test    ebp, ebp                                ; 100030EC _ 85. ED
        jz      ?_0228                                  ; 100030EE _ 74, 2A
        mov     eax, dword [esi+4H]                     ; 100030F0 _ 8B. 46, 04
        lea     ecx, [esp+18H]                          ; 100030F3 _ 8D. 4C 24, 18
        push    0                                       ; 100030F7 _ 6A, 00
        push    ecx                                     ; 100030F9 _ 51
        lea     edx, [esp+38H]                          ; 100030FA _ 8D. 54 24, 38
        push    1                                       ; 100030FE _ 6A, 01
        push    edx                                     ; 10003100 _ 52
        push    eax                                     ; 10003101 _ 50
        call    ebx                                     ; 10003102 _ FF. D3
        mov     edx, dword [ebp]                        ; 10003104 _ 8B. 55, 00
        mov     eax, dword [esi+4H]                     ; 10003107 _ 8B. 46, 04
        lea     ecx, [esp+18H]                          ; 1000310A _ 8D. 4C 24, 18
        push    0                                       ; 1000310E _ 6A, 00
        dec     edx                                     ; 10003110 _ 4A
        push    ecx                                     ; 10003111 _ 51
        add     ebp, 4                                  ; 10003112 _ 83. C5, 04
        push    edx                                     ; 10003115 _ 52
        push    ebp                                     ; 10003116 _ 55
        push    eax                                     ; 10003117 _ 50
        call    ebx                                     ; 10003118 _ FF. D3
?_0228: mov     eax, dword [esi+4H]                     ; 1000311A _ 8B. 46, 04
        lea     ecx, [esp+18H]                          ; 1000311D _ 8D. 4C 24, 18
        push    0                                       ; 10003121 _ 6A, 00
        push    ecx                                     ; 10003123 _ 51
        lea     edx, [esp+18H]                          ; 10003124 _ 8D. 54 24, 18
        push    2                                       ; 10003128 _ 6A, 02
        push    edx                                     ; 1000312A _ 52
        push    eax                                     ; 1000312B _ 50
        call    ebx                                     ; 1000312C _ FF. D3
        pop     edi                                     ; 1000312E _ 5F
        pop     esi                                     ; 1000312F _ 5E
        pop     ebp                                     ; 10003130 _ 5D
        mov     al, 1                                   ; 10003131 _ B0, 01
        pop     ebx                                     ; 10003133 _ 5B
        add     esp, 28                                 ; 10003134 _ 83. C4, 1C
        ret                                             ; 10003137 _ C3

        nop                                             ; 10003138 _ 90
        nop                                             ; 10003139 _ 90
        nop                                             ; 1000313A _ 90
        nop                                             ; 1000313B _ 90
        nop                                             ; 1000313C _ 90
        nop                                             ; 1000313D _ 90
        nop                                             ; 1000313E _ 90
        nop                                             ; 1000313F _ 90

