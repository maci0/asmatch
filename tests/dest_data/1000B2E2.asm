; ---- 1000B2E2 ----
?_1171: ; Local function
        cmp     edx, 30                                 ; 1000B2E2 _ 83. FA, 1E
        jge     ?_1170                                  ; 1000B2E5 _ 7D, F1
        mov     cl, byte [esi+6H]                       ; 1000B2E7 _ 8A. 4E, 06
        lea     edx, [edx+edx*2]                        ; 1000B2EA _ 8D. 14 52
        shl     edx, 3                                  ; 1000B2ED _ C1. E2, 03
        mov     byte [esp+2CH], cl                      ; 1000B2F0 _ 88. 4C 24, 2C
        mov     al, byte [?_5702+edx]                   ; 1000B2F4 _ 8A. 82, 101DE5A8(d)
        cmp     cl, al                                  ; 1000B2FA _ 3A. C8
        jnz     ?_1170                                  ; 1000B2FC _ 75, DA
        mov     bl, byte [esi+5H]                       ; 1000B2FE _ 8A. 5E, 05
        cmp     bl, -1                                  ; 1000B301 _ 80. FB, FF
        je      ?_1174                                  ; 1000B304 _ 0F 84, 000000E8
        xor     esi, esi                                ; 1000B30A _ 33. F6
        mov     ecx, ?_5700                             ; 1000B30C _ B9, 101DE5A0(d)
?_1172: cmp     byte [ecx], bl                          ; 1000B311 _ 38. 19
        jz      ?_1173                                  ; 1000B313 _ 74, 16
        add     ecx, 24                                 ; 1000B315 _ 83. C1, 18
        inc     esi                                     ; 1000B318 _ 46
        cmp     ecx, ?_5735                             ; 1000B319 _ 81. F9, 101DE870(d)
        jl      ?_1172                                  ; 1000B31F _ 7C, F0
        pop     edi                                     ; 1000B321 _ 5F
        pop     esi                                     ; 1000B322 _ 5E
        pop     ebp                                     ; 1000B323 _ 5D
        xor     eax, eax                                ; 1000B324 _ 33. C0
        pop     ebx                                     ; 1000B326 _ 5B
        add     esp, 24                                 ; 1000B327 _ 83. C4, 18
        ret                                             ; 1000B32A _ C3

?_1173: cmp     esi, 30                                 ; 1000B32B _ 83. FE, 1E
        jge     ?_1170                                  ; 1000B32E _ 7D, A8
        lea     ebx, [esi+esi*2]                        ; 1000B330 _ 8D. 1C 76
        shl     ebx, 3                                  ; 1000B333 _ C1. E3, 03
        cmp     al, byte [?_5702+ebx]                   ; 1000B336 _ 3A. 83, 101DE5A8(d)
        jnz     ?_1170                                  ; 1000B33C _ 75, 9A
        and     eax, 0FFH                               ; 1000B33E _ 25, 000000FF
        lea     edi, [esp+10H]                          ; 1000B343 _ 8D. 7C 24, 10
        lea     ecx, [eax+eax*2]                        ; 1000B347 _ 8D. 0C 40
        mov     eax, dword [esp+2CH]                    ; 1000B34A _ 8B. 44 24, 2C
        lea     esi, [?_5234+ecx*8]                     ; 1000B34E _ 8D. 34 CD, 10029BB8(d)
        mov     ecx, 6                                  ; 1000B355 _ B9, 00000006
        rep movsd                                       ; 1000B35A _ F3: A5
        mov     esi, dword [esp+10H]                    ; 1000B35C _ 8B. 74 24, 10
        mov     ecx, eax                                ; 1000B360 _ 8B. C8
        and     ecx, 0FFH                               ; 1000B362 _ 81. E1, 000000FF
        cmp     esi, ecx                                ; 1000B368 _ 3B. F1
        jne     ?_1170                                  ; 1000B36A _ 0F 85, FFFFFF68
        mov     ecx, dword [esp+20H]                    ; 1000B370 _ 8B. 4C 24, 20
        test    ecx, ecx                                ; 1000B374 _ 85. C9
        je      ?_1170                                  ; 1000B376 _ 0F 84, FFFFFF5C
        mov     ecx, dword [?_5701+edx]                 ; 1000B37C _ 8B. 8A, 101DE5A4(d)
        or      esi, 0FFFFFFFFH                         ; 1000B382 _ 83. CE, FF
        cmp     ecx, esi                                ; 1000B385 _ 3B. CE
        jne     ?_1170                                  ; 1000B387 _ 0F 85, FFFFFF4B
        cmp     byte [?_5704+edx], 3                    ; 1000B38D _ 80. BA, 101DE5B0(d), 03
        jne     ?_1170                                  ; 1000B394 _ 0F 85, FFFFFF3E
        mov     edi, dword [?_5703+edx]                 ; 1000B39A _ 8B. BA, 101DE5AC(d)
        mov     ecx, 4                                  ; 1000B3A0 _ B9, 00000004
        cmp     edi, ecx                                ; 1000B3A5 _ 3B. F9
        jge     ?_1170                                  ; 1000B3A7 _ 0F 8D, FFFFFF2B
        cmp     dword [?_5701+ebx], esi                 ; 1000B3AD _ 39. B3, 101DE5A4(d)
        jne     ?_1170                                  ; 1000B3B3 _ 0F 85, FFFFFF1F
        cmp     dword [?_5703+ebx], ecx                 ; 1000B3B9 _ 39. 8B, 101DE5AC(d)
        jge     ?_1170                                  ; 1000B3BF _ 0F 8D, FFFFFF13
        mov     byte [ebp+168H], al                     ; 1000B3C5 _ 88. 85, 00000168
        mov     ecx, dword [?_5703+edx]                 ; 1000B3CB _ 8B. 8A, 101DE5AC(d)
        inc     ecx                                     ; 1000B3D1 _ 41
        pop     edi                                     ; 1000B3D2 _ 5F
        mov     dword [?_5703+edx], ecx                 ; 1000B3D3 _ 89. 8A, 101DE5AC(d)
        mov     eax, dword [?_5703+ebx]                 ; 1000B3D9 _ 8B. 83, 101DE5AC(d)
        inc     eax                                     ; 1000B3DF _ 40
        pop     esi                                     ; 1000B3E0 _ 5E
        mov     dword [?_5703+ebx], eax                 ; 1000B3E1 _ 89. 83, 101DE5AC(d)
        pop     ebp                                     ; 1000B3E7 _ 5D
        mov     eax, 1                                  ; 1000B3E8 _ B8, 00000001
        pop     ebx                                     ; 1000B3ED _ 5B
        add     esp, 24                                 ; 1000B3EE _ 83. C4, 18
        ret                                             ; 1000B3F1 _ C3

