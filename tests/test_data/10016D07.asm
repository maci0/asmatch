; ---- 10016D07 ----
?_2566: ; Local function
        mov     edi, dword [esp+218H]                   ; 10016D07 _ 8B. BC 24, 00000218
        lea     eax, [esp+10H]                          ; 10016D0E _ 8D. 44 24, 10
        push    edi                                     ; 10016D12 _ 57
        lea     ecx, [esp+0CH]                          ; 10016D13 _ 8D. 4C 24, 0C
        push    eax                                     ; 10016D17 _ 50
        lea     edx, [esp+14H]                          ; 10016D18 _ 8D. 54 24, 14
        push    ecx                                     ; 10016D1C _ 51
        push    edx                                     ; 10016D1D _ 52
        call    ?_2425                                  ; 10016D1E _ E8, FFFFF16D
        add     esp, 16                                 ; 10016D23 _ 83. C4, 10
        test    eax, eax                                ; 10016D26 _ 85. C0
        jnz     ?_2567                                  ; 10016D28 _ 75, 3C
        mov     eax, dword [esp+220H]                   ; 10016D2A _ 8B. 84 24, 00000220
        lea     ecx, [esp+14H]                          ; 10016D31 _ 8D. 4C 24, 14
        push    eax                                     ; 10016D35 _ 50
        push    esi                                     ; 10016D36 _ 56
        push    ?_5423                                  ; 10016D37 _ 68, 10031358(d)
        push    ecx                                     ; 10016D3C _ 51
        call    ?_3039                                  ; 10016D3D _ E8, 00003557
        lea     edx, [esp+24H]                          ; 10016D42 _ 8D. 54 24, 24
        push    8                                       ; 10016D46 _ 6A, 08
        push    edx                                     ; 10016D48 _ 52
        push    3581                                    ; 10016D49 _ 68, 00000DFD
        push    ?_5397                                  ; 10016D4E _ 68, 10031004(d)
        call    ?_0267                                  ; 10016D53 _ E8, FFFEC8E8
        add     esp, 32                                 ; 10016D58 _ 83. C4, 20
        xor     eax, eax                                ; 10016D5B _ 33. C0
        pop     edi                                     ; 10016D5D _ 5F
        pop     esi                                     ; 10016D5E _ 5E
        add     esp, 524                                ; 10016D5F _ 81. C4, 0000020C
        ret                                             ; 10016D65 _ C3
