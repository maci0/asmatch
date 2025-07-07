; ---- 1000EBC4 ----
?_1655: ; Local function
        mov     eax, dword [esp+10H]                    ; 1000EBC4 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000EBC8 _ 85. C0
        jnz     ?_1656                                  ; 1000EBCA _ 75, 0C
        mov     eax, dword [esp+4H]                     ; 1000EBCC _ 8B. 44 24, 04
        test    eax, eax                                ; 1000EBD0 _ 85. C0
        jnz     ?_1656                                  ; 1000EBD2 _ 75, 04
        mov     eax, dword [esp+8H]                     ; 1000EBD4 _ 8B. 44 24, 08
?_1656: mov     edx, dword [esi+14H]                    ; 1000EBD8 _ 8B. 56, 14
        fld     dword [esi+18H]                         ; 1000EBDB _ D9. 46, 18
        fadd    dword [eax+edx]                         ; 1000EBDE _ D8. 04 10
        add     eax, edx                                ; 1000EBE1 _ 03. C2
        fstp    dword [eax]                             ; 1000EBE3 _ D9. 18
        mov     eax, dword [esp+14H]                    ; 1000EBE5 _ 8B. 44 24, 14
        test    eax, eax                                ; 1000EBE9 _ 85. C0
        jz      ?_1657                                  ; 1000EBEB _ 74, 03
        mov     byte [eax], 1                           ; 1000EBED _ C6. 00, 01
?_1657: xor     eax, eax                                ; 1000EBF0 _ 33. C0
        pop     esi                                     ; 1000EBF2 _ 5E
        add     esp, 8                                  ; 1000EBF3 _ 83. C4, 08
        ret                                             ; 1000EBF6 _ C3

        nop                                             ; 1000EBF7 _ 90
        nop                                             ; 1000EBF8 _ 90
        nop                                             ; 1000EBF9 _ 90
        nop                                             ; 1000EBFA _ 90
        nop                                             ; 1000EBFB _ 90
        nop                                             ; 1000EBFC _ 90
        nop                                             ; 1000EBFD _ 90
        nop                                             ; 1000EBFE _ 90
        nop                                             ; 1000EBFF _ 90

