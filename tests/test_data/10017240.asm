; ---- 10017240 ----
?_2627: ; Local function
        push    ebx                                     ; 10017240 _ 53
        push    esi                                     ; 10017241 _ 56
        mov     esi, dword [esp+0CH]                    ; 10017242 _ 8B. 74 24, 0C
        xor     ebx, ebx                                ; 10017246 _ 33. DB
        cmp     esi, ebx                                ; 10017248 _ 3B. F3
        jnz     ?_2628                                  ; 1001724A _ 75, 06
        pop     esi                                     ; 1001724C _ 5E
        or      eax, 0FFFFFFFFH                         ; 1001724D _ 83. C8, FF
        pop     ebx                                     ; 10017250 _ 5B
        ret                                             ; 10017251 _ C3
