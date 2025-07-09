; ---- 1000FB90 ----
?_1793: ; Local function
        xor     edx, edx                                ; 1000FB90 _ 33. D2
        mov     dl, byte [esi+3H]                       ; 1000FB92 _ 8A. 56, 03
        mov     ecx, edx                                ; 1000FB95 _ 8B. CA
        shl     ecx, 4                                  ; 1000FB97 _ C1. E1, 04
        add     ecx, edx                                ; 1000FB9A _ 03. CA
        shl     ecx, 8                                  ; 1000FB9C _ C1. E1, 08
        add     ecx, edx                                ; 1000FB9F _ 03. CA
        shl     ecx, 4                                  ; 1000FBA1 _ C1. E1, 04
        add     ecx, edx                                ; 1000FBA4 _ 03. CA
        mov     edx, dword [eax+1H]                     ; 1000FBA6 _ 8B. 50, 01
        lea     ecx, [ecx+ecx*8]                        ; 1000FBA9 _ 8D. 0C C9
        mov     dword [?_5767+ecx*4], edx               ; 1000FBAC _ 89. 14 8D, 10442D04(d)
        mov     ecx, dword [esp+0CH]                    ; 1000FBB3 _ 8B. 4C 24, 0C
        test    ecx, ecx                                ; 1000FBB7 _ 85. C9
        jz      ?_1794                                  ; 1000FBB9 _ 74, 0A
        mov     byte [ecx], 1                           ; 1000FBBB _ C6. 01, 01
        mov     byte [ecx+1H], 2                        ; 1000FBBE _ C6. 41, 01, 02
        mov     dword [ecx+6H], eax                     ; 1000FBC2 _ 89. 41, 06
?_1794: xor     eax, eax                                ; 1000FBC5 _ 33. C0
        pop     esi                                     ; 1000FBC7 _ 5E
        ret                                             ; 1000FBC8 _ C3

        nop                                             ; 1000FBC9 _ 90
        nop                                             ; 1000FBCA _ 90
        nop                                             ; 1000FBCB _ 90
        nop                                             ; 1000FBCC _ 90
        nop                                             ; 1000FBCD _ 90
        nop                                             ; 1000FBCE _ 90
        nop                                             ; 1000FBCF _ 90
