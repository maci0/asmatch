; ---- 1001047D ----
?_1883: ; Local function
        mov     esi, dword [esi+16CH]                   ; 1001047D _ 8B. B6, 0000016C
        push    esi                                     ; 10010483 _ 56
        mov     ecx, dword [esi+65H]                    ; 10010484 _ 8B. 4E, 65
        push    ecx                                     ; 10010487 _ 51
        push    eax                                     ; 10010488 _ 50
        call    ?_1293                                  ; 10010489 _ E8, FFFFBDF2
        add     esp, 12                                 ; 1001048E _ 83. C4, 0C
        xor     eax, eax                                ; 10010491 _ 33. C0
        pop     edi                                     ; 10010493 _ 5F
        pop     esi                                     ; 10010494 _ 5E
        ret                                             ; 10010495 _ C3

        nop                                             ; 10010496 _ 90
        nop                                             ; 10010497 _ 90
        nop                                             ; 10010498 _ 90
        nop                                             ; 10010499 _ 90
        nop                                             ; 1001049A _ 90
        nop                                             ; 1001049B _ 90
        nop                                             ; 1001049C _ 90
        nop                                             ; 1001049D _ 90
        nop                                             ; 1001049E _ 90
        nop                                             ; 1001049F _ 90
?_1884: mov     edx, dword [esp+4H]                     ; 100104A0 _ 8B. 54 24, 04
        xor     ecx, ecx                                ; 100104A4 _ 33. C9
        push    ebx                                     ; 100104A6 _ 53
        push    esi                                     ; 100104A7 _ 56
        mov     cl, byte [edx]                          ; 100104A8 _ 8A. 0A
        mov     esi, dword [?_5668]                     ; 100104AA _ 8B. 35, 100A8C30(d)
        add     esi, ecx                                ; 100104B0 _ 03. F1
        lea     eax, [ecx+ecx*2]                        ; 100104B2 _ 8D. 04 49
        shl     eax, 4                                  ; 100104B5 _ C1. E0, 04
        add     eax, ecx                                ; 100104B8 _ 03. C1
        mov     ecx, dword [edx+65H]                    ; 100104BA _ 8B. 4A, 65
        mov     dl, 1                                   ; 100104BD _ B2, 01
        lea     eax, [eax+eax*2]                        ; 100104BF _ 8D. 04 40
        lea     eax, [esi+eax*4]                        ; 100104C2 _ 8D. 04 86
        mov     al, byte [eax+247H]                     ; 100104C5 _ 8A. 80, 00000247
        cmp     al, dl                                  ; 100104CB _ 3A. C2
        jnz     ?_1885                                  ; 100104CD _ 75, 14
        mov     bl, byte [ecx+19H]                      ; 100104CF _ 8A. 59, 19
        mov     eax, 8                                  ; 100104D2 _ B8, 00000008
        cmp     bl, dl                                  ; 100104D7 _ 3A. DA
        jnz     ?_1890                                  ; 100104D9 _ 75, 49
        pop     esi                                     ; 100104DB _ 5E
        mov     eax, 12                                 ; 100104DC _ B8, 0000000C
        pop     ebx                                     ; 100104E1 _ 5B
        ret                                             ; 100104E2 _ C3

?_1885: cmp     al, 2                                   ; 100104E3 _ 3C, 02
        jnz     ?_1887                                  ; 100104E5 _ 75, 1C
        mov     bl, byte [ecx+19H]                      ; 100104E7 _ 8A. 59, 19
        mov     eax, 12                                 ; 100104EA _ B8, 0000000C
        cmp     bl, dl                                  ; 100104EF _ 3A. DA
        jnz     ?_1886                                  ; 100104F1 _ 75, 05
        mov     eax, 18                                 ; 100104F3 _ B8, 00000012
?_1886: cmp     byte [ecx+1AH], dl                      ; 100104F8 _ 38. 51, 1A
        jnz     ?_1890                                  ; 100104FB _ 75, 27
        pop     esi                                     ; 100104FD _ 5E
        add     eax, 2                                  ; 100104FE _ 83. C0, 02
        pop     ebx                                     ; 10010501 _ 5B
        ret                                             ; 10010502 _ C3

?_1887: mov     bl, byte [ecx+19H]                      ; 10010503 _ 8A. 59, 19
        mov     eax, 16                                 ; 10010506 _ B8, 00000010
        cmp     bl, dl                                  ; 1001050B _ 3A. DA
        jnz     ?_1888                                  ; 1001050D _ 75, 05
        mov     eax, 24                                 ; 1001050F _ B8, 00000018
?_1888: cmp     byte [ecx+1AH], dl                      ; 10010514 _ 38. 51, 1A
        jnz     ?_1889                                  ; 10010517 _ 75, 03
        add     eax, 4                                  ; 10010519 _ 83. C0, 04
?_1889: cmp     byte [ecx+1BH], dl                      ; 1001051C _ 38. 51, 1B
        jnz     ?_1890                                  ; 1001051F _ 75, 03
        add     eax, 2                                  ; 10010521 _ 83. C0, 02
?_1890: pop     esi                                     ; 10010524 _ 5E
        pop     ebx                                     ; 10010525 _ 5B
        ret                                             ; 10010526 _ C3

        nop                                             ; 10010527 _ 90
        nop                                             ; 10010528 _ 90
        nop                                             ; 10010529 _ 90
        nop                                             ; 1001052A _ 90
        nop                                             ; 1001052B _ 90
        nop                                             ; 1001052C _ 90
        nop                                             ; 1001052D _ 90
        nop                                             ; 1001052E _ 90
        nop                                             ; 1001052F _ 90
?_1891: mov     eax, dword [esp+8H]                     ; 10010530 _ 8B. 44 24, 08
        test    eax, eax                                ; 10010534 _ 85. C0
        jnz     ?_1893                                  ; 10010536 _ 75, 15
        mov     eax, dword [esp+4H]                     ; 10010538 _ 8B. 44 24, 04
        mov     ecx, dword [eax+8H]                     ; 1001053C _ 8B. 48, 08
        test    ecx, ecx                                ; 1001053F _ 85. C9
        jz      ?_1892                                  ; 10010541 _ 74, 07
        mov     cl, byte [eax+18H]                      ; 10010543 _ 8A. 48, 18
        test    cl, cl                                  ; 10010546 _ 84. C9
        jnz     ?_1899                                  ; 10010548 _ 75, 51
?_1892: xor     eax, eax                                ; 1001054A _ 33. C0
        ret                                             ; 1001054C _ C3

?_1893: cmp     eax, 1                                  ; 1001054D _ 83. F8, 01
        jnz     ?_1895                                  ; 10010550 _ 75, 15
        mov     eax, dword [esp+4H]                     ; 10010552 _ 8B. 44 24, 04
        mov     ecx, dword [eax+0CH]                    ; 10010556 _ 8B. 48, 0C
        test    ecx, ecx                                ; 10010559 _ 85. C9
        jz      ?_1894                                  ; 1001055B _ 74, 07
        mov     cl, byte [eax+19H]                      ; 1001055D _ 8A. 48, 19
        test    cl, cl                                  ; 10010560 _ 84. C9
        jnz     ?_1899                                  ; 10010562 _ 75, 37
?_1894: xor     eax, eax                                ; 10010564 _ 33. C0
        ret                                             ; 10010566 _ C3

?_1895: cmp     eax, 2                                  ; 10010567 _ 83. F8, 02
        jnz     ?_1897                                  ; 1001056A _ 75, 15
        mov     eax, dword [esp+4H]                     ; 1001056C _ 8B. 44 24, 04
        mov     ecx, dword [eax+10H]                    ; 10010570 _ 8B. 48, 10
        test    ecx, ecx                                ; 10010573 _ 85. C9
        jz      ?_1896                                  ; 10010575 _ 74, 07
        mov     cl, byte [eax+1AH]                      ; 10010577 _ 8A. 48, 1A
        test    cl, cl                                  ; 1001057A _ 84. C9
        jnz     ?_1899                                  ; 1001057C _ 75, 1D
?_1896: xor     eax, eax                                ; 1001057E _ 33. C0
        ret                                             ; 10010580 _ C3

?_1897: cmp     eax, 3                                  ; 10010581 _ 83. F8, 03
        jnz     ?_1899                                  ; 10010584 _ 75, 15
        mov     eax, dword [esp+4H]                     ; 10010586 _ 8B. 44 24, 04
        mov     ecx, dword [eax+14H]                    ; 1001058A _ 8B. 48, 14
        test    ecx, ecx                                ; 1001058D _ 85. C9
        jz      ?_1898                                  ; 1001058F _ 74, 07
        mov     cl, byte [eax+1BH]                      ; 10010591 _ 8A. 48, 1B
        test    cl, cl                                  ; 10010594 _ 84. C9
        jnz     ?_1899                                  ; 10010596 _ 75, 03
?_1898: xor     eax, eax                                ; 10010598 _ 33. C0
        ret                                             ; 1001059A _ C3

