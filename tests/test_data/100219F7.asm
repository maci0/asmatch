; ---- 100219F7 ----
?_4492: ; Local function
        push    ebp                                     ; 100219F7 _ 55
        mov     ebp, esp                                ; 100219F8 _ 8B. EC
        push    ecx                                     ; 100219FA _ 51
        mov     edx, dword [ebp+0CH]                    ; 100219FB _ 8B. 55, 0C
        push    ebx                                     ; 100219FE _ 53
        push    esi                                     ; 100219FF _ 56
        push    edi                                     ; 10021A00 _ 57
        mov     ax, word [edx+6H]                       ; 10021A01 _ 66: 8B. 42, 06
        mov     edi, 2047                               ; 10021A05 _ BF, 000007FF
        mov     ecx, eax                                ; 10021A0A _ 8B. C8
        and     eax, 8000H                              ; 10021A0C _ 25, 00008000
        shr     ecx, 4                                  ; 10021A11 _ C1. E9, 04
        and     ecx, edi                                ; 10021A14 _ 23. CF
        mov     dword [ebp+0CH], eax                    ; 10021A16 _ 89. 45, 0C
        mov     eax, dword [edx+4H]                     ; 10021A19 _ 8B. 42, 04
        mov     edx, dword [edx]                        ; 10021A1C _ 8B. 12
        movzx   ebx, cx                                 ; 10021A1E _ 0F B7. D9
        mov     esi, 2147483648                         ; 10021A21 _ BE, 80000000
        and     eax, 0FFFFFH                            ; 10021A26 _ 25, 000FFFFF
        test    ebx, ebx                                ; 10021A2B _ 85. DB
        mov     dword [ebp-4H], esi                     ; 10021A2D _ 89. 75, FC
        jz      ?_4494                                  ; 10021A30 _ 74, 13
        cmp     ebx, edi                                ; 10021A32 _ 3B. DF
        jz      ?_4493                                  ; 10021A34 _ 74, 08
        lea     edi, [ecx+3C00H]                        ; 10021A36 _ 8D. B9, 00003C00
        jmp     ?_4496                                  ; 10021A3C _ EB, 28

?_4493: mov     edi, 32767                              ; 10021A3E _ BF, 00007FFF
        jmp     ?_4496                                  ; 10021A43 _ EB, 21

?_4494: xor     ebx, ebx                                ; 10021A45 _ 33. DB
        cmp     eax, ebx                                ; 10021A47 _ 3B. C3
        jnz     ?_4495                                  ; 10021A49 _ 75, 12
        cmp     edx, ebx                                ; 10021A4B _ 3B. D3
        jnz     ?_4495                                  ; 10021A4D _ 75, 0E
        mov     eax, dword [ebp+8H]                     ; 10021A4F _ 8B. 45, 08
        mov     dword [eax+4H], ebx                     ; 10021A52 _ 89. 58, 04
        mov     dword [eax], ebx                        ; 10021A55 _ 89. 18
        mov     word [eax+8H], bx                       ; 10021A57 _ 66: 89. 58, 08
        jmp     ?_4499                                  ; 10021A5B _ EB, 4B

?_4495: lea     edi, [ecx+3C01H]                        ; 10021A5D _ 8D. B9, 00003C01
        mov     dword [ebp-4H], ebx                     ; 10021A63 _ 89. 5D, FC
?_4496: mov     ecx, edx                                ; 10021A66 _ 8B. CA
        shr     ecx, 21                                 ; 10021A68 _ C1. E9, 15
        shl     eax, 11                                 ; 10021A6B _ C1. E0, 0B
        or      ecx, eax                                ; 10021A6E _ 0B. C8
        mov     eax, dword [ebp+8H]                     ; 10021A70 _ 8B. 45, 08
        or      ecx, dword [ebp-4H]                     ; 10021A73 _ 0B. 4D, FC
        shl     edx, 11                                 ; 10021A76 _ C1. E2, 0B
        mov     dword [eax+4H], ecx                     ; 10021A79 _ 89. 48, 04
        mov     dword [eax], edx                        ; 10021A7C _ 89. 10
?_4497: test    esi, ecx                                ; 10021A7E _ 85. CE
        jnz     ?_4498                                  ; 10021A80 _ 75, 1D
        mov     edx, dword [eax]                        ; 10021A82 _ 8B. 10
        add     ecx, ecx                                ; 10021A84 _ 03. C9
        mov     ebx, edx                                ; 10021A86 _ 8B. DA
        shr     ebx, 31                                 ; 10021A88 _ C1. EB, 1F
        or      ebx, ecx                                ; 10021A8B _ 0B. D9
        lea     ecx, [edx+edx]                          ; 10021A8D _ 8D. 0C 12
        mov     dword [eax], ecx                        ; 10021A90 _ 89. 08
        mov     dword [eax+4H], ebx                     ; 10021A92 _ 89. 58, 04
        add     edi, 65535                              ; 10021A95 _ 81. C7, 0000FFFF
        mov     ecx, ebx                                ; 10021A9B _ 8B. CB
        jmp     ?_4497                                  ; 10021A9D _ EB, DF

?_4498: mov     ecx, dword [ebp+0CH]                    ; 10021A9F _ 8B. 4D, 0C
        or      ecx, edi                                ; 10021AA2 _ 0B. CF
        mov     word [eax+8H], cx                       ; 10021AA4 _ 66: 89. 48, 08
?_4499: pop     edi                                     ; 10021AA8 _ 5F
        pop     esi                                     ; 10021AA9 _ 5E
        pop     ebx                                     ; 10021AAA _ 5B
        leave                                           ; 10021AAB _ C9
        ret                                             ; 10021AAC _ C3
