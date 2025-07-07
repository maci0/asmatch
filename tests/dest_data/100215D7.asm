; ---- 100215D7 ----
?_4449: ; Local function
        push    ebp                                     ; 100215D7 _ 55
        mov     ebp, esp                                ; 100215D8 _ 8B. EC
        push    ecx                                     ; 100215DA _ 51
        push    ecx                                     ; 100215DB _ 51
        mov     eax, dword [ebp+0CH]                    ; 100215DC _ 8B. 45, 0C
        push    ebx                                     ; 100215DF _ 53
        push    esi                                     ; 100215E0 _ 56
        push    edi                                     ; 100215E1 _ 57
        lea     edi, [eax-1H]                           ; 100215E2 _ 8D. 78, FF
        push    32                                      ; 100215E5 _ 6A, 20
        pop     ecx                                     ; 100215E7 _ 59
        and     dword [ebp-4H], 00H                     ; 100215E8 _ 83. 65, FC, 00
        lea     ebx, [edi+1H]                           ; 100215EC _ 8D. 5F, 01
        push    32                                      ; 100215EF _ 6A, 20
        mov     eax, ebx                                ; 100215F1 _ 8B. C3
        pop     esi                                     ; 100215F3 _ 5E
        cdq                                             ; 100215F4 _ 99
        idiv    ecx                                     ; 100215F5 _ F7. F9
        push    31                                      ; 100215F7 _ 6A, 1F
        mov     ecx, eax                                ; 100215F9 _ 8B. C8
        mov     eax, ebx                                ; 100215FB _ 8B. C3
        cdq                                             ; 100215FD _ 99
        idiv    esi                                     ; 100215FE _ F7. FE
        mov     eax, dword [ebp+8H]                     ; 10021600 _ 8B. 45, 08
        pop     esi                                     ; 10021603 _ 5E
        push    1                                       ; 10021604 _ 6A, 01
        mov     dword [ebp-8H], ecx                     ; 10021606 _ 89. 4D, F8
        lea     eax, [eax+ecx*4]                        ; 10021609 _ 8D. 04 88
        mov     dword [ebp+0CH], eax                    ; 1002160C _ 89. 45, 0C
        sub     esi, edx                                ; 1002160F _ 2B. F2
        pop     edx                                     ; 10021611 _ 5A
        mov     ecx, esi                                ; 10021612 _ 8B. CE
        shl     edx, cl                                 ; 10021614 _ D3. E2
        test    dword [eax], edx                        ; 10021616 _ 85. 10
        jz      ?_4451                                  ; 10021618 _ 74, 21
        inc     ebx                                     ; 1002161A _ 43
        push    ebx                                     ; 1002161B _ 53
        push    dword [ebp+8H]                          ; 1002161C _ FF. 75, 08
        call    ?_4442                                  ; 1002161F _ E8, FFFFFF14
        pop     ecx                                     ; 10021624 _ 59
        test    eax, eax                                ; 10021625 _ 85. C0
        pop     ecx                                     ; 10021627 _ 59
        jnz     ?_4450                                  ; 10021628 _ 75, 0E
        push    edi                                     ; 1002162A _ 57
        push    dword [ebp+8H]                          ; 1002162B _ FF. 75, 08
        call    ?_4446                                  ; 1002162E _ E8, FFFFFF4E
        pop     ecx                                     ; 10021633 _ 59
        mov     dword [ebp-4H], eax                     ; 10021634 _ 89. 45, FC
        pop     ecx                                     ; 10021637 _ 59
?_4450: mov     eax, dword [ebp+0CH]                    ; 10021638 _ 8B. 45, 0C
?_4451: or      edx, 0FFFFFFFFH                         ; 1002163B _ 83. CA, FF
        mov     ecx, esi                                ; 1002163E _ 8B. CE
        shl     edx, cl                                 ; 10021640 _ D3. E2
        push    3                                       ; 10021642 _ 6A, 03
        pop     ecx                                     ; 10021644 _ 59
        and     dword [eax], edx                        ; 10021645 _ 21. 10
        mov     eax, dword [ebp-8H]                     ; 10021647 _ 8B. 45, F8
        inc     eax                                     ; 1002164A _ 40
        cmp     eax, ecx                                ; 1002164B _ 3B. C1
        jge     ?_4452                                  ; 1002164D _ 7D, 0C
        mov     edx, dword [ebp+8H]                     ; 1002164F _ 8B. 55, 08
        sub     ecx, eax                                ; 10021652 _ 2B. C8
        lea     edi, [edx+eax*4]                        ; 10021654 _ 8D. 3C 82
        xor     eax, eax                                ; 10021657 _ 33. C0
        rep stosd                                       ; 10021659 _ F3: AB
?_4452: mov     eax, dword [ebp-4H]                     ; 1002165B _ 8B. 45, FC
        pop     edi                                     ; 1002165E _ 5F
        pop     esi                                     ; 1002165F _ 5E
        pop     ebx                                     ; 10021660 _ 5B
        leave                                           ; 10021661 _ C9
        ret                                             ; 10021662 _ C3

