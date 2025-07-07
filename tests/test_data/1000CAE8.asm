; ---- 1000CAE8 ----
?_1391: ; Local function
        cmp     eax, -4                                 ; 1000CAE8 _ 83. F8, FC
        jnz     ?_1392                                  ; 1000CAEB _ 75, 24
        mov     edx, dword [esp+4H]                     ; 1000CAED _ 8B. 54 24, 04
        xor     ecx, ecx                                ; 1000CAF1 _ 33. C9
        mov     cl, byte [edx+3H]                       ; 1000CAF3 _ 8A. 4A, 03
        mov     eax, ecx                                ; 1000CAF6 _ 8B. C1
        shl     eax, 4                                  ; 1000CAF8 _ C1. E0, 04
        add     eax, ecx                                ; 1000CAFB _ 03. C1
        shl     eax, 8                                  ; 1000CAFD _ C1. E0, 08
        add     eax, ecx                                ; 1000CB00 _ 03. C1
        shl     eax, 4                                  ; 1000CB02 _ C1. E0, 04
        add     eax, ecx                                ; 1000CB05 _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000CB07 _ 8D. 04 C0
        mov     eax, dword [?_5768+eax*4]               ; 1000CB0A _ 8B. 04 85, 10442D08(d)
?_1392: ret                                             ; 1000CB11 _ C3

        nop                                             ; 1000CB12 _ 90
        nop                                             ; 1000CB13 _ 90
        nop                                             ; 1000CB14 _ 90
        nop                                             ; 1000CB15 _ 90
        nop                                             ; 1000CB16 _ 90
        nop                                             ; 1000CB17 _ 90
        nop                                             ; 1000CB18 _ 90
        nop                                             ; 1000CB19 _ 90
        nop                                             ; 1000CB1A _ 90
        nop                                             ; 1000CB1B _ 90
        nop                                             ; 1000CB1C _ 90
        nop                                             ; 1000CB1D _ 90
        nop                                             ; 1000CB1E _ 90
        nop                                             ; 1000CB1F _ 90

