; ---- 10019ED0 ----
?_3002: ; Local function
        sub     esp, 32                                 ; 10019ED0 _ 83. EC, 20
        push    ebx                                     ; 10019ED3 _ 53
        mov     ecx, dword [?_5693]                     ; 10019ED4 _ 8B. 0D, 101DE450(d)
        push    ebp                                     ; 10019EDA _ 55
        push    esi                                     ; 10019EDB _ 56
        push    edi                                     ; 10019EDC _ 57
        mov     edi, dword [esp+38H]                    ; 10019EDD _ 8B. 7C 24, 38
        mov     eax, edi                                ; 10019EE1 _ 8B. C7
        xor     ebp, ebp                                ; 10019EE3 _ 33. ED
        shl     eax, 6                                  ; 10019EE5 _ C1. E0, 06
        add     ecx, eax                                ; 10019EE8 _ 03. C8
        mov     eax, edi                                ; 10019EEA _ 8B. C7
        add     eax, ecx                                ; 10019EEC _ 03. C1
        xor     esi, esi                                ; 10019EEE _ 33. F6
        mov     dword [esp+10H], 8                      ; 10019EF0 _ C7. 44 24, 10, 00000008
        mov     dword [esp+14H], 12                     ; 10019EF8 _ C7. 44 24, 14, 0000000C
        mov     al, byte [eax]                          ; 10019F00 _ 8A. 00
        mov     dword [esp+18H], 18                     ; 10019F02 _ C7. 44 24, 18, 00000012
        cmp     al, 9                                   ; 10019F0A _ 3C, 09
        mov     dword [esp+1CH], 25                     ; 10019F0C _ C7. 44 24, 1C, 00000019
        mov     dword [esp+20H], 34                     ; 10019F14 _ C7. 44 24, 20, 00000022
        mov     dword [esp+24H], 32                     ; 10019F1C _ C7. 44 24, 24, 00000020
        mov     dword [esp+28H], 39                     ; 10019F24 _ C7. 44 24, 28, 00000027
        mov     dword [esp+2CH], ebp                    ; 10019F2C _ 89. 6C 24, 2C
        jnz     ?_3003                                  ; 10019F30 _ 75, 0C
        mov     eax, dword [esp+3CH]                    ; 10019F32 _ 8B. 44 24, 3C
        pop     edi                                     ; 10019F36 _ 5F
        pop     esi                                     ; 10019F37 _ 5E
        pop     ebp                                     ; 10019F38 _ 5D
        pop     ebx                                     ; 10019F39 _ 5B
        add     esp, 32                                 ; 10019F3A _ 83. C4, 20
        ret                                             ; 10019F3D _ C3

