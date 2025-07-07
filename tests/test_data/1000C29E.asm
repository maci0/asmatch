; ---- 1000C29E ----
?_1295: ; Local function
        mov     eax, dword [esp+14H]                    ; 1000C29E _ 8B. 44 24, 14
        push    255                                     ; 1000C2A2 _ 68, 000000FF
        push    0                                       ; 1000C2A7 _ 6A, 00
        push    6                                       ; 1000C2A9 _ 6A, 06
        mov     ecx, dword [eax+5DH]                    ; 1000C2AB _ 8B. 48, 5D
        push    2                                       ; 1000C2AE _ 6A, 02
        push    ecx                                     ; 1000C2B0 _ 51
        call    ?_2482                                  ; 1000C2B1 _ E8, 0000A1AA
        mov     ecx, dword [esp+20H]                    ; 1000C2B6 _ 8B. 4C 24, 20
        mov     edx, dword [?_5380]                     ; 1000C2BA _ 8B. 15, 10030B6C(d)
        add     esp, 20                                 ; 1000C2C0 _ 83. C4, 14
        mov     dword [ecx+14H], edx                    ; 1000C2C3 _ 89. 51, 14
        mov     edx, dword [ecx+8H]                     ; 1000C2C6 _ 8B. 51, 08
        mov     dword [edi+esi*8+0CH], edx              ; 1000C2C9 _ 89. 54 F7, 0C
        mov     edx, dword [ecx+10H]                    ; 1000C2CD _ 8B. 51, 10
        test    eax, eax                                ; 1000C2D0 _ 85. C0
        mov     dword [edi+esi*8+10H], edx              ; 1000C2D2 _ 89. 54 F7, 10
        jz      ?_1296                                  ; 1000C2D6 _ 74, 12
        mov     ecx, dword [ecx+8H]                     ; 1000C2D8 _ 8B. 49, 08
        mov     edx, dword [eax+2H]                     ; 1000C2DB _ 8B. 50, 02
        push    2                                       ; 1000C2DE _ 6A, 02
        push    ecx                                     ; 1000C2E0 _ 51
        push    edx                                     ; 1000C2E1 _ 52
        call    ?_2564                                  ; 1000C2E2 _ E8, 0000A9E9
        add     esp, 12                                 ; 1000C2E7 _ 83. C4, 0C
?_1296: xor     eax, eax                                ; 1000C2EA _ 33. C0
        mov     al, byte [?_5532]                       ; 1000C2EC _ A0, 10035439(d)
        push    eax                                     ; 1000C2F1 _ 50
        call    ?_2440                                  ; 1000C2F2 _ E8, 00009C79
        add     esp, 4                                  ; 1000C2F7 _ 83. C4, 04
        mov     eax, 1                                  ; 1000C2FA _ B8, 00000001
        pop     edi                                     ; 1000C2FF _ 5F
        pop     esi                                     ; 1000C300 _ 5E
        ret                                             ; 1000C301 _ C3

        nop                                             ; 1000C302 _ 90
        nop                                             ; 1000C303 _ 90
        nop                                             ; 1000C304 _ 90
        nop                                             ; 1000C305 _ 90
        nop                                             ; 1000C306 _ 90
        nop                                             ; 1000C307 _ 90
        nop                                             ; 1000C308 _ 90
        nop                                             ; 1000C309 _ 90
        nop                                             ; 1000C30A _ 90
        nop                                             ; 1000C30B _ 90
        nop                                             ; 1000C30C _ 90
        nop                                             ; 1000C30D _ 90
        nop                                             ; 1000C30E _ 90
        nop                                             ; 1000C30F _ 90
?_1297: push    ebx                                     ; 1000C310 _ 53
        mov     ebx, dword [esp+8H]                     ; 1000C311 _ 8B. 5C 24, 08
        push    esi                                     ; 1000C315 _ 56
        push    edi                                     ; 1000C316 _ 57
        mov     edi, dword [esp+14H]                    ; 1000C317 _ 8B. 7C 24, 14
        mov     ecx, dword [ebx+8H]                     ; 1000C31B _ 8B. 4B, 08
        xor     esi, esi                                ; 1000C31E _ 33. F6
        lea     eax, [edi+0CH]                          ; 1000C320 _ 8D. 47, 0C
?_1298: cmp     dword [eax], ecx                        ; 1000C323 _ 39. 08
        jz      ?_1299                                  ; 1000C325 _ 74, 0F
        inc     esi                                     ; 1000C327 _ 46
        add     eax, 8                                  ; 1000C328 _ 83. C0, 08
        cmp     esi, 6                                  ; 1000C32B _ 83. FE, 06
        jl      ?_1298                                  ; 1000C32E _ 7C, F3
        pop     edi                                     ; 1000C330 _ 5F
        pop     esi                                     ; 1000C331 _ 5E
        xor     eax, eax                                ; 1000C332 _ 33. C0
        pop     ebx                                     ; 1000C334 _ 5B
        ret                                             ; 1000C335 _ C3

