; ---- 1000F730 ----
?_1758: ; Local function
        mov     eax, dword [?_5380]                     ; 1000F730 _ A1, 10030B6C(d)
        push    ebx                                     ; 1000F735 _ 53
        push    ebp                                     ; 1000F736 _ 55
        push    esi                                     ; 1000F737 _ 56
        push    edi                                     ; 1000F738 _ 57
        mov     edi, dword [esp+14H]                    ; 1000F739 _ 8B. 7C 24, 14
        xor     ebp, ebp                                ; 1000F73D _ 33. ED
        mov     dword [edi+1FH], eax                    ; 1000F73F _ 89. 47, 1F
        call    ?_3297                                  ; 1000F742 _ E8, 0000BDFB
        push    eax                                     ; 1000F747 _ 50
        mov     dword [edi+23H], eax                    ; 1000F748 _ 89. 47, 23
        call    ?_3028                                  ; 1000F74B _ E8, 0000AA00
        mov     ecx, dword [edi+10H]                    ; 1000F750 _ 8B. 4F, 10
        push    ecx                                     ; 1000F753 _ 51
        push    1                                       ; 1000F754 _ 6A, 01
        push    1                                       ; 1000F756 _ 6A, 01
        call    ?_2609                                  ; 1000F758 _ E8, 00007983
        mov     ebx, eax                                ; 1000F75D _ 8B. D8
        add     esp, 16                                 ; 1000F75F _ 83. C4, 10
        test    ebx, ebx                                ; 1000F762 _ 85. DB
        jnz     ?_1759                                  ; 1000F764 _ 75, 0E
        push    1                                       ; 1000F766 _ 6A, 01
        push    ?_5327                                  ; 1000F768 _ 68, 1002D33C(d)
        push    19770                                   ; 1000F76D _ 68, 00004D3A
        jmp     ?_1760                                  ; 1000F772 _ EB, 35

?_1759: mov     edx, dword [edi+19H]                    ; 1000F774 _ 8B. 57, 19
        push    edx                                     ; 1000F777 _ 52
        call    ?_2817                                  ; 1000F778 _ E8, 00008D23
        mov     esi, eax                                ; 1000F77D _ 8B. F0
        mov     eax, dword [edi+14H]                    ; 1000F77F _ 8B. 47, 14
        add     esp, 4                                  ; 1000F782 _ 83. C4, 04
        cmp     eax, -1                                 ; 1000F785 _ 83. F8, FF
        jz      ?_1761                                  ; 1000F788 _ 74, 36
        push    eax                                     ; 1000F78A _ 50
        push    1                                       ; 1000F78B _ 6A, 01
        push    1                                       ; 1000F78D _ 6A, 01
        call    ?_2609                                  ; 1000F78F _ E8, 0000794C
        mov     ebp, eax                                ; 1000F794 _ 8B. E8
        add     esp, 12                                 ; 1000F796 _ 83. C4, 0C
        test    ebp, ebp                                ; 1000F799 _ 85. ED
        jnz     ?_1762                                  ; 1000F79B _ 75, 2D
        push    1                                       ; 1000F79D _ 6A, 01
        push    ?_5326                                  ; 1000F79F _ 68, 1002D318(d)
        push    19792                                   ; 1000F7A4 _ 68, 00004D50
?_1760: push    ?_5260                                  ; 1000F7A9 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F7AE _ E8, FFFF3E8D
        add     esp, 16                                 ; 1000F7B3 _ 83. C4, 10
        mov     eax, 1                                  ; 1000F7B6 _ B8, 00000001
        pop     edi                                     ; 1000F7BB _ 5F
        pop     esi                                     ; 1000F7BC _ 5E
        pop     ebp                                     ; 1000F7BD _ 5D
        pop     ebx                                     ; 1000F7BE _ 5B
        ret                                             ; 1000F7BF _ C3

?_1761: test    esi, esi                                ; 1000F7C0 _ 85. F6
        jz      ?_1763                                  ; 1000F7C2 _ 74, 14
        mov     ebp, dword [esi+170H]                   ; 1000F7C4 _ 8B. AE, 00000170
?_1762: test    esi, esi                                ; 1000F7CA _ 85. F6
        jz      ?_1763                                  ; 1000F7CC _ 74, 0A
        mov     eax, dword [esi+16CH]                   ; 1000F7CE _ 8B. 86, 0000016C
        test    eax, eax                                ; 1000F7D4 _ 85. C0
        jz      ?_1764                                  ; 1000F7D6 _ 74, 1D
?_1763: mov     al, byte [edi+1DH]                      ; 1000F7D8 _ 8A. 47, 1D
        mov     cl, byte [edi+1EH]                      ; 1000F7DB _ 8A. 4F, 1E
        push    ebp                                     ; 1000F7DE _ 55
        xor     edx, edx                                ; 1000F7DF _ 33. D2
        mov     dl, byte [edi+18H]                      ; 1000F7E1 _ 8A. 57, 18
        push    eax                                     ; 1000F7E4 _ 50
        push    ecx                                     ; 1000F7E5 _ 51
        push    18                                      ; 1000F7E6 _ 6A, 12
        push    edx                                     ; 1000F7E8 _ 52
        push    6                                       ; 1000F7E9 _ 6A, 06
        call    ?_2368                                  ; 1000F7EB _ E8, 00005D10
        add     esp, 24                                 ; 1000F7F0 _ 83. C4, 18
        mov     esi, eax                                ; 1000F7F3 _ 8B. F0
?_1764: test    esi, esi                                ; 1000F7F5 _ 85. F6
        jnz     ?_1766                                  ; 1000F7F7 _ 75, 1C
        mov     eax, dword [esp+18H]                    ; 1000F7F9 _ 8B. 44 24, 18
        test    eax, eax                                ; 1000F7FD _ 85. C0
        jz      ?_1765                                  ; 1000F7FF _ 74, 0A
        mov     byte [eax], 2                           ; 1000F801 _ C6. 00, 02
        mov     byte [eax+1H], 1                        ; 1000F804 _ C6. 40, 01, 01
        mov     dword [eax+6H], esi                     ; 1000F808 _ 89. 70, 06
?_1765: pop     edi                                     ; 1000F80B _ 5F
        pop     esi                                     ; 1000F80C _ 5E
        pop     ebp                                     ; 1000F80D _ 5D
        mov     eax, 2                                  ; 1000F80E _ B8, 00000002
        pop     ebx                                     ; 1000F813 _ 5B
        ret                                             ; 1000F814 _ C3

