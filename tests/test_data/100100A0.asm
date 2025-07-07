; ---- 100100A0 ----
?_1847: ; Local function
        push    ebx                                     ; 100100A0 _ 53
        mov     ebx, dword [esp+8H]                     ; 100100A1 _ 8B. 5C 24, 08
        push    esi                                     ; 100100A5 _ 56
        push    edi                                     ; 100100A6 _ 57
        mov     eax, dword [ebx+10H]                    ; 100100A7 _ 8B. 43, 10
        push    eax                                     ; 100100AA _ 50
        call    ?_2817                                  ; 100100AB _ E8, 000083F0
        mov     edi, eax                                ; 100100B0 _ 8B. F8
        add     esp, 4                                  ; 100100B2 _ 83. C4, 04
        test    edi, edi                                ; 100100B5 _ 85. FF
        jz      ?_1851                                  ; 100100B7 _ 74, 7D
        mov     esi, dword [ebx+14H]                    ; 100100B9 _ 8B. 73, 14
        test    esi, esi                                ; 100100BC _ 85. F6
        jl      ?_1851                                  ; 100100BE _ 7C, 76
        cmp     esi, 4                                  ; 100100C0 _ 83. FE, 04
        jg      ?_1851                                  ; 100100C3 _ 7F, 71
        mov     edx, dword [ebx+18H]                    ; 100100C5 _ 8B. 53, 18
        xor     ecx, ecx                                ; 100100C8 _ 33. C9
        mov     cl, byte [esi+edi+80H]                  ; 100100CA _ 8A. 8C 3E, 00000080
        add     edx, ecx                                ; 100100D1 _ 03. D1
        mov     dword [esp+10H], edx                    ; 100100D3 _ 89. 54 24, 10
        fild    dword [esp+10H]                         ; 100100D7 _ DB. 44 24, 10
        fcom    dword [?_4911]                          ; 100100DB _ D8. 15, 100256A4(d)
        fnstsw  ax                                      ; 100100E1 _ DF. E0
        test    ah, 01H                                 ; 100100E3 _ F6. C4, 01
        jz      ?_1848                                  ; 100100E6 _ 74, 0D
        fcom    dword [?_4921]                          ; 100100E8 _ D8. 15, 100256CC(d)
        fnstsw  ax                                      ; 100100EE _ DF. E0
        test    ah, 41H                                 ; 100100F0 _ F6. C4, 41
        jnz     ?_1849                                  ; 100100F3 _ 75, 27
?_1848: fcom    dword [?_4911]                          ; 100100F5 _ D8. 15, 100256A4(d)
        fnstsw  ax                                      ; 100100FB _ DF. E0
        test    ah, 01H                                 ; 100100FD _ F6. C4, 01
        jnz     ?_1850                                  ; 10010100 _ 75, 22
        fstp    st0                                     ; 10010102 _ DD. D8
        fld     dword [?_4911]                          ; 10010104 _ D9. 05, 100256A4(d)
        call    ?_3298                                  ; 1001010A _ E8, 0000B455
        mov     byte [esi+edi+80H], al                  ; 1001010F _ 88. 84 3E, 00000080
        pop     edi                                     ; 10010116 _ 5F
        pop     esi                                     ; 10010117 _ 5E
        xor     eax, eax                                ; 10010118 _ 33. C0
        pop     ebx                                     ; 1001011A _ 5B
        ret                                             ; 1001011B _ C3

?_1849: fstp    st0                                     ; 1001011C _ DD. D8
        fld     dword [?_4921]                          ; 1001011E _ D9. 05, 100256CC(d)
?_1850: call    ?_3298                                  ; 10010124 _ E8, 0000B43B
        mov     byte [esi+edi+80H], al                  ; 10010129 _ 88. 84 3E, 00000080
        pop     edi                                     ; 10010130 _ 5F
        pop     esi                                     ; 10010131 _ 5E
        xor     eax, eax                                ; 10010132 _ 33. C0
        pop     ebx                                     ; 10010134 _ 5B
        ret                                             ; 10010135 _ C3

