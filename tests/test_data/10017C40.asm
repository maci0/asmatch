; ---- 10017C40 ----
?_2723: ; Local function
        mov     eax, dword [?_5693]                     ; 10017C40 _ A1, 101DE450(d)
        test    eax, eax                                ; 10017C45 _ 85. C0
        je      ?_2751                                  ; 10017C47 _ 0F 84, 000002D6
        mov     eax, dword [?_5668]                     ; 10017C4D _ A1, 100A8C30(d)
        test    eax, eax                                ; 10017C52 _ 85. C0
        je      ?_2751                                  ; 10017C54 _ 0F 84, 000002C9
        mov     eax, dword [?_5539]                     ; 10017C5A _ A1, 10035450(d)
        add     eax, 64                                 ; 10017C5F _ 83. C0, 40
        cmp     eax, 20488                              ; 10017C62 _ 3D, 00005008
        jge     ?_2751                                  ; 10017C67 _ 0F 8D, 000002B6
        push    ebx                                     ; 10017C6D _ 53
        push    ebp                                     ; 10017C6E _ 55
        push    esi                                     ; 10017C6F _ 56
        mov     esi, dword [esp+14H]                    ; 10017C70 _ 8B. 74 24, 14
        push    edi                                     ; 10017C74 _ 57
        mov     edi, dword [esp+14H]                    ; 10017C75 _ 8B. 7C 24, 14
        push    1                                       ; 10017C79 _ 6A, 01
        push    esi                                     ; 10017C7B _ 56
        mov     ecx, dword [edi+1H]                     ; 10017C7C _ 8B. 4F, 01
        push    ecx                                     ; 10017C7F _ 51
        call    ?_2524                                  ; 10017C80 _ E8, FFFFEADB
        xor     ecx, ecx                                ; 10017C85 _ 33. C9
        mov     ebx, eax                                ; 10017C87 _ 8B. D8
        mov     cl, byte [edi]                          ; 10017C89 _ 8A. 0F
        add     esp, 12                                 ; 10017C8B _ 83. C4, 0C
        xor     edi, edi                                ; 10017C8E _ 33. FF
        mov     dword [esp+18H], ebx                    ; 10017C90 _ 89. 5C 24, 18
        lea     eax, [ecx+ecx*2]                        ; 10017C94 _ 8D. 04 49
        shl     eax, 4                                  ; 10017C97 _ C1. E0, 04
        add     eax, ecx                                ; 10017C9A _ 03. C1
        lea     edx, [eax+eax*2]                        ; 10017C9C _ 8D. 14 40
        mov     eax, dword [?_5668]                     ; 10017C9F _ A1, 100A8C30(d)
        add     eax, ecx                                ; 10017CA4 _ 03. C1
        lea     ebp, [eax+edx*4]                        ; 10017CA6 _ 8D. 2C 90
        mov     cx, word [ebp+23H]                      ; 10017CA9 _ 66: 8B. 4D, 23
        lea     eax, [ebp+23H]                          ; 10017CAD _ 8D. 45, 23
        and     ecx, 7FFFH                              ; 10017CB0 _ 81. E1, 00007FFF
        cmp     ecx, esi                                ; 10017CB6 _ 3B. CE
        jz      ?_2725                                  ; 10017CB8 _ 74, 12
?_2724: mov     dx, word [eax+2H]                       ; 10017CBA _ 66: 8B. 50, 02
        add     eax, 2                                  ; 10017CBE _ 83. C0, 02
        and     edx, 7FFFH                              ; 10017CC1 _ 81. E2, 00007FFF
        inc     edi                                     ; 10017CC7 _ 47
        cmp     edx, esi                                ; 10017CC8 _ 3B. D6
        jnz     ?_2724                                  ; 10017CCA _ 75, EE
?_2725: inc     edi                                     ; 10017CCC _ 47
        cmp     edi, 64                                 ; 10017CCD _ 83. FF, 40
        jge     ?_2729                                  ; 10017CD0 _ 7D, 56
?_2726: mov     dx, word [ebp+edi*2+23H]                ; 10017CD2 _ 66: 8B. 54 7D, 23
        test    dx, dx                                  ; 10017CD7 _ 66: 85. D2
        jz      ?_2729                                  ; 10017CDA _ 74, 4C
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, -1                                  ; 10017CDC _ 66: 81. FA, FFFF
        jz      ?_2728                                  ; 10017CE1 _ 74, 3F
        mov     esi, dword [?_5693]                     ; 10017CE3 _ 8B. 35, 101DE450(d)
        mov     eax, edx                                ; 10017CE9 _ 8B. C2
        and     eax, 7FFFH                              ; 10017CEB _ 25, 00007FFF
        mov     ecx, eax                                ; 10017CF0 _ 8B. C8
        shl     ecx, 6                                  ; 10017CF2 _ C1. E1, 06
        add     esi, ecx                                ; 10017CF5 _ 03. F1
        mov     ecx, eax                                ; 10017CF7 _ 8B. C8
        add     ecx, esi                                ; 10017CF9 _ 03. CE
        mov     cl, byte [ecx]                          ; 10017CFB _ 8A. 09
        cmp     cl, 2                                   ; 10017CFD _ 80. F9, 02
        jz      ?_2727                                  ; 10017D00 _ 74, 1B
        cmp     cl, 6                                   ; 10017D02 _ 80. F9, 06
        jz      ?_2727                                  ; 10017D05 _ 74, 16
        test    dh, 0FFFFFF80H                          ; 10017D07 _ F6. C6, 80
        jz      ?_2728                                  ; 10017D0A _ 74, 16
        mov     edx, dword [ebx+2H]                     ; 10017D0C _ 8B. 53, 02
        push    1                                       ; 10017D0F _ 6A, 01
        push    eax                                     ; 10017D11 _ 50
        push    edx                                     ; 10017D12 _ 52
        call    ?_2524                                  ; 10017D13 _ E8, FFFFEA48
        add     esp, 12                                 ; 10017D18 _ 83. C4, 0C
        jmp     ?_2728                                  ; 10017D1B _ EB, 05

?_2727: mov     edi, 64                                 ; 10017D1D _ BF, 00000040
?_2728: inc     edi                                     ; 10017D22 _ 47
        cmp     edi, 64                                 ; 10017D23 _ 83. FF, 40
        jl      ?_2726                                  ; 10017D26 _ 7C, AA
?_2729: mov     eax, dword [ebx+14H]                    ; 10017D28 _ 8B. 43, 14
        push    42                                      ; 10017D2B _ 6A, 2A
        push    0                                       ; 10017D2D _ 6A, 00
        push    1                                       ; 10017D2F _ 6A, 01
        push    eax                                     ; 10017D31 _ 50
        call    ?_2482                                  ; 10017D32 _ E8, FFFFE729
        add     esp, 16                                 ; 10017D37 _ 83. C4, 10
        test    eax, eax                                ; 10017D3A _ 85. C0
        jz      ?_2735                                  ; 10017D3C _ 74, 64
        mov     ecx, dword [esp+14H]                    ; 10017D3E _ 8B. 4C 24, 14
        mov     edx, dword [ecx+1H]                     ; 10017D42 _ 8B. 51, 01
        mov     dword [eax+0EH], 2                      ; 10017D45 _ C7. 40, 0E, 00000002
        mov     dword [eax+6H], edx                     ; 10017D4C _ 89. 50, 06
        mov     cl, byte [ebp+23DH]                     ; 10017D4F _ 8A. 8D, 0000023D
        test    cl, cl                                  ; 10017D55 _ 84. C9
        jnz     ?_2730                                  ; 10017D57 _ 75, 19
        mov     dl, byte [ebp+23EH]                     ; 10017D59 _ 8A. 95, 0000023E
        test    dl, dl                                  ; 10017D5F _ 84. D2
        jnz     ?_2730                                  ; 10017D61 _ 75, 0F
        mov     dl, byte [ebp+23FH]                     ; 10017D63 _ 8A. 95, 0000023F
        test    dl, dl                                  ; 10017D69 _ 84. D2
        jz      ?_2730                                  ; 10017D6B _ 74, 05
        mov     byte [eax+1CH], dl                      ; 10017D6D _ 88. 50, 1C
        jmp     ?_2735                                  ; 10017D70 _ EB, 30

?_2730: cmp     cl, 2                                   ; 10017D72 _ 80. F9, 02
        jnc     ?_2731                                  ; 10017D75 _ 73, 07
        mov     ecx, 2                                  ; 10017D77 _ B9, 00000002
        jmp     ?_2732                                  ; 10017D7C _ EB, 06

?_2731: and     ecx, 0FFH                               ; 10017D7E _ 81. E1, 000000FF
?_2732: mov     byte [eax+1CH], cl                      ; 10017D84 _ 88. 48, 1C
        mov     cl, byte [ebp+23EH]                     ; 10017D87 _ 8A. 8D, 0000023E
        cmp     cl, 2                                   ; 10017D8D _ 80. F9, 02
        jnc     ?_2733                                  ; 10017D90 _ 73, 07
        mov     ecx, 2                                  ; 10017D92 _ B9, 00000002
        jmp     ?_2734                                  ; 10017D97 _ EB, 06

?_2733: and     ecx, 0FFH                               ; 10017D99 _ 81. E1, 000000FF
?_2734: mov     byte [eax+1DH], cl                      ; 10017D9F _ 88. 48, 1D
?_2735: mov     eax, dword [ebx+14H]                    ; 10017DA2 _ 8B. 43, 14
        push    6                                       ; 10017DA5 _ 6A, 06
        push    278                                     ; 10017DA7 _ 68, 00000116
        push    0                                       ; 10017DAC _ 6A, 00
        push    2                                       ; 10017DAE _ 6A, 02
        push    eax                                     ; 10017DB0 _ 50
        call    ?_2482                                  ; 10017DB1 _ E8, FFFFE6AA
        add     esp, 20                                 ; 10017DB6 _ 83. C4, 14
        test    eax, eax                                ; 10017DB9 _ 85. C0
        jz      ?_2742                                  ; 10017DBB _ 74, 75
        mov     ecx, dword [ebx+2H]                     ; 10017DBD _ 8B. 4B, 02
        mov     dword [eax+0EH], 2                      ; 10017DC0 _ C7. 40, 0E, 00000002
        mov     dword [eax+6H], ecx                     ; 10017DC7 _ 89. 48, 06
        mov     cl, byte [ebp+23DH]                     ; 10017DCA _ 8A. 8D, 0000023D
        test    cl, cl                                  ; 10017DD0 _ 84. C9
        jnz     ?_2737                                  ; 10017DD2 _ 75, 2E
        mov     dl, byte [ebp+23EH]                     ; 10017DD4 _ 8A. 95, 0000023E
        test    dl, dl                                  ; 10017DDA _ 84. D2
        jnz     ?_2737                                  ; 10017DDC _ 75, 24
        mov     dl, byte [ebp+23FH]                     ; 10017DDE _ 8A. 95, 0000023F
        test    dl, dl                                  ; 10017DE4 _ 84. D2
        jz      ?_2737                                  ; 10017DE6 _ 74, 1A
        cmp     dl, 6                                   ; 10017DE8 _ 80. FA, 06
        jnc     ?_2736                                  ; 10017DEB _ 73, 0A
        mov     edx, 6                                  ; 10017DED _ BA, 00000006
        mov     byte [eax+1CH], dl                      ; 10017DF2 _ 88. 50, 1C
        jmp     ?_2742                                  ; 10017DF5 _ EB, 3B

?_2736: and     edx, 0FFH                               ; 10017DF7 _ 81. E2, 000000FF
        mov     byte [eax+1CH], dl                      ; 10017DFD _ 88. 50, 1C
        jmp     ?_2742                                  ; 10017E00 _ EB, 30

?_2737: cmp     cl, 6                                   ; 10017E02 _ 80. F9, 06
        jnc     ?_2738                                  ; 10017E05 _ 73, 07
        mov     ecx, 6                                  ; 10017E07 _ B9, 00000006
        jmp     ?_2739                                  ; 10017E0C _ EB, 06

?_2738: and     ecx, 0FFH                               ; 10017E0E _ 81. E1, 000000FF
?_2739: mov     byte [eax+1CH], cl                      ; 10017E14 _ 88. 48, 1C
        mov     cl, byte [ebp+23EH]                     ; 10017E17 _ 8A. 8D, 0000023E
        cmp     cl, 6                                   ; 10017E1D _ 80. F9, 06
        jnc     ?_2740                                  ; 10017E20 _ 73, 07
        mov     ecx, 6                                  ; 10017E22 _ B9, 00000006
        jmp     ?_2741                                  ; 10017E27 _ EB, 06

?_2740: and     ecx, 0FFH                               ; 10017E29 _ 81. E1, 000000FF
?_2741: mov     byte [eax+1DH], cl                      ; 10017E2F _ 88. 48, 1D
?_2742: mov     ax, word [ebx]                          ; 10017E32 _ 66: 8B. 03
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 146                                 ; 10017E35 _ 66: 3D, 0092
        jc      ?_2743                                  ; 10017E39 _ 72, 06
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 151                                 ; 10017E3B _ 66: 3D, 0097
        jbe     ?_2744                                  ; 10017E3F _ 76, 0A
?_2743:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 731                                 ; 10017E41 _ 66: 3D, 02DB
        jne     ?_2750                                  ; 10017E45 _ 0F 85, 000000D1
?_2744: xor     ecx, ecx                                ; 10017E4B _ 33. C9
        push    278                                     ; 10017E4D _ 68, 00000116
        mov     cl, byte [?_5532]                       ; 10017E52 _ 8A. 0D, 10035439(d)
        push    0                                       ; 10017E58 _ 6A, 00
        mov     eax, ecx                                ; 10017E5A _ 8B. C1
        push    1                                       ; 10017E5C _ 6A, 01
        shl     eax, 4                                  ; 10017E5E _ C1. E0, 04
        add     eax, ecx                                ; 10017E61 _ 03. C1
        lea     edx, [eax+eax*4]                        ; 10017E63 _ 8D. 14 80
        mov     eax, dword [ebx+14H]                    ; 10017E66 _ 8B. 43, 14
        push    eax                                     ; 10017E69 _ 50
        lea     esi, [ecx+edx*8]                        ; 10017E6A _ 8D. 34 D1
        shl     esi, 4                                  ; 10017E6D _ C1. E6, 04
        add     esi, ?_5667                             ; 10017E70 _ 81. C6, 1009B770(d)
        call    ?_2482                                  ; 10017E76 _ E8, FFFFE5E5
        add     esp, 16                                 ; 10017E7B _ 83. C4, 10
        test    eax, eax                                ; 10017E7E _ 85. C0
        jz      ?_2745                                  ; 10017E80 _ 74, 11
        mov     byte [eax+1CH], 12                      ; 10017E82 _ C6. 40, 1C, 0C
        mov     byte [eax+1DH], 0                       ; 10017E86 _ C6. 40, 1D, 00
        mov     dword [eax+0EH], 3                      ; 10017E8A _ C7. 40, 0E, 00000003
        jmp     ?_2746                                  ; 10017E91 _ EB, 0D

?_2745: push    ?_5432                                  ; 10017E93 _ 68, 100314B8(d)
        call    ?_0263                                  ; 10017E98 _ E8, FFFEB723
        add     esp, 4                                  ; 10017E9D _ 83. C4, 04
?_2746: mov     ecx, dword [ebx+2H]                     ; 10017EA0 _ 8B. 4B, 02
        push    1                                       ; 10017EA3 _ 6A, 01
        push    255                                     ; 10017EA5 _ 68, 000000FF
        push    ecx                                     ; 10017EAA _ 51
        call    ?_2524                                  ; 10017EAB _ E8, FFFFE8B0
        add     esp, 12                                 ; 10017EB0 _ 83. C4, 0C
        xor     ebp, ebp                                ; 10017EB3 _ 33. ED
        mov     ebx, eax                                ; 10017EB5 _ 8B. D8
        mov     edi, ?_5376                             ; 10017EB7 _ BF, 1002DDE0(d)
        add     esi, 4                                  ; 10017EBC _ 83. C6, 04
?_2747: mov     eax, dword [esp+18H]                    ; 10017EBF _ 8B. 44 24, 18
        mov     dx, word [esi+38H]                      ; 10017EC3 _ 66: 8B. 56, 38
        cmp     dx, word [eax]                          ; 10017EC7 _ 66: 3B. 10
        jnz     ?_2749                                  ; 10017ECA _ 75, 38
        cmp     dword [esi], 0                          ; 10017ECC _ 83. 3E, 00
        jz      ?_2749                                  ; 10017ECF _ 74, 33
        cmp     ebp, 16                                 ; 10017ED1 _ 83. FD, 10
        push    1                                       ; 10017ED4 _ 6A, 01
        jge     ?_2748                                  ; 10017ED6 _ 7D, 15
        mov     edx, dword [ebx+2H]                     ; 10017ED8 _ 8B. 53, 02
        xor     ecx, ecx                                ; 10017EDB _ 33. C9
        mov     cx, word [edi]                          ; 10017EDD _ 66: 8B. 0F
        push    ecx                                     ; 10017EE0 _ 51
        push    edx                                     ; 10017EE1 _ 52
        call    ?_2524                                  ; 10017EE2 _ E8, FFFFE879
        add     esp, 12                                 ; 10017EE7 _ 83. C4, 0C
        inc     ebp                                     ; 10017EEA _ 45
        jmp     ?_2749                                  ; 10017EEB _ EB, 17

?_2748: push    ?_5431                                  ; 10017EED _ 68, 10031484(d)
        push    5798                                    ; 10017EF2 _ 68, 000016A6
        push    ?_5397                                  ; 10017EF7 _ 68, 10031004(d)
        call    ?_0267                                  ; 10017EFC _ E8, FFFEB73F
        add     esp, 16                                 ; 10017F01 _ 83. C4, 10
?_2749: add     edi, 128                                ; 10017F04 _ 81. C7, 00000080
        add     esi, 128                                ; 10017F0A _ 81. C6, 00000080
        cmp     edi, ?_5377                             ; 10017F10 _ 81. FF, 10030860(d)
        jl      ?_2747                                  ; 10017F16 _ 7C, A7
        mov     ebx, dword [esp+18H]                    ; 10017F18 _ 8B. 5C 24, 18
?_2750: pop     edi                                     ; 10017F1C _ 5F
        pop     esi                                     ; 10017F1D _ 5E
        mov     eax, ebx                                ; 10017F1E _ 8B. C3
        pop     ebp                                     ; 10017F20 _ 5D
        pop     ebx                                     ; 10017F21 _ 5B
        ret                                             ; 10017F22 _ C3

