; ---- 1000FD50 ----
?_1813: ; Local function
        push    ebp                                     ; 1000FD50 _ 55
        push    esi                                     ; 1000FD51 _ 56
        push    edi                                     ; 1000FD52 _ 57
        mov     edi, dword [esp+14H]                    ; 1000FD53 _ 8B. 7C 24, 14
        test    edi, edi                                ; 1000FD57 _ 85. FF
        jz      ?_1814                                  ; 1000FD59 _ 74, 0E
        mov     byte [edi], 2                           ; 1000FD5B _ C6. 07, 02
        mov     byte [edi+1H], 0                        ; 1000FD5E _ C6. 47, 01, 00
        mov     dword [edi+6H], 0                       ; 1000FD62 _ C7. 47, 06, 00000000
?_1814: mov     ebp, dword [esp+10H]                    ; 1000FD69 _ 8B. 6C 24, 10
        mov     eax, dword [ebp+10H]                    ; 1000FD6D _ 8B. 45, 10
        cmp     eax, 1785686382                         ; 1000FD70 _ 3D, 6A6F696E
        jnz     ?_1820                                  ; 1000FD75 _ 75, 7E
        mov     eax, dword [ebp+18H]                    ; 1000FD77 _ 8B. 45, 18
        push    eax                                     ; 1000FD7A _ 50
        push    1                                       ; 1000FD7B _ 6A, 01
        push    1                                       ; 1000FD7D _ 6A, 01
        call    ?_2609                                  ; 1000FD7F _ E8, 0000735C
        add     esp, 12                                 ; 1000FD84 _ 83. C4, 0C
        test    eax, eax                                ; 1000FD87 _ 85. C0
        jz      ?_1817                                  ; 1000FD89 _ 74, 44
        mov     ecx, dword [eax+5DH]                    ; 1000FD8B _ 8B. 48, 5D
        push    301                                     ; 1000FD8E _ 68, 0000012D
        push    0                                       ; 1000FD93 _ 6A, 00
        push    6                                       ; 1000FD95 _ 6A, 06
        push    2                                       ; 1000FD97 _ 6A, 02
        push    ecx                                     ; 1000FD99 _ 51
        call    ?_2482                                  ; 1000FD9A _ E8, 000066C1
        add     esp, 20                                 ; 1000FD9F _ 83. C4, 14
        test    eax, eax                                ; 1000FDA2 _ 85. C0
        jz      ?_1817                                  ; 1000FDA4 _ 74, 29
        mov     edi, dword [ebp+14H]                    ; 1000FDA6 _ 8B. 7D, 14
        lea     esi, [eax+1CH]                          ; 1000FDA9 _ 8D. 70, 1C
        xor     ecx, ecx                                ; 1000FDAC _ 33. C9
        mov     edx, esi                                ; 1000FDAE _ 8B. D6
?_1815: cmp     dword [edx], edi                        ; 1000FDB0 _ 39. 3A
        jz      ?_1817                                  ; 1000FDB2 _ 74, 1B
        inc     ecx                                     ; 1000FDB4 _ 41
        add     edx, 4                                  ; 1000FDB5 _ 83. C2, 04
        cmp     ecx, 4                                  ; 1000FDB8 _ 83. F9, 04
        jl      ?_1815                                  ; 1000FDBB _ 7C, F3
        xor     ecx, ecx                                ; 1000FDBD _ 33. C9
        mov     edx, esi                                ; 1000FDBF _ 8B. D6
?_1816: cmp     dword [edx], -1                         ; 1000FDC1 _ 83. 3A, FF
        jz      ?_1818                                  ; 1000FDC4 _ 74, 12
        inc     ecx                                     ; 1000FDC6 _ 41
        add     edx, 4                                  ; 1000FDC7 _ 83. C2, 04
        cmp     ecx, 4                                  ; 1000FDCA _ 83. F9, 04
        jl      ?_1816                                  ; 1000FDCD _ 7C, F2
?_1817: pop     edi                                     ; 1000FDCF _ 5F
        pop     esi                                     ; 1000FDD0 _ 5E
        mov     eax, 1                                  ; 1000FDD1 _ B8, 00000001
        pop     ebp                                     ; 1000FDD6 _ 5D
        ret                                             ; 1000FDD7 _ C3

?_1818: cmp     ecx, 4                                  ; 1000FDD8 _ 83. F9, 04
        jge     ?_1817                                  ; 1000FDDB _ 7D, F2
        mov     edx, dword [esp+14H]                    ; 1000FDDD _ 8B. 54 24, 14
        test    edx, edx                                ; 1000FDE1 _ 85. D2
        jz      ?_1819                                  ; 1000FDE3 _ 74, 03
        mov     byte [edx], 1                           ; 1000FDE5 _ C6. 02, 01
?_1819: mov     edx, dword [ebp+14H]                    ; 1000FDE8 _ 8B. 55, 14
        pop     edi                                     ; 1000FDEB _ 5F
        mov     dword [eax+ecx*4+1CH], edx              ; 1000FDEC _ 89. 54 88, 1C
        pop     esi                                     ; 1000FDF0 _ 5E
        xor     eax, eax                                ; 1000FDF1 _ 33. C0
        pop     ebp                                     ; 1000FDF3 _ 5D
        ret                                             ; 1000FDF4 _ C3
