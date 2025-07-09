; ---- 1001AFF0 ----
?_3222: ; Local function
        mov     ecx, dword [esp+8H]                     ; 1001AFF0 _ 8B. 4C 24, 08
        push    edi                                     ; 1001AFF4 _ 57
        push    ebx                                     ; 1001AFF5 _ 53
        push    esi                                     ; 1001AFF6 _ 56
        mov     dl, byte [ecx]                          ; 1001AFF7 _ 8A. 11
        mov     edi, dword [esp+10H]                    ; 1001AFF9 _ 8B. 7C 24, 10
        test    dl, dl                                  ; 1001AFFD _ 84. D2
        jz      ?_3231                                  ; 1001AFFF _ 74, 69
        mov     dh, byte [ecx+1H]                       ; 1001B001 _ 8A. 71, 01
        test    dh, dh                                  ; 1001B004 _ 84. F6
        jz      ?_3229                                  ; 1001B006 _ 74, 4F
?_3223: mov     esi, edi                                ; 1001B008 _ 8B. F7
        mov     ecx, dword [esp+14H]                    ; 1001B00A _ 8B. 4C 24, 14
        mov     al, byte [edi]                          ; 1001B00E _ 8A. 07
        inc     esi                                     ; 1001B010 _ 46
        cmp     al, dl                                  ; 1001B011 _ 38. D0
        jz      ?_3227                                  ; 1001B013 _ 74, 15
        test    al, al                                  ; 1001B015 _ 84. C0
        jz      ?_3226                                  ; 1001B017 _ 74, 0B
?_3224: mov     al, byte [esi]                          ; 1001B019 _ 8A. 06
        inc     esi                                     ; 1001B01B _ 46
?_3225: cmp     al, dl                                  ; 1001B01C _ 38. D0
        jz      ?_3227                                  ; 1001B01E _ 74, 0A
        test    al, al                                  ; 1001B020 _ 84. C0
        jnz     ?_3224                                  ; 1001B022 _ 75, F5
?_3226: pop     esi                                     ; 1001B024 _ 5E
        pop     ebx                                     ; 1001B025 _ 5B
        pop     edi                                     ; 1001B026 _ 5F
        xor     eax, eax                                ; 1001B027 _ 33. C0
        ret                                             ; 1001B029 _ C3

?_3227: mov     al, byte [esi]                          ; 1001B02A _ 8A. 06
        inc     esi                                     ; 1001B02C _ 46
        cmp     al, dh                                  ; 1001B02D _ 38. F0
        jnz     ?_3225                                  ; 1001B02F _ 75, EB
        lea     edi, [esi-1H]                           ; 1001B031 _ 8D. 7E, FF
?_3228: mov     ah, byte [ecx+2H]                       ; 1001B034 _ 8A. 61, 02
        test    ah, ah                                  ; 1001B037 _ 84. E4
        jz      ?_3230                                  ; 1001B039 _ 74, 28
        mov     al, byte [esi]                          ; 1001B03B _ 8A. 06
        add     esi, 2                                  ; 1001B03D _ 83. C6, 02
        cmp     al, ah                                  ; 1001B040 _ 38. E0
        jnz     ?_3223                                  ; 1001B042 _ 75, C4
        mov     al, byte [ecx+3H]                       ; 1001B044 _ 8A. 41, 03
        test    al, al                                  ; 1001B047 _ 84. C0
        jz      ?_3230                                  ; 1001B049 _ 74, 18
        mov     ah, byte [esi-1H]                       ; 1001B04B _ 8A. 66, FF
        add     ecx, 2                                  ; 1001B04E _ 83. C1, 02
        cmp     al, ah                                  ; 1001B051 _ 38. E0
        jz      ?_3228                                  ; 1001B053 _ 74, DF
        jmp     ?_3223                                  ; 1001B055 _ EB, B1

?_3229: xor     eax, eax                                ; 1001B057 _ 33. C0
        pop     esi                                     ; 1001B059 _ 5E
        pop     ebx                                     ; 1001B05A _ 5B
        pop     edi                                     ; 1001B05B _ 5F
        mov     al, dl                                  ; 1001B05C _ 8A. C2
        jmp     ?_3211                                  ; 1001B05E _ E9, FFFFFED3

?_3230: lea     eax, [edi-1H]                           ; 1001B063 _ 8D. 47, FF
        pop     esi                                     ; 1001B066 _ 5E
        pop     ebx                                     ; 1001B067 _ 5B
        pop     edi                                     ; 1001B068 _ 5F
        ret                                             ; 1001B069 _ C3
