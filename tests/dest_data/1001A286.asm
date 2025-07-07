; ---- 1001A286 ----
?_3038: ; Local function
        push    64                                      ; 1001A286 _ 6A, 40
        push    dword [esp+0CH]                         ; 1001A288 _ FF. 74 24, 0C
        push    dword [esp+0CH]                         ; 1001A28C _ FF. 74 24, 0C
        call    ?_3036                                  ; 1001A290 _ E8, FFFFFFC0
        add     esp, 12                                 ; 1001A295 _ 83. C4, 0C
        ret                                             ; 1001A298 _ C3

