; ---- 10003661 ----
?_0268: ; Local function
        mov     al, byte [?_5512]                       ; 10003661 _ A0, 10034618(d)
        test    al, 01H                                 ; 10003666 _ A8, 01
        jz      ?_0271                                  ; 10003668 _ 74, 59
        mov     ecx, dword [esp+8H]                     ; 1000366A _ 8B. 4C 24, 08
        mov     edx, dword [esp+4H]                     ; 1000366E _ 8B. 54 24, 04
        test    al, 20H                                 ; 10003672 _ A8, 20
        mov     eax, dword [esp+0CH]                    ; 10003674 _ 8B. 44 24, 0C
        push    eax                                     ; 10003678 _ 50
        push    ecx                                     ; 10003679 _ 51
        push    edx                                     ; 1000367A _ 52
        jz      ?_0269                                  ; 1000367B _ 74, 1B
        call    near [imp_timeGetTime]                  ; 1000367D _ FF. 15, 10024154(d)
        push    eax                                     ; 10003683 _ 50
        push    ?_5113                                  ; 10003684 _ 68, 10027464(d)
        push    ?_5787                                  ; 10003689 _ 68, 117640E0(d)
        call    ?_3039                                  ; 1000368E _ E8, 00016C06
        add     esp, 24                                 ; 10003693 _ 83. C4, 18
        jmp     ?_0270                                  ; 10003696 _ EB, 12

?_0269: push    ?_5112                                  ; 10003698 _ 68, 10027448(d)
        push    ?_5787                                  ; 1000369D _ 68, 117640E0(d)
        call    ?_3039                                  ; 100036A2 _ E8, 00016BF2
        add     esp, 20                                 ; 100036A7 _ 83. C4, 14
?_0270: mov     eax, dword [esp+10H]                    ; 100036AA _ 8B. 44 24, 10
        mov     ecx, dword [?_5512]                     ; 100036AE _ 8B. 0D, 10034618(d)
        push    eax                                     ; 100036B4 _ 50
        push    ecx                                     ; 100036B5 _ 51
        push    ?_5787                                  ; 100036B6 _ 68, 117640E0(d)
        call    ?_0154                                  ; 100036BB _ E8, FFFFEF80
        add     esp, 12                                 ; 100036C0 _ 83. C4, 0C
?_0271: ret                                             ; 100036C3 _ C3

        nop                                             ; 100036C4 _ 90
        nop                                             ; 100036C5 _ 90
        nop                                             ; 100036C6 _ 90
        nop                                             ; 100036C7 _ 90
        nop                                             ; 100036C8 _ 90
        nop                                             ; 100036C9 _ 90
        nop                                             ; 100036CA _ 90
        nop                                             ; 100036CB _ 90
        nop                                             ; 100036CC _ 90
        nop                                             ; 100036CD _ 90
        nop                                             ; 100036CE _ 90
        nop                                             ; 100036CF _ 90
?_0272: push    ebx                                     ; 100036D0 _ 53
        push    esi                                     ; 100036D1 _ 56
        mov     esi, dword [esp+0CH]                    ; 100036D2 _ 8B. 74 24, 0C
        push    edi                                     ; 100036D6 _ 57
        xor     ebx, ebx                                ; 100036D7 _ 33. DB
        mov     edi, ?_5114                             ; 100036D9 _ BF, 10027488(d)
?_0273: push    esi                                     ; 100036DE _ 56
        call    ?_0287                                  ; 100036DF _ E8, 0000013C
        mov     ecx, dword [edi]                        ; 100036E4 _ 8B. 0F
        add     esp, 4                                  ; 100036E6 _ 83. C4, 04
        cmp     eax, ecx                                ; 100036E9 _ 3B. C1
        jne     ?_0283                                  ; 100036EB _ 0F 85, 000000E7
        add     edi, 4                                  ; 100036F1 _ 83. C7, 04
        inc     ebx                                     ; 100036F4 _ 43
        cmp     edi, ?_5115                             ; 100036F5 _ 81. FF, 10027490(d)
        jc      ?_0273                                  ; 100036FB _ 72, E1
        push    esi                                     ; 100036FD _ 56
        call    ?_0287                                  ; 100036FE _ E8, 0000011D
        push    esi                                     ; 10003703 _ 56
        mov     edi, eax                                ; 10003704 _ 8B. F8
        call    ?_0287                                  ; 10003706 _ E8, 00000115
        add     esp, 8                                  ; 1000370B _ 83. C4, 08
        cmp     edi, 8                                  ; 1000370E _ 83. FF, 08
        mov     ebx, eax                                ; 10003711 _ 8B. D8
        jne     ?_0286                                  ; 10003713 _ 0F 85, 000000F8
        test    bl, 0FFFFFFE0H                          ; 10003719 _ F6. C3, E0
        jne     ?_0286                                  ; 1000371C _ 0F 85, 000000EF
        mov     edi, 6                                  ; 10003722 _ BF, 00000006
?_0274: push    esi                                     ; 10003727 _ 56
        call    ?_0287                                  ; 10003728 _ E8, 000000F3
        add     esp, 4                                  ; 1000372D _ 83. C4, 04
        dec     edi                                     ; 10003730 _ 4F
        jnz     ?_0274                                  ; 10003731 _ 75, F4
        test    bl, 04H                                 ; 10003733 _ F6. C3, 04
        jz      ?_0276                                  ; 10003736 _ 74, 32
        push    esi                                     ; 10003738 _ 56
        call    ?_0287                                  ; 10003739 _ E8, 000000E2
        push    esi                                     ; 1000373E _ 56
        mov     edi, eax                                ; 1000373F _ 8B. F8
        call    ?_0287                                  ; 10003741 _ E8, 000000DA
        shl     eax, 8                                  ; 10003746 _ C1. E0, 08
        add     edi, eax                                ; 10003749 _ 03. F8
        add     esp, 8                                  ; 1000374B _ 83. C4, 08
        mov     ecx, edi                                ; 1000374E _ 8B. CF
        dec     edi                                     ; 10003750 _ 4F
        test    ecx, ecx                                ; 10003751 _ 85. C9
        jz      ?_0276                                  ; 10003753 _ 74, 15
?_0275: push    esi                                     ; 10003755 _ 56
        call    ?_0287                                  ; 10003756 _ E8, 000000C5
        add     esp, 4                                  ; 1000375B _ 83. C4, 04
        cmp     eax, -1                                 ; 1000375E _ 83. F8, FF
        jz      ?_0276                                  ; 10003761 _ 74, 07
        mov     edx, edi                                ; 10003763 _ 8B. D7
        dec     edi                                     ; 10003765 _ 4F
        test    edx, edx                                ; 10003766 _ 85. D2
        jnz     ?_0275                                  ; 10003768 _ 75, EB
?_0276: test    bl, 08H                                 ; 1000376A _ F6. C3, 08
        jz      ?_0278                                  ; 1000376D _ 74, 1F
        push    esi                                     ; 1000376F _ 56
        call    ?_0287                                  ; 10003770 _ E8, 000000AB
        add     esp, 4                                  ; 10003775 _ 83. C4, 04
        test    eax, eax                                ; 10003778 _ 85. C0
        jz      ?_0278                                  ; 1000377A _ 74, 12
?_0277: cmp     eax, -1                                 ; 1000377C _ 83. F8, FF
        jz      ?_0278                                  ; 1000377F _ 74, 0D
        push    esi                                     ; 10003781 _ 56
        call    ?_0287                                  ; 10003782 _ E8, 00000099
        add     esp, 4                                  ; 10003787 _ 83. C4, 04
        test    eax, eax                                ; 1000378A _ 85. C0
        jnz     ?_0277                                  ; 1000378C _ 75, EE
?_0278: test    bl, 10H                                 ; 1000378E _ F6. C3, 10
        jz      ?_0280                                  ; 10003791 _ 74, 1F
        push    esi                                     ; 10003793 _ 56
        call    ?_0287                                  ; 10003794 _ E8, 00000087
        add     esp, 4                                  ; 10003799 _ 83. C4, 04
        test    eax, eax                                ; 1000379C _ 85. C0
        jz      ?_0280                                  ; 1000379E _ 74, 12
?_0279: cmp     eax, -1                                 ; 100037A0 _ 83. F8, FF
        jz      ?_0280                                  ; 100037A3 _ 74, 0D
        push    esi                                     ; 100037A5 _ 56
        call    ?_0287                                  ; 100037A6 _ E8, 00000075
        add     esp, 4                                  ; 100037AB _ 83. C4, 04
        test    eax, eax                                ; 100037AE _ 85. C0
        jnz     ?_0279                                  ; 100037B0 _ 75, EE
?_0280: test    bl, 02H                                 ; 100037B2 _ F6. C3, 02
        jz      ?_0282                                  ; 100037B5 _ 74, 11
        mov     edi, 2                                  ; 100037B7 _ BF, 00000002
?_0281: push    esi                                     ; 100037BC _ 56
        call    ?_0287                                  ; 100037BD _ E8, 0000005E
        add     esp, 4                                  ; 100037C2 _ 83. C4, 04
        dec     edi                                     ; 100037C5 _ 4F
        jnz     ?_0281                                  ; 100037C6 _ 75, F4
?_0282: mov     eax, dword [esi+3CH]                    ; 100037C8 _ 8B. 46, 3C
        pop     edi                                     ; 100037CB _ 5F
        neg     eax                                     ; 100037CC _ F7. D8
        sbb     eax, eax                                ; 100037CE _ 1B. C0
        and     al, 0FFFFFFFDH                          ; 100037D0 _ 24, FD
        mov     dword [esi+38H], eax                    ; 100037D2 _ 89. 46, 38
        pop     esi                                     ; 100037D5 _ 5E
        pop     ebx                                     ; 100037D6 _ 5B
        ret                                             ; 100037D7 _ C3

?_0283: test    ebx, ebx                                ; 100037D8 _ 85. DB
        jz      ?_0284                                  ; 100037DA _ 74, 0C
        mov     edx, dword [esi+4H]                     ; 100037DC _ 8B. 56, 04
        mov     ecx, dword [esi]                        ; 100037DF _ 8B. 0E
        inc     edx                                     ; 100037E1 _ 42
        dec     ecx                                     ; 100037E2 _ 49
        mov     dword [esi+4H], edx                     ; 100037E3 _ 89. 56, 04
        mov     dword [esi], ecx                        ; 100037E6 _ 89. 0E
?_0284: cmp     eax, -1                                 ; 100037E8 _ 83. F8, FF
        jz      ?_0285                                  ; 100037EB _ 74, 13
        mov     ecx, dword [esi+4H]                     ; 100037ED _ 8B. 4E, 04
        mov     eax, dword [esi]                        ; 100037F0 _ 8B. 06
        inc     ecx                                     ; 100037F2 _ 41
        dec     eax                                     ; 100037F3 _ 48
        mov     dword [esi+4H], ecx                     ; 100037F4 _ 89. 4E, 04
        mov     dword [esi], eax                        ; 100037F7 _ 89. 06
        mov     dword [esi+58H], 1                      ; 100037F9 _ C7. 46, 58, 00000001
?_0285: mov     ecx, dword [esi+4H]                     ; 10003800 _ 8B. 4E, 04
        xor     eax, eax                                ; 10003803 _ 33. C0
        test    ecx, ecx                                ; 10003805 _ 85. C9
        sete    al                                      ; 10003807 _ 0F 94. C0
        mov     dword [esi+38H], eax                    ; 1000380A _ 89. 46, 38
        pop     edi                                     ; 1000380D _ 5F
        pop     esi                                     ; 1000380E _ 5E
        pop     ebx                                     ; 1000380F _ 5B
        ret                                             ; 10003810 _ C3

