; ---- 100150DD ----
?_2332: ; Local function
        xor     ecx, ecx                                ; 100150DD _ 33. C9
        lea     esi, [edi+9H]                           ; 100150DF _ 8D. 77, 09
        or      edx, 0FFFFFFFFH                         ; 100150E2 _ 83. CA, FF
?_2333: mov     ebx, dword [esp+18H]                    ; 100150E5 _ 8B. 5C 24, 18
        xor     eax, eax                                ; 100150E9 _ 33. C0
        mov     al, byte [esi-1H]                       ; 100150EB _ 8A. 46, FF
        cmp     eax, ebx                                ; 100150EE _ 3B. C3
        jnz     ?_2334                                  ; 100150F0 _ 75, 11
        mov     ebx, dword [esp+1CH]                    ; 100150F2 _ 8B. 5C 24, 1C
        xor     eax, eax                                ; 100150F6 _ 33. C0
        mov     al, byte [esi]                          ; 100150F8 _ 8A. 06
        cmp     eax, ebx                                ; 100150FA _ 3B. C3
        jnz     ?_2334                                  ; 100150FC _ 75, 05
        cmp     byte [esi+4H], dl                       ; 100150FE _ 38. 56, 04
        jnz     ?_2337                                  ; 10015101 _ 75, 52
?_2334: inc     ecx                                     ; 10015103 _ 41
        add     esi, 24                                 ; 10015104 _ 83. C6, 18
        cmp     ecx, 64                                 ; 10015107 _ 83. F9, 40
        jl      ?_2333                                  ; 1001510A _ 7C, D9
        xor     ecx, ecx                                ; 1001510C _ 33. C9
        lea     eax, [edi+0DH]                          ; 1001510E _ 8D. 47, 0D
?_2335: cmp     byte [eax], dl                          ; 10015111 _ 38. 10
        jz      ?_2336                                  ; 10015113 _ 74, 29
        inc     ecx                                     ; 10015115 _ 41
        add     eax, 24                                 ; 10015116 _ 83. C0, 18
        cmp     ecx, 64                                 ; 10015119 _ 83. F9, 40
        jl      ?_2335                                  ; 1001511C _ 7C, F3
        push    1                                       ; 1001511E _ 6A, 01
        push    ?_5369                                  ; 10015120 _ 68, 1002D990(d)
        push    155                                     ; 10015125 _ 68, 0000009B
        push    ?_5370                                  ; 1001512A _ 68, 1002D9C0(d)
        call    ?_0267                                  ; 1001512F _ E8, FFFEE50C
        add     esp, 16                                 ; 10015134 _ 83. C4, 10
        xor     eax, eax                                ; 10015137 _ 33. C0
        pop     edi                                     ; 10015139 _ 5F
        pop     esi                                     ; 1001513A _ 5E
        pop     ebp                                     ; 1001513B _ 5D
        pop     ebx                                     ; 1001513C _ 5B
        ret                                             ; 1001513D _ C3

?_2336: mov     esi, dword [?_5528]                     ; 1001513E _ 8B. 35, 1003540C(d)
        lea     eax, [ecx+ecx*2]                        ; 10015144 _ 8D. 04 49
        mov     dword [edi+eax*8], esi                  ; 10015147 _ 89. 34 C7
        mov     eax, dword [?_5528]                     ; 1001514A _ A1, 1003540C(d)
        inc     eax                                     ; 1001514F _ 40
        mov     dword [?_5528], eax                     ; 10015150 _ A3, 1003540C(d)
?_2337: lea     ecx, [ecx+ecx*2]                        ; 10015155 _ 8D. 0C 49
        lea     eax, [edi+ecx*8]                        ; 10015158 _ 8D. 04 CF
        mov     ecx, dword [esp+24H]                    ; 1001515B _ 8B. 4C 24, 24
        test    ecx, ecx                                ; 1001515F _ 85. C9
        mov     word [eax+0AH], bp                      ; 10015161 _ 66: 89. 68, 0A
        jnz     ?_2339                                  ; 10015165 _ 75, 10
        test    ebp, ebp                                ; 10015167 _ 85. ED
        mov     dword [eax+10H], edx                    ; 10015169 _ 89. 50, 10
        jz      ?_2338                                  ; 1001516C _ 74, 06
        mov     byte [eax+0DH], 1                       ; 1001516E _ C6. 40, 0D, 01
        jmp     ?_2339                                  ; 10015172 _ EB, 03

?_2338: mov     byte [eax+0DH], dl                      ; 10015174 _ 88. 50, 0D
?_2339: mov     cl, byte [esp+1CH]                      ; 10015177 _ 8A. 4C 24, 1C
        mov     dl, byte [esp+18H]                      ; 1001517B _ 8A. 54 24, 18
        mov     byte [eax+9H], cl                       ; 1001517F _ 88. 48, 09
        mov     ecx, dword [esp+20H]                    ; 10015182 _ 8B. 4C 24, 20
        test    ecx, ecx                                ; 10015186 _ 85. C9
        mov     byte [eax+8H], dl                       ; 10015188 _ 88. 50, 08
        jz      ?_2340                                  ; 1001518B _ 74, 0B
        mov     dl, byte [ecx+42H]                      ; 1001518D _ 8A. 51, 42
        pop     edi                                     ; 10015190 _ 5F
        pop     esi                                     ; 10015191 _ 5E
        pop     ebp                                     ; 10015192 _ 5D
        mov     byte [eax+0CH], dl                      ; 10015193 _ 88. 50, 0C
        pop     ebx                                     ; 10015196 _ 5B
        ret                                             ; 10015197 _ C3
