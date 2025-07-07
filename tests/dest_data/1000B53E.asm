; ---- 1000B53E ----
?_1188: ; Local function
        cmp     ebp, 42                                 ; 1000B53E _ 83. FD, 2A
        jl      ?_1189                                  ; 1000B541 _ 7C, 07
        pop     esi                                     ; 1000B543 _ 5E
        pop     ebp                                     ; 1000B544 _ 5D
        xor     eax, eax                                ; 1000B545 _ 33. C0
        pop     ebx                                     ; 1000B547 _ 5B
        pop     ecx                                     ; 1000B548 _ 59
        ret                                             ; 1000B549 _ C3

