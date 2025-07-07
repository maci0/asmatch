; ---- 1001208F ----
?_2071: ; Local function
        push    esi                                     ; 1001208F _ 56
        push    1                                       ; 10012090 _ 6A, 01
        lea     eax, [ebx+1AH]                          ; 10012092 _ 8D. 43, 1A
        push    1                                       ; 10012095 _ 6A, 01
        push    eax                                     ; 10012097 _ 50
        call    ?_2085                                  ; 10012098 _ E8, 000003A3
        add     esp, 16                                 ; 1001209D _ 83. C4, 10
        test    eax, eax                                ; 100120A0 _ 85. C0
        jnz     ?_2072                                  ; 100120A2 _ 75, 06
        pop     edi                                     ; 100120A4 _ 5F
        pop     esi                                     ; 100120A5 _ 5E
        pop     ebp                                     ; 100120A6 _ 5D
        pop     ebx                                     ; 100120A7 _ 5B
        pop     ecx                                     ; 100120A8 _ 59
        ret                                             ; 100120A9 _ C3

