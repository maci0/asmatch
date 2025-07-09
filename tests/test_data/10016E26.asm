; ---- 10016E26 ----
?_2574: ; Local function
        mov     eax, dword [esp+8H]                     ; 10016E26 _ 8B. 44 24, 08
        test    eax, eax                                ; 10016E2A _ 85. C0
        jz      ?_2575                                  ; 10016E2C _ 74, 05
        lea     esi, [eax+5DH]                          ; 10016E2E _ 8D. 70, 5D
        jmp     ?_2577                                  ; 10016E31 _ EB, 1B

?_2575: mov     eax, dword [esp+14H]                    ; 10016E33 _ 8B. 44 24, 14
        test    eax, eax                                ; 10016E37 _ 85. C0
        jz      ?_2576                                  ; 10016E39 _ 74, 05
        lea     esi, [eax+14H]                          ; 10016E3B _ 8D. 70, 14
        jmp     ?_2577                                  ; 10016E3E _ EB, 0E

?_2576: mov     eax, dword [esp+0CH]                    ; 10016E40 _ 8B. 44 24, 0C
        test    eax, eax                                ; 10016E44 _ 85. C0
        jz      ?_2573                                  ; 10016E46 _ 74, D6
        lea     esi, [eax+178H]                         ; 10016E48 _ 8D. B0, 00000178
?_2577: mov     edi, dword [esp+18H]                    ; 10016E4E _ 8B. 7C 24, 18
        mov     ecx, dword [esi]                        ; 10016E52 _ 8B. 0E
        push    edi                                     ; 10016E54 _ 57
        push    0                                       ; 10016E55 _ 6A, 00
        push    1                                       ; 10016E57 _ 6A, 01
        push    ecx                                     ; 10016E59 _ 51
        call    ?_2482                                  ; 10016E5A _ E8, FFFFF601
        add     esp, 16                                 ; 10016E5F _ 83. C4, 10
        mov     dword [esp+14H], eax                    ; 10016E62 _ 89. 44 24, 14
        test    eax, eax                                ; 10016E66 _ 85. C0
        jz      ?_2573                                  ; 10016E68 _ 74, B4
        mov     ecx, dword [eax+0EH]                    ; 10016E6A _ 8B. 48, 0E
        mov     edx, dword [esp+1CH]                    ; 10016E6D _ 8B. 54 24, 1C
        cmp     ecx, edx                                ; 10016E71 _ 3B. CA
        jl      ?_2573                                  ; 10016E73 _ 7C, A9
        sub     ecx, edx                                ; 10016E75 _ 2B. CA
        mov     dword [eax+0EH], ecx                    ; 10016E77 _ 89. 48, 0E
        mov     edx, dword [esp+14H]                    ; 10016E7A _ 8B. 54 24, 14
        mov     eax, dword [edx+0EH]                    ; 10016E7E _ 8B. 42, 0E
        test    eax, eax                                ; 10016E81 _ 85. C0
        jg      ?_2578                                  ; 10016E83 _ 7F, 0A
        push    edi                                     ; 10016E85 _ 57
        push    esi                                     ; 10016E86 _ 56
        call    ?_2502                                  ; 10016E87 _ E8, FFFFF744
        add     esp, 8                                  ; 10016E8C _ 83. C4, 08
?_2578: pop     edi                                     ; 10016E8F _ 5F
        mov     eax, 1                                  ; 10016E90 _ B8, 00000001
        pop     esi                                     ; 10016E95 _ 5E
        add     esp, 8                                  ; 10016E96 _ 83. C4, 08
        ret                                             ; 10016E99 _ C3

        nop                                             ; 10016E9A _ 90
        nop                                             ; 10016E9B _ 90
        nop                                             ; 10016E9C _ 90
        nop                                             ; 10016E9D _ 90
        nop                                             ; 10016E9E _ 90
        nop                                             ; 10016E9F _ 90
