; ---- 1001AC9F ----
?_3171: ; Local function
        push    esi                                     ; 1001AC9F _ 56
        mov     esi, dword [esp+8H]                     ; 1001ACA0 _ 8B. 74 24, 08
        push    esi                                     ; 1001ACA4 _ 56
        call    ?_3174                                  ; 1001ACA5 _ E8, 00000023
        test    eax, eax                                ; 1001ACAA _ 85. C0
        pop     ecx                                     ; 1001ACAC _ 59
        jz      ?_3172                                  ; 1001ACAD _ 74, 05
        or      eax, 0FFFFFFFFH                         ; 1001ACAF _ 83. C8, FF
        pop     esi                                     ; 1001ACB2 _ 5E
        ret                                             ; 1001ACB3 _ C3

