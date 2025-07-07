; ---- 10022F83 ----
?_4776: ; Local function
        push    ecx                                     ; 10022F83 _ 51
        push    ebx                                     ; 10022F84 _ 53
        push    ebp                                     ; 10022F85 _ 55
        push    esi                                     ; 10022F86 _ 56
        mov     esi, dword [?_5567]                     ; 10022F87 _ 8B. 35, 100354D8(d)
        push    edi                                     ; 10022F8D _ 57
        xor     edi, edi                                ; 10022F8E _ 33. FF
        mov     eax, dword [esi]                        ; 10022F90 _ 8B. 06
        cmp     eax, edi                                ; 10022F92 _ 3B. C7
        jz      ?_4778                                  ; 10022F94 _ 74, 4E
        mov     ebx, dword [imp_WideCharToMultiByte]    ; 10022F96 _ 8B. 1D, 1002413C(d)
?_4777: push    edi                                     ; 10022F9C _ 57
        push    edi                                     ; 10022F9D _ 57
        push    edi                                     ; 10022F9E _ 57
        push    edi                                     ; 10022F9F _ 57
        push    -1                                      ; 10022FA0 _ 6A, FF
        push    eax                                     ; 10022FA2 _ 50
        push    edi                                     ; 10022FA3 _ 57
        push    1                                       ; 10022FA4 _ 6A, 01
        call    ebx                                     ; 10022FA6 _ FF. D3
        mov     ebp, eax                                ; 10022FA8 _ 8B. E8
        cmp     ebp, edi                                ; 10022FAA _ 3B. EF
        jz      ?_4780                                  ; 10022FAC _ 74, 3E
        push    ebp                                     ; 10022FAE _ 55
        call    ?_3109                                  ; 10022FAF _ E8, FFFF7843
        cmp     eax, edi                                ; 10022FB4 _ 3B. C7
        pop     ecx                                     ; 10022FB6 _ 59
        mov     dword [esp+10H], eax                    ; 10022FB7 _ 89. 44 24, 10
        jz      ?_4780                                  ; 10022FBB _ 74, 2F
        push    edi                                     ; 10022FBD _ 57
        push    edi                                     ; 10022FBE _ 57
        push    ebp                                     ; 10022FBF _ 55
        push    eax                                     ; 10022FC0 _ 50
        push    -1                                      ; 10022FC1 _ 6A, FF
        push    dword [esi]                             ; 10022FC3 _ FF. 36
        push    edi                                     ; 10022FC5 _ 57
        push    1                                       ; 10022FC6 _ 6A, 01
        call    ebx                                     ; 10022FC8 _ FF. D3
        test    eax, eax                                ; 10022FCA _ 85. C0
        jz      ?_4780                                  ; 10022FCC _ 74, 1E
        push    edi                                     ; 10022FCE _ 57
        push    dword [esp+14H]                         ; 10022FCF _ FF. 74 24, 14
        call    ?_4844                                  ; 10022FD3 _ E8, 0000055D
        mov     eax, dword [esi+4H]                     ; 10022FD8 _ 8B. 46, 04
        add     esi, 4                                  ; 10022FDB _ 83. C6, 04
        pop     ecx                                     ; 10022FDE _ 59
        cmp     eax, edi                                ; 10022FDF _ 3B. C7
        pop     ecx                                     ; 10022FE1 _ 59
        jnz     ?_4777                                  ; 10022FE2 _ 75, B8
?_4778: xor     eax, eax                                ; 10022FE4 _ 33. C0
?_4779: pop     edi                                     ; 10022FE6 _ 5F
        pop     esi                                     ; 10022FE7 _ 5E
        pop     ebp                                     ; 10022FE8 _ 5D
        pop     ebx                                     ; 10022FE9 _ 5B
        pop     ecx                                     ; 10022FEA _ 59
        ret                                             ; 10022FEB _ C3

