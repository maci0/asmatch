; ---- 10014F6E ----
?_2317: ; Local function
        lea     eax, [ecx+ecx*2]                        ; 10014F6E _ 8D. 04 49
        pop     edi                                     ; 10014F71 _ 5F
        pop     esi                                     ; 10014F72 _ 5E
        lea     eax, [ebp+eax*8]                        ; 10014F73 _ 8D. 44 C5, 00
        pop     ebp                                     ; 10014F77 _ 5D
        pop     ebx                                     ; 10014F78 _ 5B
        ret                                             ; 10014F79 _ C3

        nop                                             ; 10014F7A _ 90
        nop                                             ; 10014F7B _ 90
        nop                                             ; 10014F7C _ 90
        nop                                             ; 10014F7D _ 90
        nop                                             ; 10014F7E _ 90
        nop                                             ; 10014F7F _ 90
?_2318: push    ebx                                     ; 10014F80 _ 53
        push    ebp                                     ; 10014F81 _ 55
        mov     ebp, dword [esp+0CH]                    ; 10014F82 _ 8B. 6C 24, 0C
        push    esi                                     ; 10014F86 _ 56
        push    edi                                     ; 10014F87 _ 57
        mov     edi, dword [esp+1CH]                    ; 10014F88 _ 8B. 7C 24, 1C
        xor     esi, esi                                ; 10014F8C _ 33. F6
        lea     ecx, [ebp+8H]                           ; 10014F8E _ 8D. 4D, 08
?_2319: cmp     byte [ecx+5H], -1                       ; 10014F91 _ 80. 79, 05, FF
        jz      ?_2320                                  ; 10014F95 _ 74, 34
        movsx   eax, byte [ecx+4H]                      ; 10014F97 _ 0F BE. 41, 04
        cdq                                             ; 10014F9B _ 99
        sub     eax, edx                                ; 10014F9C _ 2B. C2
        xor     edx, edx                                ; 10014F9E _ 33. D2
        mov     dl, byte [ecx]                          ; 10014FA0 _ 8A. 11
        sar     eax, 1                                  ; 10014FA2 _ D1. F8
        mov     ebx, edx                                ; 10014FA4 _ 8B. DA
        sub     ebx, eax                                ; 10014FA6 _ 2B. D8
        cmp     dword [esp+18H], ebx                    ; 10014FA8 _ 39. 5C 24, 18
        jl      ?_2320                                  ; 10014FAC _ 7C, 1D
        mov     ebx, dword [esp+18H]                    ; 10014FAE _ 8B. 5C 24, 18
        add     edx, eax                                ; 10014FB2 _ 03. D0
        cmp     ebx, edx                                ; 10014FB4 _ 3B. DA
        jg      ?_2320                                  ; 10014FB6 _ 7F, 13
        xor     edx, edx                                ; 10014FB8 _ 33. D2
        mov     dl, byte [ecx+1H]                       ; 10014FBA _ 8A. 51, 01
        mov     ebx, edx                                ; 10014FBD _ 8B. DA
        sub     ebx, eax                                ; 10014FBF _ 2B. D8
        cmp     edi, ebx                                ; 10014FC1 _ 3B. FB
        jl      ?_2320                                  ; 10014FC3 _ 7C, 06
        add     edx, eax                                ; 10014FC5 _ 03. D0
        cmp     edi, edx                                ; 10014FC7 _ 3B. FA
        jle     ?_2321                                  ; 10014FC9 _ 7E, 10
?_2320: inc     esi                                     ; 10014FCB _ 46
        add     ecx, 24                                 ; 10014FCC _ 83. C1, 18
        cmp     esi, 64                                 ; 10014FCF _ 83. FE, 40
        jl      ?_2319                                  ; 10014FD2 _ 7C, BD
        pop     edi                                     ; 10014FD4 _ 5F
        pop     esi                                     ; 10014FD5 _ 5E
        pop     ebp                                     ; 10014FD6 _ 5D
        xor     eax, eax                                ; 10014FD7 _ 33. C0
        pop     ebx                                     ; 10014FD9 _ 5B
        ret                                             ; 10014FDA _ C3
