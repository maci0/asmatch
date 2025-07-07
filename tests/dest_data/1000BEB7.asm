; ---- 1000BEB7 ----
?_1278: ; Local function
        lea     eax, [ebp+ebp*2]                        ; 1000BEB7 _ 8D. 44 6D, 00
        lea     edx, [eax+eax*8]                        ; 1000BEBB _ 8D. 14 C0
        lea     edx, [edx+edx*4]                        ; 1000BEBE _ 8D. 14 92
        shl     edx, 2                                  ; 1000BEC1 _ C1. E2, 02
        cmp     byte [?_5633+edx], 15                   ; 1000BEC4 _ 80. BA, 100358A2(d), 0F
        jnz     ?_1279                                  ; 1000BECB _ 75, 06
        dec     dword [?_5531]                          ; 1000BECD _ FF. 0D, 10035434(d)
?_1279: push    esi                                     ; 1000BED3 _ 56
        lea     esi, [?_5632+edx]                       ; 1000BED4 _ 8D. B2, 100358A0(d)
        push    edi                                     ; 1000BEDA _ 57
        mov     ecx, 135                                ; 1000BEDB _ B9, 00000087
        xor     eax, eax                                ; 1000BEE0 _ 33. C0
        mov     edi, esi                                ; 1000BEE2 _ 8B. FE
        rep stosd                                       ; 1000BEE4 _ F3: AB
        or      eax, 0FFFFFFFFH                         ; 1000BEE6 _ 83. C8, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi], -1                          ; 1000BEE9 _ 66: C7. 06, FFFF
        mov     dword [?_5634+edx], eax                 ; 1000BEEE _ 89. 82, 100358A4(d)
        lea     edx, [?_5643+edx]                       ; 1000BEF4 _ 8D. 92, 100358FC(d)
        mov     ecx, 8                                  ; 1000BEFA _ B9, 00000008
        mov     edi, edx                                ; 1000BEFF _ 8B. FA
        rep stosd                                       ; 1000BF01 _ F3: AB
        mov     ecx, dword [?_5531]                     ; 1000BF03 _ 8B. 0D, 10035434(d)
        mov     dl, 1                                   ; 1000BF09 _ B2, 01
        inc     ecx                                     ; 1000BF0B _ 41
        mov     word [esi], bp                          ; 1000BF0C _ 66: 89. 2E
        mov     dword [?_5531], ecx                     ; 1000BF0F _ 89. 0D, 10035434(d)
        mov     ecx, dword [esp+10H]                    ; 1000BF15 _ 8B. 4C 24, 10
        mov     dword [esi+170H], ecx                   ; 1000BF19 _ 89. 8E, 00000170
        mov     dword [esi+16CH], ecx                   ; 1000BF1F _ 89. 8E, 0000016C
        mov     ecx, dword [?_5380]                     ; 1000BF25 _ 8B. 0D, 10030B6C(d)
        mov     byte [esi+2H], bl                       ; 1000BF2B _ 88. 5E, 02
        mov     dword [esi+4H], ecx                     ; 1000BF2E _ 89. 4E, 04
        inc     ecx                                     ; 1000BF31 _ 41
        mov     dword [?_5380], ecx                     ; 1000BF32 _ 89. 0D, 10030B6C(d)
        mov     ecx, dword [esp+1CH]                    ; 1000BF38 _ 8B. 4C 24, 1C
        mov     dword [esi+1F0H], ebx                   ; 1000BF3C _ 89. 9E, 000001F0
        mov     dword [esi+210H], eax                   ; 1000BF42 _ 89. 86, 00000210
        mov     byte [esi+215H], bl                     ; 1000BF48 _ 88. 9E, 00000215
        mov     byte [esi+216H], bl                     ; 1000BF4E _ 88. 9E, 00000216
        mov     byte [esi+217H], bl                     ; 1000BF54 _ 88. 9E, 00000217
        mov     byte [esi+218H], dl                     ; 1000BF5A _ 88. 96, 00000218
        mov     dword [esi+1E4H], 1065353216            ; 1000BF60 _ C7. 86, 000001E4, 3F800000
        mov     byte [esi+8H], 100                      ; 1000BF6A _ C6. 46, 08, 64
        movzx   cx, byte [ecx+10H]                      ; 1000BF6E _ 66: 0F B6. 49, 10
        mov     word [esi+0AH], cx                      ; 1000BF73 _ 66: 89. 4E, 0A
        mov     byte [esi+164H], 82                     ; 1000BF77 _ C6. 86, 00000164, 52
        mov     byte [esi+166H], bl                     ; 1000BF7E _ 88. 9E, 00000166
        mov     byte [esi+165H], bl                     ; 1000BF84 _ 88. 9E, 00000165
        mov     byte [esi+1F4H], bl                     ; 1000BF8A _ 88. 9E, 000001F4
        mov     dword [esi+190H], 4                     ; 1000BF90 _ C7. 86, 00000190, 00000004
        mov     dword [esi+194H], ebx                   ; 1000BF9A _ 89. 9E, 00000194
        mov     byte [esi+0DH], dl                      ; 1000BFA0 _ 88. 56, 0D
        mov     dword [esi+18CH], eax                   ; 1000BFA3 _ 89. 86, 0000018C
        mov     dword [esi+20CH], eax                   ; 1000BFA9 _ 89. 86, 0000020C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+50H], 32767                   ; 1000BFAF _ 66: C7. 46, 50, 7FFF
        xor     edi, edi                                ; 1000BFB5 _ 33. FF
?_1280: push    64                                      ; 1000BFB7 _ 6A, 40
        call    ?_3022                                  ; 1000BFB9 _ E8, 0000E112
        add     al, 84                                  ; 1000BFBE _ 04, 54
        add     esp, 4                                  ; 1000BFC0 _ 83. C4, 04
        mov     byte [esi+edi+80H], al                  ; 1000BFC3 _ 88. 84 3E, 00000080
        inc     edi                                     ; 1000BFCA _ 47
        cmp     edi, 5                                  ; 1000BFCB _ 83. FF, 05
        jl      ?_1280                                  ; 1000BFCE _ 7C, E7
        mov     byte [esi+9H], bl                       ; 1000BFD0 _ 88. 5E, 09
        mov     dword [esi+1CH], 1148846080             ; 1000BFD3 _ C7. 46, 1C, 447A0000
        call    ?_3025                                  ; 1000BFDA _ E8, 0000E131
        fmul    dword [?_4920]                          ; 1000BFDF _ D8. 0D, 100256C8(d)
        mov     dword [esi+20H], 1094713344             ; 1000BFE5 _ C7. 46, 20, 41400000
        fadd    dword [?_4919]                          ; 1000BFEC _ D8. 05, 100256C4(d)
        fsub    dword [?_4918]                          ; 1000BFF2 _ D8. 25, 100256C0(d)
        fstp    dword [esi+14H]                         ; 1000BFF8 _ D9. 5E, 14
        fld     dword [esi+1CH]                         ; 1000BFFB _ D9. 46, 1C
        fmul    dword [?_4917]                          ; 1000BFFE _ D8. 0D, 100256BC(d)
        call    ?_3298                                  ; 1000C004 _ E8, 0000F55B
        push    eax                                     ; 1000C009 _ 50
        call    ?_3022                                  ; 1000C00A _ E8, 0000E0C1
        and     eax, 0FFFFH                             ; 1000C00F _ 25, 0000FFFF
        mov     edx, dword [esi+1CH]                    ; 1000C014 _ 8B. 56, 1C
        mov     dword [esp+18H], eax                    ; 1000C017 _ 89. 44 24, 18
        add     esp, 4                                  ; 1000C01B _ 83. C4, 04
        fild    dword [esp+14H]                         ; 1000C01E _ DB. 44 24, 14
        fld     dword [esi+1CH]                         ; 1000C022 _ D9. 46, 1C
        fmul    dword [?_4916]                          ; 1000C025 _ D8. 0D, 100256B8(d)
        mov     dword [esi+18H], edx                    ; 1000C02B _ 89. 56, 18
        mov     dword [esp+14H], ebx                    ; 1000C02E _ 89. 5C 24, 14
        xor     edi, edi                                ; 1000C032 _ 33. FF
        faddp   st1, st(0)                              ; 1000C034 _ DE. C1
        fld     dword [esi+1CH]                         ; 1000C036 _ D9. 46, 1C
        fmul    dword [?_4915]                          ; 1000C039 _ D8. 0D, 100256B4(d)
        fsubp   st1, st(0)                              ; 1000C03F _ DE. E9
        fstp    dword [esi+10H]                         ; 1000C041 _ D9. 5E, 10
?_1281: xor     eax, eax                                ; 1000C044 _ 33. C0
        push    64                                      ; 1000C046 _ 6A, 40
        mov     ax, word [esi]                          ; 1000C048 _ 66: 8B. 06
        lea     ebp, [eax+edi]                          ; 1000C04B _ 8D. 2C 38
        call    ?_3022                                  ; 1000C04E _ E8, 0000E07D
        sub     al, 32                                  ; 1000C053 _ 2C, 20
        mov     edx, dword [esp+18H]                    ; 1000C055 _ 8B. 54 24, 18
        mov     byte [?_5674+ebp], al                   ; 1000C059 _ 88. 85, 100A9820(d)
        xor     eax, eax                                ; 1000C05F _ 33. C0
        mov     ax, word [esi]                          ; 1000C061 _ 66: 8B. 06
        mov     byte [?_5691+ebp], bl                   ; 1000C064 _ 88. 9D, 1014D8E0(d)
        push    64                                      ; 1000C06A _ 6A, 40
        lea     ecx, [eax+eax*2]                        ; 1000C06C _ 8D. 0C 40
        shl     ecx, 8                                  ; 1000C06F _ C1. E1, 08
        lea     ebp, [ecx+edx]                          ; 1000C072 _ 8D. 2C 11
        call    ?_3022                                  ; 1000C075 _ E8, 0000E056
        mov     edx, dword [esp+1CH]                    ; 1000C07A _ 8B. 54 24, 1C
        add     esp, 8                                  ; 1000C07E _ 83. C4, 08
        sub     al, 32                                  ; 1000C081 _ 2C, 20
        add     edi, 768                                ; 1000C083 _ 81. C7, 00000300
        inc     edx                                     ; 1000C089 _ 42
        cmp     edi, 589824                             ; 1000C08A _ 81. FF, 00090000
        mov     byte [?_5674+ebp], al                   ; 1000C090 _ 88. 85, 100A9820(d)
        mov     byte [?_5691+ebp], bl                   ; 1000C096 _ 88. 9D, 1014D8E0(d)
        mov     dword [esp+14H], edx                    ; 1000C09C _ 89. 54 24, 14
        jl      ?_1281                                  ; 1000C0A0 _ 7C, A2
        mov     eax, dword [esp+10H]                    ; 1000C0A2 _ 8B. 44 24, 10
        cmp     dword [eax+65H], ebx                    ; 1000C0A6 _ 39. 58, 65
        jnz     ?_1282                                  ; 1000C0A9 _ 75, 16
        push    ?_5246                                  ; 1000C0AB _ 68, 1002A0F8(d)
        push    60                                      ; 1000C0B0 _ 6A, 3C
        call    ?_0640                                  ; 1000C0B2 _ E8, FFFFA4C9
        mov     ecx, dword [esp+18H]                    ; 1000C0B7 _ 8B. 4C 24, 18
        add     esp, 8                                  ; 1000C0BB _ 83. C4, 08
        mov     dword [ecx+65H], eax                    ; 1000C0BE _ 89. 41, 65
?_1282: mov     edx, dword [esp+10H]                    ; 1000C0C1 _ 8B. 54 24, 10
        mov     ecx, 15                                 ; 1000C0C5 _ B9, 0000000F
        xor     eax, eax                                ; 1000C0CA _ 33. C0
        push    255                                     ; 1000C0CC _ 68, 000000FF
        mov     edi, dword [edx+65H]                    ; 1000C0D1 _ 8B. 7A, 65
        push    ebx                                     ; 1000C0D4 _ 53
        rep stosd                                       ; 1000C0D5 _ F3: AB
        mov     eax, dword [esp+18H]                    ; 1000C0D7 _ 8B. 44 24, 18
        mov     edx, dword [esi+4H]                     ; 1000C0DB _ 8B. 56, 04
        mov     edi, dword [esp+24H]                    ; 1000C0DE _ 8B. 7C 24, 24
        push    6                                       ; 1000C0E2 _ 6A, 06
        mov     ecx, dword [eax+65H]                    ; 1000C0E4 _ 8B. 48, 65
        xor     eax, eax                                ; 1000C0E7 _ 33. C0
        push    2                                       ; 1000C0E9 _ 6A, 02
        mov     dword [ecx], edx                        ; 1000C0EB _ 89. 11
        mov     al, byte [edi+0FH]                      ; 1000C0ED _ 8A. 47, 0F
        mov     dword [esp+2CH], eax                    ; 1000C0F0 _ 89. 44 24, 2C
        mov     ecx, dword [esp+20H]                    ; 1000C0F4 _ 8B. 4C 24, 20
        fild    dword [esp+2CH]                         ; 1000C0F8 _ DB. 44 24, 2C
        mov     edx, dword [ecx+65H]                    ; 1000C0FC _ 8B. 51, 65
        fmul    dword [?_4913]                          ; 1000C0FF _ D8. 0D, 100256AC(d)
        fadd    dword [?_4910]                          ; 1000C105 _ D8. 05, 100256A0(d)
        fmul    dword [?_4914]                          ; 1000C10B _ D8. 0D, 100256B0(d)
        fstp    dword [edx+4H]                          ; 1000C111 _ D9. 5A, 04
        mov     eax, dword [esp+20H]                    ; 1000C114 _ 8B. 44 24, 20
        mov     dl, byte [edi+0CH]                      ; 1000C118 _ 8A. 57, 0C
        mov     ecx, dword [eax+65H]                    ; 1000C11B _ 8B. 48, 65
        mov     byte [ecx+8H], dl                       ; 1000C11E _ 88. 51, 08
        mov     eax, dword [esp+20H]                    ; 1000C121 _ 8B. 44 24, 20
        mov     dl, byte [edi+0DH]                      ; 1000C125 _ 8A. 57, 0D
        mov     ecx, dword [eax+65H]                    ; 1000C128 _ 8B. 48, 65
        mov     byte [ecx+9H], dl                       ; 1000C12B _ 88. 51, 09
        mov     eax, dword [esp+20H]                    ; 1000C12E _ 8B. 44 24, 20
        mov     dl, byte [edi+0EH]                      ; 1000C132 _ 8A. 57, 0E
        mov     ecx, dword [eax+65H]                    ; 1000C135 _ 8B. 48, 65
        mov     byte [ecx+0AH], dl                      ; 1000C138 _ 88. 51, 0A
        mov     eax, dword [esp+20H]                    ; 1000C13B _ 8B. 44 24, 20
        mov     dl, byte [edi+0FH]                      ; 1000C13F _ 8A. 57, 0F
        mov     ecx, dword [eax+65H]                    ; 1000C142 _ 8B. 48, 65
        mov     byte [ecx+0BH], dl                      ; 1000C145 _ 88. 51, 0B
        mov     eax, dword [esp+20H]                    ; 1000C148 _ 8B. 44 24, 20
        mov     edx, dword [edi+14H]                    ; 1000C14C _ 8B. 57, 14
        mov     ecx, dword [eax+65H]                    ; 1000C14F _ 8B. 48, 65
        mov     dword [ecx+0CH], edx                    ; 1000C152 _ 89. 51, 0C
        mov     eax, dword [esp+20H]                    ; 1000C155 _ 8B. 44 24, 20
        mov     ecx, dword [eax+5DH]                    ; 1000C159 _ 8B. 48, 5D
        push    ecx                                     ; 1000C15C _ 51
        call    ?_2482                                  ; 1000C15D _ E8, 0000A2FE
        mov     ebp, eax                                ; 1000C162 _ 8B. E8
        add     esp, 20                                 ; 1000C164 _ 83. C4, 14
        cmp     ebp, ebx                                ; 1000C167 _ 3B. EB
        jz      ?_1284                                  ; 1000C169 _ 74, 20
        mov     eax, dword [ebp+14H]                    ; 1000C16B _ 8B. 45, 14
        cmp     eax, ebx                                ; 1000C16E _ 3B. C3
        jz      ?_1284                                  ; 1000C170 _ 74, 19
?_1283: xor     edx, edx                                ; 1000C172 _ 33. D2
        mov     dx, word [eax]                          ; 1000C174 _ 66: 8B. 10
        lea     eax, [ebp+14H]                          ; 1000C177 _ 8D. 45, 14
        push    edx                                     ; 1000C17A _ 52
        push    eax                                     ; 1000C17B _ 50
        call    ?_2502                                  ; 1000C17C _ E8, 0000A44F
        mov     eax, dword [ebp+14H]                    ; 1000C181 _ 8B. 45, 14
        add     esp, 8                                  ; 1000C184 _ 83. C4, 08
        cmp     eax, ebx                                ; 1000C187 _ 3B. C3
        jnz     ?_1283                                  ; 1000C189 _ 75, E7
?_1284: mov     eax, dword [esp+10H]                    ; 1000C18B _ 8B. 44 24, 10
        mov     edx, dword [edi+20H]                    ; 1000C18F _ 8B. 57, 20
        cmp     ebp, ebx                                ; 1000C192 _ 3B. EB
        mov     ecx, dword [eax+65H]                    ; 1000C194 _ 8B. 48, 65
        mov     dword [ecx+10H], edx                    ; 1000C197 _ 89. 51, 10
        jz      ?_1285                                  ; 1000C19A _ 74, 12
        mov     eax, dword [edi+14H]                    ; 1000C19C _ 8B. 47, 14
        mov     ecx, dword [ebp+2H]                     ; 1000C19F _ 8B. 4D, 02
        push    2                                       ; 1000C1A2 _ 6A, 02
        push    eax                                     ; 1000C1A4 _ 50
        push    ecx                                     ; 1000C1A5 _ 51
        call    ?_2564                                  ; 1000C1A6 _ E8, 0000AB25
        add     esp, 12                                 ; 1000C1AB _ 83. C4, 0C
?_1285: xor     edx, edx                                ; 1000C1AE _ 33. D2
        mov     dl, byte [?_5532]                       ; 1000C1B0 _ 8A. 15, 10035439(d)
        push    edx                                     ; 1000C1B6 _ 52
        call    ?_2440                                  ; 1000C1B7 _ E8, 00009DB4
        mov     eax, dword [esi+1CCH]                   ; 1000C1BC _ 8B. 86, 000001CC
        add     esp, 4                                  ; 1000C1C2 _ 83. C4, 04
        or      al, 04H                                 ; 1000C1C5 _ 0C, 04
        mov     dword [esi+1CCH], eax                   ; 1000C1C7 _ 89. 86, 000001CC
        xor     eax, eax                                ; 1000C1CD _ 33. C0
        mov     ax, word [esi]                          ; 1000C1CF _ 66: 8B. 06
        pop     edi                                     ; 1000C1D2 _ 5F
        pop     esi                                     ; 1000C1D3 _ 5E
        pop     ebp                                     ; 1000C1D4 _ 5D
        pop     ebx                                     ; 1000C1D5 _ 5B
        add     esp, 8                                  ; 1000C1D6 _ 83. C4, 08
        ret                                             ; 1000C1D9 _ C3

        nop                                             ; 1000C1DA _ 90
        nop                                             ; 1000C1DB _ 90
        nop                                             ; 1000C1DC _ 90
        nop                                             ; 1000C1DD _ 90
        nop                                             ; 1000C1DE _ 90
        nop                                             ; 1000C1DF _ 90
?_1286: mov     eax, dword [esp+4H]                     ; 1000C1E0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+8H]                     ; 1000C1E4 _ 8B. 48, 08
        cmp     ecx, 3                                  ; 1000C1E7 _ 83. F9, 03
        ja      ?_1291                                  ; 1000C1EA _ 77, 73
        jmp     near [?_1292+ecx*4]                     ; 1000C1EC _ FF. 24 8D, 1000C264(d)

?_1287: fld     dword [eax+10H]                         ; 1000C1F3 _ D9. 40, 10
        fmul    dword [?_4911]                          ; 1000C1F6 _ D8. 0D, 100256A4(d)
        call    ?_3298                                  ; 1000C1FC _ E8, 0000F363
        mov     ecx, dword [esp+8H]                     ; 1000C201 _ 8B. 4C 24, 08
        mov     byte [ecx+8H], al                       ; 1000C205 _ 88. 41, 08
        mov     eax, 1                                  ; 1000C208 _ B8, 00000001
        ret                                             ; 1000C20D _ C3

?_1288: fld     dword [eax+10H]                         ; 1000C20E _ D9. 40, 10
        fmul    dword [?_4911]                          ; 1000C211 _ D8. 0D, 100256A4(d)
        call    ?_3298                                  ; 1000C217 _ E8, 0000F348
        mov     edx, dword [esp+8H]                     ; 1000C21C _ 8B. 54 24, 08
        mov     byte [edx+9H], al                       ; 1000C220 _ 88. 42, 09
        mov     eax, 1                                  ; 1000C223 _ B8, 00000001
        ret                                             ; 1000C228 _ C3

?_1289: fld     dword [eax+10H]                         ; 1000C229 _ D9. 40, 10
        fmul    dword [?_4911]                          ; 1000C22C _ D8. 0D, 100256A4(d)
        call    ?_3298                                  ; 1000C232 _ E8, 0000F32D
        mov     ecx, dword [esp+8H]                     ; 1000C237 _ 8B. 4C 24, 08
        mov     byte [ecx+0AH], al                      ; 1000C23B _ 88. 41, 0A
        mov     eax, 1                                  ; 1000C23E _ B8, 00000001
        ret                                             ; 1000C243 _ C3

?_1290: fld     dword [eax+10H]                         ; 1000C244 _ D9. 40, 10
        fmul    dword [?_4911]                          ; 1000C247 _ D8. 0D, 100256A4(d)
        call    ?_3298                                  ; 1000C24D _ E8, 0000F312
        mov     edx, dword [esp+8H]                     ; 1000C252 _ 8B. 54 24, 08
        mov     byte [edx+0BH], al                      ; 1000C256 _ 88. 42, 0B
        mov     eax, 1                                  ; 1000C259 _ B8, 00000001
        ret                                             ; 1000C25E _ C3

