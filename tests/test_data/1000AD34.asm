; ---- 1000AD34 ----
?_1137: ; Local function
        pop     edi                                     ; 1000AD34 _ 5F
        pop     esi                                     ; 1000AD35 _ 5E
        pop     ebp                                     ; 1000AD36 _ 5D
        or      eax, 0FFFFFFFFH                         ; 1000AD37 _ 83. C8, FF
        pop     ebx                                     ; 1000AD3A _ 5B
        add     esp, 8                                  ; 1000AD3B _ 83. C4, 08
        ret                                             ; 1000AD3E _ C3

        nop                                             ; 1000AD3F _ 90
