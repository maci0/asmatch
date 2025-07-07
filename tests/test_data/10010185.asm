; ---- 10010185 ----
?_1854: ; Local function
        mov     eax, dword [edi+5DH]                    ; 10010185 _ 8B. 47, 5D
        push    202                                     ; 10010188 _ 68, 000000CA
        push    0                                       ; 1001018D _ 6A, 00
        push    1                                       ; 1001018F _ 6A, 01
        push    eax                                     ; 10010191 _ 50
        call    ?_2482                                  ; 10010192 _ E8, 000062C9
        add     esp, 16                                 ; 10010197 _ 83. C4, 10
        test    eax, eax                                ; 1001019A _ 85. C0
        jz      ?_1857                                  ; 1001019C _ 74, 19
?_1855: mov     ecx, dword [eax+2AH]                    ; 1001019E _ 8B. 48, 2A
        mov     edx, dword [ebx+1H]                     ; 100101A1 _ 8B. 53, 01
        cmp     ecx, edx                                ; 100101A4 _ 3B. CA
        jz      ?_1856                                  ; 100101A6 _ 74, 0B
        call    ?_2461                                  ; 100101A8 _ E8, 000060E3
        test    eax, eax                                ; 100101AD _ 85. C0
        jnz     ?_1855                                  ; 100101AF _ 75, ED
        jmp     ?_1857                                  ; 100101B1 _ EB, 04

?_1856: test    eax, eax                                ; 100101B3 _ 85. C0
        jnz     ?_1859                                  ; 100101B5 _ 75, 43
?_1857: mov     edx, dword [edi+1H]                     ; 100101B7 _ 8B. 57, 01
        push    1                                       ; 100101BA _ 6A, 01
        push    202                                     ; 100101BC _ 68, 000000CA
        push    edx                                     ; 100101C1 _ 52
        call    ?_2524                                  ; 100101C2 _ E8, 00006599
        add     esp, 12                                 ; 100101C7 _ 83. C4, 0C
        test    eax, eax                                ; 100101CA _ 85. C0
        jnz     ?_1858                                  ; 100101CC _ 75, 09
        pop     edi                                     ; 100101CE _ 5F
        pop     esi                                     ; 100101CF _ 5E
        mov     eax, 1                                  ; 100101D0 _ B8, 00000001
        pop     ebx                                     ; 100101D5 _ 5B
        ret                                             ; 100101D6 _ C3

?_1858: xor     edx, edx                                ; 100101D7 _ 33. D2
        mov     dl, byte [esi+3H]                       ; 100101D9 _ 8A. 56, 03
        mov     ecx, edx                                ; 100101DC _ 8B. CA
        shl     ecx, 4                                  ; 100101DE _ C1. E1, 04
        add     ecx, edx                                ; 100101E1 _ 03. CA
        shl     ecx, 8                                  ; 100101E3 _ C1. E1, 08
        add     ecx, edx                                ; 100101E6 _ 03. CA
        shl     ecx, 4                                  ; 100101E8 _ C1. E1, 04
        add     ecx, edx                                ; 100101EB _ 03. CA
        mov     edx, dword [eax+2H]                     ; 100101ED _ 8B. 50, 02
        lea     ecx, [ecx+ecx*8]                        ; 100101F0 _ 8D. 0C C9
        mov     dword [?_5768+ecx*4], edx               ; 100101F3 _ 89. 14 8D, 10442D08(d)
?_1859: lea     ecx, [esi+18H]                          ; 100101FA _ 8D. 4E, 18
        lea     edx, [eax+1CH]                          ; 100101FD _ 8D. 50, 1C
        mov     bl, byte [eax+37H]                      ; 10010200 _ 8A. 58, 37
        mov     edi, dword [ecx]                        ; 10010203 _ 8B. 39
        mov     dword [edx], edi                        ; 10010205 _ 89. 3A
        mov     edi, dword [ecx+4H]                     ; 10010207 _ 8B. 79, 04
        mov     dword [edx+4H], edi                     ; 1001020A _ 89. 7A, 04
        mov     edi, dword [ecx+8H]                     ; 1001020D _ 8B. 79, 08
        mov     dword [edx+8H], edi                     ; 10010210 _ 89. 7A, 08
        mov     cx, word [ecx+0CH]                      ; 10010213 _ 66: 8B. 49, 0C
        mov     word [edx+0CH], cx                      ; 10010217 _ 66: 89. 4A, 0C
        mov     edx, dword [esi+26H]                    ; 1001021B _ 8B. 56, 26
        mov     dword [eax+2AH], edx                    ; 1001021E _ 89. 50, 2A
        mov     ecx, dword [esi+2EH]                    ; 10010221 _ 8B. 4E, 2E
        mov     dword [eax+32H], ecx                    ; 10010224 _ 89. 48, 32
        mov     dl, byte [esi+32H]                      ; 10010227 _ 8A. 56, 32
        mov     byte [eax+36H], dl                      ; 1001022A _ 88. 50, 36
        mov     cl, byte [esi+33H]                      ; 1001022D _ 8A. 4E, 33
        add     bl, cl                                  ; 10010230 _ 02. D9
        mov     cl, bl                                  ; 10010232 _ 8A. CB
        mov     byte [eax+37H], bl                      ; 10010234 _ 88. 58, 37
        cmp     cl, 100                                 ; 10010237 _ 80. F9, 64
        jbe     ?_1860                                  ; 1001023A _ 76, 0E
        mov     ecx, 100                                ; 1001023C _ B9, 00000064
        pop     edi                                     ; 10010241 _ 5F
        mov     byte [eax+37H], cl                      ; 10010242 _ 88. 48, 37
        pop     esi                                     ; 10010245 _ 5E
        xor     eax, eax                                ; 10010246 _ 33. C0
        pop     ebx                                     ; 10010248 _ 5B
        ret                                             ; 10010249 _ C3

