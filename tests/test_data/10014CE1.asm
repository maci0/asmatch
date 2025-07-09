; ---- 10014CE1 ----
?_2291: ; Local function
        mov     edi, dword [esp+14H]                    ; 10014CE1 _ 8B. 7C 24, 14
        mov     edx, dword [edi+18H]                    ; 10014CE5 _ 8B. 57, 18
        test    edx, edx                                ; 10014CE8 _ 85. D2
        je      ?_2296                                  ; 10014CEA _ 0F 84, 00000086
        xor     ecx, ecx                                ; 10014CF0 _ 33. C9
        mov     eax, ?_5762                             ; 10014CF2 _ B8, 101DEB04(d)
?_2292: cmp     dword [eax], edx                        ; 10014CF7 _ 39. 10
        jz      ?_2293                                  ; 10014CF9 _ 74, 26
        add     eax, 2507364                            ; 10014CFB _ 05, 00264264
        inc     ecx                                     ; 10014D00 _ 41
        cmp     eax, ?_5771                             ; 10014D01 _ 3D, 114FFE24(d)
        jl      ?_2292                                  ; 10014D06 _ 7C, EF
        push    edi                                     ; 10014D08 _ 57
        push    ebx                                     ; 10014D09 _ 53
        mov     byte [edi], 2                           ; 10014D0A _ C6. 07, 02
        call    ?_1110                                  ; 10014D0D _ E8, FFFF5C8E
        add     esp, 8                                  ; 10014D12 _ 83. C4, 08
        inc     eax                                     ; 10014D15 _ 40
        neg     eax                                     ; 10014D16 _ F7. D8
        sbb     eax, eax                                ; 10014D18 _ 1B. C0
        pop     edi                                     ; 10014D1A _ 5F
        neg     eax                                     ; 10014D1B _ F7. D8
        pop     esi                                     ; 10014D1D _ 5E
        dec     eax                                     ; 10014D1E _ 48
        pop     ebx                                     ; 10014D1F _ 5B
        ret                                             ; 10014D20 _ C3

?_2293: mov     eax, ecx                                ; 10014D21 _ 8B. C1
        push    edi                                     ; 10014D23 _ 57
        shl     eax, 4                                  ; 10014D24 _ C1. E0, 04
        add     eax, ecx                                ; 10014D27 _ 03. C1
        shl     eax, 8                                  ; 10014D29 _ C1. E0, 08
        add     eax, ecx                                ; 10014D2C _ 03. C1
        shl     eax, 4                                  ; 10014D2E _ C1. E0, 04
        add     eax, ecx                                ; 10014D31 _ 03. C1
        lea     esi, [eax+eax*8]                        ; 10014D33 _ 8D. 34 C0
        shl     esi, 2                                  ; 10014D36 _ C1. E6, 02
        lea     eax, [?_5761+esi]                       ; 10014D39 _ 8D. 86, 101DEB00(d)
        push    eax                                     ; 10014D3F _ 50
        call    ?_1110                                  ; 10014D40 _ E8, FFFF5C5B
        add     esp, 8                                  ; 10014D45 _ 83. C4, 08
        cmp     eax, -1                                 ; 10014D48 _ 83. F8, FF
        jnz     ?_2295                                  ; 10014D4B _ 75, 07
?_2294: pop     edi                                     ; 10014D4D _ 5F
        pop     esi                                     ; 10014D4E _ 5E
        or      eax, 0FFFFFFFFH                         ; 10014D4F _ 83. C8, FF
        pop     ebx                                     ; 10014D52 _ 5B
        ret                                             ; 10014D53 _ C3

?_2295: mov     ecx, dword [?_5762+esi]                 ; 10014D54 _ 8B. 8E, 101DEB04(d)
        mov     eax, dword [ebx+4H]                     ; 10014D5A _ 8B. 43, 04
        cmp     ecx, eax                                ; 10014D5D _ 3B. C8
        jz      ?_2299                                  ; 10014D5F _ 74, 42
        push    edi                                     ; 10014D61 _ 57
        push    ebx                                     ; 10014D62 _ 53
        call    ?_1110                                  ; 10014D63 _ E8, FFFF5C38
        add     esp, 8                                  ; 10014D68 _ 83. C4, 08
        cmp     eax, -1                                 ; 10014D6B _ 83. F8, FF
        jnz     ?_2299                                  ; 10014D6E _ 75, 33
        pop     edi                                     ; 10014D70 _ 5F
        pop     esi                                     ; 10014D71 _ 5E
        or      eax, eax                                ; 10014D72 _ 0B. C0
        pop     ebx                                     ; 10014D74 _ 5B
        ret                                             ; 10014D75 _ C3

?_2296: mov     esi, ?_5761                             ; 10014D76 _ BE, 101DEB00(d)
?_2297: mov     eax, dword [esi]                        ; 10014D7B _ 8B. 06
        test    al, 01H                                 ; 10014D7D _ A8, 01
        jz      ?_2298                                  ; 10014D7F _ 74, 14
        test    ah, 02H                                 ; 10014D81 _ F6. C4, 02
        jz      ?_2298                                  ; 10014D84 _ 74, 0F
        push    edi                                     ; 10014D86 _ 57
        push    esi                                     ; 10014D87 _ 56
        call    ?_1110                                  ; 10014D88 _ E8, FFFF5C13
        add     esp, 8                                  ; 10014D8D _ 83. C4, 08
        cmp     eax, -1                                 ; 10014D90 _ 83. F8, FF
        jz      ?_2294                                  ; 10014D93 _ 74, B8
?_2298: add     esi, 2507364                            ; 10014D95 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10014D9B _ 81. FE, 114FFE20(d)
        jl      ?_2297                                  ; 10014DA1 _ 7C, D8
?_2299: pop     edi                                     ; 10014DA3 _ 5F
        pop     esi                                     ; 10014DA4 _ 5E
        xor     eax, eax                                ; 10014DA5 _ 33. C0
        pop     ebx                                     ; 10014DA7 _ 5B
        ret                                             ; 10014DA8 _ C3

        nop                                             ; 10014DA9 _ 90
        nop                                             ; 10014DAA _ 90
        nop                                             ; 10014DAB _ 90
        nop                                             ; 10014DAC _ 90
        nop                                             ; 10014DAD _ 90
        nop                                             ; 10014DAE _ 90
        nop                                             ; 10014DAF _ 90
