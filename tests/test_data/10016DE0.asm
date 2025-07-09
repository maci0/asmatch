; ---- 10016DE0 ----
?_2572: ; Local function
        mov     eax, dword [esp+4H]                     ; 10016DE0 _ 8B. 44 24, 04
        sub     esp, 8                                  ; 10016DE4 _ 83. EC, 08
        lea     ecx, [esp+4H]                           ; 10016DE7 _ 8D. 4C 24, 04
        lea     edx, [esp+0CH]                          ; 10016DEB _ 8D. 54 24, 0C
        push    esi                                     ; 10016DEF _ 56
        push    edi                                     ; 10016DF0 _ 57
        push    eax                                     ; 10016DF1 _ 50
        push    ecx                                     ; 10016DF2 _ 51
        lea     eax, [esp+10H]                          ; 10016DF3 _ 8D. 44 24, 10
        push    edx                                     ; 10016DF7 _ 52
        push    eax                                     ; 10016DF8 _ 50
        call    ?_2425                                  ; 10016DF9 _ E8, FFFFF092
        add     esp, 16                                 ; 10016DFE _ 83. C4, 10
        test    eax, eax                                ; 10016E01 _ 85. C0
        jnz     ?_2574                                  ; 10016E03 _ 75, 21
        push    1                                       ; 10016E05 _ 6A, 01
        push    ?_5425                                  ; 10016E07 _ 68, 100313B0(d)
        push    3629                                    ; 10016E0C _ 68, 00000E2D
        push    ?_5397                                  ; 10016E11 _ 68, 10031004(d)
        call    ?_0267                                  ; 10016E16 _ E8, FFFEC825
        add     esp, 16                                 ; 10016E1B _ 83. C4, 10
?_2573: pop     edi                                     ; 10016E1E _ 5F
        xor     eax, eax                                ; 10016E1F _ 33. C0
        pop     esi                                     ; 10016E21 _ 5E
        add     esp, 8                                  ; 10016E22 _ 83. C4, 08
        ret                                             ; 10016E25 _ C3
