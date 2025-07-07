; ---- 1000EC00 ----
?_1658: ; Local function
        sub     esp, 12                                 ; 1000EC00 _ 83. EC, 0C
        push    ebx                                     ; 1000EC03 _ 53
        push    ebp                                     ; 1000EC04 _ 55
        push    esi                                     ; 1000EC05 _ 56
        push    edi                                     ; 1000EC06 _ 57
        mov     edi, dword [esp+20H]                    ; 1000EC07 _ 8B. 7C 24, 20
        mov     eax, dword [edi+10H]                    ; 1000EC0B _ 8B. 47, 10
        push    eax                                     ; 1000EC0E _ 50
        push    edi                                     ; 1000EC0F _ 57
        call    ?_1389                                  ; 1000EC10 _ E8, FFFFDE7B
        mov     ecx, dword [edi+14H]                    ; 1000EC15 _ 8B. 4F, 14
        mov     dword [edi+10H], eax                    ; 1000EC18 _ 89. 47, 10
        push    ecx                                     ; 1000EC1B _ 51
        push    edi                                     ; 1000EC1C _ 57
        call    ?_1389                                  ; 1000EC1D _ E8, FFFFDE6E
        mov     ebx, dword [edi+1CH]                    ; 1000EC22 _ 8B. 5F, 1C
        add     esp, 16                                 ; 1000EC25 _ 83. C4, 10
        cmp     ebx, 4                                  ; 1000EC28 _ 83. FB, 04
        mov     dword [edi+14H], eax                    ; 1000EC2B _ 89. 47, 14
        jne     ?_1674                                  ; 1000EC2E _ 0F 85, 0000015A
        mov     edi, dword [edi+24H]                    ; 1000EC34 _ 8B. 7F, 24
        test    edi, edi                                ; 1000EC37 _ 85. FF
        jbe     ?_1663                                  ; 1000EC39 _ 0F 86, 000000AA
        cmp     edi, ebx                                ; 1000EC3F _ 3B. FB
        jnc     ?_1659                                  ; 1000EC41 _ 73, 0C
        test    edi, edi                                ; 1000EC43 _ 85. FF
        jbe     ?_1663                                  ; 1000EC45 _ 0F 86, 0000009E
        cmp     edi, ebx                                ; 1000EC4B _ 3B. FB
        jnz     ?_1660                                  ; 1000EC4D _ 75, 25
?_1659: mov     dword [esp+20H], 40                     ; 1000EC4F _ C7. 44 24, 20, 00000028
        mov     dword [esp+14H], -115                   ; 1000EC57 _ C7. 44 24, 14, FFFFFF8D
        mov     dword [esp+10H], -20                    ; 1000EC5F _ C7. 44 24, 10, FFFFFFEC
        mov     dword [esp+18H], 3                      ; 1000EC67 _ C7. 44 24, 18, 00000003
        jmp     ?_1664                                  ; 1000EC6F _ E9, 00000095

?_1660: cmp     edi, 3                                  ; 1000EC74 _ 83. FF, 03
        jnz     ?_1661                                  ; 1000EC77 _ 75, 22
        mov     dword [esp+20H], 55                     ; 1000EC79 _ C7. 44 24, 20, 00000037
        mov     dword [esp+14H], -105                   ; 1000EC81 _ C7. 44 24, 14, FFFFFF97
        mov     dword [esp+10H], -16                    ; 1000EC89 _ C7. 44 24, 10, FFFFFFF0
        mov     dword [esp+18H], 5                      ; 1000EC91 _ C7. 44 24, 18, 00000005
        jmp     ?_1664                                  ; 1000EC99 _ EB, 6E

?_1661: cmp     edi, 2                                  ; 1000EC9B _ 83. FF, 02
        jnz     ?_1662                                  ; 1000EC9E _ 75, 22
        mov     dword [esp+20H], 70                     ; 1000ECA0 _ C7. 44 24, 20, 00000046
        mov     dword [esp+14H], -95                    ; 1000ECA8 _ C7. 44 24, 14, FFFFFFA1
        mov     dword [esp+10H], -12                    ; 1000ECB0 _ C7. 44 24, 10, FFFFFFF4
        mov     dword [esp+18H], 7                      ; 1000ECB8 _ C7. 44 24, 18, 00000007
        jmp     ?_1664                                  ; 1000ECC0 _ EB, 47

?_1662: cmp     edi, 1                                  ; 1000ECC2 _ 83. FF, 01
        jnz     ?_1663                                  ; 1000ECC5 _ 75, 22
        mov     dword [esp+20H], 85                     ; 1000ECC7 _ C7. 44 24, 20, 00000055
        mov     dword [esp+14H], -85                    ; 1000ECCF _ C7. 44 24, 14, FFFFFFAB
        mov     dword [esp+10H], -8                     ; 1000ECD7 _ C7. 44 24, 10, FFFFFFF8
        mov     dword [esp+18H], 9                      ; 1000ECDF _ C7. 44 24, 18, 00000009
        jmp     ?_1664                                  ; 1000ECE7 _ EB, 20

?_1663: mov     dword [esp+20H], 100                    ; 1000ECE9 _ C7. 44 24, 20, 00000064
        mov     dword [esp+14H], -75                    ; 1000ECF1 _ C7. 44 24, 14, FFFFFFB5
        mov     dword [esp+10H], -5                     ; 1000ECF9 _ C7. 44 24, 10, FFFFFFFB
        mov     dword [esp+18H], 11                     ; 1000ED01 _ C7. 44 24, 18, 0000000B
?_1664: xor     edi, edi                                ; 1000ED09 _ 33. FF
        mov     ebx, ?_5632                             ; 1000ED0B _ BB, 100358A0(d)
        mov     edx, ?_5674                             ; 1000ED10 _ BA, 100A9820(d)
?_1665: xor     ecx, ecx                                ; 1000ED15 _ 33. C9
        mov     esi, ?_5632                             ; 1000ED17 _ BE, 100358A0(d)
?_1666: movsx   eax, byte [edx+ecx]                     ; 1000ED1C _ 0F BE. 04 0A
        cmp     edi, ecx                                ; 1000ED20 _ 3B. F9
        jz      ?_1673                                  ; 1000ED22 _ 74, 41
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebx], -1                          ; 1000ED24 _ 66: 81. 3B, FFFF
        jz      ?_1673                                  ; 1000ED29 _ 74, 3A
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [esi], -1                          ; 1000ED2B _ 66: 81. 3E, FFFF
        jz      ?_1673                                  ; 1000ED30 _ 74, 33
        cmp     eax, dword [esp+20H]                    ; 1000ED32 _ 3B. 44 24, 20
        jle     ?_1667                                  ; 1000ED36 _ 7E, 06
        mov     ebp, dword [esp+10H]                    ; 1000ED38 _ 8B. 6C 24, 10
        jmp     ?_1668                                  ; 1000ED3C _ EB, 0A

?_1667: cmp     eax, dword [esp+14H]                    ; 1000ED3E _ 3B. 44 24, 14
        jge     ?_1669                                  ; 1000ED42 _ 7D, 06
        mov     ebp, dword [esp+18H]                    ; 1000ED44 _ 8B. 6C 24, 18
?_1668: add     eax, ebp                                ; 1000ED48 _ 03. C5
?_1669: cmp     eax, -127                               ; 1000ED4A _ 83. F8, 81
        jle     ?_1670                                  ; 1000ED4D _ 7E, 07
        cmp     eax, 127                                ; 1000ED4F _ 83. F8, 7F
        jge     ?_1671                                  ; 1000ED52 _ 7D, 09
        jmp     ?_1672                                  ; 1000ED54 _ EB, 0C

?_1670: mov     eax, 4294967169                         ; 1000ED56 _ B8, FFFFFF81
        jmp     ?_1672                                  ; 1000ED5B _ EB, 05

?_1671: mov     eax, 127                                ; 1000ED5D _ B8, 0000007F
?_1672: mov     byte [edx+ecx], al                      ; 1000ED62 _ 88. 04 0A
?_1673: add     esi, 540                                ; 1000ED65 _ 81. C6, 0000021C
        inc     ecx                                     ; 1000ED6B _ 41
        cmp     esi, ?_5656                             ; 1000ED6C _ 81. FE, 1009ACA0(d)
        jl      ?_1666                                  ; 1000ED72 _ 7C, A8
        add     edx, 768                                ; 1000ED74 _ 81. C2, 00000300
        inc     edi                                     ; 1000ED7A _ 47
        add     ebx, 540                                ; 1000ED7B _ 81. C3, 0000021C
        cmp     edx, ?_5677                             ; 1000ED81 _ 81. FA, 10139820(d)
        jl      ?_1665                                  ; 1000ED87 _ 7C, 8C
        jmp     ?_1696                                  ; 1000ED89 _ E9, 000001E2

?_1674: xor     ecx, ecx                                ; 1000ED8E _ 33. C9
        mov     edx, ?_5634                             ; 1000ED90 _ BA, 100358A4(d)
?_1675: cmp     dword [edx], eax                        ; 1000ED95 _ 39. 02
        jz      ?_1677                                  ; 1000ED97 _ 74, 1C
        add     edx, 540                                ; 1000ED99 _ 81. C2, 0000021C
        inc     ecx                                     ; 1000ED9F _ 41
        cmp     edx, ?_5658                             ; 1000EDA0 _ 81. FA, 1009ACA4(d)
        jc      ?_1675                                  ; 1000EDA6 _ 72, ED
?_1676: pop     edi                                     ; 1000EDA8 _ 5F
        pop     esi                                     ; 1000EDA9 _ 5E
        pop     ebp                                     ; 1000EDAA _ 5D
        mov     eax, 1                                  ; 1000EDAB _ B8, 00000001
        pop     ebx                                     ; 1000EDB0 _ 5B
        add     esp, 12                                 ; 1000EDB1 _ 83. C4, 0C
        ret                                             ; 1000EDB4 _ C3

?_1677: cmp     ecx, 768                                ; 1000EDB5 _ 81. F9, 00000300
        jnc     ?_1676                                  ; 1000EDBB _ 73, EB
        lea     eax, [ecx+ecx*2]                        ; 1000EDBD _ 8D. 04 49
        mov     ebp, 65535                              ; 1000EDC0 _ BD, 0000FFFF
        lea     eax, [eax+eax*4]                        ; 1000EDC5 _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 1000EDC8 _ 8D. 04 C0
        shl     eax, 2                                  ; 1000EDCB _ C1. E0, 02
        cmp     word [?_5632+eax], bp                   ; 1000EDCE _ 66: 39. A8, 100358A0(d)
        jz      ?_1676                                  ; 1000EDD5 _ 74, D1
        cmp     ebx, 3                                  ; 1000EDD7 _ 83. FB, 03
        jnz     ?_1680                                  ; 1000EDDA _ 75, 43
        mov     ebp, dword [?_5655+eax]                 ; 1000EDDC _ 8B. A8, 10035AB0(d)
        mov     esi, ?_5634                             ; 1000EDE2 _ BE, 100358A4(d)
        lea     ebx, [?_5691+ecx]                       ; 1000EDE7 _ 8D. 99, 1014D8E0(d)
?_1678: cmp     dword [esi], ebp                        ; 1000EDED _ 39. 2E
        jz      ?_1679                                  ; 1000EDEF _ 74, 15
        movsx   edx, byte [ebx]                         ; 1000EDF1 _ 0F BE. 13
        mov     dword [esp+20H], edx                    ; 1000EDF4 _ 89. 54 24, 20
        fild    dword [esp+20H]                         ; 1000EDF8 _ DB. 44 24, 20
        fmul    dword [edi+20H]                         ; 1000EDFC _ D8. 4F, 20
        call    ?_3298                                  ; 1000EDFF _ E8, 0000C760
        mov     byte [ebx], al                          ; 1000EE04 _ 88. 03
?_1679: add     esi, 540                                ; 1000EE06 _ 81. C6, 0000021C
        add     ebx, 768                                ; 1000EE0C _ 81. C3, 00000300
        cmp     esi, ?_5658                             ; 1000EE12 _ 81. FE, 1009ACA4(d)
        jl      ?_1678                                  ; 1000EE18 _ 7C, D3
        jmp     ?_1696                                  ; 1000EE1A _ E9, 00000151

?_1680: mov     esi, dword [edi+10H]                    ; 1000EE1F _ 8B. 77, 10
        xor     eax, eax                                ; 1000EE22 _ 33. C0
        mov     edx, ?_5634                             ; 1000EE24 _ BA, 100358A4(d)
?_1681: cmp     dword [edx], esi                        ; 1000EE29 _ 39. 32
        jz      ?_1682                                  ; 1000EE2B _ 74, 1C
        add     edx, 540                                ; 1000EE2D _ 81. C2, 0000021C
        inc     eax                                     ; 1000EE33 _ 40
        cmp     edx, ?_5658                             ; 1000EE34 _ 81. FA, 1009ACA4(d)
        jc      ?_1681                                  ; 1000EE3A _ 72, ED
        pop     edi                                     ; 1000EE3C _ 5F
        pop     esi                                     ; 1000EE3D _ 5E
        pop     ebp                                     ; 1000EE3E _ 5D
        mov     eax, 1                                  ; 1000EE3F _ B8, 00000001
        pop     ebx                                     ; 1000EE44 _ 5B
        add     esp, 12                                 ; 1000EE45 _ 83. C4, 0C
        ret                                             ; 1000EE48 _ C3

?_1682: cmp     eax, 768                                ; 1000EE49 _ 3D, 00000300
        jnc     ?_1676                                  ; 1000EE4E _ 0F 83, FFFFFF54
        lea     edx, [eax+eax*2]                        ; 1000EE54 _ 8D. 14 40
        lea     edx, [edx+edx*4]                        ; 1000EE57 _ 8D. 14 92
        lea     edx, [edx+edx*8]                        ; 1000EE5A _ 8D. 14 D2
        cmp     word [?_5632+edx*4], bp                 ; 1000EE5D _ 66: 39. 2C 95, 100358A0(d)
        je      ?_1676                                  ; 1000EE65 _ 0F 84, FFFFFF3D
        cmp     ebx, 2                                  ; 1000EE6B _ 83. FB, 02
        jnz     ?_1685                                  ; 1000EE6E _ 75, 50
        lea     eax, [eax+eax*2]                        ; 1000EE70 _ 8D. 04 40
        shl     eax, 8                                  ; 1000EE73 _ C1. E0, 08
        add     ecx, eax                                ; 1000EE76 _ 03. C8
        movsx   edx, byte [?_5674+ecx]                  ; 1000EE78 _ 0F BE. 91, 100A9820(d)
        mov     byte [?_5691+ecx], 0                    ; 1000EE7F _ C6. 81, 1014D8E0(d), 00
        mov     eax, dword [edi+18H]                    ; 1000EE86 _ 8B. 47, 18
        add     eax, edx                                ; 1000EE89 _ 03. C2
        cmp     eax, -127                               ; 1000EE8B _ 83. F8, 81
        jl      ?_1683                                  ; 1000EE8E _ 7C, 10
        cmp     eax, 127                                ; 1000EE90 _ 83. F8, 7F
        jge     ?_1684                                  ; 1000EE93 _ 7D, 1B
        mov     byte [?_5674+ecx], al                   ; 1000EE95 _ 88. 81, 100A9820(d)
        jmp     ?_1696                                  ; 1000EE9B _ E9, 000000D0

?_1683: mov     eax, 4294967169                         ; 1000EEA0 _ B8, FFFFFF81
        mov     byte [?_5674+ecx], al                   ; 1000EEA5 _ 88. 81, 100A9820(d)
        jmp     ?_1696                                  ; 1000EEAB _ E9, 000000C0

?_1684: mov     eax, 127                                ; 1000EEB0 _ B8, 0000007F
        mov     byte [?_5674+ecx], al                   ; 1000EEB5 _ 88. 81, 100A9820(d)
        jmp     ?_1696                                  ; 1000EEBB _ E9, 000000B0

?_1685: cmp     ebx, 1                                  ; 1000EEC0 _ 83. FB, 01
        jnz     ?_1692                                  ; 1000EEC3 _ 75, 73
        lea     eax, [eax+eax*2]                        ; 1000EEC5 _ 8D. 04 40
        mov     esi, dword [edi+18H]                    ; 1000EEC8 _ 8B. 77, 18
        shl     eax, 8                                  ; 1000EECB _ C1. E0, 08
        add     ecx, eax                                ; 1000EECE _ 03. C8
        movsx   eax, byte [?_5674+ecx]                  ; 1000EED0 _ 0F BE. 81, 100A9820(d)
        add     eax, esi                                ; 1000EED7 _ 03. C6
        cmp     eax, -127                               ; 1000EED9 _ 83. F8, 81
        jl      ?_1686                                  ; 1000EEDC _ 7C, 07
        cmp     eax, 127                                ; 1000EEDE _ 83. F8, 7F
        jge     ?_1687                                  ; 1000EEE1 _ 7D, 09
        jmp     ?_1688                                  ; 1000EEE3 _ EB, 0C

?_1686: mov     eax, 4294967169                         ; 1000EEE5 _ B8, FFFFFF81
        jmp     ?_1688                                  ; 1000EEEA _ EB, 05

?_1687: mov     eax, 127                                ; 1000EEEC _ B8, 0000007F
?_1688: mov     byte [?_5674+ecx], al                   ; 1000EEF1 _ 88. 81, 100A9820(d)
        mov     edx, dword [edi+18H]                    ; 1000EEF7 _ 8B. 57, 18
        test    edx, edx                                ; 1000EEFA _ 85. D2
        jl      ?_1689                                  ; 1000EEFC _ 7C, 05
        cdq                                             ; 1000EEFE _ 99
        sub     eax, edx                                ; 1000EEFF _ 2B. C2
        sar     eax, 1                                  ; 1000EF01 _ D1. F8
?_1689: movsx   edx, byte [?_5691+ecx]                  ; 1000EF03 _ 0F BE. 91, 1014D8E0(d)
        add     eax, edx                                ; 1000EF0A _ 03. C2
        cmp     eax, -127                               ; 1000EF0C _ 83. F8, 81
        jl      ?_1690                                  ; 1000EF0F _ 7C, 0D
        cmp     eax, 127                                ; 1000EF11 _ 83. F8, 7F
        jge     ?_1691                                  ; 1000EF14 _ 7D, 15
        mov     byte [?_5691+ecx], al                   ; 1000EF16 _ 88. 81, 1014D8E0(d)
        jmp     ?_1696                                  ; 1000EF1C _ EB, 52

?_1690: mov     eax, 4294967169                         ; 1000EF1E _ B8, FFFFFF81
        mov     byte [?_5691+ecx], al                   ; 1000EF23 _ 88. 81, 1014D8E0(d)
        jmp     ?_1696                                  ; 1000EF29 _ EB, 45

?_1691: mov     eax, 127                                ; 1000EF2B _ B8, 0000007F
        mov     byte [?_5691+ecx], al                   ; 1000EF30 _ 88. 81, 1014D8E0(d)
        jmp     ?_1696                                  ; 1000EF36 _ EB, 38

?_1692: test    ebx, ebx                                ; 1000EF38 _ 85. DB
        jnz     ?_1696                                  ; 1000EF3A _ 75, 34
        lea     eax, [eax+eax*2]                        ; 1000EF3C _ 8D. 04 40
        shl     eax, 8                                  ; 1000EF3F _ C1. E0, 08
        movsx   edx, byte [?_5674+eax+ecx]              ; 1000EF42 _ 0F BE. 94 08, 100A9820(d)
        lea     ecx, [?_5674+eax+ecx]                   ; 1000EF4A _ 8D. 8C 08, 100A9820(d)
        mov     eax, dword [edi+18H]                    ; 1000EF51 _ 8B. 47, 18
        add     eax, edx                                ; 1000EF54 _ 03. C2
        cmp     eax, -127                               ; 1000EF56 _ 83. F8, 81
        jl      ?_1693                                  ; 1000EF59 _ 7C, 07
        cmp     eax, 127                                ; 1000EF5B _ 83. F8, 7F
        jge     ?_1694                                  ; 1000EF5E _ 7D, 09
        jmp     ?_1695                                  ; 1000EF60 _ EB, 0C

?_1693: mov     eax, 4294967169                         ; 1000EF62 _ B8, FFFFFF81
        jmp     ?_1695                                  ; 1000EF67 _ EB, 05

?_1694: mov     eax, 127                                ; 1000EF69 _ B8, 0000007F
?_1695: mov     byte [ecx], al                          ; 1000EF6E _ 88. 01
?_1696: mov     eax, dword [esp+24H]                    ; 1000EF70 _ 8B. 44 24, 24
        test    eax, eax                                ; 1000EF74 _ 85. C0
        jz      ?_1697                                  ; 1000EF76 _ 74, 03
        mov     byte [eax], 1                           ; 1000EF78 _ C6. 00, 01
?_1697: pop     edi                                     ; 1000EF7B _ 5F
        pop     esi                                     ; 1000EF7C _ 5E
        pop     ebp                                     ; 1000EF7D _ 5D
        xor     eax, eax                                ; 1000EF7E _ 33. C0
        pop     ebx                                     ; 1000EF80 _ 5B
        add     esp, 12                                 ; 1000EF81 _ 83. C4, 0C
        ret                                             ; 1000EF84 _ C3

        nop                                             ; 1000EF85 _ 90
        nop                                             ; 1000EF86 _ 90
        nop                                             ; 1000EF87 _ 90
        nop                                             ; 1000EF88 _ 90
        nop                                             ; 1000EF89 _ 90
        nop                                             ; 1000EF8A _ 90
        nop                                             ; 1000EF8B _ 90
        nop                                             ; 1000EF8C _ 90
        nop                                             ; 1000EF8D _ 90
        nop                                             ; 1000EF8E _ 90
        nop                                             ; 1000EF8F _ 90

