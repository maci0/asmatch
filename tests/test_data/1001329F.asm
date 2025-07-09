; ---- 1001329F ----
?_2156: ; Local function
        push    edi                                     ; 1001329F _ 57
        push    1                                       ; 100132A0 _ 6A, 01
        push    4                                       ; 100132A2 _ 6A, 04
        push    ?_5549                                  ; 100132A4 _ 68, 10035474(d)
        call    ?_2085                                  ; 100132A9 _ E8, FFFFF192
        add     esp, 16                                 ; 100132AE _ 83. C4, 10
        test    eax, eax                                ; 100132B1 _ 85. C0
        jnz     ?_2158                                  ; 100132B3 _ 75, 0A
?_2157: pop     edi                                     ; 100132B5 _ 5F
        pop     esi                                     ; 100132B6 _ 5E
        pop     ebp                                     ; 100132B7 _ 5D
        xor     eax, eax                                ; 100132B8 _ 33. C0
        pop     ebx                                     ; 100132BA _ 5B
        add     esp, 12                                 ; 100132BB _ 83. C4, 0C
        ret                                             ; 100132BE _ C3
