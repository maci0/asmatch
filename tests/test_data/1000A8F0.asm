; ---- 1000A8F0 ----
?_1105: ; Local function
        push    ebx                                     ; 1000A8F0 _ 53
        push    ebp                                     ; 1000A8F1 _ 55
        mov     ebp, dword [esp+0CH]                    ; 1000A8F2 _ 8B. 6C 24, 0C
        mov     ebx, dword [ebp+2641F8H]                ; 1000A8F6 _ 8B. 9D, 002641F8
        test    ebx, ebx                                ; 1000A8FC _ 85. DB
        jnz     ?_1106                                  ; 1000A8FE _ 75, 1F
        push    1                                       ; 1000A900 _ 6A, 01
        push    ?_5231                                  ; 1000A902 _ 68, 10029AA8(d)
        push    1649                                    ; 1000A907 _ 68, 00000671
        push    ?_5209                                  ; 1000A90C _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A911 _ E8, FFFF8D2A
        add     esp, 16                                 ; 1000A916 _ 83. C4, 10
        or      eax, 0FFFFFFFFH                         ; 1000A919 _ 83. C8, FF
        pop     ebp                                     ; 1000A91C _ 5D
        pop     ebx                                     ; 1000A91D _ 5B
        ret                                             ; 1000A91E _ C3
