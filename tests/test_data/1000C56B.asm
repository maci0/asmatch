; ---- 1000C56B ----
?_1317: ; Local function
        push    edi                                     ; 1000C56B _ 57
        push    1                                       ; 1000C56C _ 6A, 01
        lea     edx, [esp+1FH]                          ; 1000C56E _ 8D. 54 24, 1F
        push    1                                       ; 1000C572 _ 6A, 01
        push    edx                                     ; 1000C574 _ 52
        call    ?_2085                                  ; 1000C575 _ E8, 00005EC6
        add     esp, 16                                 ; 1000C57A _ 83. C4, 10
        test    eax, eax                                ; 1000C57D _ 85. C0
        jnz     ?_1319                                  ; 1000C57F _ 75, 09
?_1318: pop     edi                                     ; 1000C581 _ 5F
        pop     esi                                     ; 1000C582 _ 5E
        xor     eax, eax                                ; 1000C583 _ 33. C0
        pop     ebx                                     ; 1000C585 _ 5B
        add     esp, 60                                 ; 1000C586 _ 83. C4, 3C
        ret                                             ; 1000C589 _ C3
