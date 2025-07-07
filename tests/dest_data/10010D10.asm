; ---- 10010D10 ----
?_1955: ; Local function
        sub     esp, 16                                 ; 10010D10 _ 83. EC, 10
        xor     ecx, ecx                                ; 10010D13 _ 33. C9
        mov     edx, dword [?_5668]                     ; 10010D15 _ 8B. 15, 100A8C30(d)
        push    ebx                                     ; 10010D1B _ 53
        push    ebp                                     ; 10010D1C _ 55
        mov     ebp, dword [esp+1CH]                    ; 10010D1D _ 8B. 6C 24, 1C
        push    esi                                     ; 10010D21 _ 56
        push    edi                                     ; 10010D22 _ 57
        mov     cl, byte [ebp]                          ; 10010D23 _ 8A. 4D, 00
        mov     ebx, dword [ebp+65H]                    ; 10010D26 _ 8B. 5D, 65
        add     edx, ecx                                ; 10010D29 _ 03. D1
        lea     eax, [ecx+ecx*2]                        ; 10010D2B _ 8D. 04 49
        shl     eax, 4                                  ; 10010D2E _ C1. E0, 04
        add     eax, ecx                                ; 10010D31 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 10010D33 _ 8D. 04 40
        lea     esi, [edx+eax*4]                        ; 10010D36 _ 8D. 34 82
        mov     al, byte [edx+eax*4]                    ; 10010D39 _ 8A. 04 82
        cmp     al, 29                                  ; 10010D3C _ 3C, 1D
        jnz     ?_1956                                  ; 10010D3E _ 75, 30
        xor     edi, edi                                ; 10010D40 _ 33. FF
        cmp     ebx, edi                                ; 10010D42 _ 3B. DF
        jz      ?_1956                                  ; 10010D44 _ 74, 2A
        mov     eax, dword [ebx+4H]                     ; 10010D46 _ 8B. 43, 04
        cmp     eax, 3                                  ; 10010D49 _ 83. F8, 03
        jge     ?_1956                                  ; 10010D4C _ 7D, 22
        xor     ecx, ecx                                ; 10010D4E _ 33. C9
        mov     cl, byte [esi+247H]                     ; 10010D50 _ 8A. 8E, 00000247
        sub     ecx, eax                                ; 10010D56 _ 2B. C8
        cmp     ecx, 1                                  ; 10010D58 _ 83. F9, 01
        jnz     ?_1956                                  ; 10010D5B _ 75, 13
        push    ebp                                     ; 10010D5D _ 55
        mov     dword [ebp+65H], edi                    ; 10010D5E _ 89. 7D, 65
        call    ?_1936                                  ; 10010D61 _ E8, FFFFFC6A
        add     esp, 4                                  ; 10010D66 _ 83. C4, 04
        cmp     eax, edi                                ; 10010D69 _ 3B. C7
        jnz     ?_1957                                  ; 10010D6B _ 75, 0D
        mov     dword [ebp+65H], ebx                    ; 10010D6D _ 89. 5D, 65
?_1956: pop     edi                                     ; 10010D70 _ 5F
        pop     esi                                     ; 10010D71 _ 5E
        pop     ebp                                     ; 10010D72 _ 5D
        xor     eax, eax                                ; 10010D73 _ 33. C0
        pop     ebx                                     ; 10010D75 _ 5B
        add     esp, 16                                 ; 10010D76 _ 83. C4, 10
        ret                                             ; 10010D79 _ C3

