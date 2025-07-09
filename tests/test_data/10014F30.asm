; ---- 10014F30 ----
?_2314: ; Local function
        push    ebx                                     ; 10014F30 _ 53
        push    ebp                                     ; 10014F31 _ 55
        mov     ebp, dword [esp+0CH]                    ; 10014F32 _ 8B. 6C 24, 0C
        push    esi                                     ; 10014F36 _ 56
        mov     esi, dword [esp+18H]                    ; 10014F37 _ 8B. 74 24, 18
        push    edi                                     ; 10014F3B _ 57
        mov     edi, dword [esp+18H]                    ; 10014F3C _ 8B. 7C 24, 18
        xor     ecx, ecx                                ; 10014F40 _ 33. C9
        lea     eax, [ebp+9H]                           ; 10014F42 _ 8D. 45, 09
        or      dl, 0FFFFFFFFH                          ; 10014F45 _ 80. CA, FF
?_2315: xor     ebx, ebx                                ; 10014F48 _ 33. DB
        mov     bl, byte [eax-1H]                       ; 10014F4A _ 8A. 58, FF
        cmp     ebx, edi                                ; 10014F4D _ 3B. DF
        jnz     ?_2316                                  ; 10014F4F _ 75, 0D
        xor     ebx, ebx                                ; 10014F51 _ 33. DB
        mov     bl, byte [eax]                          ; 10014F53 _ 8A. 18
        cmp     ebx, esi                                ; 10014F55 _ 3B. DE
        jnz     ?_2316                                  ; 10014F57 _ 75, 05
        cmp     byte [eax+4H], dl                       ; 10014F59 _ 38. 50, 04
        jnz     ?_2317                                  ; 10014F5C _ 75, 10
?_2316: inc     ecx                                     ; 10014F5E _ 41
        add     eax, 24                                 ; 10014F5F _ 83. C0, 18
        cmp     ecx, 64                                 ; 10014F62 _ 83. F9, 40
        jl      ?_2315                                  ; 10014F65 _ 7C, E1
        pop     edi                                     ; 10014F67 _ 5F
        pop     esi                                     ; 10014F68 _ 5E
        pop     ebp                                     ; 10014F69 _ 5D
        xor     eax, eax                                ; 10014F6A _ 33. C0
        pop     ebx                                     ; 10014F6C _ 5B
        ret                                             ; 10014F6D _ C3
