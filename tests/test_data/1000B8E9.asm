; ---- 1000B8E9 ----
?_1231: ; Local function
        mov     eax, dword [edi+4H]                     ; 1000B8E9 _ 8B. 47, 04
        push    eax                                     ; 1000B8EC _ 50
        call    ?_2817                                  ; 1000B8ED _ E8, 0000CBAE
        mov     ebp, eax                                ; 1000B8F2 _ 8B. E8
        add     esp, 4                                  ; 1000B8F4 _ 83. C4, 04
        test    ebp, ebp                                ; 1000B8F7 _ 85. ED
        jnz     ?_1232                                  ; 1000B8F9 _ 75, 05
        pop     edi                                     ; 1000B8FB _ 5F
        pop     esi                                     ; 1000B8FC _ 5E
        pop     ebp                                     ; 1000B8FD _ 5D
        pop     ebx                                     ; 1000B8FE _ 5B
        ret                                             ; 1000B8FF _ C3
