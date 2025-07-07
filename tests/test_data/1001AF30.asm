; ---- 1001AF30 ----
?_3210: ; Local function
        xor     eax, eax                                ; 1001AF30 _ 33. C0
        mov     al, byte [esp+8H]                       ; 1001AF32 _ 8A. 44 24, 08
?_3211: push    ebx                                     ; 1001AF36 _ 53
        mov     ebx, eax                                ; 1001AF37 _ 8B. D8
        shl     eax, 8                                  ; 1001AF39 _ C1. E0, 08
        mov     edx, dword [esp+8H]                     ; 1001AF3C _ 8B. 54 24, 08
        test    edx, 3H                                 ; 1001AF40 _ F7. C2, 00000003
        jz      ?_3213                                  ; 1001AF46 _ 74, 13
?_3212: mov     cl, byte [edx]                          ; 1001AF48 _ 8A. 0A
        inc     edx                                     ; 1001AF4A _ 42
        cmp     cl, bl                                  ; 1001AF4B _ 38. D9
        jz      ?_3209                                  ; 1001AF4D _ 74, D1
        test    cl, cl                                  ; 1001AF4F _ 84. C9
        jz      ?_3216                                  ; 1001AF51 _ 74, 51
        test    edx, 3H                                 ; 1001AF53 _ F7. C2, 00000003
        jnz     ?_3212                                  ; 1001AF59 _ 75, ED
?_3213: or      ebx, eax                                ; 1001AF5B _ 0B. D8
        push    edi                                     ; 1001AF5D _ 57
        mov     eax, ebx                                ; 1001AF5E _ 8B. C3
        shl     ebx, 16                                 ; 1001AF60 _ C1. E3, 10
        push    esi                                     ; 1001AF63 _ 56
        or      ebx, eax                                ; 1001AF64 _ 0B. D8
?_3214: mov     ecx, dword [edx]                        ; 1001AF66 _ 8B. 0A
        mov     edi, 2130640639                         ; 1001AF68 _ BF, 7EFEFEFF
        mov     eax, ecx                                ; 1001AF6D _ 8B. C1
        mov     esi, edi                                ; 1001AF6F _ 8B. F7
        xor     ecx, ebx                                ; 1001AF71 _ 33. CB
        add     esi, eax                                ; 1001AF73 _ 03. F0
        add     edi, ecx                                ; 1001AF75 _ 03. F9
        xor     ecx, 0FFFFFFFFH                         ; 1001AF77 _ 83. F1, FF
        xor     eax, 0FFFFFFFFH                         ; 1001AF7A _ 83. F0, FF
        xor     ecx, edi                                ; 1001AF7D _ 33. CF
        xor     eax, esi                                ; 1001AF7F _ 33. C6
        add     edx, 4                                  ; 1001AF81 _ 83. C2, 04
        and     ecx, 81010100H                          ; 1001AF84 _ 81. E1, 81010100
        jnz     ?_3217                                  ; 1001AF8A _ 75, 1C
        and     eax, 81010100H                          ; 1001AF8C _ 25, 81010100
        jz      ?_3214                                  ; 1001AF91 _ 74, D3
        and     eax, 1010100H                           ; 1001AF93 _ 25, 01010100
        jnz     ?_3215                                  ; 1001AF98 _ 75, 08
        and     esi, 80000000H                          ; 1001AF9A _ 81. E6, 80000000
        jnz     ?_3214                                  ; 1001AFA0 _ 75, C4
?_3215: pop     esi                                     ; 1001AFA2 _ 5E
        pop     edi                                     ; 1001AFA3 _ 5F
?_3216: pop     ebx                                     ; 1001AFA4 _ 5B
        xor     eax, eax                                ; 1001AFA5 _ 33. C0
        ret                                             ; 1001AFA7 _ C3

