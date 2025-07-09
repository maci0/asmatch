; ---- 10020ED7 ----
?_4343: ; Local function
        mov     eax, dword [esp+4H]                     ; 10020ED7 _ 8B. 44 24, 04
        push    ebx                                     ; 10020EDB _ 53
        push    esi                                     ; 10020EDC _ 56
        push    edi                                     ; 10020EDD _ 57
        mov     esi, dword [eax]                        ; 10020EDE _ 8B. 30
        xor     ebx, ebx                                ; 10020EE0 _ 33. DB
        call    ?_3621                                  ; 10020EE2 _ E8, FFFFC24A
        test    esi, esi                                ; 10020EE7 _ 85. F6
        mov     edi, eax                                ; 10020EE9 _ 8B. F8
        jge     ?_4344                                  ; 10020EEB _ 7D, 07
        xor     eax, eax                                ; 10020EED _ 33. C0
        jmp     ?_4352                                  ; 10020EEF _ E9, 000000E9

?_4344: cmp     dword [edi+40H], 0                      ; 10020EF4 _ 83. 7F, 40, 00
        jnz     ?_4345                                  ; 10020EF8 _ 75, 14
        push    36                                      ; 10020EFA _ 6A, 24
        call    ?_3109                                  ; 10020EFC _ E8, FFFF98F6
        pop     ecx                                     ; 10020F01 _ 59
        mov     dword [edi+40H], eax                    ; 10020F02 _ 89. 47, 40
        test    eax, eax                                ; 10020F05 _ 85. C0
        mov     ecx, ?_5619                             ; 10020F07 _ B9, 100357A8(d)
        jz      ?_4346                                  ; 10020F0C _ 74, 03
?_4345: mov     ecx, dword [edi+40H]                    ; 10020F0E _ 8B. 4F, 40
?_4346: mov     eax, esi                                ; 10020F11 _ 8B. C6
        mov     edi, 126230400                          ; 10020F13 _ BF, 07861F80
        cdq                                             ; 10020F18 _ 99
        idiv    edi                                     ; 10020F19 _ F7. FF
        mov     edx, eax                                ; 10020F1B _ 8B. D0
        imul    edx, edx, -126230400                    ; 10020F1D _ 69. D2, F879E080
        add     esi, edx                                ; 10020F23 _ 03. F2
        lea     edx, [eax*4+46H]                        ; 10020F25 _ 8D. 14 85, 00000046
        mov     eax, 31536000                           ; 10020F2C _ B8, 01E13380
        cmp     esi, eax                                ; 10020F31 _ 3B. F0
        jl      ?_4348                                  ; 10020F33 _ 7C, 1B
        sub     esi, eax                                ; 10020F35 _ 2B. F0
        inc     edx                                     ; 10020F37 _ 42
        cmp     esi, eax                                ; 10020F38 _ 3B. F0
        jl      ?_4348                                  ; 10020F3A _ 7C, 14
        sub     esi, eax                                ; 10020F3C _ 2B. F0
        mov     eax, 31622400                           ; 10020F3E _ B8, 01E28500
        inc     edx                                     ; 10020F43 _ 42
        cmp     esi, eax                                ; 10020F44 _ 3B. F0
        jl      ?_4347                                  ; 10020F46 _ 7C, 05
        inc     edx                                     ; 10020F48 _ 42
        sub     esi, eax                                ; 10020F49 _ 2B. F0
        jmp     ?_4348                                  ; 10020F4B _ EB, 03

?_4347: push    1                                       ; 10020F4D _ 6A, 01
        pop     ebx                                     ; 10020F4F _ 5B
?_4348: mov     eax, esi                                ; 10020F50 _ 8B. C6
        mov     dword [ecx+14H], edx                    ; 10020F52 _ 89. 51, 14
        cdq                                             ; 10020F55 _ 99
        mov     edi, 86400                              ; 10020F56 _ BF, 00015180
        idiv    edi                                     ; 10020F5B _ F7. FF
        mov     edi, ?_5494                             ; 10020F5D _ BF, 10034034(d)
        mov     dword [ecx+1CH], eax                    ; 10020F62 _ 89. 41, 1C
        imul    eax, eax, -86400                        ; 10020F65 _ 69. C0, FFFEAE80
        add     esi, eax                                ; 10020F6B _ 03. F0
        test    ebx, ebx                                ; 10020F6D _ 85. DB
        jnz     ?_4349                                  ; 10020F6F _ 75, 05
        mov     edi, ?_5496                             ; 10020F71 _ BF, 10034068(d)
?_4349: mov     edx, dword [ecx+1CH]                    ; 10020F76 _ 8B. 51, 1C
        push    1                                       ; 10020F79 _ 6A, 01
        pop     eax                                     ; 10020F7B _ 58
        lea     ebx, [edi+4H]                           ; 10020F7C _ 8D. 5F, 04
?_4350: cmp     dword [ebx], edx                        ; 10020F7F _ 39. 13
        jge     ?_4351                                  ; 10020F81 _ 7D, 06
        inc     eax                                     ; 10020F83 _ 40
        add     ebx, 4                                  ; 10020F84 _ 83. C3, 04
        jmp     ?_4350                                  ; 10020F87 _ EB, F6

?_4351: mov     edx, dword [ecx+1CH]                    ; 10020F89 _ 8B. 51, 1C
        dec     eax                                     ; 10020F8C _ 48
        mov     dword [ecx+10H], eax                    ; 10020F8D _ 89. 41, 10
        push    7                                       ; 10020F90 _ 6A, 07
        sub     edx, dword [edi+eax*4]                  ; 10020F92 _ 2B. 14 87
        mov     eax, dword [esp+14H]                    ; 10020F95 _ 8B. 44 24, 14
        mov     edi, 86400                              ; 10020F99 _ BF, 00015180
        mov     dword [ecx+0CH], edx                    ; 10020F9E _ 89. 51, 0C
        mov     eax, dword [eax]                        ; 10020FA1 _ 8B. 00
        cdq                                             ; 10020FA3 _ 99
        idiv    edi                                     ; 10020FA4 _ F7. FF
        pop     edi                                     ; 10020FA6 _ 5F
        push    60                                      ; 10020FA7 _ 6A, 3C
        add     eax, 4                                  ; 10020FA9 _ 83. C0, 04
        cdq                                             ; 10020FAC _ 99
        idiv    edi                                     ; 10020FAD _ F7. FF
        mov     eax, esi                                ; 10020FAF _ 8B. C6
        mov     edi, 3600                               ; 10020FB1 _ BF, 00000E10
        mov     dword [ecx+18H], edx                    ; 10020FB6 _ 89. 51, 18
        cdq                                             ; 10020FB9 _ 99
        idiv    edi                                     ; 10020FBA _ F7. FF
        pop     edi                                     ; 10020FBC _ 5F
        mov     dword [ecx+8H], eax                     ; 10020FBD _ 89. 41, 08
        imul    eax, eax, -3600                         ; 10020FC0 _ 69. C0, FFFFF1F0
        add     esi, eax                                ; 10020FC6 _ 03. F0
        mov     eax, esi                                ; 10020FC8 _ 8B. C6
        cdq                                             ; 10020FCA _ 99
        idiv    edi                                     ; 10020FCB _ F7. FF
        mov     dword [ecx+4H], eax                     ; 10020FCD _ 89. 41, 04
        imul    eax, eax, 60                            ; 10020FD0 _ 6B. C0, 3C
        sub     esi, eax                                ; 10020FD3 _ 2B. F0
        and     dword [ecx+20H], 00H                    ; 10020FD5 _ 83. 61, 20, 00
        mov     dword [ecx], esi                        ; 10020FD9 _ 89. 31
        mov     eax, ecx                                ; 10020FDB _ 8B. C1
?_4352: pop     edi                                     ; 10020FDD _ 5F
        pop     esi                                     ; 10020FDE _ 5E
        pop     ebx                                     ; 10020FDF _ 5B
        ret                                             ; 10020FE0 _ C3
