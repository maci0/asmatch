; ---- 1000EAA0 ----
?_1647: ; Local function
        sub     esp, 8                                  ; 1000EAA0 _ 83. EC, 08
        push    esi                                     ; 1000EAA3 _ 56
        mov     esi, dword [esp+10H]                    ; 1000EAA4 _ 8B. 74 24, 10
        mov     eax, dword [esi+10H]                    ; 1000EAA8 _ 8B. 46, 10
        push    eax                                     ; 1000EAAB _ 50
        push    esi                                     ; 1000EAAC _ 56
        call    ?_1389                                  ; 1000EAAD _ E8, FFFFDFDE
        lea     ecx, [esp+10H]                          ; 1000EAB2 _ 8D. 4C 24, 10
        mov     dword [esi+10H], eax                    ; 1000EAB6 _ 89. 46, 10
        push    eax                                     ; 1000EAB9 _ 50
        lea     edx, [esp+10H]                          ; 1000EABA _ 8D. 54 24, 10
        push    ecx                                     ; 1000EABE _ 51
        lea     eax, [esp+20H]                          ; 1000EABF _ 8D. 44 24, 20
        push    edx                                     ; 1000EAC3 _ 52
        push    eax                                     ; 1000EAC4 _ 50
        call    ?_2425                                  ; 1000EAC5 _ E8, 000073C6
        add     esp, 24                                 ; 1000EACA _ 83. C4, 18
        test    eax, eax                                ; 1000EACD _ 85. C0
        jnz     ?_1648                                  ; 1000EACF _ 75, 23
        push    1                                       ; 1000EAD1 _ 6A, 01
        push    ?_5314                                  ; 1000EAD3 _ 68, 1002D114(d)
        push    13325                                   ; 1000EAD8 _ 68, 0000340D
        push    ?_5260                                  ; 1000EADD _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000EAE2 _ E8, FFFF4B59
        add     esp, 16                                 ; 1000EAE7 _ 83. C4, 10
        mov     eax, 1                                  ; 1000EAEA _ B8, 00000001
        pop     esi                                     ; 1000EAEF _ 5E
        add     esp, 8                                  ; 1000EAF0 _ 83. C4, 08
        ret                                             ; 1000EAF3 _ C3
