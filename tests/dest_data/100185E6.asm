; ---- 100185E6 ----
?_2828: ; Local function
        mov     ax, word [ebx]                          ; 100185E6 _ 66: 8B. 03
        mov     word [esp+14H], ax                      ; 100185E9 _ 66: 89. 44 24, 14
        mov     ax, word [ebp+50H]                      ; 100185EE _ 66: 8B. 45, 50
        cmp     ax, word [ebx+50H]                      ; 100185F2 _ 66: 3B. 43, 50
        jz      ?_2829                                  ; 100185F6 _ 74, 04
        mov     word [ebx+50H], ax                      ; 100185F8 _ 66: 89. 43, 50
?_2829: push    ebp                                     ; 100185FC _ 55
        call    ?_1237                                  ; 100185FD _ E8, FFFF338E
        mov     al, byte [ebp+2H]                       ; 10018602 _ 8A. 45, 02
        mov     dx, word [ebp]                          ; 10018605 _ 66: 8B. 55, 00
        mov     ecx, 135                                ; 10018609 _ B9, 00000087
        mov     esi, ebx                                ; 1001860E _ 8B. F3
        lea     edi, [esp+28H]                          ; 10018610 _ 8D. 7C 24, 28
        rep movsd                                       ; 10018614 _ F3: A5
        mov     ecx, dword [ebp+4H]                     ; 10018616 _ 8B. 4D, 04
        mov     byte [esp+2AH], al                      ; 10018619 _ 88. 44 24, 2A
        xor     eax, eax                                ; 1001861D _ 33. C0
        mov     dword [esp+2CH], ecx                    ; 1001861F _ 89. 4C 24, 2C
        mov     al, byte [ebx+164H]                     ; 10018623 _ 8A. 83, 00000164
        mov     cl, byte [ebp+0DH]                      ; 10018629 _ 8A. 4D, 0D
        mov     word [esp+28H], dx                      ; 1001862C _ 66: 89. 54 24, 28
        mov     edx, dword [ebp+170H]                   ; 10018631 _ 8B. 95, 00000170
        push    eax                                     ; 10018637 _ 50
        mov     byte [esp+39H], cl                      ; 10018638 _ 88. 4C 24, 39
        mov     dword [esp+19CH], edx                   ; 1001863C _ 89. 94 24, 0000019C
        call    ?_2778                                  ; 10018643 _ E8, FFFFFBB8
        mov     esi, eax                                ; 10018648 _ 8B. F0
        add     esp, 8                                  ; 1001864A _ 83. C4, 08
        test    esi, esi                                ; 1001864D _ 85. F6
        jz      ?_2831                                  ; 1001864F _ 74, 6B
        push    ebp                                     ; 10018651 _ 55
        call    ?_2821                                  ; 10018652 _ E8, FFFFFE89
        add     esp, 4                                  ; 10018657 _ 83. C4, 04
        mov     dword [esp+20H], eax                    ; 1001865A _ 89. 44 24, 20
        test    eax, eax                                ; 1001865E _ 85. C0
        jz      ?_2832                                  ; 10018660 _ 74, 67
        xor     ecx, ecx                                ; 10018662 _ 33. C9
        push    esi                                     ; 10018664 _ 56
        mov     cx, word [ebp]                          ; 10018665 _ 66: 8B. 4D, 00
        push    ecx                                     ; 10018669 _ 51
        call    ?_2775                                  ; 1001866A _ E8, FFFFFB31
        mov     edi, eax                                ; 1001866F _ 8B. F8
        add     esp, 8                                  ; 10018671 _ 83. C4, 08
        test    edi, edi                                ; 10018674 _ 85. FF
        jz      ?_2832                                  ; 10018676 _ 74, 51
        xor     edx, edx                                ; 10018678 _ 33. D2
        mov     dl, byte [ebx+164H]                     ; 1001867A _ 8A. 93, 00000164
        push    edx                                     ; 10018680 _ 52
        call    ?_2798                                  ; 10018681 _ E8, FFFFFCAA
        mov     edx, eax                                ; 10018686 _ 8B. D0
        push    edi                                     ; 10018688 _ 57
        mov     dword [esp+18H], edx                    ; 10018689 _ 89. 54 24, 18
        call    ?_2798                                  ; 1001868D _ E8, FFFFFC9E
        mov     ecx, dword [esp+18H]                    ; 10018692 _ 8B. 4C 24, 18
        add     esp, 8                                  ; 10018696 _ 83. C4, 08
        cmp     eax, ecx                                ; 10018699 _ 3B. C1
        jge     ?_2830                                  ; 1001869B _ 7D, 10
        mov     eax, dword [esp+20H]                    ; 1001869D _ 8B. 44 24, 20
        mov     dl, byte [ebx+164H]                     ; 100186A1 _ 8A. 93, 00000164
        mov     byte [eax+esi+74H], dl                  ; 100186A7 _ 88. 54 30, 74
        jmp     ?_2832                                  ; 100186AB _ EB, 1C

?_2830: mov     cl, byte [ebp+164H]                     ; 100186AD _ 8A. 8D, 00000164
        mov     byte [esp+188H], cl                     ; 100186B3 _ 88. 8C 24, 00000188
        jmp     ?_2832                                  ; 100186BA _ EB, 0D

?_2831: mov     dl, byte [ebp+164H]                     ; 100186BC _ 8A. 95, 00000164
        mov     byte [esp+188H], dl                     ; 100186C2 _ 88. 94 24, 00000188
?_2832: mov     eax, dword [ebx+4H]                     ; 100186C9 _ 8B. 43, 04
        mov     esi, ebp                                ; 100186CC _ 8B. F5
        mov     ebp, dword [esp+1CH]                    ; 100186CE _ 8B. 6C 24, 1C
        mov     ecx, 135                                ; 100186D2 _ B9, 00000087
        lea     edi, [esp+240H]                         ; 100186D7 _ 8D. BC 24, 00000240
        and     ebp, 0FFFFH                             ; 100186DE _ 81. E5, 0000FFFF
        rep movsd                                       ; 100186E4 _ F3: A5
        mov     cx, word [ebx]                          ; 100186E6 _ 66: 8B. 0B
        mov     dword [esp+244H], eax                   ; 100186E9 _ 89. 84 24, 00000244
        lea     eax, [ebp+ebp*2]                        ; 100186F0 _ 8D. 44 6D, 00
        mov     word [esp+240H], cx                     ; 100186F4 _ 66: 89. 8C 24, 00000240
        mov     ecx, 135                                ; 100186FC _ B9, 00000087
        lea     esi, [esp+24H]                          ; 10018701 _ 8D. 74 24, 24
        lea     eax, [eax+eax*4]                        ; 10018705 _ 8D. 04 80
        mov     byte [esp+242H], 9                      ; 10018708 _ C6. 84 24, 00000242, 09
        lea     ebx, [eax+eax*8]                        ; 10018710 _ 8D. 1C C0
        mov     eax, dword [esp+14H]                    ; 10018713 _ 8B. 44 24, 14
        and     eax, 0FFFFH                             ; 10018717 _ 25, 0000FFFF
        shl     ebx, 2                                  ; 1001871C _ C1. E3, 02
        lea     eax, [eax+eax*2]                        ; 1001871F _ 8D. 04 40
        lea     edi, [?_5632+ebx]                       ; 10018722 _ 8D. BB, 100358A0(d)
        lea     eax, [eax+eax*4]                        ; 10018728 _ 8D. 04 80
        rep movsd                                       ; 1001872B _ F3: A5
        lea     eax, [eax+eax*8]                        ; 1001872D _ 8D. 04 C0
        mov     ecx, 135                                ; 10018730 _ B9, 00000087
        shl     eax, 2                                  ; 10018735 _ C1. E0, 02
        lea     esi, [esp+240H]                         ; 10018738 _ 8D. B4 24, 00000240
        lea     edi, [?_5632+eax]                       ; 1001873F _ 8D. B8, 100358A0(d)
        rep movsd                                       ; 10018745 _ F3: A5
        mov     ecx, dword [?_5650+ebx]                 ; 10018747 _ 8B. 8B, 10035A18(d)
        test    ecx, ecx                                ; 1001874D _ 85. C9
        jz      ?_2834                                  ; 1001874F _ 74, 10
?_2833: mov     edx, dword [?_5634+ebx]                 ; 10018751 _ 8B. 93, 100358A4(d)
        mov     dword [ecx+6H], edx                     ; 10018757 _ 89. 51, 06
        mov     ecx, dword [ecx+3FH]                    ; 1001875A _ 8B. 49, 3F
        test    ecx, ecx                                ; 1001875D _ 85. C9
        jnz     ?_2833                                  ; 1001875F _ 75, F0
?_2834: mov     ecx, dword [?_5650+eax]                 ; 10018761 _ 8B. 88, 10035A18(d)
        test    ecx, ecx                                ; 10018767 _ 85. C9
        jz      ?_2836                                  ; 10018769 _ 74, 10
?_2835: mov     edx, dword [?_5634+eax]                 ; 1001876B _ 8B. 90, 100358A4(d)
        mov     dword [ecx+6H], edx                     ; 10018771 _ 89. 51, 06
        mov     ecx, dword [ecx+3FH]                    ; 10018774 _ 8B. 49, 3F
        test    ecx, ecx                                ; 10018777 _ 85. C9
        jnz     ?_2835                                  ; 10018779 _ 75, F0
?_2836: mov     edi, ?_5643                             ; 1001877B _ BF, 100358FC(d)
        mov     dword [esp+10H], 768                    ; 10018780 _ C7. 44 24, 10, 00000300
?_2837: mov     eax, edi                                ; 10018788 _ 8B. C7
        mov     esi, 8                                  ; 1001878A _ BE, 00000008
?_2838: mov     ecx, dword [eax]                        ; 1001878F _ 8B. 08
        mov     edx, dword [esp+460H]                   ; 10018791 _ 8B. 94 24, 00000460
        cmp     ecx, edx                                ; 10018798 _ 3B. CA
        jnz     ?_2839                                  ; 1001879A _ 75, 0B
        mov     ecx, dword [esp+464H]                   ; 1001879C _ 8B. 8C 24, 00000464
        mov     dword [eax], ecx                        ; 100187A3 _ 89. 08
        jmp     ?_2840                                  ; 100187A5 _ EB, 0B

?_2839: cmp     ecx, dword [esp+464H]                   ; 100187A7 _ 3B. 8C 24, 00000464
        jnz     ?_2840                                  ; 100187AE _ 75, 02
        mov     dword [eax], edx                        ; 100187B0 _ 89. 10
?_2840: add     eax, 4                                  ; 100187B2 _ 83. C0, 04
        dec     esi                                     ; 100187B5 _ 4E
        jnz     ?_2838                                  ; 100187B6 _ 75, D7
        mov     eax, dword [esp+10H]                    ; 100187B8 _ 8B. 44 24, 10
        add     edi, 540                                ; 100187BC _ 81. C7, 0000021C
        dec     eax                                     ; 100187C2 _ 48
        mov     dword [esp+10H], eax                    ; 100187C3 _ 89. 44 24, 10
        jnz     ?_2837                                  ; 100187C7 _ 75, BF
        mov     esi, dword [esp+3B8H]                   ; 100187C9 _ 8B. B4 24, 000003B8
        test    esi, esi                                ; 100187D0 _ 85. F6
        jz      ?_2843                                  ; 100187D2 _ 74, 39
?_2841: mov     ax, word [esi]                          ; 100187D4 _ 66: 8B. 06
        test    ax, ax                                  ; 100187D7 _ 66: 85. C0
        jz      ?_2842                                  ; 100187DA _ 74, 2A
        mov     ecx, dword [?_5693]                     ; 100187DC _ 8B. 0D, 101DE450(d)
        and     eax, 0FFFFH                             ; 100187E2 _ 25, 0000FFFF
        mov     edx, eax                                ; 100187E7 _ 8B. D0
        shl     edx, 6                                  ; 100187E9 _ C1. E2, 06
        add     ecx, edx                                ; 100187EC _ 03. CA
        cmp     byte [eax+ecx], 9                       ; 100187EE _ 80. 3C 08, 09
        jnz     ?_2842                                  ; 100187F2 _ 75, 12
        mov     edx, dword [esi+0EH]                    ; 100187F4 _ 8B. 56, 0E
        push    edx                                     ; 100187F7 _ 52
        push    eax                                     ; 100187F8 _ 50
        mov     eax, dword [esp+30H]                    ; 100187F9 _ 8B. 44 24, 30
        push    eax                                     ; 100187FD _ 50
        call    ?_2564                                  ; 100187FE _ E8, FFFFE4CD
        add     esp, 12                                 ; 10018803 _ 83. C4, 0C
?_2842: mov     esi, dword [esi+3FH]                    ; 10018806 _ 8B. 76, 3F
        test    esi, esi                                ; 10018809 _ 85. F6
        jnz     ?_2841                                  ; 1001880B _ 75, C7
?_2843: mov     edx, dword [esp+240H]                   ; 1001880D _ 8B. 94 24, 00000240
        mov     ecx, dword [esp+18H]                    ; 10018814 _ 8B. 4C 24, 18
        and     edx, 0FFFFH                             ; 10018818 _ 81. E2, 0000FFFF
        mov     dword [?_5652+ebx], ecx                 ; 1001881E _ 89. 8B, 10035A48(d)
        push    0                                       ; 10018824 _ 6A, 00
        mov     dword [?_5651+ebx], 4                   ; 10018826 _ C7. 83, 10035A34(d), 00000004
        push    edx                                     ; 10018830 _ 52
        mov     dword [?_5653+ebx], 0                   ; 10018831 _ C7. 83, 10035A68(d), 00000000
        call    ?_2757                                  ; 1001883B _ E8, FFFFF770
        add     esp, 8                                  ; 10018840 _ 83. C4, 08
        mov     eax, ebp                                ; 10018843 _ 8B. C5
        pop     edi                                     ; 10018845 _ 5F
        pop     esi                                     ; 10018846 _ 5E
        pop     ebp                                     ; 10018847 _ 5D
        pop     ebx                                     ; 10018848 _ 5B
        add     esp, 1100                               ; 10018849 _ 81. C4, 0000044C
        ret                                             ; 1001884F _ C3

