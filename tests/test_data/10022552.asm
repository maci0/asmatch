; ---- 10022552 ----
?_4625: ; Local function
        mov     ax, word [ebp-4H]                       ; 10022552 _ 66: 8B. 45, FC
        pop     esi                                     ; 10022556 _ 5E
        mov     word [ebx+0AH], ax                      ; 10022557 _ 66: 89. 43, 0A
        pop     ebx                                     ; 1002255B _ 5B
        leave                                           ; 1002255C _ C9
        ret                                             ; 1002255D _ C3
