; ---- 1001251D ----
?_2091: ; Local function
        cmp     dword [?_5338], 65587                   ; 1001251D _ 81. 3D, 1002D4EC(d), 00010033
        jl      ?_2092                                  ; 10012527 _ 7C, 1B
        push    esi                                     ; 10012529 _ 56
        push    1                                       ; 1001252A _ 6A, 01
        lea     edx, [edi+31H]                          ; 1001252C _ 8D. 57, 31
        push    1                                       ; 1001252F _ 6A, 01
        push    edx                                     ; 10012531 _ 52
        call    ?_2085                                  ; 10012532 _ E8, FFFFFF09
        add     esp, 16                                 ; 10012537 _ 83. C4, 10
        test    eax, eax                                ; 1001253A _ 85. C0
        jnz     ?_2092                                  ; 1001253C _ 75, 06
        pop     edi                                     ; 1001253E _ 5F
        pop     esi                                     ; 1001253F _ 5E
        pop     ebp                                     ; 10012540 _ 5D
        pop     ebx                                     ; 10012541 _ 5B
        pop     ecx                                     ; 10012542 _ 59
        ret                                             ; 10012543 _ C3
