; ---- 1000D51D ----
?_1481: ; Local function
        lea     eax, [eax+eax*2]                        ; 1000D51D _ 8D. 04 40
        xor     ecx, ecx                                ; 1000D520 _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000D522 _ 8A. 4E, 03
        lea     eax, [eax+eax*4]                        ; 1000D525 _ 8D. 04 80
        lea     edx, [eax+eax*8]                        ; 1000D528 _ 8D. 14 C0
        mov     eax, ecx                                ; 1000D52B _ 8B. C1
        shl     eax, 4                                  ; 1000D52D _ C1. E0, 04
        add     eax, ecx                                ; 1000D530 _ 03. C1
        shl     eax, 8                                  ; 1000D532 _ C1. E0, 08
        add     eax, ecx                                ; 1000D535 _ 03. C1
        shl     eax, 4                                  ; 1000D537 _ C1. E0, 04
        add     eax, ecx                                ; 1000D53A _ 03. C1
        shl     edx, 2                                  ; 1000D53C _ C1. E2, 02
        lea     eax, [eax+eax*8]                        ; 1000D53F _ 8D. 04 C0
        mov     ecx, dword [?_5634+edx]                 ; 1000D542 _ 8B. 8A, 100358A4(d)
        mov     dword [?_5766+eax*4], ecx               ; 1000D548 _ 89. 0C 85, 10442D00(d)
        mov     eax, dword [esp+0CH]                    ; 1000D54F _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000D553 _ 85. C0
        jz      ?_1482                                  ; 1000D555 _ 74, 10
        lea     edx, [?_5632+edx]                       ; 1000D557 _ 8D. 92, 100358A0(d)
        mov     byte [eax], 1                           ; 1000D55D _ C6. 00, 01
        mov     byte [eax+1H], 1                        ; 1000D560 _ C6. 40, 01, 01
        mov     dword [eax+6H], edx                     ; 1000D564 _ 89. 50, 06
?_1482: xor     eax, eax                                ; 1000D567 _ 33. C0
        pop     esi                                     ; 1000D569 _ 5E
        ret                                             ; 1000D56A _ C3

        nop                                             ; 1000D56B _ 90
        nop                                             ; 1000D56C _ 90
        nop                                             ; 1000D56D _ 90
        nop                                             ; 1000D56E _ 90
        nop                                             ; 1000D56F _ 90

