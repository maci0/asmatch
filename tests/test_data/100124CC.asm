; ---- 100124CC ----
?_2088: ; Local function
        push    esi                                     ; 100124CC _ 56
        push    1                                       ; 100124CD _ 6A, 01
        lea     edx, [edi+5H]                           ; 100124CF _ 8D. 57, 05
        push    32                                      ; 100124D2 _ 6A, 20
        push    edx                                     ; 100124D4 _ 52
        call    ?_2085                                  ; 100124D5 _ E8, FFFFFF66
        add     esp, 16                                 ; 100124DA _ 83. C4, 10
        test    eax, eax                                ; 100124DD _ 85. C0
        jnz     ?_2089                                  ; 100124DF _ 75, 06
        pop     edi                                     ; 100124E1 _ 5F
        pop     esi                                     ; 100124E2 _ 5E
        pop     ebp                                     ; 100124E3 _ 5D
        pop     ebx                                     ; 100124E4 _ 5B
        pop     ecx                                     ; 100124E5 _ 59
        ret                                             ; 100124E6 _ C3

