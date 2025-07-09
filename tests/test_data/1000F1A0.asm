; ---- 1000F1A0 ----
?_1719: ; Local function
        push    ecx                                     ; 1000F1A0 _ 51
        push    ebx                                     ; 1000F1A1 _ 53
        push    ebp                                     ; 1000F1A2 _ 55
        mov     eax, dword [?_5528]                     ; 1000F1A3 _ A1, 1003540C(d)
        push    esi                                     ; 1000F1A8 _ 56
        mov     esi, dword [esp+14H]                    ; 1000F1A9 _ 8B. 74 24, 14
        push    edi                                     ; 1000F1AD _ 57
        mov     byte [esp+13H], 2                       ; 1000F1AE _ C6. 44 24, 13, 02
        xor     ebp, ebp                                ; 1000F1B3 _ 33. ED
        mov     ecx, dword [esi+14H]                    ; 1000F1B5 _ 8B. 4E, 14
        xor     ebx, ebx                                ; 1000F1B8 _ 33. DB
        push    ecx                                     ; 1000F1BA _ 51
        push    1                                       ; 1000F1BB _ 6A, 01
        push    1                                       ; 1000F1BD _ 6A, 01
        mov     dword [esi+10H], eax                    ; 1000F1BF _ 89. 46, 10
        call    ?_2609                                  ; 1000F1C2 _ E8, 00007F19
        mov     edi, eax                                ; 1000F1C7 _ 8B. F8
        add     esp, 12                                 ; 1000F1C9 _ 83. C4, 0C
        test    edi, edi                                ; 1000F1CC _ 85. FF
        je      ?_1725                                  ; 1000F1CE _ 0F 84, 000000F6
        xor     edx, edx                                ; 1000F1D4 _ 33. D2
        mov     dx, word [esi+1AH]                      ; 1000F1D6 _ 66: 8B. 56, 1A
        push    edx                                     ; 1000F1DA _ 52
        call    ?_2310                                  ; 1000F1DB _ E8, 00005D00
        add     esp, 4                                  ; 1000F1E0 _ 83. C4, 04
        test    eax, eax                                ; 1000F1E3 _ 85. C0
        jz      ?_1720                                  ; 1000F1E5 _ 74, 29
        mov     cl, byte [esi+1CH]                      ; 1000F1E7 _ 8A. 4E, 1C
        test    cl, cl                                  ; 1000F1EA _ 84. C9
        jnz     ?_1720                                  ; 1000F1EC _ 75, 22
        xor     ecx, ecx                                ; 1000F1EE _ 33. C9
        xor     edx, edx                                ; 1000F1F0 _ 33. D2
        mov     cl, byte [eax+42H]                      ; 1000F1F2 _ 8A. 48, 42
        mov     dl, byte [esi+19H]                      ; 1000F1F5 _ 8A. 56, 19
        xor     eax, eax                                ; 1000F1F8 _ 33. C0
        push    ecx                                     ; 1000F1FA _ 51
        mov     al, byte [esi+18H]                      ; 1000F1FB _ 8A. 46, 18
        mov     ecx, dword [edi+71H]                    ; 1000F1FE _ 8B. 4F, 71
        push    edx                                     ; 1000F201 _ 52
        push    eax                                     ; 1000F202 _ 50
        push    ecx                                     ; 1000F203 _ 51
        call    ?_2322                                  ; 1000F204 _ E8, 00005DE7
        add     esp, 16                                 ; 1000F209 _ 83. C4, 10
        test    eax, eax                                ; 1000F20C _ 85. C0
        jz      ?_1721                                  ; 1000F20E _ 74, 05
?_1720: mov     ebx, 1                                  ; 1000F210 _ BB, 00000001
?_1721: mov     al, byte [esi+1CH]                      ; 1000F215 _ 8A. 46, 1C
        test    al, al                                  ; 1000F218 _ 84. C0
        jz      ?_1722                                  ; 1000F21A _ 74, 2F
        mov     ecx, dword [edi+71H]                    ; 1000F21C _ 8B. 4F, 71
        xor     edx, edx                                ; 1000F21F _ 33. D2
        mov     dl, byte [esi+19H]                      ; 1000F221 _ 8A. 56, 19
        xor     eax, eax                                ; 1000F224 _ 33. C0
        mov     al, byte [esi+18H]                      ; 1000F226 _ 8A. 46, 18
        push    edx                                     ; 1000F229 _ 52
        push    eax                                     ; 1000F22A _ 50
        push    ecx                                     ; 1000F22B _ 51
        call    ?_2314                                  ; 1000F22C _ E8, 00005CFF
        mov     ebp, eax                                ; 1000F231 _ 8B. E8
        add     esp, 12                                 ; 1000F233 _ 83. C4, 0C
        test    ebp, ebp                                ; 1000F236 _ 85. ED
        jz      ?_1723                                  ; 1000F238 _ 74, 49
        cmp     dword [ebp+10H], -1                     ; 1000F23A _ 83. 7D, 10, FF
        jz      ?_1723                                  ; 1000F23E _ 74, 43
        pop     edi                                     ; 1000F240 _ 5F
        pop     esi                                     ; 1000F241 _ 5E
        pop     ebp                                     ; 1000F242 _ 5D
        mov     eax, 1                                  ; 1000F243 _ B8, 00000001
        pop     ebx                                     ; 1000F248 _ 5B
        pop     ecx                                     ; 1000F249 _ 59
        ret                                             ; 1000F24A _ C3

?_1722: cmp     dword [esi+1DH], -1                     ; 1000F24B _ 83. 7E, 1D, FF
        jz      ?_1723                                  ; 1000F24F _ 74, 32
        mov     ecx, dword [edi+71H]                    ; 1000F251 _ 8B. 4F, 71
        xor     edx, edx                                ; 1000F254 _ 33. D2
        mov     dl, byte [esi+19H]                      ; 1000F256 _ 8A. 56, 19
        xor     eax, eax                                ; 1000F259 _ 33. C0
        mov     al, byte [esi+18H]                      ; 1000F25B _ 8A. 46, 18
        push    edx                                     ; 1000F25E _ 52
        push    eax                                     ; 1000F25F _ 50
        push    ecx                                     ; 1000F260 _ 51
        call    ?_2314                                  ; 1000F261 _ E8, 00005CCA
        mov     ecx, dword [esp+28H]                    ; 1000F266 _ 8B. 4C 24, 28
        add     esp, 12                                 ; 1000F26A _ 83. C4, 0C
        test    ecx, ecx                                ; 1000F26D _ 85. C9
        jz      ?_1726                                  ; 1000F26F _ 74, 6E
        pop     edi                                     ; 1000F271 _ 5F
        pop     esi                                     ; 1000F272 _ 5E
        mov     dword [ecx+6H], eax                     ; 1000F273 _ 89. 41, 06
        pop     ebp                                     ; 1000F276 _ 5D
        mov     byte [ecx], 1                           ; 1000F277 _ C6. 01, 01
        mov     byte [ecx+1H], 5                        ; 1000F27A _ C6. 41, 01, 05
        xor     eax, eax                                ; 1000F27E _ 33. C0
        pop     ebx                                     ; 1000F280 _ 5B
        pop     ecx                                     ; 1000F281 _ 59
        ret                                             ; 1000F282 _ C3

?_1723: test    ebx, ebx                                ; 1000F283 _ 85. DB
        jz      ?_1724                                  ; 1000F285 _ 74, 27
        xor     edx, edx                                ; 1000F287 _ 33. D2
        xor     eax, eax                                ; 1000F289 _ 33. C0
        mov     dl, byte [esi+1CH]                      ; 1000F28B _ 8A. 56, 1C
        mov     ax, word [esi+1AH]                      ; 1000F28E _ 66: 8B. 46, 1A
        push    edx                                     ; 1000F292 _ 52
        xor     ecx, ecx                                ; 1000F293 _ 33. C9
        mov     cl, byte [esi+19H]                      ; 1000F295 _ 8A. 4E, 19
        xor     edx, edx                                ; 1000F298 _ 33. D2
        mov     dl, byte [esi+18H]                      ; 1000F29A _ 8A. 56, 18
        push    eax                                     ; 1000F29D _ 50
        mov     eax, dword [edi+71H]                    ; 1000F29E _ 8B. 47, 71
        push    ecx                                     ; 1000F2A1 _ 51
        push    edx                                     ; 1000F2A2 _ 52
        push    eax                                     ; 1000F2A3 _ 50
        call    ?_2331                                  ; 1000F2A4 _ E8, 00005DF7
        add     esp, 20                                 ; 1000F2A9 _ 83. C4, 14
        mov     ebp, eax                                ; 1000F2AC _ 8B. E8
?_1724: test    ebp, ebp                                ; 1000F2AE _ 85. ED
        jz      ?_1725                                  ; 1000F2B0 _ 74, 18
        mov     ecx, dword [edi+1H]                     ; 1000F2B2 _ 8B. 4F, 01
        mov     byte [esp+13H], 1                       ; 1000F2B5 _ C6. 44 24, 13, 01
        mov     dword [ebp+4H], ecx                     ; 1000F2BA _ 89. 4D, 04
        mov     al, byte [esi+1CH]                      ; 1000F2BD _ 8A. 46, 1C
        test    al, al                                  ; 1000F2C0 _ 84. C0
        jz      ?_1725                                  ; 1000F2C2 _ 74, 06
        mov     edx, dword [esi+1DH]                    ; 1000F2C4 _ 8B. 56, 1D
        mov     dword [ebp+10H], edx                    ; 1000F2C7 _ 89. 55, 10
?_1725: mov     eax, dword [esp+1CH]                    ; 1000F2CA _ 8B. 44 24, 1C
        test    eax, eax                                ; 1000F2CE _ 85. C0
        jz      ?_1726                                  ; 1000F2D0 _ 74, 0D
        mov     cl, byte [esp+13H]                      ; 1000F2D2 _ 8A. 4C 24, 13
        mov     byte [eax+1H], 5                        ; 1000F2D6 _ C6. 40, 01, 05
        mov     byte [eax], cl                          ; 1000F2DA _ 88. 08
        mov     dword [eax+6H], ebp                     ; 1000F2DC _ 89. 68, 06
?_1726: pop     edi                                     ; 1000F2DF _ 5F
        pop     esi                                     ; 1000F2E0 _ 5E
        pop     ebp                                     ; 1000F2E1 _ 5D
        xor     eax, eax                                ; 1000F2E2 _ 33. C0
        pop     ebx                                     ; 1000F2E4 _ 5B
        pop     ecx                                     ; 1000F2E5 _ 59
        ret                                             ; 1000F2E6 _ C3

        nop                                             ; 1000F2E7 _ 90
        nop                                             ; 1000F2E8 _ 90
        nop                                             ; 1000F2E9 _ 90
        nop                                             ; 1000F2EA _ 90
        nop                                             ; 1000F2EB _ 90
        nop                                             ; 1000F2EC _ 90
        nop                                             ; 1000F2ED _ 90
        nop                                             ; 1000F2EE _ 90
        nop                                             ; 1000F2EF _ 90
