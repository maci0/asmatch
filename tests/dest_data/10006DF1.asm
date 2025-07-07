; ---- 10006DF1 ----
?_0704: ; Local function
        mov     ecx, dword [eax]                        ; 10006DF1 _ 8B. 08
        add     edx, 4                                  ; 10006DF3 _ 83. C2, 04
        inc     ecx                                     ; 10006DF6 _ 41
        add     esi, -4                                 ; 10006DF7 _ 83. C6, FC
        mov     dword [eax], ecx                        ; 10006DFA _ 89. 08
        mov     dword [edx-4H], eax                     ; 10006DFC _ 89. 42, FC
        mov     dword [ebp+0CH], edx                    ; 10006DFF _ 89. 55, 0C
        mov     dword [ebp+8H], esi                     ; 10006E02 _ 89. 75, 08
        mov     edi, dword [ebp+0CH]                    ; 10006E05 _ 8B. 7D, 0C
        mov     ebx, dword [ebp+8H]                     ; 10006E08 _ 8B. 5D, 08
        xor     eax, eax                                ; 10006E0B _ 33. C0
        lea     ecx, [edi+edi*2]                        ; 10006E0D _ 8D. 0C 7F
        and     ecx, 03H                                ; 10006E10 _ 83. E1, 03
        sub     ebx, ecx                                ; 10006E13 _ 2B. D9
        jle     ?_0705                                  ; 10006E15 _ 7E, 0C
        rep stosb                                       ; 10006E17 _ F3: AA
        mov     ecx, ebx                                ; 10006E19 _ 8B. CB
        and     ebx, 03H                                ; 10006E1B _ 83. E3, 03
        shr     ecx, 2                                  ; 10006E1E _ C1. E9, 02
        rep stosd                                       ; 10006E21 _ F3: AB
?_0705: add     ecx, ebx                                ; 10006E23 _ 03. CB
        rep stosb                                       ; 10006E25 _ F3: AA
        pop     edi                                     ; 10006E27 _ 5F
        pop     esi                                     ; 10006E28 _ 5E
        mov     eax, edx                                ; 10006E29 _ 8B. C2
        pop     ebx                                     ; 10006E2B _ 5B
        pop     ebp                                     ; 10006E2C _ 5D
        ret                                             ; 10006E2D _ C3

        nop                                             ; 10006E2E _ 90
        nop                                             ; 10006E2F _ 90
?_0706: mov     edx, dword [esp+8H]                     ; 10006E30 _ 8B. 54 24, 08
        push    esi                                     ; 10006E34 _ 56
        lea     ecx, [edx-4H]                           ; 10006E35 _ 8D. 4A, FC
        test    ecx, ecx                                ; 10006E38 _ 85. C9
        jz      ?_0710                                  ; 10006E3A _ 74, 64
        mov     eax, dword [ecx]                        ; 10006E3C _ 8B. 01
        test    eax, eax                                ; 10006E3E _ 85. C0
        jz      ?_0710                                  ; 10006E40 _ 74, 5E
        lea     esi, [eax+10H]                          ; 10006E42 _ 8D. 70, 10
        cmp     edx, esi                                ; 10006E45 _ 3B. D6
        jc      ?_0710                                  ; 10006E47 _ 72, 57
        mov     esi, dword [eax+8H]                     ; 10006E49 _ 8B. 70, 08
        imul    esi, dword [eax+4H]                     ; 10006E4C _ 0F AF. 70, 04
        lea     esi, [esi+eax+10H]                      ; 10006E50 _ 8D. 74 06, 10
        cmp     edx, esi                                ; 10006E54 _ 3B. D6
        jnc     ?_0710                                  ; 10006E56 _ 73, 48
        mov     dword [ecx], 0                          ; 10006E58 _ C7. 01, 00000000
        mov     ecx, dword [eax]                        ; 10006E5E _ 8B. 08
        dec     ecx                                     ; 10006E60 _ 49
        mov     dword [eax], ecx                        ; 10006E61 _ 89. 08
        jnz     ?_0711                                  ; 10006E63 _ 75, 52
        mov     ecx, dword [esp+8H]                     ; 10006E65 _ 8B. 4C 24, 08
        mov     edx, dword [ecx]                        ; 10006E69 _ 8B. 11
        cmp     eax, edx                                ; 10006E6B _ 3B. C2
        jnz     ?_0707                                  ; 10006E6D _ 75, 10
        mov     edx, dword [eax+0CH]                    ; 10006E6F _ 8B. 50, 0C
        push    eax                                     ; 10006E72 _ 50
        mov     dword [ecx], edx                        ; 10006E73 _ 89. 11
        call    ?_0663                                  ; 10006E75 _ E8, FFFFF9A6
        add     esp, 4                                  ; 10006E7A _ 83. C4, 04
        pop     esi                                     ; 10006E7D _ 5E
        ret                                             ; 10006E7E _ C3

?_0707: mov     ecx, dword [edx+0CH]                    ; 10006E7F _ 8B. 4A, 0C
        cmp     ecx, eax                                ; 10006E82 _ 3B. C8
        jz      ?_0709                                  ; 10006E84 _ 74, 09
?_0708: mov     edx, ecx                                ; 10006E86 _ 8B. D1
        mov     ecx, dword [edx+0CH]                    ; 10006E88 _ 8B. 4A, 0C
        cmp     ecx, eax                                ; 10006E8B _ 3B. C8
        jnz     ?_0708                                  ; 10006E8D _ 75, F7
?_0709: mov     ecx, dword [eax+0CH]                    ; 10006E8F _ 8B. 48, 0C
        push    eax                                     ; 10006E92 _ 50
        mov     dword [edx+0CH], ecx                    ; 10006E93 _ 89. 4A, 0C
        call    ?_0663                                  ; 10006E96 _ E8, FFFFF985
        add     esp, 4                                  ; 10006E9B _ 83. C4, 04
        pop     esi                                     ; 10006E9E _ 5E
        ret                                             ; 10006E9F _ C3

?_0710: push    ?_5159                                  ; 10006EA0 _ 68, 10028B94(d)
        push    633                                     ; 10006EA5 _ 68, 00000279
        push    ?_5141                                  ; 10006EAA _ 68, 10028888(d)
        call    ?_0258                                  ; 10006EAF _ E8, FFFFC66C
        add     esp, 12                                 ; 10006EB4 _ 83. C4, 0C
?_0711: pop     esi                                     ; 10006EB7 _ 5E
        ret                                             ; 10006EB8 _ C3

        nop                                             ; 10006EB9 _ 90
        nop                                             ; 10006EBA _ 90
        nop                                             ; 10006EBB _ 90
        nop                                             ; 10006EBC _ 90
        nop                                             ; 10006EBD _ 90
        nop                                             ; 10006EBE _ 90
        nop                                             ; 10006EBF _ 90

