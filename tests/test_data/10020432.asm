; ---- 10020432 ----
?_4225: ; Local function
        mov     ecx, eax                                ; 10020432 _ 8B. C8
        and     eax, 1FH                                ; 10020434 _ 83. E0, 1F
        sar     ecx, 5                                  ; 10020437 _ C1. F9, 05
        lea     eax, [eax+eax*8]                        ; 1002043A _ 8D. 04 C0
        mov     ecx, dword [?_5809+ecx*4]               ; 1002043D _ 8B. 0C 8D, 11766460(d)
        mov     al, byte [ecx+eax*4+4H]                 ; 10020444 _ 8A. 44 81, 04
        and     eax, 40H                                ; 10020448 _ 83. E0, 40
        ret                                             ; 1002044B _ C3
