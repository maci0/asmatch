; ---- 1000D7F0 ----
?_1497: ; Local function
        mov     eax, dword [?_5380]                     ; 1000D7F0 _ A1, 10030B6C(d)
        push    esi                                     ; 1000D7F5 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D7F6 _ 8B. 74 24, 08
        mov     dword [esi+18H], eax                    ; 1000D7FA _ 89. 46, 18
        mov     eax, dword [esi+14H]                    ; 1000D7FD _ 8B. 46, 14
        cmp     eax, -1                                 ; 1000D800 _ 83. F8, FF
        jz      ?_1498                                  ; 1000D803 _ 74, 3C
        push    eax                                     ; 1000D805 _ 50
        push    esi                                     ; 1000D806 _ 56
        call    ?_1389                                  ; 1000D807 _ E8, FFFFF284
        mov     ecx, dword [esi+1DH]                    ; 1000D80C _ 8B. 4E, 1D
        xor     edx, edx                                ; 1000D80F _ 33. D2
        mov     dl, byte [esi+1CH]                      ; 1000D811 _ 8A. 56, 1C
        push    ecx                                     ; 1000D814 _ 51
        mov     ecx, edx                                ; 1000D815 _ 8B. CA
        mov     dword [esi+14H], eax                    ; 1000D817 _ 89. 46, 14
        shl     ecx, 6                                  ; 1000D81A _ C1. E1, 06
        sub     ecx, edx                                ; 1000D81D _ 2B. CA
        lea     edx, [ecx+ecx*2]                        ; 1000D81F _ 8D. 14 49
        xor     ecx, ecx                                ; 1000D822 _ 33. C9
        mov     cx, word [?_5672+edx*4]                 ; 1000D824 _ 66: 8B. 0C 95, 100A8C94(d)
        push    ecx                                     ; 1000D82C _ 51
        push    eax                                     ; 1000D82D _ 50
        call    ?_2572                                  ; 1000D82E _ E8, 000095AD
        add     esp, 20                                 ; 1000D833 _ 83. C4, 14
        test    eax, eax                                ; 1000D836 _ 85. C0
        jnz     ?_1498                                  ; 1000D838 _ 75, 07
        mov     eax, 1                                  ; 1000D83A _ B8, 00000001
        pop     esi                                     ; 1000D83F _ 5E
        ret                                             ; 1000D840 _ C3

