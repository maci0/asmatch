; ---- 1000D330 ----
?_1465: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000D330 _ 8B. 44 24, 08
        test    eax, eax                                ; 1000D334 _ 85. C0
        jz      ?_1466                                  ; 1000D336 _ 74, 03
        mov     byte [eax], 1                           ; 1000D338 _ C6. 00, 01
?_1466: xor     eax, eax                                ; 1000D33B _ 33. C0
        ret                                             ; 1000D33D _ C3

        nop                                             ; 1000D33E _ 90
        nop                                             ; 1000D33F _ 90

