; ---- 10017252 ----
?_2628: ; Local function
        mov     al, byte [esi]                          ; 10017252 _ 8A. 06
        cmp     al, bl                                  ; 10017254 _ 3A. C3
        jnz     ?_2629                                  ; 10017256 _ 75, 08
        pop     esi                                     ; 10017258 _ 5E
        mov     eax, 4294967294                         ; 10017259 _ B8, FFFFFFFE
        pop     ebx                                     ; 1001725E _ 5B
        ret                                             ; 1001725F _ C3
