; ---- 1001A681 ----
?_3086: ; Local function
        push    0                                       ; 1001A681 _ 6A, 00
        push    1                                       ; 1001A683 _ 6A, 01
        push    dword [esp+0CH]                         ; 1001A685 _ FF. 74 24, 0C
        call    ?_3088                                  ; 1001A689 _ E8, 00000013
        add     esp, 12                                 ; 1001A68E _ 83. C4, 0C
        ret                                             ; 1001A691 _ C3
