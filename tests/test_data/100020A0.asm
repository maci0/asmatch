; ---- 100020A0 ----
?_0118: ; Local function
        sub     esp, 20                                 ; 100020A0 _ 83. EC, 14
        push    ebx                                     ; 100020A3 _ 53
        push    ebp                                     ; 100020A4 _ 55
        push    esi                                     ; 100020A5 _ 56
        push    edi                                     ; 100020A6 _ 57
        mov     edi, dword [esp+28H]                    ; 100020A7 _ 8B. 7C 24, 28
        mov     esi, dword [edi+24H]                    ; 100020AB _ 8B. 77, 24
        mov     eax, dword [edi+74H]                    ; 100020AE _ 8B. 47, 74
        mov     edx, dword [edi+64H]                    ; 100020B1 _ 8B. 57, 64
        mov     ecx, dword [edi+30H]                    ; 100020B4 _ 8B. 4F, 30
        mov     ebp, dword [edi+70H]                    ; 100020B7 _ 8B. 6F, 70
        mov     dword [esp+14H], eax                    ; 100020BA _ 89. 44 24, 14
        mov     eax, dword [edi+88H]                    ; 100020BE _ 8B. 87, 00000088
        lea     ebx, [esi-106H]                         ; 100020C4 _ 8D. 9E, FFFFFEFA
        add     ecx, edx                                ; 100020CA _ 03. CA
        cmp     edx, ebx                                ; 100020CC _ 3B. D3
        mov     dword [esp+18H], eax                    ; 100020CE _ 89. 44 24, 18
        jbe     ?_0119                                  ; 100020D2 _ 76, 0E
        sub     edx, esi                                ; 100020D4 _ 2B. D6
        add     edx, 262                                ; 100020D6 _ 81. C2, 00000106
        mov     dword [esp+1CH], edx                    ; 100020DC _ 89. 54 24, 1C
        jmp     ?_0120                                  ; 100020E0 _ EB, 08

?_0119: mov     dword [esp+1CH], 0                      ; 100020E2 _ C7. 44 24, 1C, 00000000
?_0120: mov     dl, byte [ecx+ebp-1H]                   ; 100020EA _ 8A. 54 29, FF
        lea     ebx, [ecx+102H]                         ; 100020EE _ 8D. 99, 00000102
        mov     byte [esp+28H], dl                      ; 100020F4 _ 88. 54 24, 28
        mov     dl, byte [ecx+ebp]                      ; 100020F8 _ 8A. 14 29
        mov     byte [esp+13H], dl                      ; 100020FB _ 88. 54 24, 13
        mov     edx, dword [edi+84H]                    ; 100020FF _ 8B. 97, 00000084
        cmp     ebp, edx                                ; 10002105 _ 3B. EA
        jc      ?_0121                                  ; 10002107 _ 72, 05
        shr     dword [esp+14H], 2                      ; 10002109 _ C1. 6C 24, 14, 02
?_0121: mov     edx, dword [edi+6CH]                    ; 1000210E _ 8B. 57, 6C
        cmp     eax, edx                                ; 10002111 _ 3B. C2
        mov     dword [esp+20H], edx                    ; 10002113 _ 89. 54 24, 20
        jbe     ?_0122                                  ; 10002117 _ 76, 04
        mov     dword [esp+18H], edx                    ; 10002119 _ 89. 54 24, 18
?_0122: mov     esi, dword [esp+2CH]                    ; 1000211D _ 8B. 74 24, 2C
?_0123: mov     edx, dword [edi+30H]                    ; 10002121 _ 8B. 57, 30
        mov     al, byte [esp+13H]                      ; 10002124 _ 8A. 44 24, 13
        add     edx, esi                                ; 10002128 _ 03. D6
        cmp     byte [edx+ebp], al                      ; 1000212A _ 38. 04 2A
        jne     ?_0126                                  ; 1000212D _ 0F 85, 000000A5
        mov     al, byte [esp+28H]                      ; 10002133 _ 8A. 44 24, 28
        cmp     byte [edx+ebp-1H], al                   ; 10002137 _ 38. 44 2A, FF
        jne     ?_0126                                  ; 1000213B _ 0F 85, 00000097
        mov     al, byte [edx]                          ; 10002141 _ 8A. 02
        cmp     al, byte [ecx]                          ; 10002143 _ 3A. 01
        jne     ?_0126                                  ; 10002145 _ 0F 85, 0000008D
        mov     al, byte [edx+1H]                       ; 1000214B _ 8A. 42, 01
        inc     edx                                     ; 1000214E _ 42
        cmp     al, byte [ecx+1H]                       ; 1000214F _ 3A. 41, 01
        jne     ?_0126                                  ; 10002152 _ 0F 85, 00000080
        add     ecx, 2                                  ; 10002158 _ 83. C1, 02
        inc     edx                                     ; 1000215B _ 42
?_0124: mov     al, byte [ecx+1H]                       ; 1000215C _ 8A. 41, 01
        inc     ecx                                     ; 1000215F _ 41
        inc     edx                                     ; 10002160 _ 42
        cmp     al, byte [edx]                          ; 10002161 _ 3A. 02
        jnz     ?_0125                                  ; 10002163 _ 75, 43
        mov     al, byte [ecx+1H]                       ; 10002165 _ 8A. 41, 01
        inc     ecx                                     ; 10002168 _ 41
        inc     edx                                     ; 10002169 _ 42
        cmp     al, byte [edx]                          ; 1000216A _ 3A. 02
        jnz     ?_0125                                  ; 1000216C _ 75, 3A
        mov     al, byte [ecx+1H]                       ; 1000216E _ 8A. 41, 01
        inc     ecx                                     ; 10002171 _ 41
        inc     edx                                     ; 10002172 _ 42
        cmp     al, byte [edx]                          ; 10002173 _ 3A. 02
        jnz     ?_0125                                  ; 10002175 _ 75, 31
        mov     al, byte [ecx+1H]                       ; 10002177 _ 8A. 41, 01
        inc     ecx                                     ; 1000217A _ 41
        inc     edx                                     ; 1000217B _ 42
        cmp     al, byte [edx]                          ; 1000217C _ 3A. 02
        jnz     ?_0125                                  ; 1000217E _ 75, 28
        mov     al, byte [ecx+1H]                       ; 10002180 _ 8A. 41, 01
        inc     ecx                                     ; 10002183 _ 41
        inc     edx                                     ; 10002184 _ 42
        cmp     al, byte [edx]                          ; 10002185 _ 3A. 02
        jnz     ?_0125                                  ; 10002187 _ 75, 1F
        mov     al, byte [ecx+1H]                       ; 10002189 _ 8A. 41, 01
        inc     ecx                                     ; 1000218C _ 41
        inc     edx                                     ; 1000218D _ 42
        cmp     al, byte [edx]                          ; 1000218E _ 3A. 02
        jnz     ?_0125                                  ; 10002190 _ 75, 16
        mov     al, byte [ecx+1H]                       ; 10002192 _ 8A. 41, 01
        inc     ecx                                     ; 10002195 _ 41
        inc     edx                                     ; 10002196 _ 42
        cmp     al, byte [edx]                          ; 10002197 _ 3A. 02
        jnz     ?_0125                                  ; 10002199 _ 75, 0D
        mov     al, byte [ecx+1H]                       ; 1000219B _ 8A. 41, 01
        inc     ecx                                     ; 1000219E _ 41
        inc     edx                                     ; 1000219F _ 42
        cmp     al, byte [edx]                          ; 100021A0 _ 3A. 02
        jnz     ?_0125                                  ; 100021A2 _ 75, 04
        cmp     ecx, ebx                                ; 100021A4 _ 3B. CB
        jc      ?_0124                                  ; 100021A6 _ 72, B4
?_0125: mov     edx, ecx                                ; 100021A8 _ 8B. D1
        lea     ecx, [ebx-102H]                         ; 100021AA _ 8D. 8B, FFFFFEFE
        sub     edx, ebx                                ; 100021B0 _ 2B. D3
        add     edx, 258                                ; 100021B2 _ 81. C2, 00000102
        cmp     edx, ebp                                ; 100021B8 _ 3B. D5
        jle     ?_0126                                  ; 100021BA _ 7E, 1C
        mov     eax, dword [esp+18H]                    ; 100021BC _ 8B. 44 24, 18
        mov     dword [edi+68H], esi                    ; 100021C0 _ 89. 77, 68
        cmp     edx, eax                                ; 100021C3 _ 3B. D0
        mov     ebp, edx                                ; 100021C5 _ 8B. EA
        jge     ?_0127                                  ; 100021C7 _ 7D, 34
        mov     al, byte [edx+ecx-1H]                   ; 100021C9 _ 8A. 44 0A, FF
        mov     dl, byte [edx+ecx]                      ; 100021CD _ 8A. 14 0A
        mov     byte [esp+28H], al                      ; 100021D0 _ 88. 44 24, 28
        mov     byte [esp+13H], dl                      ; 100021D4 _ 88. 54 24, 13
?_0126: mov     edx, dword [edi+2CH]                    ; 100021D8 _ 8B. 57, 2C
        mov     eax, dword [edi+38H]                    ; 100021DB _ 8B. 47, 38
        and     edx, esi                                ; 100021DE _ 23. D6
        xor     esi, esi                                ; 100021E0 _ 33. F6
        mov     si, word [eax+edx*2]                    ; 100021E2 _ 66: 8B. 34 50
        mov     eax, dword [esp+1CH]                    ; 100021E6 _ 8B. 44 24, 1C
        cmp     esi, eax                                ; 100021EA _ 3B. F0
        jbe     ?_0127                                  ; 100021EC _ 76, 0F
        mov     eax, dword [esp+14H]                    ; 100021EE _ 8B. 44 24, 14
        dec     eax                                     ; 100021F2 _ 48
        mov     dword [esp+14H], eax                    ; 100021F3 _ 89. 44 24, 14
        jne     ?_0123                                  ; 100021F7 _ 0F 85, FFFFFF24
?_0127: mov     eax, dword [esp+20H]                    ; 100021FD _ 8B. 44 24, 20
        cmp     ebp, eax                                ; 10002201 _ 3B. E8
        ja      ?_0128                                  ; 10002203 _ 77, 02
        mov     eax, ebp                                ; 10002205 _ 8B. C5
?_0128: pop     edi                                     ; 10002207 _ 5F
        pop     esi                                     ; 10002208 _ 5E
        pop     ebp                                     ; 10002209 _ 5D
        pop     ebx                                     ; 1000220A _ 5B
        add     esp, 20                                 ; 1000220B _ 83. C4, 14
        ret                                             ; 1000220E _ C3

        nop                                             ; 1000220F _ 90
