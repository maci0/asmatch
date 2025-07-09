; ---- 10011C15 ----
?_2044: ; Local function
        mov     eax, dword [esi+8H]                     ; 10011C15 _ 8B. 46, 08
        xor     ebx, ebx                                ; 10011C18 _ 33. DB
        push    eax                                     ; 10011C1A _ 50
        push    ebx                                     ; 10011C1B _ 53
        lea     ecx, [esp+20H]                          ; 10011C1C _ 8D. 4C 24, 20
        push    ebx                                     ; 10011C20 _ 53
        push    ecx                                     ; 10011C21 _ 51
        call    ?_2425                                  ; 10011C22 _ E8, 00004269
        mov     edx, dword [esp+28H]                    ; 10011C27 _ 8B. 54 24, 28
        add     esp, 16                                 ; 10011C2B _ 83. C4, 10
        cmp     edx, ebx                                ; 10011C2E _ 3B. D3
        je      ?_2065                                  ; 10011C30 _ 0F 84, 000003BF
        mov     ax, word [edx+27H]                      ; 10011C36 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 10011C3A _ 66: 3D, FFFF
        je      ?_2065                                  ; 10011C3E _ 0F 84, 000003B1
        and     eax, 0FFFFH                             ; 10011C44 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10011C49 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10011C4C _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 10011C4F _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 10011C52 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 10011C59 _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 10011C5E _ 3B. C8
        je      ?_2065                                  ; 10011C60 _ 0F 84, 0000038F
        xor     ecx, ecx                                ; 10011C66 _ 33. C9
        mov     edi, dword [?_5668]                     ; 10011C68 _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 10011C6E _ 8A. 0A
        add     edi, ecx                                ; 10011C70 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 10011C72 _ 8D. 04 49
        shl     eax, 4                                  ; 10011C75 _ C1. E0, 04
        add     eax, ecx                                ; 10011C78 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 10011C7A _ 8D. 04 40
        cmp     byte [edi+eax*4], 29                    ; 10011C7D _ 80. 3C 87, 1D
        jz      ?_2045                                  ; 10011C81 _ 74, 0D
        pop     edi                                     ; 10011C83 _ 5F
        pop     esi                                     ; 10011C84 _ 5E
        pop     ebp                                     ; 10011C85 _ 5D
        mov     eax, 4294967294                         ; 10011C86 _ B8, FFFFFFFE
        pop     ebx                                     ; 10011C8B _ 5B
        add     esp, 16                                 ; 10011C8C _ 83. C4, 10
        ret                                             ; 10011C8F _ C3

?_2045: mov     edi, dword [edx+65H]                    ; 10011C90 _ 8B. 7A, 65
        cmp     edi, ebx                                ; 10011C93 _ 3B. FB
        jnz     ?_2046                                  ; 10011C95 _ 75, 0D
        pop     edi                                     ; 10011C97 _ 5F
        pop     esi                                     ; 10011C98 _ 5E
        pop     ebp                                     ; 10011C99 _ 5D
        mov     eax, 4294967293                         ; 10011C9A _ B8, FFFFFFFD
        pop     ebx                                     ; 10011C9F _ 5B
        add     esp, 16                                 ; 10011CA0 _ 83. C4, 10
        ret                                             ; 10011CA3 _ C3

?_2046: mov     ecx, dword [esi+0CH]                    ; 10011CA4 _ 8B. 4E, 0C
        push    ecx                                     ; 10011CA7 _ 51
        push    edi                                     ; 10011CA8 _ 57
        call    ?_1891                                  ; 10011CA9 _ E8, FFFFE882
        add     esp, 8                                  ; 10011CAE _ 83. C4, 08
        test    eax, eax                                ; 10011CB1 _ 85. C0
        jnz     ?_2047                                  ; 10011CB3 _ 75, 0D
        pop     edi                                     ; 10011CB5 _ 5F
        pop     esi                                     ; 10011CB6 _ 5E
        pop     ebp                                     ; 10011CB7 _ 5D
        mov     eax, 4294967292                         ; 10011CB8 _ B8, FFFFFFFC
        pop     ebx                                     ; 10011CBD _ 5B
        add     esp, 16                                 ; 10011CBE _ 83. C4, 10
        ret                                             ; 10011CC1 _ C3

?_2047: mov     dl, byte [esi+10H]                      ; 10011CC2 _ 8A. 56, 10
        mov     eax, dword [esi+0CH]                    ; 10011CC5 _ 8B. 46, 0C
        push    edx                                     ; 10011CC8 _ 52
        push    eax                                     ; 10011CC9 _ 50
        push    edi                                     ; 10011CCA _ 57
        call    ?_1900                                  ; 10011CCB _ E8, FFFFE8E0
        add     esp, 12                                 ; 10011CD0 _ 83. C4, 0C
        cmp     eax, ebx                                ; 10011CD3 _ 3B. C3
        mov     dword [esp+1CH], eax                    ; 10011CD5 _ 89. 44 24, 1C
        jnz     ?_2048                                  ; 10011CD9 _ 75, 0D
        pop     edi                                     ; 10011CDB _ 5F
        pop     esi                                     ; 10011CDC _ 5E
        pop     ebp                                     ; 10011CDD _ 5D
        mov     eax, 65535                              ; 10011CDE _ B8, 0000FFFF
        pop     ebx                                     ; 10011CE3 _ 5B
        add     esp, 16                                 ; 10011CE4 _ 83. C4, 10
        ret                                             ; 10011CE7 _ C3

?_2048: mov     edx, dword [esi+0CH]                    ; 10011CE8 _ 8B. 56, 0C
        xor     ecx, ecx                                ; 10011CEB _ 33. C9
        mov     edx, dword [?_4926+edx*4]               ; 10011CED _ 8B. 14 95, 1002574C(d)
        cmp     edx, ebx                                ; 10011CF4 _ 3B. D3
        jle     ?_2055                                  ; 10011CF6 _ 7E, 7F
        mov     esi, dword [esi+11H]                    ; 10011CF8 _ 8B. 76, 11
        mov     eax, dword [eax+10H]                    ; 10011CFB _ 8B. 40, 10
?_2049: mov     ebp, dword [eax]                        ; 10011CFE _ 8B. 28
        mov     edi, eax                                ; 10011D00 _ 8B. F8
        cmp     ebp, esi                                ; 10011D02 _ 3B. EE
        mov     dword [esp+10H], edi                    ; 10011D04 _ 89. 7C 24, 10
        jz      ?_2050                                  ; 10011D08 _ 74, 08
        inc     ecx                                     ; 10011D0A _ 41
        add     eax, 68                                 ; 10011D0B _ 83. C0, 44
        cmp     ecx, edx                                ; 10011D0E _ 3B. CA
        jl      ?_2049                                  ; 10011D10 _ 7C, EC
?_2050: cmp     edi, ebx                                ; 10011D12 _ 3B. FB
        jz      ?_2055                                  ; 10011D14 _ 74, 61
        cmp     dword [edi], esi                        ; 10011D16 _ 39. 37
        jnz     ?_2055                                  ; 10011D18 _ 75, 5D
        xor     esi, esi                                ; 10011D1A _ 33. F6
        mov     eax, ?_5632                             ; 10011D1C _ B8, 100358A0(d)
?_2051:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], -1                          ; 10011D21 _ 66: 81. 38, FFFF
        jz      ?_2052                                  ; 10011D26 _ 74, 0D
        add     eax, 540                                ; 10011D28 _ 05, 0000021C
        inc     esi                                     ; 10011D2D _ 46
        cmp     eax, ?_5656                             ; 10011D2E _ 3D, 1009ACA0(d)
        jl      ?_2051                                  ; 10011D33 _ 7C, EC
?_2052: cmp     esi, 768                                ; 10011D35 _ 81. FE, 00000300
        jnz     ?_2056                                  ; 10011D3B _ 75, 47
        xor     esi, esi                                ; 10011D3D _ 33. F6
        mov     eax, ?_5633                             ; 10011D3F _ B8, 100358A2(d)
?_2053: cmp     byte [eax], 15                          ; 10011D44 _ 80. 38, 0F
        jz      ?_2054                                  ; 10011D47 _ 74, 0D
        add     eax, 540                                ; 10011D49 _ 05, 0000021C
        inc     esi                                     ; 10011D4E _ 46
        cmp     eax, ?_5657                             ; 10011D4F _ 3D, 1009ACA2(d)
        jl      ?_2053                                  ; 10011D54 _ 7C, EE
?_2054: cmp     esi, 768                                ; 10011D56 _ 81. FE, 00000300
        jnz     ?_2056                                  ; 10011D5C _ 75, 26
        push    1                                       ; 10011D5E _ 6A, 01
        push    ?_5337                                  ; 10011D60 _ 68, 1002D4BC(d)
        push    1775                                    ; 10011D65 _ 68, 000006EF
        push    ?_5336                                  ; 10011D6A _ 68, 1002D48C(d)
        call    ?_0267                                  ; 10011D6F _ E8, FFFF18CC
        add     esp, 16                                 ; 10011D74 _ 83. C4, 10
?_2055: pop     edi                                     ; 10011D77 _ 5F
        pop     esi                                     ; 10011D78 _ 5E
        pop     ebp                                     ; 10011D79 _ 5D
        mov     eax, 65535                              ; 10011D7A _ B8, 0000FFFF
        pop     ebx                                     ; 10011D7F _ 5B
        add     esp, 16                                 ; 10011D80 _ 83. C4, 10
        ret                                             ; 10011D83 _ C3

?_2056: lea     eax, [esi+esi*2]                        ; 10011D84 _ 8D. 04 76
        lea     edx, [eax+eax*4]                        ; 10011D87 _ 8D. 14 80
        lea     edx, [edx+edx*8]                        ; 10011D8A _ 8D. 14 D2
        shl     edx, 2                                  ; 10011D8D _ C1. E2, 02
        cmp     byte [?_5633+edx], 15                   ; 10011D90 _ 80. BA, 100358A2(d), 0F
        jnz     ?_2057                                  ; 10011D97 _ 75, 06
        dec     dword [?_5531]                          ; 10011D99 _ FF. 0D, 10035434(d)
?_2057: lea     ebp, [?_5632+edx]                       ; 10011D9F _ 8D. AA, 100358A0(d)
        mov     ecx, 135                                ; 10011DA5 _ B9, 00000087
        xor     eax, eax                                ; 10011DAA _ 33. C0
        mov     edi, ebp                                ; 10011DAC _ 8B. FD
        rep stosd                                       ; 10011DAE _ F3: AB
        or      eax, 0FFFFFFFFH                         ; 10011DB0 _ 83. C8, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp], -1                          ; 10011DB3 _ 66: C7. 45, 00, FFFF
        mov     dword [?_5634+edx], eax                 ; 10011DB9 _ 89. 82, 100358A4(d)
        lea     edx, [?_5643+edx]                       ; 10011DBF _ 8D. 92, 100358FC(d)
        mov     ecx, 8                                  ; 10011DC5 _ B9, 00000008
        mov     edi, edx                                ; 10011DCA _ 8B. FA
        rep stosd                                       ; 10011DCC _ F3: AB
        mov     ecx, dword [esp+18H]                    ; 10011DCE _ 8B. 4C 24, 18
        mov     edi, dword [?_5531]                     ; 10011DD2 _ 8B. 3D, 10035434(d)
        mov     dword [ebp+170H], ecx                   ; 10011DD8 _ 89. 8D, 00000170
        mov     dword [ebp+16CH], ecx                   ; 10011DDE _ 89. 8D, 0000016C
        mov     ecx, dword [?_5380]                     ; 10011DE4 _ 8B. 0D, 10030B6C(d)
        inc     edi                                     ; 10011DEA _ 47
        mov     dword [ebp+4H], ecx                     ; 10011DEB _ 89. 4D, 04
        inc     ecx                                     ; 10011DEE _ 41
        mov     dword [?_5380], ecx                     ; 10011DEF _ 89. 0D, 10030B6C(d)
        mov     ecx, dword [esp+24H]                    ; 10011DF5 _ 8B. 4C 24, 24
        mov     dl, 1                                   ; 10011DF9 _ B2, 01
        mov     word [ebp], si                          ; 10011DFB _ 66: 89. 75, 00
        mov     dword [?_5531], edi                     ; 10011DFF _ 89. 3D, 10035434(d)
        mov     byte [ebp+2H], 20                       ; 10011E05 _ C6. 45, 02, 14
        mov     dword [ebp+1F0H], ebx                   ; 10011E09 _ 89. 9D, 000001F0
        mov     dword [ebp+210H], eax                   ; 10011E0F _ 89. 85, 00000210
        mov     byte [ebp+215H], bl                     ; 10011E15 _ 88. 9D, 00000215
        mov     byte [ebp+216H], bl                     ; 10011E1B _ 88. 9D, 00000216
        mov     byte [ebp+217H], bl                     ; 10011E21 _ 88. 9D, 00000217
        mov     byte [ebp+218H], dl                     ; 10011E27 _ 88. 95, 00000218
        mov     dword [ebp+1E4H], 1065353216            ; 10011E2D _ C7. 85, 000001E4, 3F800000
        mov     byte [ebp+8H], 100                      ; 10011E37 _ C6. 45, 08, 64
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp+0AH], 16                      ; 10011E3B _ 66: C7. 45, 0A, 0010
        mov     byte [ebp+164H], bl                     ; 10011E41 _ 88. 9D, 00000164
        mov     byte [ebp+166H], bl                     ; 10011E47 _ 88. 9D, 00000166
        mov     cl, byte [ecx+15H]                      ; 10011E4D _ 8A. 49, 15
        mov     byte [ebp+165H], cl                     ; 10011E50 _ 88. 8D, 00000165
        mov     byte [ebp+1F4H], bl                     ; 10011E56 _ 88. 9D, 000001F4
        mov     dword [ebp+190H], 4                     ; 10011E5C _ C7. 85, 00000190, 00000004
        mov     dword [ebp+194H], ebx                   ; 10011E66 _ 89. 9D, 00000194
        mov     byte [ebp+0DH], dl                      ; 10011E6C _ 88. 55, 0D
        mov     dword [ebp+18CH], eax                   ; 10011E6F _ 89. 85, 0000018C
        mov     dword [ebp+20CH], eax                   ; 10011E75 _ 89. 85, 0000020C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp+50H], 32767                   ; 10011E7B _ 66: C7. 45, 50, 7FFF
        xor     ecx, ecx                                ; 10011E81 _ 33. C9
?_2058: mov     edx, dword [esp+10H]                    ; 10011E83 _ 8B. 54 24, 10
        mov     dl, byte [edx+ecx+24H]                  ; 10011E87 _ 8A. 54 0A, 24
        shr     dl, 1                                   ; 10011E8B _ D0. EA
        mov     byte [ecx+ebp+80H], dl                  ; 10011E8D _ 88. 94 29, 00000080
        inc     ecx                                     ; 10011E94 _ 41
        cmp     ecx, 5                                  ; 10011E95 _ 83. F9, 05
        jl      ?_2058                                  ; 10011E98 _ 7C, E9
        mov     esi, dword [esp+10H]                    ; 10011E9A _ 8B. 74 24, 10
        lea     edx, [ebp+30H]                          ; 10011E9E _ 8D. 55, 30
        mov     cl, byte [esi+38H]                      ; 10011EA1 _ 8A. 4E, 38
        lea     edi, [esi+4H]                           ; 10011EA4 _ 8D. 7E, 04
        mov     byte [ebp+9H], cl                       ; 10011EA7 _ 88. 4D, 09
        mov     ecx, eax                                ; 10011EAA _ 8B. C8
        xor     eax, eax                                ; 10011EAC _ 33. C0
        repne scasb                                     ; 10011EAE _ F2: AE
        not     ecx                                     ; 10011EB0 _ F7. D1
        sub     edi, ecx                                ; 10011EB2 _ 2B. F9
        mov     eax, ecx                                ; 10011EB4 _ 8B. C1
        mov     esi, edi                                ; 10011EB6 _ 8B. F7
        mov     edi, edx                                ; 10011EB8 _ 8B. FA
        lea     edx, [ebp+40H]                          ; 10011EBA _ 8D. 55, 40
        shr     ecx, 2                                  ; 10011EBD _ C1. E9, 02
        rep movsd                                       ; 10011EC0 _ F3: A5
        mov     ecx, eax                                ; 10011EC2 _ 8B. C8
        xor     eax, eax                                ; 10011EC4 _ 33. C0
        and     ecx, 03H                                ; 10011EC6 _ 83. E1, 03
        rep movsb                                       ; 10011EC9 _ F3: A4
        mov     ecx, dword [esp+10H]                    ; 10011ECB _ 8B. 4C 24, 10
        lea     edi, [ecx+14H]                          ; 10011ECF _ 8D. 79, 14
        or      ecx, 0FFFFFFFFH                         ; 10011ED2 _ 83. C9, FF
        repne scasb                                     ; 10011ED5 _ F2: AE
        not     ecx                                     ; 10011ED7 _ F7. D1
        sub     edi, ecx                                ; 10011ED9 _ 2B. F9
        mov     eax, ecx                                ; 10011EDB _ 8B. C1
        mov     esi, edi                                ; 10011EDD _ 8B. F7
        mov     edi, edx                                ; 10011EDF _ 8B. FA
        shr     ecx, 2                                  ; 10011EE1 _ C1. E9, 02
        rep movsd                                       ; 10011EE4 _ F3: A5
        mov     ecx, eax                                ; 10011EE6 _ 8B. C8
        and     ecx, 03H                                ; 10011EE8 _ 83. E1, 03
        rep movsb                                       ; 10011EEB _ F3: A4
        mov     dword [ebp+10H], ebx                    ; 10011EED _ 89. 5D, 10
        call    ?_3024                                  ; 10011EF0 _ E8, 000081FB
        fmul    dword [?_4936]                          ; 10011EF5 _ D8. 0D, 100257C8(d)
        mov     dword [ebp+18H], ebx                    ; 10011EFB _ 89. 5D, 18
        mov     dword [ebp+1CH], 1148846080             ; 10011EFE _ C7. 45, 1C, 447A0000
        mov     dword [ebp+20H], ebx                    ; 10011F05 _ 89. 5D, 20
        mov     dword [ebp+24H], ebx                    ; 10011F08 _ 89. 5D, 24
        fadd    dword [?_4935]                          ; 10011F0B _ D8. 05, 100257C4(d)
        mov     word [ebp+28H], bx                      ; 10011F11 _ 66: 89. 5D, 28
        mov     dword [ebp+2CH], ebx                    ; 10011F15 _ 89. 5D, 2C
        mov     dword [esp+14H], ebx                    ; 10011F18 _ 89. 5C 24, 14
        xor     esi, esi                                ; 10011F1C _ 33. F6
        fdivr   dword [?_4906]                          ; 10011F1E _ D8. 3D, 10025680(d)
        fstp    dword [ebp+14H]                         ; 10011F24 _ D9. 5D, 14
?_2059: xor     ecx, ecx                                ; 10011F27 _ 33. C9
        push    64                                      ; 10011F29 _ 6A, 40
        mov     cx, word [ebp]                          ; 10011F2B _ 66: 8B. 4D, 00
        lea     edi, [ecx+esi]                          ; 10011F2F _ 8D. 3C 31
        call    ?_3022                                  ; 10011F32 _ E8, 00008199
        sub     al, 32                                  ; 10011F37 _ 2C, 20
        mov     byte [?_5691+edi], bl                   ; 10011F39 _ 88. 9F, 1014D8E0(d)
        mov     byte [?_5674+edi], al                   ; 10011F3F _ 88. 87, 100A9820(d)
        xor     eax, eax                                ; 10011F45 _ 33. C0
        mov     ax, word [ebp]                          ; 10011F47 _ 66: 8B. 45, 00
        push    64                                      ; 10011F4B _ 6A, 40
        lea     edx, [eax+eax*2]                        ; 10011F4D _ 8D. 14 40
        mov     eax, dword [esp+1CH]                    ; 10011F50 _ 8B. 44 24, 1C
        shl     edx, 8                                  ; 10011F54 _ C1. E2, 08
        lea     edi, [edx+eax]                          ; 10011F57 _ 8D. 3C 02
        call    ?_3022                                  ; 10011F5A _ E8, 00008171
        mov     edx, dword [esp+1CH]                    ; 10011F5F _ 8B. 54 24, 1C
        add     esp, 8                                  ; 10011F63 _ 83. C4, 08
        sub     al, 32                                  ; 10011F66 _ 2C, 20
        add     esi, 768                                ; 10011F68 _ 81. C6, 00000300
        inc     edx                                     ; 10011F6E _ 42
        cmp     esi, 589824                             ; 10011F6F _ 81. FE, 00090000
        mov     byte [?_5674+edi], al                   ; 10011F75 _ 88. 87, 100A9820(d)
        mov     byte [?_5691+edi], bl                   ; 10011F7B _ 88. 9F, 1014D8E0(d)
        mov     dword [esp+14H], edx                    ; 10011F81 _ 89. 54 24, 14
        jl      ?_2059                                  ; 10011F85 _ 7C, A0
        mov     ecx, dword [esp+10H]                    ; 10011F87 _ 8B. 4C 24, 10
        mov     edi, dword [esp+1CH]                    ; 10011F8B _ 8B. 7C 24, 1C
        mov     esi, dword [ecx]                        ; 10011F8F _ 8B. 31
        mov     eax, dword [edi+4H]                     ; 10011F91 _ 8B. 47, 04
        cmp     esi, eax                                ; 10011F94 _ 3B. F0
        jnz     ?_2063                                  ; 10011F96 _ 75, 35
        mov     edx, dword [esp+24H]                    ; 10011F98 _ 8B. 54 24, 24
        mov     eax, dword [edx+0CH]                    ; 10011F9C _ 8B. 42, 0C
        mov     edx, dword [?_4926+eax*4]               ; 10011F9F _ 8B. 14 85, 1002574C(d)
        cmp     edx, ebx                                ; 10011FA6 _ 3B. D3
        jle     ?_2062                                  ; 10011FA8 _ 7E, 16
        mov     eax, dword [edi+10H]                    ; 10011FAA _ 8B. 47, 10
?_2060: mov     ecx, dword [eax]                        ; 10011FAD _ 8B. 08
        cmp     ecx, -1                                 ; 10011FAF _ 83. F9, FF
        jz      ?_2061                                  ; 10011FB2 _ 74, 04
        cmp     ecx, esi                                ; 10011FB4 _ 3B. CE
        jnz     ?_2064                                  ; 10011FB6 _ 75, 36
?_2061: inc     ebx                                     ; 10011FB8 _ 43
        add     eax, 68                                 ; 10011FB9 _ 83. C0, 44
        cmp     ebx, edx                                ; 10011FBC _ 3B. DA
        jl      ?_2060                                  ; 10011FBE _ 7C, ED
?_2062: mov     dword [edi+4H], -1                      ; 10011FC0 _ C7. 47, 04, FFFFFFFF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edi+8H], -1                       ; 10011FC7 _ 66: C7. 47, 08, FFFF
?_2063: mov     edx, dword [esp+10H]                    ; 10011FCD _ 8B. 54 24, 10
        mov     ecx, 17                                 ; 10011FD1 _ B9, 00000011
        xor     eax, eax                                ; 10011FD6 _ 33. C0
        mov     edi, edx                                ; 10011FD8 _ 8B. FA
        rep stosd                                       ; 10011FDA _ F3: AB
        mov     dword [edx], -1                         ; 10011FDC _ C7. 02, FFFFFFFF
        mov     ax, word [ebp]                          ; 10011FE2 _ 66: 8B. 45, 00
        pop     edi                                     ; 10011FE6 _ 5F
        pop     esi                                     ; 10011FE7 _ 5E
        pop     ebp                                     ; 10011FE8 _ 5D
        pop     ebx                                     ; 10011FE9 _ 5B
        add     esp, 16                                 ; 10011FEA _ 83. C4, 10
        ret                                             ; 10011FED _ C3

?_2064: mov     ecx, dword [eax]                        ; 10011FEE _ 8B. 08
        mov     dword [edi+4H], ecx                     ; 10011FF0 _ 89. 4F, 04
        jmp     ?_2063                                  ; 10011FF3 _ EB, D8
