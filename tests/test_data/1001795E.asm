; ---- 1001795E ----
?_2689: ; Local function
        cmp     byte [edi], 4                           ; 1001795E _ 80. 3F, 04
        jnz     ?_2690                                  ; 10017961 _ 75, 15
        mov     edx, dword [esi+5DH]                    ; 10017963 _ 8B. 56, 5D
        push    84                                      ; 10017966 _ 6A, 54
        push    0                                       ; 10017968 _ 6A, 00
        push    1                                       ; 1001796A _ 6A, 01
        push    edx                                     ; 1001796C _ 52
        call    ?_2482                                  ; 1001796D _ E8, FFFFEAEE
        add     esp, 16                                 ; 10017972 _ 83. C4, 10
        pop     edi                                     ; 10017975 _ 5F
        pop     esi                                     ; 10017976 _ 5E
        ret                                             ; 10017977 _ C3
