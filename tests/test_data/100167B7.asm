; ---- 100167B7 ----
?_2527: ; Local function
        push    eax                                     ; 100167B7 _ 50
        lea     eax, [esp+1CH]                          ; 100167B8 _ 8D. 44 24, 1C
        lea     ecx, [esp+18H]                          ; 100167BC _ 8D. 4C 24, 18
        push    eax                                     ; 100167C0 _ 50
        lea     edx, [esp+18H]                          ; 100167C1 _ 8D. 54 24, 18
        push    ecx                                     ; 100167C5 _ 51
        push    edx                                     ; 100167C6 _ 52
        call    ?_2425                                  ; 100167C7 _ E8, FFFFF6C4
        add     esp, 16                                 ; 100167CC _ 83. C4, 10
        test    eax, eax                                ; 100167CF _ 85. C0
        jnz     ?_2528                                  ; 100167D1 _ 75, 0E
        push    1                                       ; 100167D3 _ 6A, 01
        push    ?_5421                                  ; 100167D5 _ 68, 100312EC(d)
        push    3256                                    ; 100167DA _ 68, 00000CB8
        jmp     ?_2525                                  ; 100167DF _ EB, BC
