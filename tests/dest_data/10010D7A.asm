; ---- 10010D7A ----
?_1957: ; Local function
        mov     dl, byte [esi+247H]                     ; 10010D7A _ 8A. 96, 00000247
        mov     ecx, 2                                  ; 10010D80 _ B9, 00000002
        cmp     dl, cl                                  ; 10010D85 _ 3A. D1
        jnz     ?_1958                                  ; 10010D87 _ 75, 31
        mov     esi, dword [ebx+8H]                     ; 10010D89 _ 8B. 73, 08
        mov     dword [esp+18H], edi                    ; 10010D8C _ 89. 7C 24, 18
        mov     edi, dword [eax+8H]                     ; 10010D90 _ 8B. 78, 08
        mov     ecx, 136                                ; 10010D93 _ B9, 00000088
        mov     esi, dword [esi+10H]                    ; 10010D98 _ 8B. 76, 10
        mov     edx, 8                                  ; 10010D9B _ BA, 00000008
        mov     edi, dword [edi+10H]                    ; 10010DA0 _ 8B. 7F, 10
        mov     ebp, 4                                  ; 10010DA3 _ BD, 00000004
        rep movsd                                       ; 10010DA8 _ F3: A5
        mov     esi, dword [ebx+0CH]                    ; 10010DAA _ 8B. 73, 0C
        mov     edi, dword [eax+0CH]                    ; 10010DAD _ 8B. 78, 0C
        mov     ecx, 136                                ; 10010DB0 _ B9, 00000088
        mov     esi, dword [esi+10H]                    ; 10010DB5 _ 8B. 76, 10
        jmp     ?_1959                                  ; 10010DB8 _ EB, 42

?_1958: mov     esi, dword [ebx+8H]                     ; 10010DBA _ 8B. 73, 08
        mov     edi, dword [eax+8H]                     ; 10010DBD _ 8B. 78, 08
        mov     dword [esp+18H], ecx                    ; 10010DC0 _ 89. 4C 24, 18
        mov     ecx, 204                                ; 10010DC4 _ B9, 000000CC
        mov     esi, dword [esi+10H]                    ; 10010DC9 _ 8B. 76, 10
        mov     edi, dword [edi+10H]                    ; 10010DCC _ 8B. 7F, 10
        rep movsd                                       ; 10010DCF _ F3: A5
        mov     esi, dword [ebx+0CH]                    ; 10010DD1 _ 8B. 73, 0C
        mov     edi, dword [eax+0CH]                    ; 10010DD4 _ 8B. 78, 0C
        mov     ecx, 204                                ; 10010DD7 _ B9, 000000CC
        mov     edx, 12                                 ; 10010DDC _ BA, 0000000C
        mov     esi, dword [esi+10H]                    ; 10010DE1 _ 8B. 76, 10
        mov     edi, dword [edi+10H]                    ; 10010DE4 _ 8B. 7F, 10
        rep movsd                                       ; 10010DE7 _ F3: A5
        mov     esi, dword [ebx+10H]                    ; 10010DE9 _ 8B. 73, 10
        mov     edi, dword [eax+10H]                    ; 10010DEC _ 8B. 78, 10
        mov     ebp, 6                                  ; 10010DEF _ BD, 00000006
        mov     ecx, 136                                ; 10010DF4 _ B9, 00000088
        mov     esi, dword [esi+10H]                    ; 10010DF9 _ 8B. 76, 10
?_1959: mov     edi, dword [edi+10H]                    ; 10010DFC _ 8B. 7F, 10
        rep movsd                                       ; 10010DFF _ F3: A5
        mov     ecx, dword [ebx+8H]                     ; 10010E01 _ 8B. 4B, 08
        test    ecx, ecx                                ; 10010E04 _ 85. C9
        jz      ?_1961                                  ; 10010E06 _ 74, 56
        test    edx, edx                                ; 10010E08 _ 85. D2
        jle     ?_1961                                  ; 10010E0A _ 7E, 52
        xor     esi, esi                                ; 10010E0C _ 33. F6
        mov     edi, edx                                ; 10010E0E _ 8B. FA
?_1960: mov     edx, dword [ebx+8H]                     ; 10010E10 _ 8B. 53, 08
        mov     ecx, dword [eax+8H]                     ; 10010E13 _ 8B. 48, 08
        mov     edx, dword [esi+edx]                    ; 10010E16 _ 8B. 14 16
        mov     dword [ecx+esi], edx                    ; 10010E19 _ 89. 14 31
        mov     ecx, dword [ebx+8H]                     ; 10010E1C _ 8B. 4B, 08
        mov     edx, dword [eax+8H]                     ; 10010E1F _ 8B. 50, 08
        mov     ecx, dword [esi+ecx+4H]                 ; 10010E22 _ 8B. 4C 0E, 04
        mov     dword [edx+esi+4H], ecx                 ; 10010E26 _ 89. 4C 32, 04
        mov     edx, dword [ebx+8H]                     ; 10010E2A _ 8B. 53, 08
        mov     ecx, dword [eax+8H]                     ; 10010E2D _ 8B. 48, 08
        mov     dx, word [esi+edx+8H]                   ; 10010E30 _ 66: 8B. 54 16, 08
        mov     word [ecx+esi+8H], dx                   ; 10010E35 _ 66: 89. 54 31, 08
        mov     ecx, dword [ebx+8H]                     ; 10010E3A _ 8B. 4B, 08
        mov     edx, dword [eax+8H]                     ; 10010E3D _ 8B. 50, 08
        mov     cx, word [esi+ecx+0AH]                  ; 10010E40 _ 66: 8B. 4C 0E, 0A
        mov     word [edx+esi+0AH], cx                  ; 10010E45 _ 66: 89. 4C 32, 0A
        mov     edx, dword [ebx+8H]                     ; 10010E4A _ 8B. 53, 08
        mov     ecx, dword [eax+8H]                     ; 10010E4D _ 8B. 48, 08
        mov     dl, byte [esi+edx+0CH]                  ; 10010E50 _ 8A. 54 16, 0C
        mov     byte [ecx+esi+0CH], dl                  ; 10010E54 _ 88. 54 31, 0C
        add     esi, 20                                 ; 10010E58 _ 83. C6, 14
        dec     edi                                     ; 10010E5B _ 4F
        jnz     ?_1960                                  ; 10010E5C _ 75, B2
?_1961: mov     ecx, dword [ebx+0CH]                    ; 10010E5E _ 8B. 4B, 0C
        test    ecx, ecx                                ; 10010E61 _ 85. C9
        jz      ?_1963                                  ; 10010E63 _ 74, 56
        test    ebp, ebp                                ; 10010E65 _ 85. ED
        jle     ?_1963                                  ; 10010E67 _ 7E, 52
        xor     esi, esi                                ; 10010E69 _ 33. F6
        mov     edi, ebp                                ; 10010E6B _ 8B. FD
?_1962: mov     ecx, dword [ebx+0CH]                    ; 10010E6D _ 8B. 4B, 0C
        mov     edx, dword [eax+0CH]                    ; 10010E70 _ 8B. 50, 0C
        mov     ecx, dword [esi+ecx]                    ; 10010E73 _ 8B. 0C 0E
        mov     dword [esi+edx], ecx                    ; 10010E76 _ 89. 0C 16
        mov     edx, dword [ebx+0CH]                    ; 10010E79 _ 8B. 53, 0C
        mov     ecx, dword [eax+0CH]                    ; 10010E7C _ 8B. 48, 0C
        mov     edx, dword [esi+edx+4H]                 ; 10010E7F _ 8B. 54 16, 04
        mov     dword [esi+ecx+4H], edx                 ; 10010E83 _ 89. 54 0E, 04
        mov     ecx, dword [ebx+0CH]                    ; 10010E87 _ 8B. 4B, 0C
        mov     edx, dword [eax+0CH]                    ; 10010E8A _ 8B. 50, 0C
        mov     cx, word [esi+ecx+8H]                   ; 10010E8D _ 66: 8B. 4C 0E, 08
        mov     word [esi+edx+8H], cx                   ; 10010E92 _ 66: 89. 4C 16, 08
        mov     edx, dword [ebx+0CH]                    ; 10010E97 _ 8B. 53, 0C
        mov     ecx, dword [eax+0CH]                    ; 10010E9A _ 8B. 48, 0C
        mov     dx, word [esi+edx+0AH]                  ; 10010E9D _ 66: 8B. 54 16, 0A
        mov     word [esi+ecx+0AH], dx                  ; 10010EA2 _ 66: 89. 54 0E, 0A
        mov     ecx, dword [ebx+0CH]                    ; 10010EA7 _ 8B. 4B, 0C
        mov     edx, dword [eax+0CH]                    ; 10010EAA _ 8B. 50, 0C
        mov     cl, byte [esi+ecx+0CH]                  ; 10010EAD _ 8A. 4C 0E, 0C
        mov     byte [esi+edx+0CH], cl                  ; 10010EB1 _ 88. 4C 16, 0C
        add     esi, 20                                 ; 10010EB5 _ 83. C6, 14
        dec     edi                                     ; 10010EB8 _ 4F
        jnz     ?_1962                                  ; 10010EB9 _ 75, B2
?_1963: mov     ecx, dword [ebx+10H]                    ; 10010EBB _ 8B. 4B, 10
        test    ecx, ecx                                ; 10010EBE _ 85. C9
        jz      ?_1965                                  ; 10010EC0 _ 74, 58
        mov     edi, dword [esp+18H]                    ; 10010EC2 _ 8B. 7C 24, 18
        test    edi, edi                                ; 10010EC6 _ 85. FF
        jle     ?_1965                                  ; 10010EC8 _ 7E, 50
        xor     esi, esi                                ; 10010ECA _ 33. F6
?_1964: mov     edx, dword [ebx+10H]                    ; 10010ECC _ 8B. 53, 10
        mov     ecx, dword [eax+10H]                    ; 10010ECF _ 8B. 48, 10
        mov     edx, dword [esi+edx]                    ; 10010ED2 _ 8B. 14 16
        mov     dword [esi+ecx], edx                    ; 10010ED5 _ 89. 14 0E
        mov     ecx, dword [ebx+10H]                    ; 10010ED8 _ 8B. 4B, 10
        mov     edx, dword [eax+10H]                    ; 10010EDB _ 8B. 50, 10
        mov     ecx, dword [esi+ecx+4H]                 ; 10010EDE _ 8B. 4C 0E, 04
        mov     dword [esi+edx+4H], ecx                 ; 10010EE2 _ 89. 4C 16, 04
        mov     edx, dword [ebx+10H]                    ; 10010EE6 _ 8B. 53, 10
        mov     ecx, dword [eax+10H]                    ; 10010EE9 _ 8B. 48, 10
        mov     dx, word [esi+edx+8H]                   ; 10010EEC _ 66: 8B. 54 16, 08
        mov     word [esi+ecx+8H], dx                   ; 10010EF1 _ 66: 89. 54 0E, 08
        mov     ecx, dword [ebx+10H]                    ; 10010EF6 _ 8B. 4B, 10
        mov     edx, dword [eax+10H]                    ; 10010EF9 _ 8B. 50, 10
        mov     cx, word [esi+ecx+0AH]                  ; 10010EFC _ 66: 8B. 4C 0E, 0A
        mov     word [esi+edx+0AH], cx                  ; 10010F01 _ 66: 89. 4C 16, 0A
        mov     edx, dword [ebx+10H]                    ; 10010F06 _ 8B. 53, 10
        mov     ecx, dword [eax+10H]                    ; 10010F09 _ 8B. 48, 10
        mov     dl, byte [esi+edx+0CH]                  ; 10010F0C _ 8A. 54 16, 0C
        mov     byte [esi+ecx+0CH], dl                  ; 10010F10 _ 88. 54 0E, 0C
        add     esi, 20                                 ; 10010F14 _ 83. C6, 14
        dec     edi                                     ; 10010F17 _ 4F
        jnz     ?_1964                                  ; 10010F18 _ 75, B2
?_1965: mov     cl, byte [ebx+18H]                      ; 10010F1A _ 8A. 4B, 18
        push    ebx                                     ; 10010F1D _ 53
        mov     byte [eax+18H], cl                      ; 10010F1E _ 88. 48, 18
        mov     dl, byte [ebx+19H]                      ; 10010F21 _ 8A. 53, 19
        mov     byte [eax+19H], dl                      ; 10010F24 _ 88. 50, 19
        mov     cl, byte [ebx+1AH]                      ; 10010F27 _ 8A. 4B, 1A
        mov     byte [eax+1AH], cl                      ; 10010F2A _ 88. 48, 1A
        mov     dl, byte [ebx+1BH]                      ; 10010F2D _ 8A. 53, 1B
        mov     byte [eax+1BH], dl                      ; 10010F30 _ 88. 50, 1B
        call    ?_1966                                  ; 10010F33 _ E8, 00000018
        mov     eax, dword [esp+28H]                    ; 10010F38 _ 8B. 44 24, 28
        add     esp, 4                                  ; 10010F3C _ 83. C4, 04
        mov     eax, dword [eax+65H]                    ; 10010F3F _ 8B. 40, 65
        pop     edi                                     ; 10010F42 _ 5F
        pop     esi                                     ; 10010F43 _ 5E
        pop     ebp                                     ; 10010F44 _ 5D
        pop     ebx                                     ; 10010F45 _ 5B
        add     esp, 16                                 ; 10010F46 _ 83. C4, 10
        ret                                             ; 10010F49 _ C3

        nop                                             ; 10010F4A _ 90
        nop                                             ; 10010F4B _ 90
        nop                                             ; 10010F4C _ 90
        nop                                             ; 10010F4D _ 90
        nop                                             ; 10010F4E _ 90
        nop                                             ; 10010F4F _ 90

