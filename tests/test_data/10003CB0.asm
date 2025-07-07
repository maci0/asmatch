; ---- 10003CB0 ----
?_0332: ; Local function
        cmp     byte [esi+5CH], 119                     ; 10003CB0 _ 80. 7E, 5C, 77
        jnz     ?_0333                                  ; 10003CB4 _ 75, 2C
        push    4                                       ; 10003CB6 _ 6A, 04
        push    esi                                     ; 10003CB8 _ 56
        call    ?_0320                                  ; 10003CB9 _ E8, FFFFFED2
        add     esp, 8                                  ; 10003CBE _ 83. C4, 08
        test    eax, eax                                ; 10003CC1 _ 85. C0
        jnz     ?_0333                                  ; 10003CC3 _ 75, 1D
        mov     eax, dword [esi+4CH]                    ; 10003CC5 _ 8B. 46, 4C
        mov     ecx, dword [esi+40H]                    ; 10003CC8 _ 8B. 4E, 40
        push    eax                                     ; 10003CCB _ 50
        push    ecx                                     ; 10003CCC _ 51
        call    ?_0334                                  ; 10003CCD _ E8, 0000001E
        mov     edx, dword [esi+8H]                     ; 10003CD2 _ 8B. 56, 08
        mov     eax, dword [esi+40H]                    ; 10003CD5 _ 8B. 46, 40
        push    edx                                     ; 10003CD8 _ 52
        push    eax                                     ; 10003CD9 _ 50
        call    ?_0334                                  ; 10003CDA _ E8, 00000011
        add     esp, 16                                 ; 10003CDF _ 83. C4, 10
?_0333: push    esi                                     ; 10003CE2 _ 56
        call    ?_0292                                  ; 10003CE3 _ E8, FFFFFBB8
        add     esp, 4                                  ; 10003CE8 _ 83. C4, 04
        pop     esi                                     ; 10003CEB _ 5E
        ret                                             ; 10003CEC _ C3

        nop                                             ; 10003CED _ 90
        nop                                             ; 10003CEE _ 90
        nop                                             ; 10003CEF _ 90

