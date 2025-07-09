; ---- 1000E6FA ----
?_1605: ; Local function
        mov     eax, dword [eax+14H]                    ; 1000E6FA _ 8B. 40, 14
        xor     edx, edx                                ; 1000E6FD _ 33. D2
        mov     dx, word [esi+14H]                      ; 1000E6FF _ 66: 8B. 56, 14
        push    edx                                     ; 1000E703 _ 52
        push    0                                       ; 1000E704 _ 6A, 00
        push    1                                       ; 1000E706 _ 6A, 01
        push    eax                                     ; 1000E708 _ 50
        call    ?_2482                                  ; 1000E709 _ E8, 00007D52
        add     esp, 16                                 ; 1000E70E _ 83. C4, 10
        test    eax, eax                                ; 1000E711 _ 85. C0
        jnz     ?_1606                                  ; 1000E713 _ 75, 07
        mov     eax, 1                                  ; 1000E715 _ B8, 00000001
        pop     esi                                     ; 1000E71A _ 5E
        ret                                             ; 1000E71B _ C3
