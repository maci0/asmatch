; ---- 1000E787 ----
?_1610: ; Local function
        xor     edx, edx                                ; 1000E787 _ 33. D2
        push    edi                                     ; 1000E789 _ 57
        mov     dl, byte [esi+3H]                       ; 1000E78A _ 8A. 56, 03
        add     esi, 22                                 ; 1000E78D _ 83. C6, 16
        mov     ecx, edx                                ; 1000E790 _ 8B. CA
        lea     edi, [eax+1CH]                          ; 1000E792 _ 8D. 78, 1C
        shl     ecx, 4                                  ; 1000E795 _ C1. E1, 04
        add     ecx, edx                                ; 1000E798 _ 03. CA
        shl     ecx, 8                                  ; 1000E79A _ C1. E1, 08
        add     ecx, edx                                ; 1000E79D _ 03. CA
        shl     ecx, 4                                  ; 1000E79F _ C1. E1, 04
        add     ecx, edx                                ; 1000E7A2 _ 03. CA
        mov     edx, dword [eax+2H]                     ; 1000E7A4 _ 8B. 50, 02
        mov     eax, dword [esp+10H]                    ; 1000E7A7 _ 8B. 44 24, 10
        lea     ecx, [ecx+ecx*8]                        ; 1000E7AB _ 8D. 0C C9
        test    eax, eax                                ; 1000E7AE _ 85. C0
        mov     dword [?_5768+ecx*4], edx               ; 1000E7B0 _ 89. 14 8D, 10442D08(d)
        mov     ecx, 7                                  ; 1000E7B7 _ B9, 00000007
        rep movsd                                       ; 1000E7BC _ F3: A5
        movsw                                           ; 1000E7BE _ 66: A5
        movsb                                           ; 1000E7C0 _ A4
        pop     edi                                     ; 1000E7C1 _ 5F
        jz      ?_1611                                  ; 1000E7C2 _ 74, 03
        mov     byte [eax], 1                           ; 1000E7C4 _ C6. 00, 01
?_1611: xor     eax, eax                                ; 1000E7C7 _ 33. C0
        pop     esi                                     ; 1000E7C9 _ 5E
        ret                                             ; 1000E7CA _ C3

        nop                                             ; 1000E7CB _ 90
        nop                                             ; 1000E7CC _ 90
        nop                                             ; 1000E7CD _ 90
        nop                                             ; 1000E7CE _ 90
        nop                                             ; 1000E7CF _ 90

