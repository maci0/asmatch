; ---- 1000FF60 ----
?_1833: ; Local function
        push    ebx                                     ; 1000FF60 _ 53
        mov     ebx, dword [esp+8H]                     ; 1000FF61 _ 8B. 5C 24, 08
        push    ebx                                     ; 1000FF65 _ 53
        call    ?_1456                                  ; 1000FF66 _ E8, FFFFD2F5
        add     esp, 4                                  ; 1000FF6B _ 83. C4, 04
        test    eax, eax                                ; 1000FF6E _ 85. C0
        jz      ?_1835                                  ; 1000FF70 _ 74, 12
        mov     eax, dword [esp+0CH]                    ; 1000FF72 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000FF76 _ 85. C0
        jz      ?_1834                                  ; 1000FF78 _ 74, 03
        mov     byte [eax], 2                           ; 1000FF7A _ C6. 00, 02
?_1834: mov     eax, 1                                  ; 1000FF7D _ B8, 00000001
        pop     ebx                                     ; 1000FF82 _ 5B
        ret                                             ; 1000FF83 _ C3
