; ---- 10010F50 ----
?_1966: ; Local function
        push    esi                                     ; 10010F50 _ 56
        mov     esi, dword [esp+8H]                     ; 10010F51 _ 8B. 74 24, 08
        test    esi, esi                                ; 10010F55 _ 85. F6
        jz      ?_1969                                  ; 10010F57 _ 74, 37
        mov     eax, dword [esi+1CH]                    ; 10010F59 _ 8B. 46, 1C
        test    eax, eax                                ; 10010F5C _ 85. C0
        jz      ?_1967                                  ; 10010F5E _ 74, 10
        push    eax                                     ; 10010F60 _ 50
        call    ?_0663                                  ; 10010F61 _ E8, FFFF58BA
        add     esp, 4                                  ; 10010F66 _ 83. C4, 04
        mov     dword [esi+1CH], 0                      ; 10010F69 _ C7. 46, 1C, 00000000
?_1967: mov     eax, dword [esi+20H]                    ; 10010F70 _ 8B. 46, 20
        test    eax, eax                                ; 10010F73 _ 85. C0
        jz      ?_1968                                  ; 10010F75 _ 74, 10
        push    eax                                     ; 10010F77 _ 50
        call    ?_0663                                  ; 10010F78 _ E8, FFFF58A3
        add     esp, 4                                  ; 10010F7D _ 83. C4, 04
        mov     dword [esi+20H], 0                      ; 10010F80 _ C7. 46, 20, 00000000
?_1968: push    esi                                     ; 10010F87 _ 56
        call    ?_0663                                  ; 10010F88 _ E8, FFFF5893
        add     esp, 4                                  ; 10010F8D _ 83. C4, 04
?_1969: pop     esi                                     ; 10010F90 _ 5E
        ret                                             ; 10010F91 _ C3

        nop                                             ; 10010F92 _ 90
        nop                                             ; 10010F93 _ 90
        nop                                             ; 10010F94 _ 90
        nop                                             ; 10010F95 _ 90
        nop                                             ; 10010F96 _ 90
        nop                                             ; 10010F97 _ 90
        nop                                             ; 10010F98 _ 90
        nop                                             ; 10010F99 _ 90
        nop                                             ; 10010F9A _ 90
        nop                                             ; 10010F9B _ 90
        nop                                             ; 10010F9C _ 90
        nop                                             ; 10010F9D _ 90
        nop                                             ; 10010F9E _ 90
        nop                                             ; 10010F9F _ 90

