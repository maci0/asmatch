; ---- 100154B7 ----
?_2365: ; Local function
        cmp     cl, 29                                  ; 100154B7 _ 80. F9, 1D
        jnz     ?_2366                                  ; 100154BA _ 75, 18
        mov     ecx, dword [esi+5DH]                    ; 100154BC _ 8B. 4E, 5D
        push    253                                     ; 100154BF _ 68, 000000FD
        push    0                                       ; 100154C4 _ 6A, 00
        push    1                                       ; 100154C6 _ 6A, 01
        push    ecx                                     ; 100154C8 _ 51
        call    ?_2482                                  ; 100154C9 _ E8, 00000F92
        add     esp, 16                                 ; 100154CE _ 83. C4, 10
        pop     edi                                     ; 100154D1 _ 5F
        pop     esi                                     ; 100154D2 _ 5E
        ret                                             ; 100154D3 _ C3

