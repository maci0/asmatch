; ---- 1000A570 ----
?_1077: ; Local function
        sub     esp, 672                                ; 1000A570 _ 81. EC, 000002A0
        push    ebx                                     ; 1000A576 _ 53
        push    ebp                                     ; 1000A577 _ 55
        push    esi                                     ; 1000A578 _ 56
        push    edi                                     ; 1000A579 _ 57
        xor     ebx, ebx                                ; 1000A57A _ 33. DB
        mov     ebp, ?_5761                             ; 1000A57C _ BD, 101DEB00(d)
?_1078: test    byte [ebp], 01H                         ; 1000A581 _ F6. 45, 00, 01
        je      ?_1093                                  ; 1000A585 _ 0F 84, 0000024F
?_1079: push    ebp                                     ; 1000A58B _ 55
        call    ?_1065                                  ; 1000A58C _ E8, FFFFFDAF
        mov     esi, eax                                ; 1000A591 _ 8B. F0
        add     esp, 4                                  ; 1000A593 _ 83. C4, 04
        cmp     esi, -1                                 ; 1000A596 _ 83. FE, FF
        mov     dword [esp+10H], esi                    ; 1000A599 _ 89. 74 24, 10
        je      ?_1095                                  ; 1000A59D _ 0F 84, 0000027F
        mov     eax, dword [ebp]                        ; 1000A5A3 _ 8B. 45, 00
        test    al, 0FFFFFF80H                          ; 1000A5A6 _ A8, 80
        je      ?_1092                                  ; 1000A5A8 _ 0F 84, 00000227
        test    al, 02H                                 ; 1000A5AE _ A8, 02
        jz      ?_1081                                  ; 1000A5B0 _ 74, 44
        mov     cl, byte [ebp+18H]                      ; 1000A5B2 _ 8A. 4D, 18
        lea     eax, [ebp+18H]                          ; 1000A5B5 _ 8D. 45, 18
        cmp     cl, 3                                   ; 1000A5B8 _ 80. F9, 03
        jnz     ?_1080                                  ; 1000A5BB _ 75, 2C
        mov     ecx, dword [ebp+4H]                     ; 1000A5BD _ 8B. 4D, 04
        push    eax                                     ; 1000A5C0 _ 50
        mov     dword [ebp+2CH], ecx                    ; 1000A5C1 _ 89. 4D, 2C
        mov     edx, dword [ebp]                        ; 1000A5C4 _ 8B. 55, 00
        and     edx, 400H                               ; 1000A5C7 _ 81. E2, 00000400
        push    ebp                                     ; 1000A5CD _ 55
        neg     edx                                     ; 1000A5CE _ F7. DA
        sbb     edx, edx                                ; 1000A5D0 _ 1B. D2
        add     edx, 2                                  ; 1000A5D2 _ 83. C2, 02
        mov     dword [ebp+30H], edx                    ; 1000A5D5 _ 89. 55, 30
        call    ?_1110                                  ; 1000A5D8 _ E8, 000003C3
        add     esp, 8                                  ; 1000A5DD _ 83. C4, 08
        cmp     eax, -1                                 ; 1000A5E0 _ 83. F8, FF
        je      ?_1095                                  ; 1000A5E3 _ 0F 84, 00000239
?_1080: mov     eax, dword [ebp]                        ; 1000A5E9 _ 8B. 45, 00
        and     al, 7DH                                 ; 1000A5EC _ 24, 7D
        or      ah, 02H                                 ; 1000A5EE _ 80. CC, 02
        jmp     ?_1090                                  ; 1000A5F1 _ E9, 000001D2

?_1081: test    ah, 02H                                 ; 1000A5F6 _ F6. C4, 02
        je      ?_1083                                  ; 1000A5F9 _ 0F 84, 000000A8
        push    1                                       ; 1000A5FF _ 6A, 01
        push    ?_5230                                  ; 1000A601 _ 68, 10029A9C(d)
        push    1503                                    ; 1000A606 _ 68, 000005DF
        push    ?_5209                                  ; 1000A60B _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A610 _ E8, FFFF902B
        mov     cl, byte [ebp+18H]                      ; 1000A615 _ 8A. 4D, 18
        lea     eax, [ebp+18H]                          ; 1000A618 _ 8D. 45, 18
        add     esp, 16                                 ; 1000A61B _ 83. C4, 10
        cmp     cl, 95                                  ; 1000A61E _ 80. F9, 5F
        jnz     ?_1082                                  ; 1000A621 _ 75, 45
        push    eax                                     ; 1000A623 _ 50
        push    ebp                                     ; 1000A624 _ 55
        call    ?_2300                                  ; 1000A625 _ E8, 0000A786
        add     esp, 8                                  ; 1000A62A _ 83. C4, 08
        cmp     eax, -1                                 ; 1000A62D _ 83. F8, FF
        je      ?_1095                                  ; 1000A630 _ 0F 84, 000001EC
        mov     ecx, dword [ebp]                        ; 1000A636 _ 8B. 4D, 00
        lea     edx, [esp+0B0H]                         ; 1000A639 _ 8D. 94 24, 000000B0
        push    ecx                                     ; 1000A640 _ 51
        push    ?_5229                                  ; 1000A641 _ 68, 10029A70(d)
        push    edx                                     ; 1000A646 _ 52
        call    ?_3039                                  ; 1000A647 _ E8, 0000FC4D
        lea     eax, [esp+0BCH]                         ; 1000A64C _ 8D. 84 24, 000000BC
        push    1                                       ; 1000A653 _ 6A, 01
        push    eax                                     ; 1000A655 _ 50
        push    1509                                    ; 1000A656 _ 68, 000005E5
        push    ?_5209                                  ; 1000A65B _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A660 _ E8, FFFF8FDB
        add     esp, 28                                 ; 1000A665 _ 83. C4, 1C
?_1082: mov     edx, dword [ebp]                        ; 1000A668 _ 8B. 55, 00
        lea     ecx, [esp+0B0H]                         ; 1000A66B _ 8D. 8C 24, 000000B0
        and     dl, 7FH                                 ; 1000A672 _ 80. E2, 7F
        mov     eax, edx                                ; 1000A675 _ 8B. C2
        mov     dword [ebp], edx                        ; 1000A677 _ 89. 55, 00
        push    eax                                     ; 1000A67A _ 50
        push    ?_5228                                  ; 1000A67B _ 68, 10029A54(d)
        push    ecx                                     ; 1000A680 _ 51
        call    ?_3039                                  ; 1000A681 _ E8, 0000FC13
        lea     edx, [esp+0BCH]                         ; 1000A686 _ 8D. 94 24, 000000BC
        push    1                                       ; 1000A68D _ 6A, 01
        push    edx                                     ; 1000A68F _ 52
        push    1513                                    ; 1000A690 _ 68, 000005E9
        push    ?_5209                                  ; 1000A695 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A69A _ E8, FFFF8FA1
        add     esp, 28                                 ; 1000A69F _ 83. C4, 1C
        jmp     ?_1091                                  ; 1000A6A2 _ E9, 00000124

?_1083: test    al, 08H                                 ; 1000A6A7 _ A8, 08
        je      ?_1086                                  ; 1000A6A9 _ 0F 84, 0000008D
        mov     al, byte [ebp+18H]                      ; 1000A6AF _ 8A. 45, 18
        cmp     al, 8                                   ; 1000A6B2 _ 3C, 08
        jnz     ?_1084                                  ; 1000A6B4 _ 75, 37
        mov     edx, dword [ebp+28H]                    ; 1000A6B6 _ 8B. 55, 28
        mov     ecx, 8                                  ; 1000A6B9 _ B9, 00000008
        or      eax, 0FFFFFFFFH                         ; 1000A6BE _ 83. C8, FF
        mov     edi, ?_5757                             ; 1000A6C1 _ BF, 101DEAC8(d)
        mov     dword [?_5755], edx                     ; 1000A6C6 _ 89. 15, 101DEAC0(d)
        mov     dword [?_5756], 0                       ; 1000A6CC _ C7. 05, 101DEAC4(d), 00000000
        push    ?_5227                                  ; 1000A6D6 _ 68, 10029A48(d)
        push    edx                                     ; 1000A6DB _ 52
        rep stosd                                       ; 1000A6DC _ F3: AB
        call    ?_0640                                  ; 1000A6DE _ E8, FFFFBE9D
        add     esp, 8                                  ; 1000A6E3 _ 83. C4, 08
        mov     dword [?_5758], eax                     ; 1000A6E6 _ A3, 101DEAE8(d)
        jmp     ?_1085                                  ; 1000A6EB _ EB, 2F

?_1084: cmp     al, 9                                   ; 1000A6ED _ 3C, 09
        jnz     ?_1085                                  ; 1000A6EF _ 75, 2B
        mov     eax, dword [?_5756]                     ; 1000A6F1 _ A1, 101DEAC4(d)
        mov     ecx, dword [?_5758]                     ; 1000A6F6 _ 8B. 0D, 101DEAE8(d)
        lea     esi, [ebp+28H]                          ; 1000A6FC _ 8D. 75, 28
        lea     edi, [ecx+eax]                          ; 1000A6FF _ 8D. 3C 01
        mov     ecx, 32                                 ; 1000A702 _ B9, 00000020
        rep movsd                                       ; 1000A707 _ F3: A5
        mov     eax, dword [?_5756]                     ; 1000A709 _ A1, 101DEAC4(d)
        mov     esi, dword [esp+10H]                    ; 1000A70E _ 8B. 74 24, 10
        add     eax, 128                                ; 1000A712 _ 05, 00000080
        mov     dword [?_5756], eax                     ; 1000A717 _ A3, 101DEAC4(d)
?_1085: mov     edx, dword [?_5756]                     ; 1000A71C _ 8B. 15, 101DEAC4(d)
        mov     eax, dword [?_5755]                     ; 1000A722 _ A1, 101DEAC0(d)
        cmp     edx, eax                                ; 1000A727 _ 3B. D0
        jc      ?_1089                                  ; 1000A729 _ 0F 82, 00000094
        mov     eax, dword [ebp]                        ; 1000A72F _ 8B. 45, 00
        and     al, 0FFFFFFF7H                          ; 1000A732 _ 24, F7
        mov     dword [ebp], eax                        ; 1000A734 _ 89. 45, 00
        jmp     ?_1089                                  ; 1000A737 _ E9, 00000087

?_1086: test    al, 04H                                 ; 1000A73C _ A8, 04
        jz      ?_1087                                  ; 1000A73E _ 74, 53
        push    ebx                                     ; 1000A740 _ 53
        lea     eax, [esp+1B4H]                         ; 1000A741 _ 8D. 84 24, 000001B4
        push    ?_5226                                  ; 1000A748 _ 68, 10029A1C(d)
        push    eax                                     ; 1000A74D _ 50
        call    ?_3039                                  ; 1000A74E _ E8, 0000FB46
        lea     ecx, [esp+1BCH]                         ; 1000A753 _ 8D. 8C 24, 000001BC
        push    1                                       ; 1000A75A _ 6A, 01
        push    ecx                                     ; 1000A75C _ 51
        push    1545                                    ; 1000A75D _ 68, 00000609
        push    ?_5209                                  ; 1000A762 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A767 _ E8, FFFF8ED4
        mov     ecx, dword [ebp]                        ; 1000A76C _ 8B. 4D, 00
        lea     edx, [esp+30H]                          ; 1000A76F _ 8D. 54 24, 30
        and     cl, 7FH                                 ; 1000A773 _ 80. E1, 7F
        push    edx                                     ; 1000A776 _ 52
        push    ebp                                     ; 1000A777 _ 55
        mov     dword [ebp], ecx                        ; 1000A778 _ 89. 4D, 00
        mov     byte [esp+38H], 2                       ; 1000A77B _ C6. 44 24, 38, 02
        call    ?_1110                                  ; 1000A780 _ E8, 0000021B
        add     esp, 36                                 ; 1000A785 _ 83. C4, 24
        cmp     eax, -1                                 ; 1000A788 _ 83. F8, FF
        je      ?_1095                                  ; 1000A78B _ 0F 84, 00000091
        jmp     ?_1091                                  ; 1000A791 _ EB, 38

?_1087: test    al, 10H                                 ; 1000A793 _ A8, 10
        mov     byte [ebp+1BH], bl                      ; 1000A795 _ 88. 5D, 1B
        jz      ?_1088                                  ; 1000A798 _ 74, 18
        lea     eax, [ebp+18H]                          ; 1000A79A _ 8D. 45, 18
        push    eax                                     ; 1000A79D _ 50
        push    ebp                                     ; 1000A79E _ 55
        call    ?_1105                                  ; 1000A79F _ E8, 0000014C
        add     esp, 8                                  ; 1000A7A4 _ 83. C4, 08
        test    eax, eax                                ; 1000A7A7 _ 85. C0
        jnz     ?_1095                                  ; 1000A7A9 _ 75, 77
        mov     eax, dword [ebp]                        ; 1000A7AB _ 8B. 45, 00
        and     al, 6FH                                 ; 1000A7AE _ 24, 6F
        jmp     ?_1090                                  ; 1000A7B0 _ EB, 16

?_1088: lea     ecx, [ebp+18H]                          ; 1000A7B2 _ 8D. 4D, 18
        push    ecx                                     ; 1000A7B5 _ 51
        push    ebp                                     ; 1000A7B6 _ 55
        call    ?_1105                                  ; 1000A7B7 _ E8, 00000134
        add     esp, 8                                  ; 1000A7BC _ 83. C4, 08
        test    eax, eax                                ; 1000A7BF _ 85. C0
        jnz     ?_1095                                  ; 1000A7C1 _ 75, 5F
?_1089: mov     eax, dword [ebp]                        ; 1000A7C3 _ 8B. 45, 00
        and     al, 7FH                                 ; 1000A7C6 _ 24, 7F
?_1090: mov     dword [ebp], eax                        ; 1000A7C8 _ 89. 45, 00
?_1091: test    byte [ebp], 01H                         ; 1000A7CB _ F6. 45, 00, 01
        jne     ?_1079                                  ; 1000A7CF _ 0F 85, FFFFFDB6
?_1092: cmp     esi, -1                                 ; 1000A7D5 _ 83. FE, FF
        jz      ?_1095                                  ; 1000A7D8 _ 74, 48
?_1093: add     ebp, 2507364                            ; 1000A7DA _ 81. C5, 00264264
        inc     ebx                                     ; 1000A7E0 _ 43
        cmp     ebp, ?_5770                             ; 1000A7E1 _ 81. FD, 114FFE20(d)
        jl      ?_1078                                  ; 1000A7E7 _ 0F 8C, FFFFFD94
        test    byte [?_5770], 01H                      ; 1000A7ED _ F6. 05, 114FFE20(d), 01
        jz      ?_1097                                  ; 1000A7F4 _ 74, 5B
?_1094: push    ?_5770                                  ; 1000A7F6 _ 68, 114FFE20(d)
        call    ?_1065                                  ; 1000A7FB _ E8, FFFFFB40
        add     esp, 4                                  ; 1000A800 _ 83. C4, 04
        cmp     eax, -1                                 ; 1000A803 _ 83. F8, FF
        jz      ?_1097                                  ; 1000A806 _ 74, 49
        mov     al, byte [?_5770]                       ; 1000A808 _ A0, 114FFE20(d)
        test    al, 0FFFFFF80H                          ; 1000A80D _ A8, 80
        jnz     ?_1096                                  ; 1000A80F _ 75, 1F
        test    al, 01H                                 ; 1000A811 _ A8, 01
        jnz     ?_1094                                  ; 1000A813 _ 75, E1
        pop     edi                                     ; 1000A815 _ 5F
        pop     esi                                     ; 1000A816 _ 5E
        pop     ebp                                     ; 1000A817 _ 5D
        xor     eax, eax                                ; 1000A818 _ 33. C0
        pop     ebx                                     ; 1000A81A _ 5B
        add     esp, 672                                ; 1000A81B _ 81. C4, 000002A0
        ret                                             ; 1000A821 _ C3

?_1095: pop     edi                                     ; 1000A822 _ 5F
        pop     esi                                     ; 1000A823 _ 5E
        pop     ebp                                     ; 1000A824 _ 5D
        or      eax, 0FFFFFFFFH                         ; 1000A825 _ 83. C8, FF
        pop     ebx                                     ; 1000A828 _ 5B
        add     esp, 672                                ; 1000A829 _ 81. C4, 000002A0
        ret                                             ; 1000A82F _ C3

?_1096: lea     edx, [esp+14H]                          ; 1000A830 _ 8D. 54 24, 14
        mov     byte [esp+14H], 2                       ; 1000A834 _ C6. 44 24, 14, 02
        push    edx                                     ; 1000A839 _ 52
        push    ?_5770                                  ; 1000A83A _ 68, 114FFE20(d)
        call    ?_1110                                  ; 1000A83F _ E8, 0000015C
        push    ?_5770                                  ; 1000A844 _ 68, 114FFE20(d)
        call    ?_1064                                  ; 1000A849 _ E8, FFFFFA92
        add     esp, 12                                 ; 1000A84E _ 83. C4, 0C
?_1097: pop     edi                                     ; 1000A851 _ 5F
        pop     esi                                     ; 1000A852 _ 5E
        pop     ebp                                     ; 1000A853 _ 5D
        xor     eax, eax                                ; 1000A854 _ 33. C0
        pop     ebx                                     ; 1000A856 _ 5B
        add     esp, 672                                ; 1000A857 _ 81. C4, 000002A0
        ret                                             ; 1000A85D _ C3

        nop                                             ; 1000A85E _ 90
        nop                                             ; 1000A85F _ 90
