; ---- 10018530 ----
?_2824: ; Local function
        mov     eax, dword [esp+4H]                     ; 10018530 _ 8B. 44 24, 04
        sub     esp, 1100                               ; 10018534 _ 81. EC, 0000044C
        push    ebx                                     ; 1001853A _ 53
        push    ebp                                     ; 1001853B _ 55
        push    esi                                     ; 1001853C _ 56
        push    edi                                     ; 1001853D _ 57
        push    eax                                     ; 1001853E _ 50
        call    ?_2817                                  ; 1001853F _ E8, FFFFFF5C
        mov     ebp, eax                                ; 10018544 _ 8B. E8
        add     esp, 4                                  ; 10018546 _ 83. C4, 04
        test    ebp, ebp                                ; 10018549 _ 85. ED
        jnz     ?_2825                                  ; 1001854B _ 75, 0E
        pop     edi                                     ; 1001854D _ 5F
        pop     esi                                     ; 1001854E _ 5E
        pop     ebp                                     ; 1001854F _ 5D
        or      eax, 0FFFFFFFFH                         ; 10018550 _ 83. C8, FF
        pop     ebx                                     ; 10018553 _ 5B
        add     esp, 1100                               ; 10018554 _ 81. C4, 0000044C
        ret                                             ; 1001855A _ C3
