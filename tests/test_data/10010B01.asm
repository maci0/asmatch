; ---- 10010B01 ----
?_1941: ; Local function
        xor     edx, edx                                ; 10010B01 _ 33. D2
        mov     dl, byte [ebp+247H]                     ; 10010B03 _ 8A. 95, 00000247
        mov     eax, dword [?_4928+edx*4]               ; 10010B09 _ 8B. 04 95, 1002576C(d)
        mov     ecx, eax                                ; 10010B10 _ 8B. C8
        shl     ecx, 4                                  ; 10010B12 _ C1. E1, 04
        add     ecx, eax                                ; 10010B15 _ 03. C8
        xor     eax, eax                                ; 10010B17 _ 33. C0
        shl     ecx, 2                                  ; 10010B19 _ C1. E1, 02
        mov     edx, ecx                                ; 10010B1C _ 8B. D1
        shr     ecx, 2                                  ; 10010B1E _ C1. E9, 02
        rep stosd                                       ; 10010B21 _ F3: AB
        mov     ecx, edx                                ; 10010B23 _ 8B. CA
        and     ecx, 03H                                ; 10010B25 _ 83. E1, 03
        rep stosb                                       ; 10010B28 _ F3: AA
        xor     ecx, ecx                                ; 10010B2A _ 33. C9
        xor     eax, eax                                ; 10010B2C _ 33. C0
        mov     cl, byte [ebp+247H]                     ; 10010B2E _ 8A. 8D, 00000247
        or      edi, 0FFFFFFFFH                         ; 10010B34 _ 83. CF, FF
        cmp     dword [?_4928+ecx*4], ebx               ; 10010B37 _ 39. 1C 8D, 1002576C(d)
        jle     ?_1943                                  ; 10010B3E _ 7E, 1D
        xor     ecx, ecx                                ; 10010B40 _ 33. C9
?_1942: mov     edx, dword [esi+20H]                    ; 10010B42 _ 8B. 56, 20
        inc     eax                                     ; 10010B45 _ 40
        mov     dword [ecx+edx], edi                    ; 10010B46 _ 89. 3C 11
        xor     edx, edx                                ; 10010B49 _ 33. D2
        mov     dl, byte [ebp+247H]                     ; 10010B4B _ 8A. 95, 00000247
        add     ecx, 68                                 ; 10010B51 _ 83. C1, 44
        cmp     eax, dword [?_4928+edx*4]               ; 10010B54 _ 3B. 04 95, 1002576C(d)
        jl      ?_1942                                  ; 10010B5B _ 7C, E5
?_1943: mov     edx, dword [esi+4H]                     ; 10010B5D _ 8B. 56, 04
        mov     eax, dword [esi+1CH]                    ; 10010B60 _ 8B. 46, 1C
        mov     ecx, dword [esi+20H]                    ; 10010B63 _ 8B. 4E, 20
        cmp     edx, 1                                  ; 10010B66 _ 83. FA, 01
        mov     dword [esi+8H], eax                     ; 10010B69 _ 89. 46, 08
        mov     byte [esi+18H], 1                       ; 10010B6C _ C6. 46, 18, 01
        mov     byte [esi+19H], bl                      ; 10010B70 _ 88. 5E, 19
        mov     byte [esi+1AH], bl                      ; 10010B73 _ 88. 5E, 1A
        mov     byte [esi+1BH], bl                      ; 10010B76 _ 88. 5E, 1B
        jnz     ?_1946                                  ; 10010B79 _ 75, 5D
        lea     edx, [eax+0A0H]                         ; 10010B7B _ 8D. 90, 000000A0
        mov     dword [esi+10H], ebx                    ; 10010B81 _ 89. 5E, 10
        mov     dword [esi+0CH], edx                    ; 10010B84 _ 89. 56, 0C
        mov     dword [esi+14H], ebx                    ; 10010B87 _ 89. 5E, 14
        mov     ebp, 8                                  ; 10010B8A _ BD, 00000008
        mov     edx, 65535                              ; 10010B8F _ BA, 0000FFFF
?_1944: mov     dword [eax], ebx                        ; 10010B94 _ 89. 18
        mov     dword [eax+10H], ecx                    ; 10010B96 _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010B99 _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010B9C _ 66: 89. 50, 08
        add     ecx, 68                                 ; 10010BA0 _ 83. C1, 44
        add     eax, 20                                 ; 10010BA3 _ 83. C0, 14
        dec     ebp                                     ; 10010BA6 _ 4D
        jnz     ?_1944                                  ; 10010BA7 _ 75, EB
        mov     ebp, 4                                  ; 10010BA9 _ BD, 00000004
?_1945: mov     dword [eax], 1                          ; 10010BAE _ C7. 00, 00000001
        mov     dword [eax+10H], ecx                    ; 10010BB4 _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010BB7 _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010BBA _ 66: 89. 50, 08
        add     ecx, 136                                ; 10010BBE _ 81. C1, 00000088
        add     eax, 20                                 ; 10010BC4 _ 83. C0, 14
        dec     ebp                                     ; 10010BC7 _ 4D
        jnz     ?_1945                                  ; 10010BC8 _ 75, E4
        mov     eax, dword [esp+14H]                    ; 10010BCA _ 8B. 44 24, 14
        pop     edi                                     ; 10010BCE _ 5F
        mov     dword [eax+65H], esi                    ; 10010BCF _ 89. 70, 65
        mov     eax, esi                                ; 10010BD2 _ 8B. C6
        pop     esi                                     ; 10010BD4 _ 5E
        pop     ebp                                     ; 10010BD5 _ 5D
        pop     ebx                                     ; 10010BD6 _ 5B
        ret                                             ; 10010BD7 _ C3
