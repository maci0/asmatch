; ---- 1001A527 ----
?_3071: ; Local function
        push    dword [esp+4H]                          ; 1001A527 _ FF. 74 24, 04
        call    ?_3589                                  ; 1001A52B _ E8, 0000284F
        test    eax, eax                                ; 1001A530 _ 85. C0
        pop     ecx                                     ; 1001A532 _ 59
        jz      ?_3072                                  ; 1001A533 _ 74, 08
        push    eax                                     ; 1001A535 _ 50
        call    ?_3584                                  ; 1001A536 _ E8, 00002752
        pop     ecx                                     ; 1001A53B _ 59
        ret                                             ; 1001A53C _ C3

