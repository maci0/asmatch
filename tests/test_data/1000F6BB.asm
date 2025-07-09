; ---- 1000F6BB ----
?_1751: ; Local function
        push    29                                      ; 1000F6BB _ 6A, 1D
        push    4                                       ; 1000F6BD _ 6A, 04
        push    7                                       ; 1000F6BF _ 6A, 07
        push    2                                       ; 1000F6C1 _ 6A, 02
        push    0                                       ; 1000F6C3 _ 6A, 00
        call    ?_2482                                  ; 1000F6C5 _ E8, 00006D96
        add     esp, 20                                 ; 1000F6CA _ 83. C4, 14
        test    eax, eax                                ; 1000F6CD _ 85. C0
        jz      ?_1754                                  ; 1000F6CF _ 74, 1C
?_1752: mov     edx, dword [eax+1CH]                    ; 1000F6D1 _ 8B. 50, 1C
        mov     ecx, dword [esi+1H]                     ; 1000F6D4 _ 8B. 4E, 01
        cmp     edx, ecx                                ; 1000F6D7 _ 3B. D1
        jnz     ?_1753                                  ; 1000F6D9 _ 75, 09
        push    eax                                     ; 1000F6DB _ 50
        call    ?_2753                                  ; 1000F6DC _ E8, 0000887F
        add     esp, 4                                  ; 1000F6E1 _ 83. C4, 04
?_1753: call    ?_2461                                  ; 1000F6E4 _ E8, 00006BA7
        test    eax, eax                                ; 1000F6E9 _ 85. C0
        jnz     ?_1752                                  ; 1000F6EB _ 75, E4
?_1754: mov     eax, ?_5648                             ; 1000F6ED _ B8, 10035A0C(d)
?_1755: cmp     dword [eax], esi                        ; 1000F6F2 _ 39. 30
        jnz     ?_1756                                  ; 1000F6F4 _ 75, 06
        mov     dword [eax], 0                          ; 1000F6F6 _ C7. 00, 00000000
?_1756: add     eax, 540                                ; 1000F6FC _ 05, 0000021C
        cmp     eax, ?_5660                             ; 1000F701 _ 3D, 1009AE0C(d)
        jl      ?_1755                                  ; 1000F706 _ 7C, EA
        push    esi                                     ; 1000F708 _ 56
        call    ?_2627                                  ; 1000F709 _ E8, 00007B32
        mov     eax, dword [esp+10H]                    ; 1000F70E _ 8B. 44 24, 10
        add     esp, 4                                  ; 1000F712 _ 83. C4, 04
        test    eax, eax                                ; 1000F715 _ 85. C0
        jz      ?_1757                                  ; 1000F717 _ 74, 0E
        mov     byte [eax], 2                           ; 1000F719 _ C6. 00, 02
        mov     byte [eax+1H], 0                        ; 1000F71C _ C6. 40, 01, 00
        mov     dword [eax+6H], 0                       ; 1000F720 _ C7. 40, 06, 00000000
?_1757: xor     eax, eax                                ; 1000F727 _ 33. C0
        pop     esi                                     ; 1000F729 _ 5E
        ret                                             ; 1000F72A _ C3

        nop                                             ; 1000F72B _ 90
        nop                                             ; 1000F72C _ 90
        nop                                             ; 1000F72D _ 90
        nop                                             ; 1000F72E _ 90
        nop                                             ; 1000F72F _ 90
