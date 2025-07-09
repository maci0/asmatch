; ---- 1001059B ----
?_1899: ; Local function
        mov     eax, 1                                  ; 1001059B _ B8, 00000001
        ret                                             ; 100105A0 _ C3

        nop                                             ; 100105A1 _ 90
        nop                                             ; 100105A2 _ 90
        nop                                             ; 100105A3 _ 90
        nop                                             ; 100105A4 _ 90
        nop                                             ; 100105A5 _ 90
        nop                                             ; 100105A6 _ 90
        nop                                             ; 100105A7 _ 90
        nop                                             ; 100105A8 _ 90
        nop                                             ; 100105A9 _ 90
        nop                                             ; 100105AA _ 90
        nop                                             ; 100105AB _ 90
        nop                                             ; 100105AC _ 90
        nop                                             ; 100105AD _ 90
        nop                                             ; 100105AE _ 90
        nop                                             ; 100105AF _ 90
?_1900: push    esi                                     ; 100105B0 _ 56
        mov     esi, dword [esp+8H]                     ; 100105B1 _ 8B. 74 24, 08
        mov     eax, dword [esi+4H]                     ; 100105B5 _ 8B. 46, 04
        cmp     eax, 1                                  ; 100105B8 _ 83. F8, 01
        jl      ?_1913                                  ; 100105BB _ 0F 8C, 00000134
        cmp     eax, 3                                  ; 100105C1 _ 83. F8, 03
        jg      ?_1913                                  ; 100105C4 _ 0F 8F, 0000012B
        mov     eax, dword [esp+0CH]                    ; 100105CA _ 8B. 44 24, 0C
        test    eax, eax                                ; 100105CE _ 85. C0
        jnz     ?_1904                                  ; 100105D0 _ 75, 50
        push    eax                                     ; 100105D2 _ 50
        push    esi                                     ; 100105D3 _ 56
        call    ?_1891                                  ; 100105D4 _ E8, FFFFFF57
        add     esp, 8                                  ; 100105D9 _ 83. C4, 08
        test    eax, eax                                ; 100105DC _ 85. C0
        je      ?_1913                                  ; 100105DE _ 0F 84, 00000111
        mov     ecx, dword [esi+4H]                     ; 100105E4 _ 8B. 4E, 04
        mov     eax, dword [esp+10H]                    ; 100105E7 _ 8B. 44 24, 10
        cmp     ecx, 1                                  ; 100105EB _ 83. F9, 01
        jnz     ?_1901                                  ; 100105EE _ 75, 08
        cmp     al, 8                                   ; 100105F0 _ 3C, 08
        jnc     ?_1913                                  ; 100105F2 _ 0F 83, 000000FD
?_1901: cmp     ecx, 2                                  ; 100105F8 _ 83. F9, 02
        jnz     ?_1902                                  ; 100105FB _ 75, 08
        cmp     al, 12                                  ; 100105FD _ 3C, 0C
        jnc     ?_1913                                  ; 100105FF _ 0F 83, 000000F0
?_1902: cmp     ecx, 3                                  ; 10010605 _ 83. F9, 03
        jnz     ?_1903                                  ; 10010608 _ 75, 08
        cmp     al, 16                                  ; 1001060A _ 3C, 10
        jnc     ?_1913                                  ; 1001060C _ 0F 83, 000000E3
?_1903: mov     ecx, dword [esi+8H]                     ; 10010612 _ 8B. 4E, 08
        and     eax, 0FFH                               ; 10010615 _ 25, 000000FF
        pop     esi                                     ; 1001061A _ 5E
        lea     eax, [eax+eax*4]                        ; 1001061B _ 8D. 04 80
        lea     eax, [ecx+eax*4]                        ; 1001061E _ 8D. 04 81
        ret                                             ; 10010621 _ C3

?_1904: cmp     eax, 1                                  ; 10010622 _ 83. F8, 01
        jnz     ?_1908                                  ; 10010625 _ 75, 50
        push    eax                                     ; 10010627 _ 50
        push    esi                                     ; 10010628 _ 56
        call    ?_1891                                  ; 10010629 _ E8, FFFFFF02
        add     esp, 8                                  ; 1001062E _ 83. C4, 08
        test    eax, eax                                ; 10010631 _ 85. C0
        je      ?_1913                                  ; 10010633 _ 0F 84, 000000BC
        mov     ecx, dword [esi+4H]                     ; 10010639 _ 8B. 4E, 04
        mov     eax, dword [esp+10H]                    ; 1001063C _ 8B. 44 24, 10
        cmp     ecx, 1                                  ; 10010640 _ 83. F9, 01
        jnz     ?_1905                                  ; 10010643 _ 75, 08
        cmp     al, 4                                   ; 10010645 _ 3C, 04
        jnc     ?_1913                                  ; 10010647 _ 0F 83, 000000A8
?_1905: cmp     ecx, 2                                  ; 1001064D _ 83. F9, 02
        jnz     ?_1906                                  ; 10010650 _ 75, 08
        cmp     al, 6                                   ; 10010652 _ 3C, 06
        jnc     ?_1913                                  ; 10010654 _ 0F 83, 0000009B
?_1906: cmp     ecx, 3                                  ; 1001065A _ 83. F9, 03
        jnz     ?_1907                                  ; 1001065D _ 75, 08
        cmp     al, 8                                   ; 1001065F _ 3C, 08
        jnc     ?_1913                                  ; 10010661 _ 0F 83, 0000008E
?_1907: and     eax, 0FFH                               ; 10010667 _ 25, 000000FF
        lea     edx, [eax+eax*4]                        ; 1001066C _ 8D. 14 80
        mov     eax, dword [esi+0CH]                    ; 1001066F _ 8B. 46, 0C
        pop     esi                                     ; 10010672 _ 5E
        lea     eax, [eax+edx*4]                        ; 10010673 _ 8D. 04 90
        ret                                             ; 10010676 _ C3

?_1908: cmp     eax, 2                                  ; 10010677 _ 83. F8, 02
        jnz     ?_1911                                  ; 1001067A _ 75, 3C
        push    eax                                     ; 1001067C _ 50
        push    esi                                     ; 1001067D _ 56
        call    ?_1891                                  ; 1001067E _ E8, FFFFFEAD
        add     esp, 8                                  ; 10010683 _ 83. C4, 08
        test    eax, eax                                ; 10010686 _ 85. C0
        jz      ?_1913                                  ; 10010688 _ 74, 6B
        mov     ecx, dword [esi+4H]                     ; 1001068A _ 8B. 4E, 04
        cmp     ecx, 1                                  ; 1001068D _ 83. F9, 01
        jz      ?_1913                                  ; 10010690 _ 74, 63
        mov     eax, dword [esp+10H]                    ; 10010692 _ 8B. 44 24, 10
        cmp     ecx, 2                                  ; 10010696 _ 83. F9, 02
        jnz     ?_1909                                  ; 10010699 _ 75, 04
        cmp     al, 2                                   ; 1001069B _ 3C, 02
        jnc     ?_1913                                  ; 1001069D _ 73, 56
?_1909: cmp     ecx, 3                                  ; 1001069F _ 83. F9, 03
        jnz     ?_1910                                  ; 100106A2 _ 75, 04
        cmp     al, 4                                   ; 100106A4 _ 3C, 04
        jnc     ?_1913                                  ; 100106A6 _ 73, 4D
?_1910: mov     edx, dword [esi+10H]                    ; 100106A8 _ 8B. 56, 10
        and     eax, 0FFH                               ; 100106AB _ 25, 000000FF
        pop     esi                                     ; 100106B0 _ 5E
        lea     ecx, [eax+eax*4]                        ; 100106B1 _ 8D. 0C 80
        lea     eax, [edx+ecx*4]                        ; 100106B4 _ 8D. 04 8A
        ret                                             ; 100106B7 _ C3

?_1911: cmp     eax, 3                                  ; 100106B8 _ 83. F8, 03
        jnz     ?_1913                                  ; 100106BB _ 75, 38
        push    eax                                     ; 100106BD _ 50
        push    esi                                     ; 100106BE _ 56
        call    ?_1891                                  ; 100106BF _ E8, FFFFFE6C
        add     esp, 8                                  ; 100106C4 _ 83. C4, 08
        test    eax, eax                                ; 100106C7 _ 85. C0
        jz      ?_1913                                  ; 100106C9 _ 74, 2A
        mov     eax, dword [esi+4H]                     ; 100106CB _ 8B. 46, 04
        cmp     eax, 1                                  ; 100106CE _ 83. F8, 01
        jz      ?_1913                                  ; 100106D1 _ 74, 22
        cmp     eax, 2                                  ; 100106D3 _ 83. F8, 02
        jz      ?_1913                                  ; 100106D6 _ 74, 1D
        cmp     eax, 3                                  ; 100106D8 _ 83. F8, 03
        mov     eax, dword [esp+10H]                    ; 100106DB _ 8B. 44 24, 10
        jnz     ?_1912                                  ; 100106DF _ 75, 04
        cmp     al, 2                                   ; 100106E1 _ 3C, 02
        jnc     ?_1913                                  ; 100106E3 _ 73, 10
?_1912: mov     ecx, dword [esi+14H]                    ; 100106E5 _ 8B. 4E, 14
        and     eax, 0FFH                               ; 100106E8 _ 25, 000000FF
        pop     esi                                     ; 100106ED _ 5E
        lea     eax, [eax+eax*4]                        ; 100106EE _ 8D. 04 80
        lea     eax, [ecx+eax*4]                        ; 100106F1 _ 8D. 04 81
        ret                                             ; 100106F4 _ C3
