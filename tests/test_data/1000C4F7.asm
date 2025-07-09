; ---- 1000C4F7 ----
?_1313: ; Local function
        push    edi                                     ; 1000C4F7 _ 57
        push    1                                       ; 1000C4F8 _ 6A, 01
        lea     ecx, [esp+18H]                          ; 1000C4FA _ 8D. 4C 24, 18
        push    4                                       ; 1000C4FE _ 6A, 04
        push    ecx                                     ; 1000C500 _ 51
        call    ?_2085                                  ; 1000C501 _ E8, 00005F3A
        add     esp, 16                                 ; 1000C506 _ 83. C4, 10
        test    eax, eax                                ; 1000C509 _ 85. C0
        jnz     ?_1314                                  ; 1000C50B _ 75, 07
        pop     edi                                     ; 1000C50D _ 5F
        pop     esi                                     ; 1000C50E _ 5E
        pop     ebx                                     ; 1000C50F _ 5B
        add     esp, 60                                 ; 1000C510 _ 83. C4, 3C
        ret                                             ; 1000C513 _ C3
