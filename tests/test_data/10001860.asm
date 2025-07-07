; ---- 10001860 ----
?_0054: ; Local function
        mov     eax, dword [esp+4H]                     ; 10001860 _ 8B. 44 24, 04
        mov     ecx, dword [esp+8H]                     ; 10001864 _ 8B. 4C 24, 08
        push    esi                                     ; 10001868 _ 56
        push    edi                                     ; 10001869 _ 57
        mov     esi, dword [eax+8H]                     ; 1000186A _ 8B. 70, 08
        mov     edi, dword [eax+14H]                    ; 1000186D _ 8B. 78, 14
        mov     edx, ecx                                ; 10001870 _ 8B. D1
        shr     edx, 8                                  ; 10001872 _ C1. EA, 08
        mov     byte [esi+edi], dl                      ; 10001875 _ 88. 14 3E
        mov     edx, dword [eax+14H]                    ; 10001878 _ 8B. 50, 14
        mov     esi, dword [eax+8H]                     ; 1000187B _ 8B. 70, 08
        inc     edx                                     ; 1000187E _ 42
        mov     dword [eax+14H], edx                    ; 1000187F _ 89. 50, 14
        pop     edi                                     ; 10001882 _ 5F
        mov     byte [esi+edx], cl                      ; 10001883 _ 88. 0C 16
        mov     ecx, dword [eax+14H]                    ; 10001886 _ 8B. 48, 14
        inc     ecx                                     ; 10001889 _ 41
        pop     esi                                     ; 1000188A _ 5E
        mov     dword [eax+14H], ecx                    ; 1000188B _ 89. 48, 14
        ret                                             ; 1000188E _ C3

        nop                                             ; 1000188F _ 90

