; ---- 10017F60 ----
?_2753: ; Local function
        push    esi                                     ; 10017F60 _ 56
        mov     esi, dword [esp+8H]                     ; 10017F61 _ 8B. 74 24, 08
        push    esi                                     ; 10017F65 _ 56
        call    ?_2963                                  ; 10017F66 _ E8, 00001C15
        add     esp, 4                                  ; 10017F6B _ 83. C4, 04
        test    eax, eax                                ; 10017F6E _ 85. C0
        jz      ?_2754                                  ; 10017F70 _ 74, 10
        mov     ecx, dword [esi+2H]                     ; 10017F72 _ 8B. 4E, 02
        add     eax, 93                                 ; 10017F75 _ 83. C0, 5D
        push    ecx                                     ; 10017F78 _ 51
        push    eax                                     ; 10017F79 _ 50
        call    ?_2512                                  ; 10017F7A _ E8, FFFFE701
        add     esp, 8                                  ; 10017F7F _ 83. C4, 08
?_2754: pop     esi                                     ; 10017F82 _ 5E
        ret                                             ; 10017F83 _ C3

        nop                                             ; 10017F84 _ 90
        nop                                             ; 10017F85 _ 90
        nop                                             ; 10017F86 _ 90
        nop                                             ; 10017F87 _ 90
        nop                                             ; 10017F88 _ 90
        nop                                             ; 10017F89 _ 90
        nop                                             ; 10017F8A _ 90
        nop                                             ; 10017F8B _ 90
        nop                                             ; 10017F8C _ 90
        nop                                             ; 10017F8D _ 90
        nop                                             ; 10017F8E _ 90
        nop                                             ; 10017F8F _ 90
?_2755: mov     eax, dword [esp+4H]                     ; 10017F90 _ 8B. 44 24, 04
        test    eax, eax                                ; 10017F94 _ 85. C0
        jz      ?_2756                                  ; 10017F96 _ 74, 0E
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], -1                          ; 10017F98 _ 66: 81. 38, FFFF
        jz      ?_2756                                  ; 10017F9D _ 74, 07
        push    eax                                     ; 10017F9F _ 50
        call    ?_1237                                  ; 10017FA0 _ E8, FFFF39EB
        pop     ecx                                     ; 10017FA5 _ 59
?_2756: ret                                             ; 10017FA6 _ C3

        nop                                             ; 10017FA7 _ 90
        nop                                             ; 10017FA8 _ 90
        nop                                             ; 10017FA9 _ 90
        nop                                             ; 10017FAA _ 90
        nop                                             ; 10017FAB _ 90
        nop                                             ; 10017FAC _ 90
        nop                                             ; 10017FAD _ 90
        nop                                             ; 10017FAE _ 90
        nop                                             ; 10017FAF _ 90

