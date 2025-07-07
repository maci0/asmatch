; ---- 100120AA ----
?_2072: ; Local function
        push    esi                                     ; 100120AA _ 56
        push    1                                       ; 100120AB _ 6A, 01
        lea     ecx, [ebx+1BH]                          ; 100120AD _ 8D. 4B, 1B
        push    1                                       ; 100120B0 _ 6A, 01
        push    ecx                                     ; 100120B2 _ 51
        call    ?_2085                                  ; 100120B3 _ E8, 00000388
        add     esp, 16                                 ; 100120B8 _ 83. C4, 10
        test    eax, eax                                ; 100120BB _ 85. C0
        jnz     ?_2074                                  ; 100120BD _ 75, 08
?_2073: pop     edi                                     ; 100120BF _ 5F
        pop     esi                                     ; 100120C0 _ 5E
        pop     ebp                                     ; 100120C1 _ 5D
        xor     eax, eax                                ; 100120C2 _ 33. C0
        pop     ebx                                     ; 100120C4 _ 5B
        pop     ecx                                     ; 100120C5 _ 59
        ret                                             ; 100120C6 _ C3

