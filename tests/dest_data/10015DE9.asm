; ---- 10015DE9 ----
?_2417: ; Local function
        mov     ecx, eax                                ; 10015DE9 _ 8B. C8
        add     esi, eax                                ; 10015DEB _ 03. F0
        shl     ecx, 5                                  ; 10015DED _ C1. E1, 05
        add     ecx, eax                                ; 10015DF0 _ 03. C8
        lea     eax, [esi+ecx*2]                        ; 10015DF2 _ 8D. 04 4E
        pop     esi                                     ; 10015DF5 _ 5E
        ret                                             ; 10015DF6 _ C3

        nop                                             ; 10015DF7 _ 90
        nop                                             ; 10015DF8 _ 90
        nop                                             ; 10015DF9 _ 90
        nop                                             ; 10015DFA _ 90
        nop                                             ; 10015DFB _ 90
        nop                                             ; 10015DFC _ 90
        nop                                             ; 10015DFD _ 90
        nop                                             ; 10015DFE _ 90
        nop                                             ; 10015DFF _ 90

