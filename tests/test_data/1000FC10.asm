; ---- 1000FC10 ----
?_1799: ; Local function
        push    esi                                     ; 1000FC10 _ 56
        push    edi                                     ; 1000FC11 _ 57
        mov     edi, dword [esp+10H]                    ; 1000FC12 _ 8B. 7C 24, 10
        test    edi, edi                                ; 1000FC16 _ 85. FF
        jz      ?_1800                                  ; 1000FC18 _ 74, 0E
        mov     byte [edi], 2                           ; 1000FC1A _ C6. 07, 02
        mov     byte [edi+1H], 0                        ; 1000FC1D _ C6. 47, 01, 00
        mov     dword [edi+6H], 0                       ; 1000FC21 _ C7. 47, 06, 00000000
?_1800: mov     esi, dword [esp+0CH]                    ; 1000FC28 _ 8B. 74 24, 0C
        mov     eax, dword [esi+10H]                    ; 1000FC2C _ 8B. 46, 10
        cmp     eax, 1668048242                         ; 1000FC2F _ 3D, 636C6572
        jnz     ?_1803                                  ; 1000FC34 _ 75, 6E
        mov     eax, dword [esi+18H]                    ; 1000FC36 _ 8B. 46, 18
        push    eax                                     ; 1000FC39 _ 50
        push    1                                       ; 1000FC3A _ 6A, 01
        push    1                                       ; 1000FC3C _ 6A, 01
        call    ?_2609                                  ; 1000FC3E _ E8, 0000749D
        add     esp, 12                                 ; 1000FC43 _ 83. C4, 0C
        test    eax, eax                                ; 1000FC46 _ 85. C0
        jnz     ?_1801                                  ; 1000FC48 _ 75, 08
        pop     edi                                     ; 1000FC4A _ 5F
        pop     esi                                     ; 1000FC4B _ 5E
        mov     eax, 1                                  ; 1000FC4C _ B8, 00000001
        ret                                             ; 1000FC51 _ C3

?_1801: mov     ecx, dword [eax+5DH]                    ; 1000FC52 _ 8B. 48, 5D
        push    300                                     ; 1000FC55 _ 68, 0000012C
        push    0                                       ; 1000FC5A _ 6A, 00
        push    6                                       ; 1000FC5C _ 6A, 06
        push    2                                       ; 1000FC5E _ 6A, 02
        push    ecx                                     ; 1000FC60 _ 51
        call    ?_2482                                  ; 1000FC61 _ E8, 000067FA
        add     esp, 20                                 ; 1000FC66 _ 83. C4, 14
        test    eax, eax                                ; 1000FC69 _ 85. C0
        jnz     ?_1802                                  ; 1000FC6B _ 75, 08
        pop     edi                                     ; 1000FC6D _ 5F
        pop     esi                                     ; 1000FC6E _ 5E
        mov     eax, 1                                  ; 1000FC6F _ B8, 00000001
        ret                                             ; 1000FC74 _ C3

?_1802: mov     edx, dword [?_5628]                     ; 1000FC75 _ 8B. 15, 10035880(d)
        mov     esi, dword [eax+28H]                    ; 1000FC7B _ 8B. 70, 28
        sub     edx, esi                                ; 1000FC7E _ 2B. D6
        cmp     edx, 1                                  ; 1000FC80 _ 83. FA, 01
        jle     ?_1809                                  ; 1000FC83 _ 0F 8E, 0000009F
        or      ecx, 0FFFFFFFFH                         ; 1000FC89 _ 83. C9, FF
        mov     dword [eax+1CH], ecx                    ; 1000FC8C _ 89. 48, 1C
        mov     dword [eax+20H], ecx                    ; 1000FC8F _ 89. 48, 20
        mov     dword [eax+24H], ecx                    ; 1000FC92 _ 89. 48, 24
        mov     ecx, dword [?_5628]                     ; 1000FC95 _ 8B. 0D, 10035880(d)
        dec     ecx                                     ; 1000FC9B _ 49
        mov     dword [eax+28H], ecx                    ; 1000FC9C _ 89. 48, 28
        jmp     ?_1811                                  ; 1000FC9F _ E9, 00000094

?_1803: cmp     eax, 1651865888                         ; 1000FCA4 _ 3D, 62757920
        jne     ?_1811                                  ; 1000FCA9 _ 0F 85, 00000089
        mov     edx, dword [esi+14H]                    ; 1000FCAF _ 8B. 56, 14
        push    edx                                     ; 1000FCB2 _ 52
        call    ?_2817                                  ; 1000FCB3 _ E8, 000087E8
        add     esp, 4                                  ; 1000FCB8 _ 83. C4, 04
        test    eax, eax                                ; 1000FCBB _ 85. C0
        jnz     ?_1804                                  ; 1000FCBD _ 75, 08
        pop     edi                                     ; 1000FCBF _ 5F
        pop     esi                                     ; 1000FCC0 _ 5E
        mov     eax, 1                                  ; 1000FCC1 _ B8, 00000001
        ret                                             ; 1000FCC6 _ C3

?_1804: mov     eax, dword [esi+18H]                    ; 1000FCC7 _ 8B. 46, 18
        push    eax                                     ; 1000FCCA _ 50
        push    1                                       ; 1000FCCB _ 6A, 01
        push    1                                       ; 1000FCCD _ 6A, 01
        call    ?_2609                                  ; 1000FCCF _ E8, 0000740C
        add     esp, 12                                 ; 1000FCD4 _ 83. C4, 0C
        test    eax, eax                                ; 1000FCD7 _ 85. C0
        jnz     ?_1805                                  ; 1000FCD9 _ 75, 08
        pop     edi                                     ; 1000FCDB _ 5F
        pop     esi                                     ; 1000FCDC _ 5E
        mov     eax, 1                                  ; 1000FCDD _ B8, 00000001
        ret                                             ; 1000FCE2 _ C3

?_1805: mov     ecx, dword [eax+5DH]                    ; 1000FCE3 _ 8B. 48, 5D
        push    300                                     ; 1000FCE6 _ 68, 0000012C
        push    0                                       ; 1000FCEB _ 6A, 00
        push    6                                       ; 1000FCED _ 6A, 06
        push    2                                       ; 1000FCEF _ 6A, 02
        push    ecx                                     ; 1000FCF1 _ 51
        call    ?_2482                                  ; 1000FCF2 _ E8, 00006769
        add     esp, 20                                 ; 1000FCF7 _ 83. C4, 14
        test    eax, eax                                ; 1000FCFA _ 85. C0
        jnz     ?_1806                                  ; 1000FCFC _ 75, 08
        pop     edi                                     ; 1000FCFE _ 5F
        pop     esi                                     ; 1000FCFF _ 5E
        mov     eax, 1                                  ; 1000FD00 _ B8, 00000001
        ret                                             ; 1000FD05 _ C3

?_1806: mov     esi, dword [esi+1CH]                    ; 1000FD06 _ 8B. 76, 1C
        xor     ecx, ecx                                ; 1000FD09 _ 33. C9
        lea     edx, [eax+1CH]                          ; 1000FD0B _ 8D. 50, 1C
?_1807: cmp     dword [edx], esi                        ; 1000FD0E _ 39. 32
        jz      ?_1808                                  ; 1000FD10 _ 74, 11
        inc     ecx                                     ; 1000FD12 _ 41
        add     edx, 4                                  ; 1000FD13 _ 83. C2, 04
        cmp     ecx, 3                                  ; 1000FD16 _ 83. F9, 03
        jl      ?_1807                                  ; 1000FD19 _ 7C, F3
        pop     edi                                     ; 1000FD1B _ 5F
        pop     esi                                     ; 1000FD1C _ 5E
        mov     eax, 1                                  ; 1000FD1D _ B8, 00000001
        ret                                             ; 1000FD22 _ C3

?_1808: cmp     ecx, 3                                  ; 1000FD23 _ 83. F9, 03
        jl      ?_1810                                  ; 1000FD26 _ 7C, 08
?_1809: pop     edi                                     ; 1000FD28 _ 5F
        pop     esi                                     ; 1000FD29 _ 5E
        mov     eax, 1                                  ; 1000FD2A _ B8, 00000001
        ret                                             ; 1000FD2F _ C3

?_1810: mov     dword [eax+ecx*4+1CH], -1               ; 1000FD30 _ C7. 44 88, 1C, FFFFFFFF
?_1811: test    edi, edi                                ; 1000FD38 _ 85. FF
        jz      ?_1812                                  ; 1000FD3A _ 74, 03
        mov     byte [edi], 1                           ; 1000FD3C _ C6. 07, 01
?_1812: pop     edi                                     ; 1000FD3F _ 5F
        pop     esi                                     ; 1000FD40 _ 5E
        xor     eax, eax                                ; 1000FD41 _ 33. C0
        ret                                             ; 1000FD43 _ C3

        nop                                             ; 1000FD44 _ 90
        nop                                             ; 1000FD45 _ 90
        nop                                             ; 1000FD46 _ 90
        nop                                             ; 1000FD47 _ 90
        nop                                             ; 1000FD48 _ 90
        nop                                             ; 1000FD49 _ 90
        nop                                             ; 1000FD4A _ 90
        nop                                             ; 1000FD4B _ 90
        nop                                             ; 1000FD4C _ 90
        nop                                             ; 1000FD4D _ 90
        nop                                             ; 1000FD4E _ 90
        nop                                             ; 1000FD4F _ 90

