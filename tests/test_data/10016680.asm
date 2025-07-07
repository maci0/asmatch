; ---- 10016680 ----
?_2512: ; Local function
        push    ebx                                     ; 10016680 _ 53
        push    ebp                                     ; 10016681 _ 55
        mov     ebp, dword [esp+0CH]                    ; 10016682 _ 8B. 6C 24, 0C
        push    esi                                     ; 10016686 _ 56
        xor     ebx, ebx                                ; 10016687 _ 33. DB
        push    edi                                     ; 10016689 _ 57
        mov     esi, dword [ebp]                        ; 1001668A _ 8B. 75, 00
        test    esi, esi                                ; 1001668D _ 85. F6
        jnz     ?_2513                                  ; 1001668F _ 75, 08
        pop     edi                                     ; 10016691 _ 5F
        pop     esi                                     ; 10016692 _ 5E
        pop     ebp                                     ; 10016693 _ 5D
        or      eax, 0FFFFFFFFH                         ; 10016694 _ 83. C8, FF
        pop     ebx                                     ; 10016697 _ 5B
        ret                                             ; 10016698 _ C3

