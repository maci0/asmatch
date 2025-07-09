; ---- 100155C0 ----
?_2373: ; Local function
        mov     ecx, dword [esp+4H]                     ; 100155C0 _ 8B. 4C 24, 04
        mov     edx, dword [esp+10H]                    ; 100155C4 _ 8B. 54 24, 10
        push    esi                                     ; 100155C8 _ 56
        mov     eax, dword [ecx+0AH]                    ; 100155C9 _ 8B. 41, 0A
        lea     esi, [edx+eax]                          ; 100155CC _ 8D. 34 02
        mov     eax, 2290649225                         ; 100155CF _ B8, 88888889
        imul    esi                                     ; 100155D4 _ F7. EE
        add     edx, esi                                ; 100155D6 _ 03. D6
        sar     edx, 5                                  ; 100155D8 _ C1. FA, 05
        mov     eax, edx                                ; 100155DB _ 8B. C2
        shr     eax, 31                                 ; 100155DD _ C1. E8, 1F
        add     edx, eax                                ; 100155E0 _ 03. D0
        mov     eax, dword [ecx+6H]                     ; 100155E2 _ 8B. 41, 06
        add     eax, edx                                ; 100155E5 _ 03. C2
        mov     dword [ecx+6H], eax                     ; 100155E7 _ 89. 41, 06
        mov     eax, esi                                ; 100155EA _ 8B. C6
        cdq                                             ; 100155EC _ 99
        mov     esi, 60                                 ; 100155ED _ BE, 0000003C
        idiv    esi                                     ; 100155F2 _ F7. FE
        mov     eax, dword [esp+10H]                    ; 100155F4 _ 8B. 44 24, 10
        mov     dword [ecx+0AH], edx                    ; 100155F8 _ 89. 51, 0A
        mov     edx, dword [ecx+6H]                     ; 100155FB _ 8B. 51, 06
        lea     esi, [edx+eax]                          ; 100155FE _ 8D. 34 02
        mov     eax, 2290649225                         ; 10015601 _ B8, 88888889
        imul    esi                                     ; 10015606 _ F7. EE
        add     edx, esi                                ; 10015608 _ 03. D6
        sar     edx, 5                                  ; 1001560A _ C1. FA, 05
        mov     eax, edx                                ; 1001560D _ 8B. C2
        shr     eax, 31                                 ; 1001560F _ C1. E8, 1F
        add     edx, eax                                ; 10015612 _ 03. D0
        mov     eax, esi                                ; 10015614 _ 8B. C6
        add     word [ecx+4H], dx                       ; 10015616 _ 66: 01. 51, 04
        mov     esi, 60                                 ; 1001561A _ BE, 0000003C
        cdq                                             ; 1001561F _ 99
        idiv    esi                                     ; 10015620 _ F7. FE
        xor     esi, esi                                ; 10015622 _ 33. F6
        mov     si, word [ecx+4H]                       ; 10015624 _ 66: 8B. 71, 04
        mov     dword [ecx+6H], edx                     ; 10015628 _ 89. 51, 06
        mov     edx, dword [esp+0CH]                    ; 1001562B _ 8B. 54 24, 0C
        add     esi, edx                                ; 1001562F _ 03. F2
        cmp     esi, 24                                 ; 10015631 _ 83. FE, 18
        jl      ?_2375                                  ; 10015634 _ 7C, 20
        mov     eax, 2863311531                         ; 10015636 _ B8, AAAAAAAB
        mul     esi                                     ; 1001563B _ F7. E6
        shr     edx, 4                                  ; 1001563D _ C1. EA, 04
        lea     eax, [edx*4]                            ; 10015640 _ 8D. 04 95, 00000000
        sub     eax, edx                                ; 10015647 _ 2B. C2
        neg     eax                                     ; 10015649 _ F7. D8
        lea     esi, [esi+eax*8]                        ; 1001564B _ 8D. 34 C6
?_2374: mov     eax, dword [ecx]                        ; 1001564E _ 8B. 01
        inc     eax                                     ; 10015650 _ 40
        dec     edx                                     ; 10015651 _ 4A
        mov     dword [ecx], eax                        ; 10015652 _ 89. 01
        jnz     ?_2374                                  ; 10015654 _ 75, F8
?_2375: test    esi, esi                                ; 10015656 _ 85. F6
        jge     ?_2377                                  ; 10015658 _ 7D, 25
        mov     edx, 23                                 ; 1001565A _ BA, 00000017
        mov     eax, 2863311531                         ; 1001565F _ B8, AAAAAAAB
        sub     edx, esi                                ; 10015664 _ 2B. D6
        mul     edx                                     ; 10015666 _ F7. E2
        shr     edx, 4                                  ; 10015668 _ C1. EA, 04
        lea     eax, [edx+edx*2]                        ; 1001566B _ 8D. 04 52
        lea     eax, [esi+eax*8]                        ; 1001566E _ 8D. 04 C6
?_2376: mov     esi, dword [ecx]                        ; 10015671 _ 8B. 31
        dec     esi                                     ; 10015673 _ 4E
        dec     edx                                     ; 10015674 _ 4A
        mov     dword [ecx], esi                        ; 10015675 _ 89. 31
        jnz     ?_2376                                  ; 10015677 _ 75, F8
        mov     word [ecx+4H], ax                       ; 10015679 _ 66: 89. 41, 04
        pop     esi                                     ; 1001567D _ 5E
        ret                                             ; 1001567E _ C3
