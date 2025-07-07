; ---- 1002246A ----
?_4619: ; Local function
        mov     eax, dword [esp+4H]                     ; 1002246A _ 8B. 44 24, 04
        push    esi                                     ; 1002246E _ 56
        push    edi                                     ; 1002246F _ 57
        mov     edx, dword [eax+8H]                     ; 10022470 _ 8B. 50, 08
        mov     ecx, dword [eax+4H]                     ; 10022473 _ 8B. 48, 04
        mov     esi, edx                                ; 10022476 _ 8B. F2
        mov     edi, ecx                                ; 10022478 _ 8B. F9
        shl     esi, 31                                 ; 1002247A _ C1. E6, 1F
        shr     ecx, 1                                  ; 1002247D _ D1. E9
        or      ecx, esi                                ; 1002247F _ 0B. CE
        mov     dword [eax+4H], ecx                     ; 10022481 _ 89. 48, 04
        mov     ecx, dword [eax]                        ; 10022484 _ 8B. 08
        shl     edi, 31                                 ; 10022486 _ C1. E7, 1F
        shr     ecx, 1                                  ; 10022489 _ D1. E9
        shr     edx, 1                                  ; 1002248B _ D1. EA
        or      ecx, edi                                ; 1002248D _ 0B. CF
        pop     edi                                     ; 1002248F _ 5F
        mov     dword [eax+8H], edx                     ; 10022490 _ 89. 50, 08
        mov     dword [eax], ecx                        ; 10022493 _ 89. 08
        pop     esi                                     ; 10022495 _ 5E
        ret                                             ; 10022496 _ C3

