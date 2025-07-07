; ---- 100089B0 ----
?_0874: ; Local function
        push    esi                                     ; 100089B0 _ 56
        mov     esi, dword [esp+8H]                     ; 100089B1 _ 8B. 74 24, 08
        push    edi                                     ; 100089B5 _ 57
        push    esi                                     ; 100089B6 _ 56
        call    ?_0871                                  ; 100089B7 _ E8, FFFFFF74
        mov     eax, dword [esp+1CH]                    ; 100089BC _ 8B. 44 24, 1C
        add     esp, 4                                  ; 100089C0 _ 83. C4, 04
        test    eax, eax                                ; 100089C3 _ 85. C0
        mov     eax, dword [esp+14H]                    ; 100089C5 _ 8B. 44 24, 14
        mov     dword [esi+16ACH], 8                    ; 100089C9 _ C7. 86, 000016AC, 00000008
        jz      ?_0875                                  ; 100089D3 _ 74, 49
        mov     ecx, dword [esi+14H]                    ; 100089D5 _ 8B. 4E, 14
        mov     edx, dword [esi+8H]                     ; 100089D8 _ 8B. 56, 08
        mov     byte [ecx+edx], al                      ; 100089DB _ 88. 04 11
        mov     edx, dword [esi+14H]                    ; 100089DE _ 8B. 56, 14
        mov     edi, dword [esi+8H]                     ; 100089E1 _ 8B. 7E, 08
        inc     edx                                     ; 100089E4 _ 42
        mov     dword [esi+14H], edx                    ; 100089E5 _ 89. 56, 14
        mov     ecx, edx                                ; 100089E8 _ 8B. CA
        xor     edx, edx                                ; 100089EA _ 33. D2
        mov     dl, ah                                  ; 100089EC _ 8A. D4
        mov     byte [ecx+edi], dl                      ; 100089EE _ 88. 14 39
        mov     ecx, dword [esi+14H]                    ; 100089F1 _ 8B. 4E, 14
        mov     edi, dword [esi+8H]                     ; 100089F4 _ 8B. 7E, 08
        mov     dl, al                                  ; 100089F7 _ 8A. D0
        inc     ecx                                     ; 100089F9 _ 41
        not     dl                                      ; 100089FA _ F6. D2
        mov     dword [esi+14H], ecx                    ; 100089FC _ 89. 4E, 14
        mov     byte [ecx+edi], dl                      ; 100089FF _ 88. 14 39
        mov     edi, dword [esi+14H]                    ; 10008A02 _ 8B. 7E, 14
        mov     ecx, eax                                ; 10008A05 _ 8B. C8
        not     ecx                                     ; 10008A07 _ F7. D1
        xor     edx, edx                                ; 10008A09 _ 33. D2
        inc     edi                                     ; 10008A0B _ 47
        mov     dl, ch                                  ; 10008A0C _ 8A. D5
        mov     ecx, dword [esi+8H]                     ; 10008A0E _ 8B. 4E, 08
        mov     dword [esi+14H], edi                    ; 10008A11 _ 89. 7E, 14
        mov     byte [edi+ecx], dl                      ; 10008A14 _ 88. 14 0F
        mov     ecx, dword [esi+14H]                    ; 10008A17 _ 8B. 4E, 14
        inc     ecx                                     ; 10008A1A _ 41
        mov     dword [esi+14H], ecx                    ; 10008A1B _ 89. 4E, 14
?_0875: mov     edx, eax                                ; 10008A1E _ 8B. D0
        dec     eax                                     ; 10008A20 _ 48
        test    edx, edx                                ; 10008A21 _ 85. D2
        jz      ?_0877                                  ; 10008A23 _ 74, 1F
        lea     ecx, [eax+1H]                           ; 10008A25 _ 8D. 48, 01
        mov     eax, dword [esp+10H]                    ; 10008A28 _ 8B. 44 24, 10
        push    ebx                                     ; 10008A2C _ 53
?_0876: mov     edx, dword [esi+14H]                    ; 10008A2D _ 8B. 56, 14
        mov     edi, dword [esi+8H]                     ; 10008A30 _ 8B. 7E, 08
        mov     bl, byte [eax]                          ; 10008A33 _ 8A. 18
        mov     byte [edx+edi], bl                      ; 10008A35 _ 88. 1C 3A
        mov     ebx, dword [esi+14H]                    ; 10008A38 _ 8B. 5E, 14
        inc     ebx                                     ; 10008A3B _ 43
        inc     eax                                     ; 10008A3C _ 40
        dec     ecx                                     ; 10008A3D _ 49
        mov     dword [esi+14H], ebx                    ; 10008A3E _ 89. 5E, 14
        jnz     ?_0876                                  ; 10008A41 _ 75, EA
        pop     ebx                                     ; 10008A43 _ 5B
?_0877: pop     edi                                     ; 10008A44 _ 5F
        pop     esi                                     ; 10008A45 _ 5E
        ret                                             ; 10008A46 _ C3

        nop                                             ; 10008A47 _ 90
        nop                                             ; 10008A48 _ 90
        nop                                             ; 10008A49 _ 90
        nop                                             ; 10008A4A _ 90
        nop                                             ; 10008A4B _ 90
        nop                                             ; 10008A4C _ 90
        nop                                             ; 10008A4D _ 90
        nop                                             ; 10008A4E _ 90
        nop                                             ; 10008A4F _ 90
?_0878: push    esi                                     ; 10008A50 _ 56
        mov     esi, dword [esp+8H]                     ; 10008A51 _ 8B. 74 24, 08
        test    esi, esi                                ; 10008A55 _ 85. F6
        jnz     ?_0879                                  ; 10008A57 _ 75, 07
        mov     eax, 4294967194                         ; 10008A59 _ B8, FFFFFF9A
        pop     esi                                     ; 10008A5E _ 5E
        ret                                             ; 10008A5F _ C3

