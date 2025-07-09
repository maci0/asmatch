; ---- 100165D0 ----
?_2502: ; Local function
        push    ebx                                     ; 100165D0 _ 53
        push    ebp                                     ; 100165D1 _ 55
        mov     ebp, dword [esp+0CH]                    ; 100165D2 _ 8B. 6C 24, 0C
        xor     ebx, ebx                                ; 100165D6 _ 33. DB
        push    esi                                     ; 100165D8 _ 56
        push    edi                                     ; 100165D9 _ 57
        test    ebp, ebp                                ; 100165DA _ 85. ED
        jnz     ?_2503                                  ; 100165DC _ 75, 08
        pop     edi                                     ; 100165DE _ 5F
        pop     esi                                     ; 100165DF _ 5E
        pop     ebp                                     ; 100165E0 _ 5D
        or      eax, 0FFFFFFFFH                         ; 100165E1 _ 83. C8, FF
        pop     ebx                                     ; 100165E4 _ 5B
        ret                                             ; 100165E5 _ C3
