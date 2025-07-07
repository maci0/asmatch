; ---- 1000CA5B ----
?_1386: ; Local function
        test    ebx, ebx                                ; 1000CA5B _ 85. DB
        jz      ?_1383                                  ; 1000CA5D _ 74, D9
        mov     byte [edi], 1                           ; 1000CA5F _ C6. 07, 01
        mov     cl, byte [edi]                          ; 1000CA62 _ 8A. 0F
        cmp     cl, 6                                   ; 1000CA64 _ 80. F9, 06
        mov     eax, edi                                ; 1000CA67 _ 8B. C7
        jz      ?_1388                                  ; 1000CA69 _ 74, 0B
?_1387: mov     eax, dword [eax+95H]                    ; 1000CA6B _ 8B. 80, 00000095
        cmp     byte [eax], 6                           ; 1000CA71 _ 80. 38, 06
        jnz     ?_1387                                  ; 1000CA74 _ 75, F5
?_1388: pop     edi                                     ; 1000CA76 _ 5F
        mov     byte [eax], 1                           ; 1000CA77 _ C6. 00, 01
        pop     esi                                     ; 1000CA7A _ 5E
        mov     eax, 1                                  ; 1000CA7B _ B8, 00000001
        pop     ebx                                     ; 1000CA80 _ 5B
        ret                                             ; 1000CA81 _ C3

        nop                                             ; 1000CA82 _ 90
        nop                                             ; 1000CA83 _ 90
        nop                                             ; 1000CA84 _ 90
        nop                                             ; 1000CA85 _ 90
        nop                                             ; 1000CA86 _ 90
        nop                                             ; 1000CA87 _ 90
        nop                                             ; 1000CA88 _ 90
        nop                                             ; 1000CA89 _ 90
        nop                                             ; 1000CA8A _ 90
        nop                                             ; 1000CA8B _ 90
        nop                                             ; 1000CA8C _ 90
        nop                                             ; 1000CA8D _ 90
        nop                                             ; 1000CA8E _ 90
        nop                                             ; 1000CA8F _ 90
?_1389: mov     eax, dword [esp+8H]                     ; 1000CA90 _ 8B. 44 24, 08
        cmp     eax, -2                                 ; 1000CA94 _ 83. F8, FE
        jnz     ?_1390                                  ; 1000CA97 _ 75, 25
        mov     eax, dword [esp+4H]                     ; 1000CA99 _ 8B. 44 24, 04
        xor     ecx, ecx                                ; 1000CA9D _ 33. C9
        mov     cl, byte [eax+3H]                       ; 1000CA9F _ 8A. 48, 03
        mov     eax, ecx                                ; 1000CAA2 _ 8B. C1
        shl     eax, 4                                  ; 1000CAA4 _ C1. E0, 04
        add     eax, ecx                                ; 1000CAA7 _ 03. C1
        shl     eax, 8                                  ; 1000CAA9 _ C1. E0, 08
        add     eax, ecx                                ; 1000CAAC _ 03. C1
        shl     eax, 4                                  ; 1000CAAE _ C1. E0, 04
        add     eax, ecx                                ; 1000CAB1 _ 03. C1
        lea     ecx, [eax+eax*8]                        ; 1000CAB3 _ 8D. 0C C0
        mov     eax, dword [?_5766+ecx*4]               ; 1000CAB6 _ 8B. 04 8D, 10442D00(d)
        ret                                             ; 1000CABD _ C3

