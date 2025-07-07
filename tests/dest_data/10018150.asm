; ---- 10018150 ----
?_2770: ; Local function
        mov     eax, dword [esp+4H]                     ; 10018150 _ 8B. 44 24, 04
        dec     eax                                     ; 10018154 _ 48
        cmp     eax, 25                                 ; 10018155 _ 83. F8, 19
        ja      ?_2772                                  ; 10018158 _ 77, 12
        xor     ecx, ecx                                ; 1001815A _ 33. C9
        mov     cl, byte [?_2774+eax]                   ; 1001815C _ 8A. 88, 1001817C(d)
        jmp     near [?_2773+ecx*4]                     ; 10018162 _ FF. 24 8D, 10018174(d)

?_2771: xor     eax, eax                                ; 10018169 _ 33. C0
        ret                                             ; 1001816B _ C3

