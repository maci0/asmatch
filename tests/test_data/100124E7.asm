; ---- 100124E7 ----
?_2089: ; Local function
        push    esi                                     ; 100124E7 _ 56
        push    1                                       ; 100124E8 _ 6A, 01
        lea     eax, [edi+28H]                          ; 100124EA _ 8D. 47, 28
        push    8                                       ; 100124ED _ 6A, 08
        push    eax                                     ; 100124EF _ 50
        call    ?_2085                                  ; 100124F0 _ E8, FFFFFF4B
        add     esp, 16                                 ; 100124F5 _ 83. C4, 10
        test    eax, eax                                ; 100124F8 _ 85. C0
        jnz     ?_2090                                  ; 100124FA _ 75, 06
        pop     edi                                     ; 100124FC _ 5F
        pop     esi                                     ; 100124FD _ 5E
        pop     ebp                                     ; 100124FE _ 5D
        pop     ebx                                     ; 100124FF _ 5B
        pop     ecx                                     ; 10012500 _ 59
        ret                                             ; 10012501 _ C3
