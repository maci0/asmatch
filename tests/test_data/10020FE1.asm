; ---- 10020FE1 ----
?_4353: ; Local function
        push    0                                       ; 10020FE1 _ 6A, 00
        push    dword [esp+10H]                         ; 10020FE3 _ FF. 74 24, 10
        push    dword [esp+10H]                         ; 10020FE7 _ FF. 74 24, 10
        push    dword [esp+10H]                         ; 10020FEB _ FF. 74 24, 10
        call    ?_4354                                  ; 10020FEF _ E8, 00000004
        add     esp, 16                                 ; 10020FF4 _ 83. C4, 10
        ret                                             ; 10020FF7 _ C3

