; ---- 1000FF10 ----
?_1829: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000FF10 _ 8B. 44 24, 08
        xor     ecx, ecx                                ; 1000FF14 _ 33. C9
        cmp     eax, ecx                                ; 1000FF16 _ 3B. C1
        jz      ?_1830                                  ; 1000FF18 _ 74, 09
        mov     byte [eax+1H], cl                       ; 1000FF1A _ 88. 48, 01
        mov     dword [eax+6H], ecx                     ; 1000FF1D _ 89. 48, 06
        mov     byte [eax], 1                           ; 1000FF20 _ C6. 00, 01
?_1830: xor     eax, eax                                ; 1000FF23 _ 33. C0
        ret                                             ; 1000FF25 _ C3

        nop                                             ; 1000FF26 _ 90
        nop                                             ; 1000FF27 _ 90
        nop                                             ; 1000FF28 _ 90
        nop                                             ; 1000FF29 _ 90
        nop                                             ; 1000FF2A _ 90
        nop                                             ; 1000FF2B _ 90
        nop                                             ; 1000FF2C _ 90
        nop                                             ; 1000FF2D _ 90
        nop                                             ; 1000FF2E _ 90
        nop                                             ; 1000FF2F _ 90

