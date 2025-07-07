; ---- 1000A9A0 ----
?_1110: ; Local function
        push    ebx                                     ; 1000A9A0 _ 53
        push    ebp                                     ; 1000A9A1 _ 55
        mov     ebp, dword [esp+0CH]                    ; 1000A9A2 _ 8B. 6C 24, 0C
        mov     ebx, dword [ebp+2641FCH]                ; 1000A9A6 _ 8B. 9D, 002641FC
        test    ebx, ebx                                ; 1000A9AC _ 85. DB
        jnz     ?_1111                                  ; 1000A9AE _ 75, 1F
        push    1                                       ; 1000A9B0 _ 6A, 01
        push    ?_5231                                  ; 1000A9B2 _ 68, 10029AA8(d)
        push    1712                                    ; 1000A9B7 _ 68, 000006B0
        push    ?_5209                                  ; 1000A9BC _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A9C1 _ E8, FFFF8C7A
        add     esp, 16                                 ; 1000A9C6 _ 83. C4, 10
        or      eax, 0FFFFFFFFH                         ; 1000A9C9 _ 83. C8, FF
        pop     ebp                                     ; 1000A9CC _ 5D
        pop     ebx                                     ; 1000A9CD _ 5B
        ret                                             ; 1000A9CE _ C3

