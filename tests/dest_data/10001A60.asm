; ---- 10001A60 ----
?_0066: ; Local function
        push    ebx                                     ; 10001A60 _ 53
        push    ebp                                     ; 10001A61 _ 55
        push    esi                                     ; 10001A62 _ 56
        mov     esi, dword [esp+10H]                    ; 10001A63 _ 8B. 74 24, 10
        mov     ebx, 65535                              ; 10001A67 _ BB, 0000FFFF
        mov     eax, dword [esi+0CH]                    ; 10001A6C _ 8B. 46, 0C
        add     eax, -5                                 ; 10001A6F _ 83. C0, FB
        cmp     eax, ebx                                ; 10001A72 _ 3B. C3
        jnc     ?_0067                                  ; 10001A74 _ 73, 02
        mov     ebx, eax                                ; 10001A76 _ 8B. D8
?_0067: mov     ebp, dword [esp+14H]                    ; 10001A78 _ 8B. 6C 24, 14
?_0068: mov     eax, dword [esi+6CH]                    ; 10001A7C _ 8B. 46, 6C
        cmp     eax, 1                                  ; 10001A7F _ 83. F8, 01
        ja      ?_0069                                  ; 10001A82 _ 77, 20
        push    esi                                     ; 10001A84 _ 56
        call    ?_0081                                  ; 10001A85 _ E8, 00000136
        mov     eax, dword [esi+6CH]                    ; 10001A8A _ 8B. 46, 6C
        add     esp, 4                                  ; 10001A8D _ 83. C4, 04
        test    eax, eax                                ; 10001A90 _ 85. C0
        jnz     ?_0069                                  ; 10001A92 _ 75, 10
        test    ebp, ebp                                ; 10001A94 _ 85. ED
        je      ?_0080                                  ; 10001A96 _ 0F 84, 00000115
        test    eax, eax                                ; 10001A9C _ 85. C0
        je      ?_0076                                  ; 10001A9E _ 0F 84, 000000AB
?_0069: mov     ecx, dword [esi+64H]                    ; 10001AA4 _ 8B. 4E, 64
        mov     dword [esi+6CH], 0                      ; 10001AA7 _ C7. 46, 6C, 00000000
        add     ecx, eax                                ; 10001AAE _ 03. C8
        mov     dword [esi+64H], ecx                    ; 10001AB0 _ 89. 4E, 64
        mov     ecx, dword [esi+54H]                    ; 10001AB3 _ 8B. 4E, 54
        mov     edx, dword [esi+64H]                    ; 10001AB6 _ 8B. 56, 64
        lea     eax, [ecx+ebx]                          ; 10001AB9 _ 8D. 04 19
        jz      ?_0070                                  ; 10001ABC _ 74, 04
        cmp     edx, eax                                ; 10001ABE _ 3B. D0
        jc      ?_0073                                  ; 10001AC0 _ 72, 3F
?_0070: sub     edx, eax                                ; 10001AC2 _ 2B. D0
        mov     dword [esi+64H], eax                    ; 10001AC4 _ 89. 46, 64
        test    ecx, ecx                                ; 10001AC7 _ 85. C9
        mov     dword [esi+6CH], edx                    ; 10001AC9 _ 89. 56, 6C
        jl      ?_0071                                  ; 10001ACC _ 7C, 07
        mov     edx, dword [esi+30H]                    ; 10001ACE _ 8B. 56, 30
        add     edx, ecx                                ; 10001AD1 _ 03. D1
        jmp     ?_0072                                  ; 10001AD3 _ EB, 02

?_0071: xor     edx, edx                                ; 10001AD5 _ 33. D2
?_0072: sub     eax, ecx                                ; 10001AD7 _ 2B. C1
        push    0                                       ; 10001AD9 _ 6A, 00
        push    eax                                     ; 10001ADB _ 50
        push    edx                                     ; 10001ADC _ 52
        push    esi                                     ; 10001ADD _ 56
        call    ?_0731                                  ; 10001ADE _ E8, 000057CD
        mov     ecx, dword [esi]                        ; 10001AE3 _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 10001AE5 _ 8B. 46, 64
        push    ecx                                     ; 10001AE8 _ 51
        mov     dword [esi+54H], eax                    ; 10001AE9 _ 89. 46, 54
        call    ?_0055                                  ; 10001AEC _ E8, FFFFFD9F
        mov     edx, dword [esi]                        ; 10001AF1 _ 8B. 16
        add     esp, 20                                 ; 10001AF3 _ 83. C4, 14
        mov     eax, dword [edx+10H]                    ; 10001AF6 _ 8B. 42, 10
        test    eax, eax                                ; 10001AF9 _ 85. C0
        je      ?_0080                                  ; 10001AFB _ 0F 84, 000000B0
?_0073: mov     ecx, dword [esi+54H]                    ; 10001B01 _ 8B. 4E, 54
        mov     edx, dword [esi+64H]                    ; 10001B04 _ 8B. 56, 64
        mov     eax, dword [esi+24H]                    ; 10001B07 _ 8B. 46, 24
        sub     edx, ecx                                ; 10001B0A _ 2B. D1
        sub     eax, 262                                ; 10001B0C _ 2D, 00000106
        cmp     edx, eax                                ; 10001B11 _ 3B. D0
        jc      ?_0068                                  ; 10001B13 _ 0F 82, FFFFFF63
        test    ecx, ecx                                ; 10001B19 _ 85. C9
        jl      ?_0074                                  ; 10001B1B _ 7C, 07
        mov     eax, dword [esi+30H]                    ; 10001B1D _ 8B. 46, 30
        add     eax, ecx                                ; 10001B20 _ 03. C1
        jmp     ?_0075                                  ; 10001B22 _ EB, 02

?_0074: xor     eax, eax                                ; 10001B24 _ 33. C0
?_0075: push    0                                       ; 10001B26 _ 6A, 00
        push    edx                                     ; 10001B28 _ 52
        push    eax                                     ; 10001B29 _ 50
        push    esi                                     ; 10001B2A _ 56
        call    ?_0731                                  ; 10001B2B _ E8, 00005780
        mov     edx, dword [esi]                        ; 10001B30 _ 8B. 16
        mov     ecx, dword [esi+64H]                    ; 10001B32 _ 8B. 4E, 64
        push    edx                                     ; 10001B35 _ 52
        mov     dword [esi+54H], ecx                    ; 10001B36 _ 89. 4E, 54
        call    ?_0055                                  ; 10001B39 _ E8, FFFFFD52
        mov     eax, dword [esi]                        ; 10001B3E _ 8B. 06
        add     esp, 20                                 ; 10001B40 _ 83. C4, 14
        mov     ecx, dword [eax+10H]                    ; 10001B43 _ 8B. 48, 10
        test    ecx, ecx                                ; 10001B46 _ 85. C9
        jz      ?_0080                                  ; 10001B48 _ 74, 67
        jmp     ?_0068                                  ; 10001B4A _ E9, FFFFFF2D

?_0076: mov     ecx, dword [esi+54H]                    ; 10001B4F _ 8B. 4E, 54
        test    ecx, ecx                                ; 10001B52 _ 85. C9
        jl      ?_0077                                  ; 10001B54 _ 7C, 07
        mov     eax, dword [esi+30H]                    ; 10001B56 _ 8B. 46, 30
        add     eax, ecx                                ; 10001B59 _ 03. C1
        jmp     ?_0078                                  ; 10001B5B _ EB, 02

?_0077: xor     eax, eax                                ; 10001B5D _ 33. C0
?_0078: xor     edx, edx                                ; 10001B5F _ 33. D2
        cmp     ebp, 4                                  ; 10001B61 _ 83. FD, 04
        sete    dl                                      ; 10001B64 _ 0F 94. C2
        push    edx                                     ; 10001B67 _ 52
        mov     edx, dword [esi+64H]                    ; 10001B68 _ 8B. 56, 64
        sub     edx, ecx                                ; 10001B6B _ 2B. D1
        push    edx                                     ; 10001B6D _ 52
        push    eax                                     ; 10001B6E _ 50
        push    esi                                     ; 10001B6F _ 56
        call    ?_0731                                  ; 10001B70 _ E8, 0000573B
        mov     ecx, dword [esi]                        ; 10001B75 _ 8B. 0E
        mov     eax, dword [esi+64H]                    ; 10001B77 _ 8B. 46, 64
        push    ecx                                     ; 10001B7A _ 51
        mov     dword [esi+54H], eax                    ; 10001B7B _ 89. 46, 54
        call    ?_0055                                  ; 10001B7E _ E8, FFFFFD0D
        mov     edx, dword [esi]                        ; 10001B83 _ 8B. 16
        add     esp, 20                                 ; 10001B85 _ 83. C4, 14
        mov     eax, dword [edx+10H]                    ; 10001B88 _ 8B. 42, 10
        test    eax, eax                                ; 10001B8B _ 85. C0
        jnz     ?_0079                                  ; 10001B8D _ 75, 10
        xor     eax, eax                                ; 10001B8F _ 33. C0
        cmp     ebp, 4                                  ; 10001B91 _ 83. FD, 04
        setne   al                                      ; 10001B94 _ 0F 95. C0
        dec     eax                                     ; 10001B97 _ 48
        pop     esi                                     ; 10001B98 _ 5E
        pop     ebp                                     ; 10001B99 _ 5D
        and     eax, 02H                                ; 10001B9A _ 83. E0, 02
        pop     ebx                                     ; 10001B9D _ 5B
        ret                                             ; 10001B9E _ C3

?_0079: mov     eax, ebp                                ; 10001B9F _ 8B. C5
        pop     esi                                     ; 10001BA1 _ 5E
        sub     eax, 4                                  ; 10001BA2 _ 83. E8, 04
        pop     ebp                                     ; 10001BA5 _ 5D
        neg     eax                                     ; 10001BA6 _ F7. D8
        sbb     eax, eax                                ; 10001BA8 _ 1B. C0
        pop     ebx                                     ; 10001BAA _ 5B
        and     al, 0FFFFFFFEH                          ; 10001BAB _ 24, FE
        add     eax, 3                                  ; 10001BAD _ 83. C0, 03
        ret                                             ; 10001BB0 _ C3

