; ---- 10017F30 ----
?_2752: ; Local function
        mov     ecx, dword [esp+4H]                     ; 10017F30 _ 8B. 4C 24, 04
        mov     eax, dword [esp+8H]                     ; 10017F34 _ 8B. 44 24, 08
        add     ecx, 93                                 ; 10017F38 _ 83. C1, 5D
        push    eax                                     ; 10017F3B _ 50
        push    ecx                                     ; 10017F3C _ 51
        call    ?_2502                                  ; 10017F3D _ E8, FFFFE68E
        sub     eax, -2                                 ; 10017F42 _ 83. E8, FE
        add     esp, 8                                  ; 10017F45 _ 83. C4, 08
        neg     eax                                     ; 10017F48 _ F7. D8
        sbb     eax, eax                                ; 10017F4A _ 1B. C0
        and     eax, 03H                                ; 10017F4C _ 83. E0, 03
        add     eax, -3                                 ; 10017F4F _ 83. C0, FD
        ret                                             ; 10017F52 _ C3

        nop                                             ; 10017F53 _ 90
        nop                                             ; 10017F54 _ 90
        nop                                             ; 10017F55 _ 90
        nop                                             ; 10017F56 _ 90
        nop                                             ; 10017F57 _ 90
        nop                                             ; 10017F58 _ 90
        nop                                             ; 10017F59 _ 90
        nop                                             ; 10017F5A _ 90
        nop                                             ; 10017F5B _ 90
        nop                                             ; 10017F5C _ 90
        nop                                             ; 10017F5D _ 90
        nop                                             ; 10017F5E _ 90
        nop                                             ; 10017F5F _ 90
