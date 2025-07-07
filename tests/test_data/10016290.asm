; ---- 10016290 ----
?_2461: ; Local function
        mov     eax, dword [?_5546]                     ; 10016290 _ A1, 10035468(d)
        push    ebx                                     ; 10016295 _ 53
        xor     ebx, ebx                                ; 10016296 _ 33. DB
        xor     cl, cl                                  ; 10016298 _ 32. C9
        test    eax, eax                                ; 1001629A _ 85. C0
        jnz     ?_2462                                  ; 1001629C _ 75, 02
        pop     ebx                                     ; 1001629E _ 5B
        ret                                             ; 1001629F _ C3

