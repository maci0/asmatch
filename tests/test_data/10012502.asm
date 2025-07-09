; ---- 10012502 ----
?_2090: ; Local function
        push    esi                                     ; 10012502 _ 56
        push    1                                       ; 10012503 _ 6A, 01
        lea     ecx, [edi+30H]                          ; 10012505 _ 8D. 4F, 30
        push    1                                       ; 10012508 _ 6A, 01
        push    ecx                                     ; 1001250A _ 51
        call    ?_2085                                  ; 1001250B _ E8, FFFFFF30
        add     esp, 16                                 ; 10012510 _ 83. C4, 10
        test    eax, eax                                ; 10012513 _ 85. C0
        jnz     ?_2091                                  ; 10012515 _ 75, 06
        pop     edi                                     ; 10012517 _ 5F
        pop     esi                                     ; 10012518 _ 5E
        pop     ebp                                     ; 10012519 _ 5D
        pop     ebx                                     ; 1001251A _ 5B
        pop     ecx                                     ; 1001251B _ 59
        ret                                             ; 1001251C _ C3
