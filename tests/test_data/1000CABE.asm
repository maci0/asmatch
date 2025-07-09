; ---- 1000CABE ----
?_1390: ; Local function
        cmp     eax, -3                                 ; 1000CABE _ 83. F8, FD
        jnz     ?_1391                                  ; 1000CAC1 _ 75, 25
        mov     edx, dword [esp+4H]                     ; 1000CAC3 _ 8B. 54 24, 04
        xor     ecx, ecx                                ; 1000CAC7 _ 33. C9
        mov     cl, byte [edx+3H]                       ; 1000CAC9 _ 8A. 4A, 03
        mov     eax, ecx                                ; 1000CACC _ 8B. C1
        shl     eax, 4                                  ; 1000CACE _ C1. E0, 04
        add     eax, ecx                                ; 1000CAD1 _ 03. C1
        shl     eax, 8                                  ; 1000CAD3 _ C1. E0, 08
        add     eax, ecx                                ; 1000CAD6 _ 03. C1
        shl     eax, 4                                  ; 1000CAD8 _ C1. E0, 04
        add     eax, ecx                                ; 1000CADB _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000CADD _ 8D. 04 C0
        mov     eax, dword [?_5767+eax*4]               ; 1000CAE0 _ 8B. 04 85, 10442D04(d)
        ret                                             ; 1000CAE7 _ C3
