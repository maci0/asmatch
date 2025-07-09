; ---- 1000FDF5 ----
?_1820: ; Local function
        cmp     eax, 1818583414                         ; 1000FDF5 _ 3D, 6C656176
        jnz     ?_1824                                  ; 1000FDFA _ 75, 67
        mov     eax, dword [ebp+18H]                    ; 1000FDFC _ 8B. 45, 18
        push    eax                                     ; 1000FDFF _ 50
        push    1                                       ; 1000FE00 _ 6A, 01
        push    1                                       ; 1000FE02 _ 6A, 01
        call    ?_2609                                  ; 1000FE04 _ E8, 000072D7
        add     esp, 12                                 ; 1000FE09 _ 83. C4, 0C
        test    eax, eax                                ; 1000FE0C _ 85. C0
        jz      ?_1817                                  ; 1000FE0E _ 74, BF
        mov     ecx, dword [eax+5DH]                    ; 1000FE10 _ 8B. 48, 5D
        push    301                                     ; 1000FE13 _ 68, 0000012D
        push    0                                       ; 1000FE18 _ 6A, 00
        push    6                                       ; 1000FE1A _ 6A, 06
        push    2                                       ; 1000FE1C _ 6A, 02
        push    ecx                                     ; 1000FE1E _ 51
        call    ?_2482                                  ; 1000FE1F _ E8, 0000663C
        add     esp, 20                                 ; 1000FE24 _ 83. C4, 14
        test    eax, eax                                ; 1000FE27 _ 85. C0
        jz      ?_1817                                  ; 1000FE29 _ 74, A4
        mov     esi, dword [ebp+14H]                    ; 1000FE2B _ 8B. 75, 14
        xor     ecx, ecx                                ; 1000FE2E _ 33. C9
        lea     edx, [eax+1CH]                          ; 1000FE30 _ 8D. 50, 1C
?_1821: cmp     dword [edx], esi                        ; 1000FE33 _ 39. 32
        jz      ?_1822                                  ; 1000FE35 _ 74, 12
        inc     ecx                                     ; 1000FE37 _ 41
        add     edx, 4                                  ; 1000FE38 _ 83. C2, 04
        cmp     ecx, 4                                  ; 1000FE3B _ 83. F9, 04
        jl      ?_1821                                  ; 1000FE3E _ 7C, F3
        pop     edi                                     ; 1000FE40 _ 5F
        pop     esi                                     ; 1000FE41 _ 5E
        mov     eax, 1                                  ; 1000FE42 _ B8, 00000001
        pop     ebp                                     ; 1000FE47 _ 5D
        ret                                             ; 1000FE48 _ C3

?_1822: cmp     ecx, 4                                  ; 1000FE49 _ 83. F9, 04
        jge     ?_1817                                  ; 1000FE4C _ 7D, 81
        test    edi, edi                                ; 1000FE4E _ 85. FF
        jz      ?_1823                                  ; 1000FE50 _ 74, 03
        mov     byte [edi], 1                           ; 1000FE52 _ C6. 07, 01
?_1823: pop     edi                                     ; 1000FE55 _ 5F
        mov     dword [eax+ecx*4+1CH], -1               ; 1000FE56 _ C7. 44 88, 1C, FFFFFFFF
        pop     esi                                     ; 1000FE5E _ 5E
        xor     eax, eax                                ; 1000FE5F _ 33. C0
        pop     ebp                                     ; 1000FE61 _ 5D
        ret                                             ; 1000FE62 _ C3
