; ---- 1000D8A0 ----
?_1501: ; Local function
        mov     eax, dword [?_5380]                     ; 1000D8A0 _ A1, 10030B6C(d)
        push    esi                                     ; 1000D8A5 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D8A6 _ 8B. 74 24, 08
        mov     dword [esi+18H], eax                    ; 1000D8AA _ 89. 46, 18
        mov     eax, dword [esi+14H]                    ; 1000D8AD _ 8B. 46, 14
        cmp     eax, -1                                 ; 1000D8B0 _ 83. F8, FF
        jz      ?_1502                                  ; 1000D8B3 _ 74, 31
        push    eax                                     ; 1000D8B5 _ 50
        push    esi                                     ; 1000D8B6 _ 56
        call    ?_1389                                  ; 1000D8B7 _ E8, FFFFF1D4
        mov     ecx, dword [esi+1DH]                    ; 1000D8BC _ 8B. 4E, 1D
        xor     edx, edx                                ; 1000D8BF _ 33. D2
        mov     dl, byte [esi+1CH]                      ; 1000D8C1 _ 8A. 56, 1C
        push    ecx                                     ; 1000D8C4 _ 51
        mov     ecx, edx                                ; 1000D8C5 _ 8B. CA
        mov     dword [esi+14H], eax                    ; 1000D8C7 _ 89. 46, 14
        shl     ecx, 6                                  ; 1000D8CA _ C1. E1, 06
        sub     ecx, edx                                ; 1000D8CD _ 2B. CA
        lea     edx, [ecx+ecx*2]                        ; 1000D8CF _ 8D. 14 49
        xor     ecx, ecx                                ; 1000D8D2 _ 33. C9
        mov     cx, word [?_5672+edx*4]                 ; 1000D8D4 _ 66: 8B. 0C 95, 100A8C94(d)
        push    ecx                                     ; 1000D8DC _ 51
        push    eax                                     ; 1000D8DD _ 50
        call    ?_2579                                  ; 1000D8DE _ E8, 000095BD
        add     esp, 20                                 ; 1000D8E3 _ 83. C4, 14
?_1502: mov     eax, dword [esi+10H]                    ; 1000D8E6 _ 8B. 46, 10
        cmp     eax, -1                                 ; 1000D8E9 _ 83. F8, FF
        jz      ?_1503                                  ; 1000D8EC _ 74, 31
        push    eax                                     ; 1000D8EE _ 50
        push    esi                                     ; 1000D8EF _ 56
        call    ?_1389                                  ; 1000D8F0 _ E8, FFFFF19B
        mov     edx, dword [esi+1DH]                    ; 1000D8F5 _ 8B. 56, 1D
        mov     dword [esi+10H], eax                    ; 1000D8F8 _ 89. 46, 10
        push    edx                                     ; 1000D8FB _ 52
        xor     edx, edx                                ; 1000D8FC _ 33. D2
        mov     dl, byte [esi+1CH]                      ; 1000D8FE _ 8A. 56, 1C
        mov     ecx, edx                                ; 1000D901 _ 8B. CA
        shl     ecx, 6                                  ; 1000D903 _ C1. E1, 06
        sub     ecx, edx                                ; 1000D906 _ 2B. CA
        xor     edx, edx                                ; 1000D908 _ 33. D2
        lea     ecx, [ecx+ecx*2]                        ; 1000D90A _ 8D. 0C 49
        mov     dx, word [?_5672+ecx*4]                 ; 1000D90D _ 66: 8B. 14 8D, 100A8C94(d)
        push    edx                                     ; 1000D915 _ 52
        push    eax                                     ; 1000D916 _ 50
        call    ?_2564                                  ; 1000D917 _ E8, 000093B4
        add     esp, 20                                 ; 1000D91C _ 83. C4, 14
?_1503: mov     eax, dword [esp+0CH]                    ; 1000D91F _ 8B. 44 24, 0C
        pop     esi                                     ; 1000D923 _ 5E
        test    eax, eax                                ; 1000D924 _ 85. C0
        jz      ?_1504                                  ; 1000D926 _ 74, 03
        mov     byte [eax], 1                           ; 1000D928 _ C6. 00, 01
?_1504: xor     eax, eax                                ; 1000D92B _ 33. C0
        ret                                             ; 1000D92D _ C3

        nop                                             ; 1000D92E _ 90
        nop                                             ; 1000D92F _ 90
