; ---- 10012074 ----
?_2070: ; Local function
        push    esi                                     ; 10012074 _ 56
        push    1                                       ; 10012075 _ 6A, 01
        lea     edx, [ebx+19H]                          ; 10012077 _ 8D. 53, 19
        push    1                                       ; 1001207A _ 6A, 01
        push    edx                                     ; 1001207C _ 52
        call    ?_2085                                  ; 1001207D _ E8, 000003BE
        add     esp, 16                                 ; 10012082 _ 83. C4, 10
        test    eax, eax                                ; 10012085 _ 85. C0
        jnz     ?_2071                                  ; 10012087 _ 75, 06
        pop     edi                                     ; 10012089 _ 5F
        pop     esi                                     ; 1001208A _ 5E
        pop     ebp                                     ; 1001208B _ 5D
        pop     ebx                                     ; 1001208C _ 5B
        pop     ecx                                     ; 1001208D _ 59
        ret                                             ; 1001208E _ C3

