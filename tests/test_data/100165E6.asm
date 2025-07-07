; ---- 100165E6 ----
?_2503: ; Local function
        mov     esi, dword [ebp]                        ; 100165E6 _ 8B. 75, 00
        test    esi, esi                                ; 100165E9 _ 85. F6
        jnz     ?_2504                                  ; 100165EB _ 75, 08
        pop     edi                                     ; 100165ED _ 5F
        pop     esi                                     ; 100165EE _ 5E
        pop     ebp                                     ; 100165EF _ 5D
        or      eax, 0FFFFFFFFH                         ; 100165F0 _ 83. C8, FF
        pop     ebx                                     ; 100165F3 _ 5B
        ret                                             ; 100165F4 _ C3

