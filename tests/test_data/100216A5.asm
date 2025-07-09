; ---- 100216A5 ----
?_4459: ; Local function
        push    ebp                                     ; 100216A5 _ 55
        mov     ebp, esp                                ; 100216A6 _ 8B. EC
        sub     esp, 12                                 ; 100216A8 _ 83. EC, 0C
        mov     eax, dword [ebp+0CH]                    ; 100216AB _ 8B. 45, 0C
        push    ebx                                     ; 100216AE _ 53
        push    esi                                     ; 100216AF _ 56
        push    edi                                     ; 100216B0 _ 57
        push    32                                      ; 100216B1 _ 6A, 20
        mov     edi, dword [ebp+8H]                     ; 100216B3 _ 8B. 7D, 08
        pop     ebx                                     ; 100216B6 _ 5B
        or      esi, 0FFFFFFFFH                         ; 100216B7 _ 83. CE, FF
        cdq                                             ; 100216BA _ 99
        mov     ecx, ebx                                ; 100216BB _ 8B. CB
        mov     dword [ebp-4H], 3                       ; 100216BD _ C7. 45, FC, 00000003
        idiv    ecx                                     ; 100216C4 _ F7. F9
        mov     dword [ebp-0CH], eax                    ; 100216C6 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 100216C9 _ 8B. 45, 0C
        cdq                                             ; 100216CC _ 99
        idiv    ecx                                     ; 100216CD _ F7. F9
        and     dword [ebp+0CH], 00H                    ; 100216CF _ 83. 65, 0C, 00
        mov     ecx, edx                                ; 100216D3 _ 8B. CA
        shl     esi, cl                                 ; 100216D5 _ D3. E6
        sub     ebx, edx                                ; 100216D7 _ 2B. DA
        not     esi                                     ; 100216D9 _ F7. D6
?_4460: mov     eax, dword [edi]                        ; 100216DB _ 8B. 07
        mov     ecx, eax                                ; 100216DD _ 8B. C8
        and     ecx, esi                                ; 100216DF _ 23. CE
        mov     dword [ebp-8H], ecx                     ; 100216E1 _ 89. 4D, F8
        mov     ecx, edx                                ; 100216E4 _ 8B. CA
        shr     eax, cl                                 ; 100216E6 _ D3. E8
        or      eax, dword [ebp+0CH]                    ; 100216E8 _ 0B. 45, 0C
        mov     dword [edi], eax                        ; 100216EB _ 89. 07
        mov     eax, dword [ebp-8H]                     ; 100216ED _ 8B. 45, F8
        mov     ecx, ebx                                ; 100216F0 _ 8B. CB
        add     edi, 4                                  ; 100216F2 _ 83. C7, 04
        shl     eax, cl                                 ; 100216F5 _ D3. E0
        dec     dword [ebp-4H]                          ; 100216F7 _ FF. 4D, FC
        mov     dword [ebp+0CH], eax                    ; 100216FA _ 89. 45, 0C
        jnz     ?_4460                                  ; 100216FD _ 75, DC
        mov     edi, dword [ebp-0CH]                    ; 100216FF _ 8B. 7D, F4
        push    2                                       ; 10021702 _ 6A, 02
        pop     ebx                                     ; 10021704 _ 5B
        mov     esi, edi                                ; 10021705 _ 8B. F7
        push    8                                       ; 10021707 _ 6A, 08
        pop     ecx                                     ; 10021709 _ 59
        shl     esi, 2                                  ; 1002170A _ C1. E6, 02
?_4461: cmp     ebx, edi                                ; 1002170D _ 3B. DF
        jl      ?_4462                                  ; 1002170F _ 7C, 0F
        mov     edx, dword [ebp+8H]                     ; 10021711 _ 8B. 55, 08
        mov     eax, ecx                                ; 10021714 _ 8B. C1
        sub     eax, esi                                ; 10021716 _ 2B. C6
        mov     eax, dword [eax+edx]                    ; 10021718 _ 8B. 04 10
        mov     dword [ecx+edx], eax                    ; 1002171B _ 89. 04 11
        jmp     ?_4463                                  ; 1002171E _ EB, 07

?_4462: mov     eax, dword [ebp+8H]                     ; 10021720 _ 8B. 45, 08
        and     dword [ecx+eax], 00H                    ; 10021723 _ 83. 24 01, 00
?_4463: dec     ebx                                     ; 10021727 _ 4B
        sub     ecx, 4                                  ; 10021728 _ 83. E9, 04
        jns     ?_4461                                  ; 1002172B _ 79, E0
        pop     edi                                     ; 1002172D _ 5F
        pop     esi                                     ; 1002172E _ 5E
        pop     ebx                                     ; 1002172F _ 5B
        leave                                           ; 10021730 _ C9
        ret                                             ; 10021731 _ C3
