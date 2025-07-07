; ---- 1001549D ----
?_2364: ; Local function
        cmp     cl, 2                                   ; 1001549D _ 80. F9, 02
        jnz     ?_2365                                  ; 100154A0 _ 75, 15
        mov     eax, dword [esi+5DH]                    ; 100154A2 _ 8B. 46, 5D
        push    19                                      ; 100154A5 _ 6A, 13
        push    0                                       ; 100154A7 _ 6A, 00
        push    1                                       ; 100154A9 _ 6A, 01
        push    eax                                     ; 100154AB _ 50
        call    ?_2482                                  ; 100154AC _ E8, 00000FAF
        add     esp, 16                                 ; 100154B1 _ 83. C4, 10
        pop     edi                                     ; 100154B4 _ 5F
        pop     esi                                     ; 100154B5 _ 5E
        ret                                             ; 100154B6 _ C3

