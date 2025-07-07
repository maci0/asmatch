; ---- 10008AF4 ----
?_0886: ; Local function
        mov     eax, dword [esp+20H]                    ; 10008AF4 _ 8B. 44 24, 20
        mov     dword [esi+14H], ecx                    ; 10008AF8 _ 89. 4E, 14
        mov     dword [esi+10H], eax                    ; 10008AFB _ 89. 46, 10
        mov     eax, dword [esi+5CH]                    ; 10008AFE _ 8B. 46, 5C
        cmp     ecx, eax                                ; 10008B01 _ 3B. C8
        jbe     ?_0887                                  ; 10008B03 _ 76, 03
        mov     dword [esi+14H], eax                    ; 10008B05 _ 89. 46, 14
?_0887: mov     eax, dword [esi+14H]                    ; 10008B08 _ 8B. 46, 14
        test    eax, eax                                ; 10008B0B _ 85. C0
        jbe     ?_0896                                  ; 10008B0D _ 0F 86, 00000146
?_0888: mov     eax, dword [esi+8H]                     ; 10008B13 _ 8B. 46, 08
        test    eax, eax                                ; 10008B16 _ 85. C0
        jnz     ?_0890                                  ; 10008B18 _ 75, 68
        mov     eax, dword [esi+58H]                    ; 10008B1A _ 8B. 46, 58
        test    eax, eax                                ; 10008B1D _ 85. C0
        jbe     ?_0890                                  ; 10008B1F _ 76, 61
        mov     edi, 16384                              ; 10008B21 _ BF, 00004000
        cmp     eax, edi                                ; 10008B26 _ 3B. C7
        jnc     ?_0889                                  ; 10008B28 _ 73, 06
        mov     edi, eax                                ; 10008B2A _ 8B. F8
        test    edi, edi                                ; 10008B2C _ 85. FF
        jz      ?_0885                                  ; 10008B2E _ 74, BA
?_0889: mov     ecx, dword [esi+68H]                    ; 10008B30 _ 8B. 4E, 68
        mov     eax, dword [esi+3CH]                    ; 10008B33 _ 8B. 46, 3C
        mov     edx, dword [esi+60H]                    ; 10008B36 _ 8B. 56, 60
        add     ecx, eax                                ; 10008B39 _ 03. C8
        push    0                                       ; 10008B3B _ 6A, 00
        push    ecx                                     ; 10008B3D _ 51
        push    edx                                     ; 10008B3E _ 52
        call    ?_3063                                  ; 10008B3F _ E8, 0001192A
        add     esp, 12                                 ; 10008B44 _ 83. C4, 0C
        test    eax, eax                                ; 10008B47 _ 85. C0
        jne     ?_0897                                  ; 10008B49 _ 0F 85, 00000116
        mov     eax, dword [esi+60H]                    ; 10008B4F _ 8B. 46, 60
        mov     ecx, dword [esi]                        ; 10008B52 _ 8B. 0E
        push    eax                                     ; 10008B54 _ 50
        push    1                                       ; 10008B55 _ 6A, 01
        push    edi                                     ; 10008B57 _ 57
        push    ecx                                     ; 10008B58 _ 51
        call    ?_3143                                  ; 10008B59 _ E8, 00011F0C
        add     esp, 16                                 ; 10008B5E _ 83. C4, 10
        cmp     eax, 1                                  ; 10008B61 _ 83. F8, 01
        jne     ?_0897                                  ; 10008B64 _ 0F 85, 000000FB
        mov     ecx, dword [esi+3CH]                    ; 10008B6A _ 8B. 4E, 3C
        mov     eax, dword [esi+58H]                    ; 10008B6D _ 8B. 46, 58
        mov     edx, dword [esi]                        ; 10008B70 _ 8B. 16
        add     ecx, edi                                ; 10008B72 _ 03. CF
        sub     eax, edi                                ; 10008B74 _ 2B. C7
        mov     dword [esi+3CH], ecx                    ; 10008B76 _ 89. 4E, 3C
        mov     dword [esi+58H], eax                    ; 10008B79 _ 89. 46, 58
        mov     dword [esi+4H], edx                     ; 10008B7C _ 89. 56, 04
        mov     dword [esi+8H], edi                     ; 10008B7F _ 89. 7E, 08
?_0890: mov     eax, dword [esi+64H]                    ; 10008B82 _ 8B. 46, 64
        test    eax, eax                                ; 10008B85 _ 85. C0
        jnz     ?_0894                                  ; 10008B87 _ 75, 73
        mov     eax, dword [esi+14H]                    ; 10008B89 _ 8B. 46, 14
        mov     edi, dword [esi+8H]                     ; 10008B8C _ 8B. 7E, 08
        cmp     eax, edi                                ; 10008B8F _ 3B. C7
        jnc     ?_0891                                  ; 10008B91 _ 73, 02
        mov     edi, eax                                ; 10008B93 _ 8B. F8
?_0891: xor     eax, eax                                ; 10008B95 _ 33. C0
        test    edi, edi                                ; 10008B97 _ 85. FF
        jbe     ?_0893                                  ; 10008B99 _ 76, 11
?_0892: mov     ecx, dword [esi+4H]                     ; 10008B9B _ 8B. 4E, 04
        mov     edx, dword [esi+10H]                    ; 10008B9E _ 8B. 56, 10
        mov     cl, byte [ecx+eax]                      ; 10008BA1 _ 8A. 0C 01
        mov     byte [edx+eax], cl                      ; 10008BA4 _ 88. 0C 02
        inc     eax                                     ; 10008BA7 _ 40
        cmp     eax, edi                                ; 10008BA8 _ 3B. C7
        jc      ?_0892                                  ; 10008BAA _ 72, EF
?_0893: mov     edx, dword [esi+10H]                    ; 10008BAC _ 8B. 56, 10
        mov     eax, dword [esi+50H]                    ; 10008BAF _ 8B. 46, 50
        push    edi                                     ; 10008BB2 _ 57
        push    edx                                     ; 10008BB3 _ 52
        push    eax                                     ; 10008BB4 _ 50
        call    ?_0011                                  ; 10008BB5 _ E8, FFFF8636
        mov     ecx, dword [esi+5CH]                    ; 10008BBA _ 8B. 4E, 5C
        mov     ebp, dword [esi+14H]                    ; 10008BBD _ 8B. 6E, 14
        mov     ebx, dword [esi+10H]                    ; 10008BC0 _ 8B. 5E, 10
        mov     edx, dword [esi+4H]                     ; 10008BC3 _ 8B. 56, 04
        mov     dword [esi+50H], eax                    ; 10008BC6 _ 89. 46, 50
        mov     eax, dword [esi+8H]                     ; 10008BC9 _ 8B. 46, 08
        sub     ecx, edi                                ; 10008BCC _ 2B. CF
        sub     eax, edi                                ; 10008BCE _ 2B. C7
        mov     dword [esi+5CH], ecx                    ; 10008BD0 _ 89. 4E, 5C
        mov     ecx, dword [esi+18H]                    ; 10008BD3 _ 8B. 4E, 18
        mov     dword [esi+8H], eax                     ; 10008BD6 _ 89. 46, 08
        mov     eax, dword [esp+1CH]                    ; 10008BD9 _ 8B. 44 24, 1C
        add     esp, 12                                 ; 10008BDD _ 83. C4, 0C
        sub     ebp, edi                                ; 10008BE0 _ 2B. EF
        add     ebx, edi                                ; 10008BE2 _ 03. DF
        add     edx, edi                                ; 10008BE4 _ 03. D7
        add     ecx, edi                                ; 10008BE6 _ 03. CF
        add     eax, edi                                ; 10008BE8 _ 03. C7
        mov     dword [esi+14H], ebp                    ; 10008BEA _ 89. 6E, 14
        mov     dword [esi+10H], ebx                    ; 10008BED _ 89. 5E, 10
        mov     dword [esi+4H], edx                     ; 10008BF0 _ 89. 56, 04
        mov     dword [esi+18H], ecx                    ; 10008BF3 _ 89. 4E, 18
        mov     dword [esp+10H], eax                    ; 10008BF6 _ 89. 44 24, 10
        jmp     ?_0895                                  ; 10008BFA _ EB, 4A

?_0894: mov     ebx, dword [esi+18H]                    ; 10008BFC _ 8B. 5E, 18
        mov     ebp, dword [esi+10H]                    ; 10008BFF _ 8B. 6E, 10
        lea     ecx, [esi+4H]                           ; 10008C02 _ 8D. 4E, 04
        push    2                                       ; 10008C05 _ 6A, 02
        push    ecx                                     ; 10008C07 _ 51
        call    ?_0539                                  ; 10008C08 _ E8, FFFFCCC3
        mov     edi, dword [esi+18H]                    ; 10008C0D _ 8B. 7E, 18
        mov     edx, dword [esi+50H]                    ; 10008C10 _ 8B. 56, 50
        sub     edi, ebx                                ; 10008C13 _ 2B. FB
        mov     dword [esp+1CH], eax                    ; 10008C15 _ 89. 44 24, 1C
        push    edi                                     ; 10008C19 _ 57
        push    ebp                                     ; 10008C1A _ 55
        push    edx                                     ; 10008C1B _ 52
        call    ?_0011                                  ; 10008C1C _ E8, FFFF85CF
        mov     ebx, dword [esi+5CH]                    ; 10008C21 _ 8B. 5E, 5C
        mov     edx, dword [esp+24H]                    ; 10008C24 _ 8B. 54 24, 24
        mov     dword [esi+50H], eax                    ; 10008C28 _ 89. 46, 50
        mov     eax, dword [esp+28H]                    ; 10008C2B _ 8B. 44 24, 28
        add     esp, 20                                 ; 10008C2F _ 83. C4, 14
        sub     ebx, edi                                ; 10008C32 _ 2B. DF
        add     edx, edi                                ; 10008C34 _ 03. D7
        cmp     eax, 1                                  ; 10008C36 _ 83. F8, 01
        mov     dword [esi+5CH], ebx                    ; 10008C39 _ 89. 5E, 5C
        mov     dword [esp+10H], edx                    ; 10008C3C _ 89. 54 24, 10
        jz      ?_0896                                  ; 10008C40 _ 74, 17
        test    eax, eax                                ; 10008C42 _ 85. C0
        jnz     ?_0898                                  ; 10008C44 _ 75, 2A
?_0895: mov     eax, dword [esi+14H]                    ; 10008C46 _ 8B. 46, 14
        test    eax, eax                                ; 10008C49 _ 85. C0
        ja      ?_0888                                  ; 10008C4B _ 0F 87, FFFFFEC2
        mov     eax, dword [esp+14H]                    ; 10008C51 _ 8B. 44 24, 14
        test    eax, eax                                ; 10008C55 _ 85. C0
        jnz     ?_0898                                  ; 10008C57 _ 75, 17
?_0896: mov     eax, dword [esp+10H]                    ; 10008C59 _ 8B. 44 24, 10
        pop     edi                                     ; 10008C5D _ 5F
        pop     esi                                     ; 10008C5E _ 5E
        pop     ebp                                     ; 10008C5F _ 5D
        pop     ebx                                     ; 10008C60 _ 5B
        add     esp, 8                                  ; 10008C61 _ 83. C4, 08
        ret                                             ; 10008C64 _ C3

?_0897: pop     edi                                     ; 10008C65 _ 5F
        pop     esi                                     ; 10008C66 _ 5E
        pop     ebp                                     ; 10008C67 _ 5D
        or      eax, 0FFFFFFFFH                         ; 10008C68 _ 83. C8, FF
        pop     ebx                                     ; 10008C6B _ 5B
        add     esp, 8                                  ; 10008C6C _ 83. C4, 08
        ret                                             ; 10008C6F _ C3

