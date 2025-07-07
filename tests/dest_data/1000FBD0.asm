; ---- 1000FBD0 ----
?_1795: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000FBD0 _ 8B. 44 24, 08
        xor     ecx, ecx                                ; 1000FBD4 _ 33. C9
        cmp     eax, ecx                                ; 1000FBD6 _ 3B. C1
        jz      ?_1796                                  ; 1000FBD8 _ 74, 09
        mov     byte [eax], 1                           ; 1000FBDA _ C6. 00, 01
        mov     byte [eax+1H], cl                       ; 1000FBDD _ 88. 48, 01
        mov     dword [eax+6H], ecx                     ; 1000FBE0 _ 89. 48, 06
?_1796: xor     eax, eax                                ; 1000FBE3 _ 33. C0
        ret                                             ; 1000FBE5 _ C3

        nop                                             ; 1000FBE6 _ 90
        nop                                             ; 1000FBE7 _ 90
        nop                                             ; 1000FBE8 _ 90
        nop                                             ; 1000FBE9 _ 90
        nop                                             ; 1000FBEA _ 90
        nop                                             ; 1000FBEB _ 90
        nop                                             ; 1000FBEC _ 90
        nop                                             ; 1000FBED _ 90
        nop                                             ; 1000FBEE _ 90
        nop                                             ; 1000FBEF _ 90

