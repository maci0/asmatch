; ---- 1000C531 ----
?_1315: ; Local function
        push    edi                                     ; 1000C531 _ 57
        push    1                                       ; 1000C532 _ 6A, 01
        lea     eax, [esp+1DH]                          ; 1000C534 _ 8D. 44 24, 1D
        push    1                                       ; 1000C538 _ 6A, 01
        push    eax                                     ; 1000C53A _ 50
        call    ?_2085                                  ; 1000C53B _ E8, 00005F00
        add     esp, 16                                 ; 1000C540 _ 83. C4, 10
        test    eax, eax                                ; 1000C543 _ 85. C0
        jnz     ?_1316                                  ; 1000C545 _ 75, 07
        pop     edi                                     ; 1000C547 _ 5F
        pop     esi                                     ; 1000C548 _ 5E
        pop     ebx                                     ; 1000C549 _ 5B
        add     esp, 60                                 ; 1000C54A _ 83. C4, 3C
        ret                                             ; 1000C54D _ C3

