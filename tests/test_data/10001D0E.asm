; ---- 10001D0E ----
?_0096: ; Local function
        sub     eax, ebx                                ; 10001D0E _ 2B. C3
        mov     dword [ebp+4H], eax                     ; 10001D10 _ 89. 45, 04
        mov     eax, dword [ebp+1CH]                    ; 10001D13 _ 8B. 45, 1C
        mov     ecx, dword [eax+18H]                    ; 10001D16 _ 8B. 48, 18
        test    ecx, ecx                                ; 10001D19 _ 85. C9
        jnz     ?_0097                                  ; 10001D1B _ 75, 14
        mov     ecx, dword [ebp]                        ; 10001D1D _ 8B. 4D, 00
        mov     edx, dword [ebp+30H]                    ; 10001D20 _ 8B. 55, 30
        push    ebx                                     ; 10001D23 _ 53
        push    ecx                                     ; 10001D24 _ 51
        push    edx                                     ; 10001D25 _ 52
        call    ?_0001                                  ; 10001D26 _ E8, FFFFF2D5
        add     esp, 12                                 ; 10001D2B _ 83. C4, 0C
        mov     dword [ebp+30H], eax                    ; 10001D2E _ 89. 45, 30
?_0097: mov     ecx, ebx                                ; 10001D31 _ 8B. CB
        push    esi                                     ; 10001D33 _ 56
        mov     esi, dword [ebp]                        ; 10001D34 _ 8B. 75, 00
        mov     eax, ecx                                ; 10001D37 _ 8B. C1
        push    edi                                     ; 10001D39 _ 57
        mov     edi, dword [esp+18H]                    ; 10001D3A _ 8B. 7C 24, 18
        shr     ecx, 2                                  ; 10001D3E _ C1. E9, 02
        rep movsd                                       ; 10001D41 _ F3: A5
        mov     ecx, eax                                ; 10001D43 _ 8B. C8
        and     ecx, 03H                                ; 10001D45 _ 83. E1, 03
        rep movsb                                       ; 10001D48 _ F3: A4
        mov     ecx, dword [ebp]                        ; 10001D4A _ 8B. 4D, 00
        mov     eax, dword [ebp+8H]                     ; 10001D4D _ 8B. 45, 08
        add     ecx, ebx                                ; 10001D50 _ 03. CB
        add     eax, ebx                                ; 10001D52 _ 03. C3
        pop     edi                                     ; 10001D54 _ 5F
        mov     dword [ebp], ecx                        ; 10001D55 _ 89. 4D, 00
        mov     dword [ebp+8H], eax                     ; 10001D58 _ 89. 45, 08
        pop     esi                                     ; 10001D5B _ 5E
        mov     eax, ebx                                ; 10001D5C _ 8B. C3
        pop     ebp                                     ; 10001D5E _ 5D
        pop     ebx                                     ; 10001D5F _ 5B
        ret                                             ; 10001D60 _ C3

        nop                                             ; 10001D61 _ 90
        nop                                             ; 10001D62 _ 90
        nop                                             ; 10001D63 _ 90
        nop                                             ; 10001D64 _ 90
        nop                                             ; 10001D65 _ 90
        nop                                             ; 10001D66 _ 90
        nop                                             ; 10001D67 _ 90
        nop                                             ; 10001D68 _ 90
        nop                                             ; 10001D69 _ 90
        nop                                             ; 10001D6A _ 90
        nop                                             ; 10001D6B _ 90
        nop                                             ; 10001D6C _ 90
        nop                                             ; 10001D6D _ 90
        nop                                             ; 10001D6E _ 90
        nop                                             ; 10001D6F _ 90
