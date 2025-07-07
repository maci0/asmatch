; ---- 100154D4 ----
?_2366: ; Local function
        cmp     cl, 22                                  ; 100154D4 _ 80. F9, 16
        jnz     ?_2367                                  ; 100154D7 _ 75, 15
        mov     edx, dword [esi+5DH]                    ; 100154D9 _ 8B. 56, 5D
        push    288                                     ; 100154DC _ 68, 00000120
        push    0                                       ; 100154E1 _ 6A, 00
        push    1                                       ; 100154E3 _ 6A, 01
        push    edx                                     ; 100154E5 _ 52
        call    ?_2482                                  ; 100154E6 _ E8, 00000F75
        add     esp, 16                                 ; 100154EB _ 83. C4, 10
?_2367: pop     edi                                     ; 100154EE _ 5F
        pop     esi                                     ; 100154EF _ 5E
        ret                                             ; 100154F0 _ C3

        nop                                             ; 100154F1 _ 90
        nop                                             ; 100154F2 _ 90
        nop                                             ; 100154F3 _ 90
        nop                                             ; 100154F4 _ 90
        nop                                             ; 100154F5 _ 90
        nop                                             ; 100154F6 _ 90
        nop                                             ; 100154F7 _ 90
        nop                                             ; 100154F8 _ 90
        nop                                             ; 100154F9 _ 90
        nop                                             ; 100154FA _ 90
        nop                                             ; 100154FB _ 90
        nop                                             ; 100154FC _ 90
        nop                                             ; 100154FD _ 90
        nop                                             ; 100154FE _ 90
        nop                                             ; 100154FF _ 90

