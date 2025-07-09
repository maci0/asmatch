; ---- 10012544 ----
?_2092: ; Local function
        cmp     dword [?_5338], 65576                   ; 10012544 _ 81. 3D, 1002D4EC(d), 00010028
        jl      ?_2109                                  ; 1001254E _ 0F 8C, 000001CF
        push    esi                                     ; 10012554 _ 56
        push    1                                       ; 10012555 _ 6A, 01
        lea     eax, [edi+32H]                          ; 10012557 _ 8D. 47, 32
        push    14                                      ; 1001255A _ 6A, 0E
        push    eax                                     ; 1001255C _ 50
        call    ?_2085                                  ; 1001255D _ E8, FFFFFEDE
        add     esp, 16                                 ; 10012562 _ 83. C4, 10
        test    eax, eax                                ; 10012565 _ 85. C0
        jnz     ?_2093                                  ; 10012567 _ 75, 06
        pop     edi                                     ; 10012569 _ 5F
        pop     esi                                     ; 1001256A _ 5E
        pop     ebp                                     ; 1001256B _ 5D
        pop     ebx                                     ; 1001256C _ 5B
        pop     ecx                                     ; 1001256D _ 59
        ret                                             ; 1001256E _ C3

?_2093: push    esi                                     ; 1001256F _ 56
        push    1                                       ; 10012570 _ 6A, 01
        lea     ecx, [edi+40H]                          ; 10012572 _ 8D. 4F, 40
        push    16                                      ; 10012575 _ 6A, 10
        push    ecx                                     ; 10012577 _ 51
        call    ?_2085                                  ; 10012578 _ E8, FFFFFEC3
        add     esp, 16                                 ; 1001257D _ 83. C4, 10
        test    eax, eax                                ; 10012580 _ 85. C0
        jnz     ?_2094                                  ; 10012582 _ 75, 06
        pop     edi                                     ; 10012584 _ 5F
        pop     esi                                     ; 10012585 _ 5E
        pop     ebp                                     ; 10012586 _ 5D
        pop     ebx                                     ; 10012587 _ 5B
        pop     ecx                                     ; 10012588 _ 59
        ret                                             ; 10012589 _ C3

?_2094: cmp     dword [?_5338], 65620                   ; 1001258A _ 81. 3D, 1002D4EC(d), 00010054
        jl      ?_2097                                  ; 10012594 _ 7C, 51
        push    esi                                     ; 10012596 _ 56
        push    1                                       ; 10012597 _ 6A, 01
        lea     edx, [edi+50H]                          ; 10012599 _ 8D. 57, 50
        push    16                                      ; 1001259C _ 6A, 10
        push    edx                                     ; 1001259E _ 52
        call    ?_2085                                  ; 1001259F _ E8, FFFFFE9C
        add     esp, 16                                 ; 100125A4 _ 83. C4, 10
        test    eax, eax                                ; 100125A7 _ 85. C0
        jnz     ?_2095                                  ; 100125A9 _ 75, 06
        pop     edi                                     ; 100125AB _ 5F
        pop     esi                                     ; 100125AC _ 5E
        pop     ebp                                     ; 100125AD _ 5D
        pop     ebx                                     ; 100125AE _ 5B
        pop     ecx                                     ; 100125AF _ 59
        ret                                             ; 100125B0 _ C3

?_2095: push    esi                                     ; 100125B1 _ 56
        push    1                                       ; 100125B2 _ 6A, 01
        lea     eax, [edi+63H]                          ; 100125B4 _ 8D. 47, 63
        push    1                                       ; 100125B7 _ 6A, 01
        push    eax                                     ; 100125B9 _ 50
        call    ?_2085                                  ; 100125BA _ E8, FFFFFE81
        add     esp, 16                                 ; 100125BF _ 83. C4, 10
        test    eax, eax                                ; 100125C2 _ 85. C0
        jnz     ?_2096                                  ; 100125C4 _ 75, 06
        pop     edi                                     ; 100125C6 _ 5F
        pop     esi                                     ; 100125C7 _ 5E
        pop     ebp                                     ; 100125C8 _ 5D
        pop     ebx                                     ; 100125C9 _ 5B
        pop     ecx                                     ; 100125CA _ 59
        ret                                             ; 100125CB _ C3

?_2096: push    esi                                     ; 100125CC _ 56
        push    1                                       ; 100125CD _ 6A, 01
        lea     ecx, [edi+64H]                          ; 100125CF _ 8D. 4F, 64
        push    4                                       ; 100125D2 _ 6A, 04
        push    ecx                                     ; 100125D4 _ 51
        call    ?_2085                                  ; 100125D5 _ E8, FFFFFE66
        add     esp, 16                                 ; 100125DA _ 83. C4, 10
        test    eax, eax                                ; 100125DD _ 85. C0
        jnz     ?_2097                                  ; 100125DF _ 75, 06
        pop     edi                                     ; 100125E1 _ 5F
        pop     esi                                     ; 100125E2 _ 5E
        pop     ebp                                     ; 100125E3 _ 5D
        pop     ebx                                     ; 100125E4 _ 5B
        pop     ecx                                     ; 100125E5 _ 59
        ret                                             ; 100125E6 _ C3

?_2097: push    esi                                     ; 100125E7 _ 56
        push    1                                       ; 100125E8 _ 6A, 01
        lea     edx, [edi+60H]                          ; 100125EA _ 8D. 57, 60
        push    1                                       ; 100125ED _ 6A, 01
        push    edx                                     ; 100125EF _ 52
        call    ?_2085                                  ; 100125F0 _ E8, FFFFFE4B
        add     esp, 16                                 ; 100125F5 _ 83. C4, 10
        test    eax, eax                                ; 100125F8 _ 85. C0
        jnz     ?_2098                                  ; 100125FA _ 75, 06
        pop     edi                                     ; 100125FC _ 5F
        pop     esi                                     ; 100125FD _ 5E
        pop     ebp                                     ; 100125FE _ 5D
        pop     ebx                                     ; 100125FF _ 5B
        pop     ecx                                     ; 10012600 _ 59
        ret                                             ; 10012601 _ C3

?_2098: push    esi                                     ; 10012602 _ 56
        push    1                                       ; 10012603 _ 6A, 01
        lea     eax, [edi+61H]                          ; 10012605 _ 8D. 47, 61
        push    1                                       ; 10012608 _ 6A, 01
        push    eax                                     ; 1001260A _ 50
        call    ?_2085                                  ; 1001260B _ E8, FFFFFE30
        add     esp, 16                                 ; 10012610 _ 83. C4, 10
        test    eax, eax                                ; 10012613 _ 85. C0
        jnz     ?_2099                                  ; 10012615 _ 75, 06
        pop     edi                                     ; 10012617 _ 5F
        pop     esi                                     ; 10012618 _ 5E
        pop     ebp                                     ; 10012619 _ 5D
        pop     ebx                                     ; 1001261A _ 5B
        pop     ecx                                     ; 1001261B _ 59
        ret                                             ; 1001261C _ C3

?_2099: push    esi                                     ; 1001261D _ 56
        push    1                                       ; 1001261E _ 6A, 01
        lea     ecx, [edi+62H]                          ; 10012620 _ 8D. 4F, 62
        push    1                                       ; 10012623 _ 6A, 01
        push    ecx                                     ; 10012625 _ 51
        call    ?_2085                                  ; 10012626 _ E8, FFFFFE15
        add     esp, 16                                 ; 1001262B _ 83. C4, 10
        test    eax, eax                                ; 1001262E _ 85. C0
        jnz     ?_2100                                  ; 10012630 _ 75, 06
        pop     edi                                     ; 10012632 _ 5F
        pop     esi                                     ; 10012633 _ 5E
        pop     ebp                                     ; 10012634 _ 5D
        pop     ebx                                     ; 10012635 _ 5B
        pop     ecx                                     ; 10012636 _ 59
        ret                                             ; 10012637 _ C3

?_2100: push    esi                                     ; 10012638 _ 56
        push    1                                       ; 10012639 _ 6A, 01
        lea     edx, [edi+68H]                          ; 1001263B _ 8D. 57, 68
        push    4                                       ; 1001263E _ 6A, 04
        push    edx                                     ; 10012640 _ 52
        call    ?_2085                                  ; 10012641 _ E8, FFFFFDFA
        add     esp, 16                                 ; 10012646 _ 83. C4, 10
        test    eax, eax                                ; 10012649 _ 85. C0
        jnz     ?_2101                                  ; 1001264B _ 75, 06
        pop     edi                                     ; 1001264D _ 5F
        pop     esi                                     ; 1001264E _ 5E
        pop     ebp                                     ; 1001264F _ 5D
        pop     ebx                                     ; 10012650 _ 5B
        pop     ecx                                     ; 10012651 _ 59
        ret                                             ; 10012652 _ C3

?_2101: push    esi                                     ; 10012653 _ 56
        push    1                                       ; 10012654 _ 6A, 01
        lea     eax, [edi+6CH]                          ; 10012656 _ 8D. 47, 6C
        push    1                                       ; 10012659 _ 6A, 01
        push    eax                                     ; 1001265B _ 50
        call    ?_2085                                  ; 1001265C _ E8, FFFFFDDF
        add     esp, 16                                 ; 10012661 _ 83. C4, 10
        test    eax, eax                                ; 10012664 _ 85. C0
        jnz     ?_2102                                  ; 10012666 _ 75, 06
        pop     edi                                     ; 10012668 _ 5F
        pop     esi                                     ; 10012669 _ 5E
        pop     ebp                                     ; 1001266A _ 5D
        pop     ebx                                     ; 1001266B _ 5B
        pop     ecx                                     ; 1001266C _ 59
        ret                                             ; 1001266D _ C3

?_2102: push    esi                                     ; 1001266E _ 56
        push    1                                       ; 1001266F _ 6A, 01
        lea     ecx, [edi+6DH]                          ; 10012671 _ 8D. 4F, 6D
        push    1                                       ; 10012674 _ 6A, 01
        push    ecx                                     ; 10012676 _ 51
        call    ?_2085                                  ; 10012677 _ E8, FFFFFDC4
        add     esp, 16                                 ; 1001267C _ 83. C4, 10
        test    eax, eax                                ; 1001267F _ 85. C0
        jnz     ?_2103                                  ; 10012681 _ 75, 06
        pop     edi                                     ; 10012683 _ 5F
        pop     esi                                     ; 10012684 _ 5E
        pop     ebp                                     ; 10012685 _ 5D
        pop     ebx                                     ; 10012686 _ 5B
        pop     ecx                                     ; 10012687 _ 59
        ret                                             ; 10012688 _ C3

?_2103: cmp     dword [?_5338], 65579                   ; 10012689 _ 81. 3D, 1002D4EC(d), 0001002B
        jl      ?_2105                                  ; 10012693 _ 7C, 36
        push    esi                                     ; 10012695 _ 56
        push    1                                       ; 10012696 _ 6A, 01
        lea     edx, [edi+70H]                          ; 10012698 _ 8D. 57, 70
        push    4                                       ; 1001269B _ 6A, 04
        push    edx                                     ; 1001269D _ 52
        call    ?_2085                                  ; 1001269E _ E8, FFFFFD9D
        add     esp, 16                                 ; 100126A3 _ 83. C4, 10
        test    eax, eax                                ; 100126A6 _ 85. C0
        jnz     ?_2104                                  ; 100126A8 _ 75, 06
        pop     edi                                     ; 100126AA _ 5F
        pop     esi                                     ; 100126AB _ 5E
        pop     ebp                                     ; 100126AC _ 5D
        pop     ebx                                     ; 100126AD _ 5B
        pop     ecx                                     ; 100126AE _ 59
        ret                                             ; 100126AF _ C3

?_2104: push    esi                                     ; 100126B0 _ 56
        push    1                                       ; 100126B1 _ 6A, 01
        lea     eax, [edi+74H]                          ; 100126B3 _ 8D. 47, 74
        push    4                                       ; 100126B6 _ 6A, 04
        push    eax                                     ; 100126B8 _ 50
        call    ?_2085                                  ; 100126B9 _ E8, FFFFFD82
        add     esp, 16                                 ; 100126BE _ 83. C4, 10
        test    eax, eax                                ; 100126C1 _ 85. C0
        jnz     ?_2106                                  ; 100126C3 _ 75, 0F
        pop     edi                                     ; 100126C5 _ 5F
        pop     esi                                     ; 100126C6 _ 5E
        pop     ebp                                     ; 100126C7 _ 5D
        pop     ebx                                     ; 100126C8 _ 5B
        pop     ecx                                     ; 100126C9 _ 59
        ret                                             ; 100126CA _ C3

?_2105: or      eax, 0FFFFFFFFH                         ; 100126CB _ 83. C8, FF
        mov     dword [edi+70H], eax                    ; 100126CE _ 89. 47, 70
        mov     dword [edi+74H], eax                    ; 100126D1 _ 89. 47, 74
?_2106: cmp     dword [?_5338], 65588                   ; 100126D4 _ 81. 3D, 1002D4EC(d), 00010034
        jl      ?_2108                                  ; 100126DE _ 7C, 28
        xor     ebp, ebp                                ; 100126E0 _ 33. ED
        lea     ebx, [edi+78H]                          ; 100126E2 _ 8D. 5F, 78
?_2107: push    esi                                     ; 100126E5 _ 56
        push    1                                       ; 100126E6 _ 6A, 01
        push    4                                       ; 100126E8 _ 6A, 04
        push    ebx                                     ; 100126EA _ 53
        call    ?_2085                                  ; 100126EB _ E8, FFFFFD50
        add     esp, 16                                 ; 100126F0 _ 83. C4, 10
        test    eax, eax                                ; 100126F3 _ 85. C0
        je      ?_2114                                  ; 100126F5 _ 0F 84, 0000009C
        inc     ebp                                     ; 100126FB _ 45
        add     ebx, 4                                  ; 100126FC _ 83. C3, 04
        cmp     ebp, 8                                  ; 100126FF _ 83. FD, 08
        jl      ?_2107                                  ; 10012702 _ 7C, E1
        mov     ebx, dword [esp+10H]                    ; 10012704 _ 8B. 5C 24, 10
?_2108: push    esi                                     ; 10012708 _ 56
        push    1                                       ; 10012709 _ 6A, 01
        push    57600                                   ; 1001270B _ 68, 0000E100
        push    ebx                                     ; 10012710 _ 53
        call    ?_2085                                  ; 10012711 _ E8, FFFFFD2A
        add     esp, 16                                 ; 10012716 _ 83. C4, 10
        test    eax, eax                                ; 10012719 _ 85. C0
        jnz     ?_2109                                  ; 1001271B _ 75, 06
        pop     edi                                     ; 1001271D _ 5F
        pop     esi                                     ; 1001271E _ 5E
        pop     ebp                                     ; 1001271F _ 5D
        pop     ebx                                     ; 10012720 _ 5B
        pop     ecx                                     ; 10012721 _ 59
        ret                                             ; 10012722 _ C3

?_2109: test    ebx, ebx                                ; 10012723 _ 85. DB
        jz      ?_2110                                  ; 10012725 _ 74, 09
        push    ebx                                     ; 10012727 _ 53
        call    ?_0663                                  ; 10012728 _ E8, FFFF40F3
        add     esp, 4                                  ; 1001272D _ 83. C4, 04
?_2110: mov     eax, dword [?_5338]                     ; 10012730 _ A1, 1002D4EC(d)
        cmp     eax, 65573                              ; 10012735 _ 3D, 00010025
        jge     ?_2111                                  ; 1001273A _ 7D, 08
        pop     edi                                     ; 1001273C _ 5F
        pop     esi                                     ; 1001273D _ 5E
        pop     ebp                                     ; 1001273E _ 5D
        xor     eax, eax                                ; 1001273F _ 33. C0
        pop     ebx                                     ; 10012741 _ 5B
        pop     ecx                                     ; 10012742 _ 59
        ret                                             ; 10012743 _ C3

?_2111: cmp     eax, 65592                              ; 10012744 _ 3D, 00010038
        jl      ?_2112                                  ; 10012749 _ 7C, 1E
        push    esi                                     ; 1001274B _ 56
        push    1                                       ; 1001274C _ 6A, 01
        lea     ecx, [edi+98H]                          ; 1001274E _ 8D. 8F, 00000098
        push    4                                       ; 10012754 _ 6A, 04
        push    ecx                                     ; 10012756 _ 51
        call    ?_2085                                  ; 10012757 _ E8, FFFFFCE4
        add     esp, 16                                 ; 1001275C _ 83. C4, 10
        test    eax, eax                                ; 1001275F _ 85. C0
        jnz     ?_2113                                  ; 10012761 _ 75, 10
        pop     edi                                     ; 10012763 _ 5F
        pop     esi                                     ; 10012764 _ 5E
        pop     ebp                                     ; 10012765 _ 5D
        pop     ebx                                     ; 10012766 _ 5B
        pop     ecx                                     ; 10012767 _ 59
        ret                                             ; 10012768 _ C3

?_2112: mov     dword [edi+98H], 2                      ; 10012769 _ C7. 87, 00000098, 00000002
?_2113: cmp     dword [?_5338], 65593                   ; 10012773 _ 81. 3D, 1002D4EC(d), 00010039
        jl      ?_2115                                  ; 1001277D _ 7C, 20
        push    esi                                     ; 1001277F _ 56
        push    1                                       ; 10012780 _ 6A, 01
        add     edi, 156                                ; 10012782 _ 81. C7, 0000009C
        push    96                                      ; 10012788 _ 6A, 60
        push    edi                                     ; 1001278A _ 57
        call    ?_2085                                  ; 1001278B _ E8, FFFFFCB0
        add     esp, 16                                 ; 10012790 _ 83. C4, 10
        test    eax, eax                                ; 10012793 _ 85. C0
        jnz     ?_2116                                  ; 10012795 _ 75, 27
?_2114: pop     edi                                     ; 10012797 _ 5F
        pop     esi                                     ; 10012798 _ 5E
        pop     ebp                                     ; 10012799 _ 5D
        xor     eax, eax                                ; 1001279A _ 33. C0
        pop     ebx                                     ; 1001279C _ 5B
        pop     ecx                                     ; 1001279D _ 59
        ret                                             ; 1001279E _ C3

?_2115: mov     edx, dword [?_5339]                     ; 1001279F _ 8B. 15, 1002D4F0(d)
        add     edi, 156                                ; 100127A5 _ 81. C7, 0000009C
        mov     dword [edi], edx                        ; 100127AB _ 89. 17
        mov     eax, dword [?_5340]                     ; 100127AD _ A1, 1002D4F4(d)
        mov     dword [edi+4H], eax                     ; 100127B2 _ 89. 47, 04
        mov     cl, byte [?_5341]                       ; 100127B5 _ 8A. 0D, 1002D4F8(d)
        mov     byte [edi+8H], cl                       ; 100127BB _ 88. 4F, 08
?_2116: pop     edi                                     ; 100127BE _ 5F
        pop     esi                                     ; 100127BF _ 5E
        pop     ebp                                     ; 100127C0 _ 5D
        mov     eax, 1                                  ; 100127C1 _ B8, 00000001
        pop     ebx                                     ; 100127C6 _ 5B
        pop     ecx                                     ; 100127C7 _ 59
        ret                                             ; 100127C8 _ C3

        nop                                             ; 100127C9 _ 90
        nop                                             ; 100127CA _ 90
        nop                                             ; 100127CB _ 90
        nop                                             ; 100127CC _ 90
        nop                                             ; 100127CD _ 90
        nop                                             ; 100127CE _ 90
        nop                                             ; 100127CF _ 90
?_2117: push    ecx                                     ; 100127D0 _ 51
        push    ebx                                     ; 100127D1 _ 53
        push    ebp                                     ; 100127D2 _ 55
        push    esi                                     ; 100127D3 _ 56
        push    edi                                     ; 100127D4 _ 57
        call    ?_2407                                  ; 100127D5 _ E8, 00003516
        mov     edi, dword [esp+18H]                    ; 100127DA _ 8B. 7C 24, 18
        lea     eax, [esp+10H]                          ; 100127DE _ 8D. 44 24, 10
        push    edi                                     ; 100127E2 _ 57
        push    1                                       ; 100127E3 _ 6A, 01
        push    4                                       ; 100127E5 _ 6A, 04
        push    eax                                     ; 100127E7 _ 50
        call    ?_2085                                  ; 100127E8 _ E8, FFFFFC53
        add     esp, 16                                 ; 100127ED _ 83. C4, 10
        test    eax, eax                                ; 100127F0 _ 85. C0
        jnz     ?_2119                                  ; 100127F2 _ 75, 08
?_2118: pop     edi                                     ; 100127F4 _ 5F
        pop     esi                                     ; 100127F5 _ 5E
        pop     ebp                                     ; 100127F6 _ 5D
        xor     eax, eax                                ; 100127F7 _ 33. C0
        pop     ebx                                     ; 100127F9 _ 5B
        pop     ecx                                     ; 100127FA _ 59
        ret                                             ; 100127FB _ C3
