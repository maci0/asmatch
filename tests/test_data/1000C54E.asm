; ---- 1000C54E ----
?_1316: ; Local function
        push    edi                                     ; 1000C54E _ 57
        push    1                                       ; 1000C54F _ 6A, 01
        lea     ecx, [esp+1EH]                          ; 1000C551 _ 8D. 4C 24, 1E
        push    1                                       ; 1000C555 _ 6A, 01
        push    ecx                                     ; 1000C557 _ 51
        call    ?_2085                                  ; 1000C558 _ E8, 00005EE3
        add     esp, 16                                 ; 1000C55D _ 83. C4, 10
        test    eax, eax                                ; 1000C560 _ 85. C0
        jnz     ?_1317                                  ; 1000C562 _ 75, 07
        pop     edi                                     ; 1000C564 _ 5F
        pop     esi                                     ; 1000C565 _ 5E
        pop     ebx                                     ; 1000C566 _ 5B
        add     esp, 60                                 ; 1000C567 _ 83. C4, 3C
        ret                                             ; 1000C56A _ C3
