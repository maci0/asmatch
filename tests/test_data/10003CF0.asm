; ---- 10003CF0 ----
?_0334: ; Local function
        push    ebx                                     ; 10003CF0 _ 53
        push    esi                                     ; 10003CF1 _ 56
        mov     esi, dword [esp+10H]                    ; 10003CF2 _ 8B. 74 24, 10
        push    edi                                     ; 10003CF6 _ 57
        mov     edi, dword [esp+10H]                    ; 10003CF7 _ 8B. 7C 24, 10
        mov     ebx, 4                                  ; 10003CFB _ BB, 00000004
?_0335: mov     eax, esi                                ; 10003D00 _ 8B. C6
        push    edi                                     ; 10003D02 _ 57
        and     eax, 0FFH                               ; 10003D03 _ 25, 000000FF
        push    eax                                     ; 10003D08 _ 50
        call    ?_3185                                  ; 10003D09 _ E8, 000170C8
        add     esp, 8                                  ; 10003D0E _ 83. C4, 08
        shr     esi, 8                                  ; 10003D11 _ C1. EE, 08
        dec     ebx                                     ; 10003D14 _ 4B
        jnz     ?_0335                                  ; 10003D15 _ 75, E9
        pop     edi                                     ; 10003D17 _ 5F
        pop     esi                                     ; 10003D18 _ 5E
        pop     ebx                                     ; 10003D19 _ 5B
        ret                                             ; 10003D1A _ C3

        nop                                             ; 10003D1B _ 90
        nop                                             ; 10003D1C _ 90
        nop                                             ; 10003D1D _ 90
        nop                                             ; 10003D1E _ 90
        nop                                             ; 10003D1F _ 90
?_0336: mov     eax, dword [esp+0CH]                    ; 10003D20 _ 8B. 44 24, 0C
        push    esi                                     ; 10003D24 _ 56
        mov     esi, dword [esp+8H]                     ; 10003D25 _ 8B. 74 24, 08
        push    edi                                     ; 10003D29 _ 57
        test    eax, eax                                ; 10003D2A _ 85. C0
        jz      ?_0337                                  ; 10003D2C _ 74, 05
        mov     ecx, dword [esi+3CH]                    ; 10003D2E _ 8B. 4E, 3C
        mov     dword [eax], ecx                        ; 10003D31 _ 89. 08
?_0337: mov     eax, dword [esi]                        ; 10003D33 _ 8B. 06
        mov     edi, dword [esp+10H]                    ; 10003D35 _ 8B. 7C 24, 10
        cmp     eax, 4                                  ; 10003D39 _ 83. F8, 04
        jz      ?_0338                                  ; 10003D3C _ 74, 05
        cmp     eax, 5                                  ; 10003D3E _ 83. F8, 05
        jnz     ?_0339                                  ; 10003D41 _ 75, 0E
?_0338: mov     edx, dword [esi+0CH]                    ; 10003D43 _ 8B. 56, 0C
        mov     eax, dword [edi+28H]                    ; 10003D46 _ 8B. 47, 28
        push    edx                                     ; 10003D49 _ 52
        push    eax                                     ; 10003D4A _ 50
        call    near [edi+24H]                          ; 10003D4B _ FF. 57, 24
        add     esp, 8                                  ; 10003D4E _ 83. C4, 08
?_0339: cmp     dword [esi], 6                          ; 10003D51 _ 83. 3E, 06
        jnz     ?_0340                                  ; 10003D54 _ 75, 0D
        mov     ecx, dword [esi+4H]                     ; 10003D56 _ 8B. 4E, 04
        push    edi                                     ; 10003D59 _ 57
        push    ecx                                     ; 10003D5A _ 51
        call    ?_0497                                  ; 10003D5B _ E8, 00001610
        add     esp, 8                                  ; 10003D60 _ 83. C4, 08
?_0340: mov     eax, dword [esi+28H]                    ; 10003D63 _ 8B. 46, 28
        mov     dword [esi], 0                          ; 10003D66 _ C7. 06, 00000000
        mov     dword [esi+34H], eax                    ; 10003D6C _ 89. 46, 34
        mov     dword [esi+30H], eax                    ; 10003D6F _ 89. 46, 30
        mov     eax, dword [esi+38H]                    ; 10003D72 _ 8B. 46, 38
        mov     dword [esi+1CH], 0                      ; 10003D75 _ C7. 46, 1C, 00000000
        test    eax, eax                                ; 10003D7C _ 85. C0
        mov     dword [esi+20H], 0                      ; 10003D7E _ C7. 46, 20, 00000000
        jz      ?_0341                                  ; 10003D85 _ 74, 11
        push    0                                       ; 10003D87 _ 6A, 00
        push    0                                       ; 10003D89 _ 6A, 00
        push    0                                       ; 10003D8B _ 6A, 00
        call    eax                                     ; 10003D8D _ FF. D0
        mov     dword [esi+3CH], eax                    ; 10003D8F _ 89. 46, 3C
        add     esp, 12                                 ; 10003D92 _ 83. C4, 0C
        mov     dword [edi+30H], eax                    ; 10003D95 _ 89. 47, 30
?_0341: pop     edi                                     ; 10003D98 _ 5F
        pop     esi                                     ; 10003D99 _ 5E
        ret                                             ; 10003D9A _ C3

        nop                                             ; 10003D9B _ 90
        nop                                             ; 10003D9C _ 90
        nop                                             ; 10003D9D _ 90
        nop                                             ; 10003D9E _ 90
        nop                                             ; 10003D9F _ 90
?_0342: push    ebx                                     ; 10003DA0 _ 53
        push    esi                                     ; 10003DA1 _ 56
        push    edi                                     ; 10003DA2 _ 57
        mov     edi, dword [esp+10H]                    ; 10003DA3 _ 8B. 7C 24, 10
        push    64                                      ; 10003DA7 _ 6A, 40
        push    1                                       ; 10003DA9 _ 6A, 01
        mov     eax, dword [edi+28H]                    ; 10003DAB _ 8B. 47, 28
        push    eax                                     ; 10003DAE _ 50
        call    near [edi+20H]                          ; 10003DAF _ FF. 57, 20
        mov     esi, eax                                ; 10003DB2 _ 8B. F0
        add     esp, 12                                 ; 10003DB4 _ 83. C4, 0C
        test    esi, esi                                ; 10003DB7 _ 85. F6
        jnz     ?_0343                                  ; 10003DB9 _ 75, 04
        pop     edi                                     ; 10003DBB _ 5F
        pop     esi                                     ; 10003DBC _ 5E
        pop     ebx                                     ; 10003DBD _ 5B
        ret                                             ; 10003DBE _ C3

