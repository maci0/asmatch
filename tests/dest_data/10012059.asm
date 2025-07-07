; ---- 10012059 ----
?_2069: ; Local function
        push    esi                                     ; 10012059 _ 56
        push    1                                       ; 1001205A _ 6A, 01
        lea     ecx, [ebx+18H]                          ; 1001205C _ 8D. 4B, 18
        push    1                                       ; 1001205F _ 6A, 01
        push    ecx                                     ; 10012061 _ 51
        call    ?_2085                                  ; 10012062 _ E8, 000003D9
        add     esp, 16                                 ; 10012067 _ 83. C4, 10
        test    eax, eax                                ; 1001206A _ 85. C0
        jnz     ?_2070                                  ; 1001206C _ 75, 06
        pop     edi                                     ; 1001206E _ 5F
        pop     esi                                     ; 1001206F _ 5E
        pop     ebp                                     ; 10012070 _ 5D
        pop     ebx                                     ; 10012071 _ 5B
        pop     ecx                                     ; 10012072 _ 59
        ret                                             ; 10012073 _ C3

