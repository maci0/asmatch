; ---- 1001A670 ----
?_3085: ; Local function
        push    0                                       ; 1001A670 _ 6A, 00
        push    0                                       ; 1001A672 _ 6A, 00
        push    dword [esp+0CH]                         ; 1001A674 _ FF. 74 24, 0C
        call    ?_3088                                  ; 1001A678 _ E8, 00000024
        add     esp, 12                                 ; 1001A67D _ 83. C4, 0C
        ret                                             ; 1001A680 _ C3

