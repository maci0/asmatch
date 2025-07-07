; ---- 100111A5 ----
?_1980: ; Local function
        pop     edi                                     ; 100111A5 _ 5F
        pop     esi                                     ; 100111A6 _ 5E
        or      eax, 0FFFFFFFFH                         ; 100111A7 _ 83. C8, FF
        pop     ebx                                     ; 100111AA _ 5B
        pop     ecx                                     ; 100111AB _ 59
        ret                                             ; 100111AC _ C3

        nop                                             ; 100111AD _ 90
        nop                                             ; 100111AE _ 90
        nop                                             ; 100111AF _ 90

