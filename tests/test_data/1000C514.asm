; ---- 1000C514 ----
?_1314: ; Local function
        push    edi                                     ; 1000C514 _ 57
        push    1                                       ; 1000C515 _ 6A, 01
        lea     edx, [esp+1CH]                          ; 1000C517 _ 8D. 54 24, 1C
        push    1                                       ; 1000C51B _ 6A, 01
        push    edx                                     ; 1000C51D _ 52
        call    ?_2085                                  ; 1000C51E _ E8, 00005F1D
        add     esp, 16                                 ; 1000C523 _ 83. C4, 10
        test    eax, eax                                ; 1000C526 _ 85. C0
        jnz     ?_1315                                  ; 1000C528 _ 75, 07
        pop     edi                                     ; 1000C52A _ 5F
        pop     esi                                     ; 1000C52B _ 5E
        pop     ebx                                     ; 1000C52C _ 5B
        add     esp, 60                                 ; 1000C52D _ 83. C4, 3C
        ret                                             ; 1000C530 _ C3

