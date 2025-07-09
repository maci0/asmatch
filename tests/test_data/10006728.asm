; ---- 10006728 ----
?_0654: ; Local function
        mov     edi, dword [ebp-4H]                     ; 10006728 _ 8B. 7D, FC
        mov     ebx, dword [ebp-8H]                     ; 1000672B _ 8B. 5D, F8
        xor     eax, eax                                ; 1000672E _ 33. C0
        lea     ecx, [edi+edi*2]                        ; 10006730 _ 8D. 0C 7F
        and     ecx, 03H                                ; 10006733 _ 83. E1, 03
        sub     ebx, ecx                                ; 10006736 _ 2B. D9
        jle     ?_0655                                  ; 10006738 _ 7E, 0C
        rep stosb                                       ; 1000673A _ F3: AA
        mov     ecx, ebx                                ; 1000673C _ 8B. CB
        and     ebx, 03H                                ; 1000673E _ 83. E3, 03
        shr     ecx, 2                                  ; 10006741 _ C1. E9, 02
        rep stosd                                       ; 10006744 _ F3: AB
?_0655: add     ecx, ebx                                ; 10006746 _ 03. CB
        rep stosb                                       ; 10006748 _ F3: AA
        mov     edi, dword [?_5515]                     ; 1000674A _ 8B. 3D, 10034624(d)
        mov     eax, dword [?_5517]                     ; 10006750 _ A1, 1003462C(d)
        cmp     eax, edi                                ; 10006755 _ 3B. C7
        jge     ?_0661                                  ; 10006757 _ 0F 8D, 00000092
        mov     eax, dword [?_5522]                     ; 1000675D _ A1, 10034640(d)
        xor     ecx, ecx                                ; 10006762 _ 33. C9
        test    edi, edi                                ; 10006764 _ 85. FF
        jle     ?_0657                                  ; 10006766 _ 7E, 0F
?_0656: mov     ebx, dword [eax+8H]                     ; 10006768 _ 8B. 58, 08
        test    ebx, ebx                                ; 1000676B _ 85. DB
        jz      ?_0657                                  ; 1000676D _ 74, 08
        add     eax, 16                                 ; 1000676F _ 83. C0, 10
        inc     ecx                                     ; 10006772 _ 41
        cmp     ecx, edi                                ; 10006773 _ 3B. CF
        jl      ?_0656                                  ; 10006775 _ 7C, F1
?_0657: mov     ecx, dword [ebp+0CH]                    ; 10006777 _ 8B. 4D, 0C
        mov     dword [eax+8H], edx                     ; 1000677A _ 89. 50, 08
        mov     dword [eax+4H], ecx                     ; 1000677D _ 89. 48, 04
        mov     ecx, dword [ebp+8H]                     ; 10006780 _ 8B. 4D, 08
        mov     dword [eax+0CH], ecx                    ; 10006783 _ 89. 48, 0C
        mov     dword [eax], esi                        ; 10006786 _ 89. 30
        mov     eax, dword [?_5516]                     ; 10006788 _ A1, 10034628(d)
        mov     edi, dword [?_5518]                     ; 1000678D _ 8B. 3D, 10034630(d)
        add     eax, ecx                                ; 10006793 _ 03. C1
        cmp     eax, edi                                ; 10006795 _ 3B. C7
        mov     dword [?_5516], eax                     ; 10006797 _ A3, 10034628(d)
        jle     ?_0658                                  ; 1000679C _ 7E, 05
        mov     dword [?_5518], eax                     ; 1000679E _ A3, 10034630(d)
?_0658: mov     edi, dword [esi+10H]                    ; 100067A3 _ 8B. 7E, 10
        add     edi, ecx                                ; 100067A6 _ 03. F9
        mov     ecx, dword [esi+18H]                    ; 100067A8 _ 8B. 4E, 18
        mov     eax, edi                                ; 100067AB _ 8B. C7
        mov     dword [esi+10H], edi                    ; 100067AD _ 89. 7E, 10
        cmp     eax, ecx                                ; 100067B0 _ 3B. C1
        jle     ?_0659                                  ; 100067B2 _ 7E, 03
        mov     dword [esi+18H], eax                    ; 100067B4 _ 89. 46, 18
?_0659: mov     eax, dword [?_5517]                     ; 100067B7 _ A1, 1003462C(d)
        mov     ecx, dword [?_5519]                     ; 100067BC _ 8B. 0D, 10034634(d)
        inc     eax                                     ; 100067C2 _ 40
        cmp     eax, ecx                                ; 100067C3 _ 3B. C1
        mov     dword [?_5517], eax                     ; 100067C5 _ A3, 1003462C(d)
        jle     ?_0660                                  ; 100067CA _ 7E, 05
        mov     dword [?_5519], eax                     ; 100067CC _ A3, 10034634(d)
?_0660: mov     edi, dword [esi+14H]                    ; 100067D1 _ 8B. 7E, 14
        mov     ecx, dword [esi+1CH]                    ; 100067D4 _ 8B. 4E, 1C
        inc     edi                                     ; 100067D7 _ 47
        mov     eax, edi                                ; 100067D8 _ 8B. C7
        mov     dword [esi+14H], edi                    ; 100067DA _ 89. 7E, 14
        cmp     eax, ecx                                ; 100067DD _ 3B. C1
        jle     ?_0662                                  ; 100067DF _ 7E, 28
        mov     ecx, edi                                ; 100067E1 _ 8B. CF
        pop     edi                                     ; 100067E3 _ 5F
        mov     dword [esi+1CH], ecx                    ; 100067E4 _ 89. 4E, 1C
        pop     esi                                     ; 100067E7 _ 5E
        mov     eax, edx                                ; 100067E8 _ 8B. C2
        pop     ebx                                     ; 100067EA _ 5B
        mov     esp, ebp                                ; 100067EB _ 8B. E5
        pop     ebp                                     ; 100067ED _ 5D
        ret                                             ; 100067EE _ C3

?_0661: push    ?_5138                                  ; 100067EF _ 68, 100287E4(d)
        push    240                                     ; 100067F4 _ 68, 000000F0
        push    ?_5141                                  ; 100067F9 _ 68, 10028888(d)
        call    ?_0258                                  ; 100067FE _ E8, FFFFCD1D
        mov     edx, dword [ebp-4H]                     ; 10006803 _ 8B. 55, FC
        add     esp, 12                                 ; 10006806 _ 83. C4, 0C
?_0662: pop     edi                                     ; 10006809 _ 5F
        pop     esi                                     ; 1000680A _ 5E
        mov     eax, edx                                ; 1000680B _ 8B. C2
        pop     ebx                                     ; 1000680D _ 5B
        mov     esp, ebp                                ; 1000680E _ 8B. E5
        pop     ebp                                     ; 10006810 _ 5D
        ret                                             ; 10006811 _ C3

        nop                                             ; 10006812 _ 90
        nop                                             ; 10006813 _ 90
        nop                                             ; 10006814 _ 90
        nop                                             ; 10006815 _ 90
        nop                                             ; 10006816 _ 90
        nop                                             ; 10006817 _ 90
        nop                                             ; 10006818 _ 90
        nop                                             ; 10006819 _ 90
        nop                                             ; 1000681A _ 90
        nop                                             ; 1000681B _ 90
        nop                                             ; 1000681C _ 90
        nop                                             ; 1000681D _ 90
        nop                                             ; 1000681E _ 90
        nop                                             ; 1000681F _ 90
?_0663: mov     edx, dword [esp+4H]                     ; 10006820 _ 8B. 54 24, 04
        push    esi                                     ; 10006824 _ 56
        test    edx, edx                                ; 10006825 _ 85. D2
        push    edi                                     ; 10006827 _ 57
        je      ?_0667                                  ; 10006828 _ 0F 84, 000000AB
        mov     eax, dword [?_5520]                     ; 1000682E _ A1, 10034638(d)
        mov     ecx, dword [?_5515]                     ; 10006833 _ 8B. 0D, 10034624(d)
        mov     esi, dword [?_5522]                     ; 10006839 _ 8B. 35, 10034640(d)
        dec     eax                                     ; 1000683F _ 48
        mov     dword [?_5520], eax                     ; 10006840 _ A3, 10034638(d)
        xor     eax, eax                                ; 10006845 _ 33. C0
        test    ecx, ecx                                ; 10006847 _ 85. C9
        jle     ?_0665                                  ; 10006849 _ 7E, 0D
?_0664: cmp     dword [esi+8H], edx                     ; 1000684B _ 39. 56, 08
        jz      ?_0665                                  ; 1000684E _ 74, 08
        add     esi, 16                                 ; 10006850 _ 83. C6, 10
        inc     eax                                     ; 10006853 _ 40
        cmp     eax, ecx                                ; 10006854 _ 3B. C1
        jl      ?_0664                                  ; 10006856 _ 7C, F3
?_0665: cmp     eax, ecx                                ; 10006858 _ 3B. C1
        jnz     ?_0666                                  ; 1000685A _ 75, 1C
        push    1                                       ; 1000685C _ 6A, 01
        push    ?_5144                                  ; 1000685E _ 68, 100288F8(d)
        push    329                                     ; 10006863 _ 68, 00000149
        push    ?_5141                                  ; 10006868 _ 68, 10028888(d)
        call    ?_0267                                  ; 1000686D _ E8, FFFFCDCE
        add     esp, 16                                 ; 10006872 _ 83. C4, 10
        pop     edi                                     ; 10006875 _ 5F
        pop     esi                                     ; 10006876 _ 5E
        ret                                             ; 10006877 _ C3

?_0666: mov     edi, dword [esi+0CH]                    ; 10006878 _ 8B. 7E, 0C
        push    edx                                     ; 1000687B _ 52
        mov     dword [esi+8H], 0                       ; 1000687C _ C7. 46, 08, 00000000
        call    ?_3158                                  ; 10006883 _ E8, 000142F9
        mov     edx, dword [?_5517]                     ; 10006888 _ 8B. 15, 1003462C(d)
        add     esp, 4                                  ; 1000688E _ 83. C4, 04
        dec     edx                                     ; 10006891 _ 4A
        mov     dword [?_5517], edx                     ; 10006892 _ 89. 15, 1003462C(d)
        mov     eax, dword [esi]                        ; 10006898 _ 8B. 06
        mov     ecx, dword [eax+14H]                    ; 1000689A _ 8B. 48, 14
        dec     ecx                                     ; 1000689D _ 49
        mov     dword [eax+14H], ecx                    ; 1000689E _ 89. 48, 14
        mov     edx, dword [?_5516]                     ; 100068A1 _ 8B. 15, 10034628(d)
        sub     edx, edi                                ; 100068A7 _ 2B. D7
        mov     dword [?_5516], edx                     ; 100068A9 _ 89. 15, 10034628(d)
        mov     esi, dword [esi]                        ; 100068AF _ 8B. 36
        mov     ecx, dword [esi+10H]                    ; 100068B1 _ 8B. 4E, 10
        sub     ecx, edi                                ; 100068B4 _ 2B. CF
        mov     dword [esi+10H], ecx                    ; 100068B6 _ 89. 4E, 10
        mov     eax, dword [?_5516]                     ; 100068B9 _ A1, 10034628(d)
        test    eax, eax                                ; 100068BE _ 85. C0
        jge     ?_0667                                  ; 100068C0 _ 7D, 17
        push    ?_5143                                  ; 100068C2 _ 68, 100288E0(d)
        push    378                                     ; 100068C7 _ 68, 0000017A
        push    ?_5141                                  ; 100068CC _ 68, 10028888(d)
        call    ?_0258                                  ; 100068D1 _ E8, FFFFCC4A
        add     esp, 12                                 ; 100068D6 _ 83. C4, 0C
?_0667: pop     edi                                     ; 100068D9 _ 5F
        pop     esi                                     ; 100068DA _ 5E
        ret                                             ; 100068DB _ C3

        nop                                             ; 100068DC _ 90
        nop                                             ; 100068DD _ 90
        nop                                             ; 100068DE _ 90
        nop                                             ; 100068DF _ 90
?_0668: push    ebp                                     ; 100068E0 _ 55
        mov     ebp, esp                                ; 100068E1 _ 8B. EC
        mov     eax, dword [ebp+8H]                     ; 100068E3 _ 8B. 45, 08
        push    ebx                                     ; 100068E6 _ 53
        mov     dword [?_5515], eax                     ; 100068E7 _ A3, 10034624(d)
        push    esi                                     ; 100068EC _ 56
        shl     eax, 4                                  ; 100068ED _ C1. E0, 04
        push    edi                                     ; 100068F0 _ 57
        mov     edi, eax                                ; 100068F1 _ 8B. F8
        xor     esi, esi                                ; 100068F3 _ 33. F6
        push    edi                                     ; 100068F5 _ 57
        mov     dword [?_5516], esi                     ; 100068F6 _ 89. 35, 10034628(d)
        mov     dword [?_5518], esi                     ; 100068FC _ 89. 35, 10034630(d)
        mov     dword [?_5517], esi                     ; 10006902 _ 89. 35, 1003462C(d)
        mov     dword [?_5519], esi                     ; 10006908 _ 89. 35, 10034634(d)
        call    ?_3109                                  ; 1000690E _ E8, 00013EE4
        add     esp, 4                                  ; 10006913 _ 83. C4, 04
        mov     dword [?_5522], eax                     ; 10006916 _ A3, 10034640(d)
        mov     dword [ebp+8H], edi                     ; 1000691B _ 89. 7D, 08
        mov     edi, dword [?_5522]                     ; 1000691E _ 8B. 3D, 10034640(d)
        mov     ebx, dword [ebp+8H]                     ; 10006924 _ 8B. 5D, 08
        xor     eax, eax                                ; 10006927 _ 33. C0
        lea     ecx, [edi+edi*2]                        ; 10006929 _ 8D. 0C 7F
        and     ecx, 03H                                ; 1000692C _ 83. E1, 03
        sub     ebx, ecx                                ; 1000692F _ 2B. D9
        jle     ?_0669                                  ; 10006931 _ 7E, 0C
        rep stosb                                       ; 10006933 _ F3: AA
        mov     ecx, ebx                                ; 10006935 _ 8B. CB
        and     ebx, 03H                                ; 10006937 _ 83. E3, 03
        shr     ecx, 2                                  ; 1000693A _ C1. E9, 02
        rep stosd                                       ; 1000693D _ F3: AB
?_0669: add     ecx, ebx                                ; 1000693F _ 03. CB
        rep stosb                                       ; 10006941 _ F3: AA
        mov     eax, dword [?_5145]                     ; 10006943 _ A1, 10028938(d)
        mov     ecx, dword [?_5146]                     ; 10006948 _ 8B. 0D, 1002893C(d)
        mov     dword [?_5782], esi                     ; 1000694E _ 89. 35, 117640B4(d)
        mov     dword [?_5781], esi                     ; 10006954 _ 89. 35, 117640B0(d)
        mov     dword [?_5784], esi                     ; 1000695A _ 89. 35, 117640BC(d)
        mov     dword [?_5783], esi                     ; 10006960 _ 89. 35, 117640B8(d)
        mov     dword [?_5785], esi                     ; 10006966 _ 89. 35, 117640C0(d)
        mov     dword [?_5786], esi                     ; 1000696C _ 89. 35, 117640C4(d)
        pop     edi                                     ; 10006972 _ 5F
        pop     esi                                     ; 10006973 _ 5E
        mov     dword [?_5779], eax                     ; 10006974 _ A3, 117640A0(d)
        mov     dword [?_5780], ecx                     ; 10006979 _ 89. 0D, 117640A4(d)
        pop     ebx                                     ; 1000697F _ 5B
        pop     ebp                                     ; 10006980 _ 5D
        ret                                             ; 10006981 _ C3

        nop                                             ; 10006982 _ 90
        nop                                             ; 10006983 _ 90
        nop                                             ; 10006984 _ 90
        nop                                             ; 10006985 _ 90
        nop                                             ; 10006986 _ 90
        nop                                             ; 10006987 _ 90
        nop                                             ; 10006988 _ 90
        nop                                             ; 10006989 _ 90
        nop                                             ; 1000698A _ 90
        nop                                             ; 1000698B _ 90
        nop                                             ; 1000698C _ 90
        nop                                             ; 1000698D _ 90
        nop                                             ; 1000698E _ 90
        nop                                             ; 1000698F _ 90
?_0670: mov     eax, dword [?_5516]                     ; 10006990 _ A1, 10034628(d)
        mov     ecx, dword [?_5517]                     ; 10006995 _ 8B. 0D, 1003462C(d)
        sub     esp, 1040                               ; 1000699B _ 81. EC, 00000410
        test    eax, eax                                ; 100069A1 _ 85. C0
        jnz     ?_0671                                  ; 100069A3 _ 75, 2B
        test    ecx, ecx                                ; 100069A5 _ 85. C9
        jnz     ?_0671                                  ; 100069A7 _ 75, 27
        mov     eax, dword [?_5518]                     ; 100069A9 _ A1, 10034630(d)
        mov     edx, dword [?_5519]                     ; 100069AE _ 8B. 15, 10034634(d)
        mov     ecx, eax                                ; 100069B4 _ 8B. C8
        sar     ecx, 10                                 ; 100069B6 _ C1. F9, 0A
        push    ecx                                     ; 100069B9 _ 51
        push    eax                                     ; 100069BA _ 50
        push    edx                                     ; 100069BB _ 52
        lea     eax, [esp+1CH]                          ; 100069BC _ 8D. 44 24, 1C
        push    ?_5154                                  ; 100069C0 _ 68, 10028AA0(d)
        push    eax                                     ; 100069C5 _ 50
        call    ?_3039                                  ; 100069C6 _ E8, 000138CE
        add     esp, 20                                 ; 100069CB _ 83. C4, 14
        jmp     ?_0672                                  ; 100069CE _ EB, 2D

?_0671: mov     edx, eax                                ; 100069D0 _ 8B. D0
        sar     edx, 10                                 ; 100069D2 _ C1. FA, 0A
        push    edx                                     ; 100069D5 _ 52
        mov     edx, dword [?_5519]                     ; 100069D6 _ 8B. 15, 10034634(d)
        push    eax                                     ; 100069DC _ 50
        mov     eax, dword [?_5518]                     ; 100069DD _ A1, 10034630(d)
        push    ecx                                     ; 100069E2 _ 51
        mov     ecx, eax                                ; 100069E3 _ 8B. C8
        sar     ecx, 10                                 ; 100069E5 _ C1. F9, 0A
        push    ecx                                     ; 100069E8 _ 51
        push    eax                                     ; 100069E9 _ 50
        push    edx                                     ; 100069EA _ 52
        lea     eax, [esp+28H]                          ; 100069EB _ 8D. 44 24, 28
        push    ?_5153                                  ; 100069EF _ 68, 10028A2C(d)
        push    eax                                     ; 100069F4 _ 50
        call    ?_3039                                  ; 100069F5 _ E8, 0001389F
        add     esp, 32                                 ; 100069FA _ 83. C4, 20
?_0672: push    ebp                                     ; 100069FD _ 55
        lea     ecx, [esp+14H]                          ; 100069FE _ 8D. 4C 24, 14
        push    1                                       ; 10006A02 _ 6A, 01
        push    ecx                                     ; 10006A04 _ 51
        push    437                                     ; 10006A05 _ 68, 000001B5
        push    ?_5141                                  ; 10006A0A _ 68, 10028888(d)
        call    ?_0267                                  ; 10006A0F _ E8, FFFFCC2C
        push    1                                       ; 10006A14 _ 6A, 01
        push    ?_5152                                  ; 10006A16 _ 68, 10028A10(d)
        push    438                                     ; 10006A1B _ 68, 000001B6
        push    ?_5141                                  ; 10006A20 _ 68, 10028888(d)
        call    ?_0267                                  ; 10006A25 _ E8, FFFFCC16
        mov     ebp, ?_5779                             ; 10006A2A _ BD, 117640A0(d)
        add     esp, 32                                 ; 10006A2F _ 83. C4, 20
        mov     edx, ebp                                ; 10006A32 _ 8B. D5
        test    edx, edx                                ; 10006A34 _ 85. D2
        je      ?_0685                                  ; 10006A36 _ 0F 84, 00000197
        push    ebx                                     ; 10006A3C _ 53
        push    esi                                     ; 10006A3D _ 56
        push    edi                                     ; 10006A3E _ 57
?_0673: mov     esi, dword [esp+424H]                   ; 10006A3F _ 8B. B4 24, 00000424
        test    esi, esi                                ; 10006A46 _ 85. F6
        jz      ?_0674                                  ; 10006A48 _ 74, 12
        push    esi                                     ; 10006A4A _ 56
        push    ebp                                     ; 10006A4B _ 55
        call    ?_3222                                  ; 10006A4C _ E8, 0001459F
        add     esp, 8                                  ; 10006A51 _ 83. C4, 08
        test    eax, eax                                ; 10006A54 _ 85. C0
        jz      ?_0674                                  ; 10006A56 _ 74, 04
        mov     bl, 1                                   ; 10006A58 _ B3, 01
        jmp     ?_0675                                  ; 10006A5A _ EB, 02

?_0674: xor     bl, bl                                  ; 10006A5C _ 32. DB
?_0675: mov     eax, dword [ebp+1CH]                    ; 10006A5E _ 8B. 45, 1C
        test    eax, eax                                ; 10006A61 _ 85. C0
        jle     ?_0684                                  ; 10006A63 _ 0F 8E, 0000015C
        cmp     byte [ebp], 33                          ; 10006A69 _ 80. 7D, 00, 21
        jnz     ?_0676                                  ; 10006A6D _ 75, 0F
        mov     eax, dword [ebp+14H]                    ; 10006A6F _ 8B. 45, 14
        test    eax, eax                                ; 10006A72 _ 85. C0
        jnz     ?_0676                                  ; 10006A74 _ 75, 08
        test    bl, bl                                  ; 10006A76 _ 84. DB
        je      ?_0684                                  ; 10006A78 _ 0F 84, 00000147
?_0676: test    esi, esi                                ; 10006A7E _ 85. F6
        jz      ?_0677                                  ; 10006A80 _ 74, 08
        test    bl, bl                                  ; 10006A82 _ 84. DB
        je      ?_0684                                  ; 10006A84 _ 0F 84, 0000013B
?_0677: mov     edi, ebp                                ; 10006A8A _ 8B. FD
        or      ecx, 0FFFFFFFFH                         ; 10006A8C _ 83. C9, FF
        xor     eax, eax                                ; 10006A8F _ 33. C0
        lea     edx, [esp+10H]                          ; 10006A91 _ 8D. 54 24, 10
        repne scasb                                     ; 10006A95 _ F2: AE
        not     ecx                                     ; 10006A97 _ F7. D1
        sub     edi, ecx                                ; 10006A99 _ 2B. F9
        push    58                                      ; 10006A9B _ 6A, 3A
        mov     eax, ecx                                ; 10006A9D _ 8B. C1
        mov     esi, edi                                ; 10006A9F _ 8B. F7
        mov     edi, edx                                ; 10006AA1 _ 8B. FA
        shr     ecx, 2                                  ; 10006AA3 _ C1. E9, 02
        rep movsd                                       ; 10006AA6 _ F3: A5
        mov     ecx, eax                                ; 10006AA8 _ 8B. C8
        and     ecx, 03H                                ; 10006AAA _ 83. E1, 03
        rep movsb                                       ; 10006AAD _ F3: A4
        lea     ecx, [esp+14H]                          ; 10006AAF _ 8D. 4C 24, 14
        push    ecx                                     ; 10006AB3 _ 51
        call    ?_3073                                  ; 10006AB4 _ E8, 00013A87
        add     esp, 8                                  ; 10006AB9 _ 83. C4, 08
        test    eax, eax                                ; 10006ABC _ 85. C0
        jz      ?_0678                                  ; 10006ABE _ 74, 03
        mov     byte [eax], 0                           ; 10006AC0 _ C6. 00, 00
?_0678: mov     eax, dword [ebp+10H]                    ; 10006AC3 _ 8B. 45, 10
        test    eax, eax                                ; 10006AC6 _ 85. C0
        jnz     ?_0679                                  ; 10006AC8 _ 75, 32
        mov     ecx, dword [ebp+14H]                    ; 10006ACA _ 8B. 4D, 14
        test    ecx, ecx                                ; 10006ACD _ 85. C9
        jnz     ?_0679                                  ; 10006ACF _ 75, 2B
        mov     edx, dword [ebp+20H]                    ; 10006AD1 _ 8B. 55, 20
        mov     eax, dword [ebp+18H]                    ; 10006AD4 _ 8B. 45, 18
        mov     ecx, dword [ebp+1CH]                    ; 10006AD7 _ 8B. 4D, 1C
        push    edx                                     ; 10006ADA _ 52
        mov     edx, eax                                ; 10006ADB _ 8B. D0
        push    ecx                                     ; 10006ADD _ 51
        sar     edx, 10                                 ; 10006ADE _ C1. FA, 0A
        push    edx                                     ; 10006AE1 _ 52
        push    eax                                     ; 10006AE2 _ 50
        lea     eax, [esp+20H]                          ; 10006AE3 _ 8D. 44 24, 20
        lea     ecx, [esp+30H]                          ; 10006AE7 _ 8D. 4C 24, 30
        push    eax                                     ; 10006AEB _ 50
        push    ?_5151                                  ; 10006AEC _ 68, 100289D4(d)
        push    ecx                                     ; 10006AF1 _ 51
        call    ?_3039                                  ; 10006AF2 _ E8, 000137A2
        add     esp, 28                                 ; 10006AF7 _ 83. C4, 1C
        jmp     ?_0680                                  ; 10006AFA _ EB, 34

?_0679: mov     edx, dword [ebp+20H]                    ; 10006AFC _ 8B. 55, 20
        mov     ecx, dword [ebp+18H]                    ; 10006AFF _ 8B. 4D, 18
        push    edx                                     ; 10006B02 _ 52
        mov     edx, dword [ebp+1CH]                    ; 10006B03 _ 8B. 55, 1C
        push    edx                                     ; 10006B06 _ 52
        mov     edx, dword [ebp+14H]                    ; 10006B07 _ 8B. 55, 14
        push    edx                                     ; 10006B0A _ 52
        mov     edx, ecx                                ; 10006B0B _ 8B. D1
        sar     edx, 10                                 ; 10006B0D _ C1. FA, 0A
        push    edx                                     ; 10006B10 _ 52
        mov     edx, eax                                ; 10006B11 _ 8B. D0
        sar     edx, 10                                 ; 10006B13 _ C1. FA, 0A
        push    edx                                     ; 10006B16 _ 52
        push    ecx                                     ; 10006B17 _ 51
        push    eax                                     ; 10006B18 _ 50
        lea     eax, [esp+2CH]                          ; 10006B19 _ 8D. 44 24, 2C
        push    eax                                     ; 10006B1D _ 50
        lea     ecx, [esp+40H]                          ; 10006B1E _ 8D. 4C 24, 40
        push    ?_5150                                  ; 10006B22 _ 68, 1002898C(d)
        push    ecx                                     ; 10006B27 _ 51
        call    ?_3039                                  ; 10006B28 _ E8, 0001376C
        add     esp, 40                                 ; 10006B2D _ 83. C4, 28
?_0680: lea     edx, [esp+20H]                          ; 10006B30 _ 8D. 54 24, 20
        push    1                                       ; 10006B34 _ 6A, 01
        push    edx                                     ; 10006B36 _ 52
        push    460                                     ; 10006B37 _ 68, 000001CC
        push    ?_5141                                  ; 10006B3C _ 68, 10028888(d)
        call    ?_0267                                  ; 10006B41 _ E8, FFFFCAFA
        add     esp, 16                                 ; 10006B46 _ 83. C4, 10
        test    bl, bl                                  ; 10006B49 _ 84. DB
        jz      ?_0684                                  ; 10006B4B _ 74, 78
        mov     eax, dword [?_5515]                     ; 10006B4D _ A1, 10034624(d)
        mov     esi, dword [?_5522]                     ; 10006B52 _ 8B. 35, 10034640(d)
        xor     edi, edi                                ; 10006B58 _ 33. FF
        test    eax, eax                                ; 10006B5A _ 85. C0
        jle     ?_0683                                  ; 10006B5C _ 7E, 4E
?_0681: mov     eax, dword [esi+8H]                     ; 10006B5E _ 8B. 46, 08
        test    eax, eax                                ; 10006B61 _ 85. C0
        jz      ?_0682                                  ; 10006B63 _ 74, 3A
        cmp     dword [esi], ebp                        ; 10006B65 _ 39. 2E
        jnz     ?_0682                                  ; 10006B67 _ 75, 36
        mov     eax, dword [esi+0CH]                    ; 10006B69 _ 8B. 46, 0C
        mov     edx, dword [esi+4H]                     ; 10006B6C _ 8B. 56, 04
        mov     ecx, eax                                ; 10006B6F _ 8B. C8
        sar     ecx, 10                                 ; 10006B71 _ C1. F9, 0A
        push    ecx                                     ; 10006B74 _ 51
        push    eax                                     ; 10006B75 _ 50
        push    edx                                     ; 10006B76 _ 52
        lea     eax, [esp+2CH]                          ; 10006B77 _ 8D. 44 24, 2C
        push    ?_5149                                  ; 10006B7B _ 68, 10028974(d)
        push    eax                                     ; 10006B80 _ 50
        call    ?_3039                                  ; 10006B81 _ E8, 00013713
        lea     ecx, [esp+34H]                          ; 10006B86 _ 8D. 4C 24, 34
        push    1                                       ; 10006B8A _ 6A, 01
        push    ecx                                     ; 10006B8C _ 51
        push    469                                     ; 10006B8D _ 68, 000001D5
        push    ?_5141                                  ; 10006B92 _ 68, 10028888(d)
        call    ?_0267                                  ; 10006B97 _ E8, FFFFCAA4
        add     esp, 36                                 ; 10006B9C _ 83. C4, 24
?_0682: mov     eax, dword [?_5515]                     ; 10006B9F _ A1, 10034624(d)
        inc     edi                                     ; 10006BA4 _ 47
        add     esi, 16                                 ; 10006BA5 _ 83. C6, 10
        cmp     edi, eax                                ; 10006BA8 _ 3B. F8
        jl      ?_0681                                  ; 10006BAA _ 7C, B2
?_0683: push    1                                       ; 10006BAC _ 6A, 01
        push    ?_5148                                  ; 10006BAE _ 68, 10028958(d)
        push    472                                     ; 10006BB3 _ 68, 000001D8
        push    ?_5141                                  ; 10006BB8 _ 68, 10028888(d)
        call    ?_0267                                  ; 10006BBD _ E8, FFFFCA7E
        add     esp, 16                                 ; 10006BC2 _ 83. C4, 10
?_0684: mov     ebp, dword [ebp+24H]                    ; 10006BC5 _ 8B. 6D, 24
        test    ebp, ebp                                ; 10006BC8 _ 85. ED
        jne     ?_0673                                  ; 10006BCA _ 0F 85, FFFFFE6F
        pop     edi                                     ; 10006BD0 _ 5F
        pop     esi                                     ; 10006BD1 _ 5E
        pop     ebx                                     ; 10006BD2 _ 5B
?_0685: push    1                                       ; 10006BD3 _ 6A, 01
        push    ?_5147                                  ; 10006BD5 _ 68, 10028940(d)
        push    476                                     ; 10006BDA _ 68, 000001DC
        push    ?_5141                                  ; 10006BDF _ 68, 10028888(d)
        call    ?_0267                                  ; 10006BE4 _ E8, FFFFCA57
        add     esp, 16                                 ; 10006BE9 _ 83. C4, 10
        pop     ebp                                     ; 10006BEC _ 5D
        add     esp, 1040                               ; 10006BED _ 81. C4, 00000410
        ret                                             ; 10006BF3 _ C3

        nop                                             ; 10006BF4 _ 90
        nop                                             ; 10006BF5 _ 90
        nop                                             ; 10006BF6 _ 90
        nop                                             ; 10006BF7 _ 90
        nop                                             ; 10006BF8 _ 90
        nop                                             ; 10006BF9 _ 90
        nop                                             ; 10006BFA _ 90
        nop                                             ; 10006BFB _ 90
        nop                                             ; 10006BFC _ 90
        nop                                             ; 10006BFD _ 90
        nop                                             ; 10006BFE _ 90
        nop                                             ; 10006BFF _ 90
?_0686: mov     eax, dword [?_5517]                     ; 10006C00 _ A1, 1003462C(d)
        mov     ecx, dword [?_5516]                     ; 10006C05 _ 8B. 0D, 10034628(d)
        sub     esp, 1024                               ; 10006C0B _ 81. EC, 00000400
        push    ebx                                     ; 10006C11 _ 53
        xor     ebx, ebx                                ; 10006C12 _ 33. DB
        push    esi                                     ; 10006C14 _ 56
        cmp     eax, ebx                                ; 10006C15 _ 3B. C3
        push    edi                                     ; 10006C17 _ 57
        jnz     ?_0687                                  ; 10006C18 _ 75, 12
        cmp     ecx, ebx                                ; 10006C1A _ 3B. CB
        jnz     ?_0687                                  ; 10006C1C _ 75, 0E
        cmp     dword [?_5521], ebx                     ; 10006C1E _ 39. 1D, 1003463C(d)
        je      ?_0692                                  ; 10006C24 _ 0F 84, 0000009A
        jmp     ?_0688                                  ; 10006C2A _ EB, 34

?_0687: push    ecx                                     ; 10006C2C _ 51
        mov     ecx, dword [?_5519]                     ; 10006C2D _ 8B. 0D, 10034634(d)
        push    eax                                     ; 10006C33 _ 50
        mov     eax, dword [?_5518]                     ; 10006C34 _ A1, 10034630(d)
        push    eax                                     ; 10006C39 _ 50
        push    ecx                                     ; 10006C3A _ 51
        lea     edx, [esp+1CH]                          ; 10006C3B _ 8D. 54 24, 1C
        push    ?_5156                                  ; 10006C3F _ 68, 10028B04(d)
        push    edx                                     ; 10006C44 _ 52
        call    ?_3039                                  ; 10006C45 _ E8, 0001364F
        lea     eax, [esp+24H]                          ; 10006C4A _ 8D. 44 24, 24
        push    eax                                     ; 10006C4E _ 50
        call    ?_0263                                  ; 10006C4F _ E8, FFFFC96C
        mov     eax, dword [?_5521]                     ; 10006C54 _ A1, 1003463C(d)
        add     esp, 28                                 ; 10006C59 _ 83. C4, 1C
        cmp     eax, ebx                                ; 10006C5C _ 3B. C3
        jz      ?_0689                                  ; 10006C5E _ 74, 09
?_0688: push    ebx                                     ; 10006C60 _ 53
        call    ?_0670                                  ; 10006C61 _ E8, FFFFFD2A
        add     esp, 4                                  ; 10006C66 _ 83. C4, 04
?_0689: mov     eax, dword [?_5515]                     ; 10006C69 _ A1, 10034624(d)
        xor     edi, edi                                ; 10006C6E _ 33. FF
        cmp     eax, ebx                                ; 10006C70 _ 3B. C3
        jle     ?_0692                                  ; 10006C72 _ 7E, 50
        mov     ecx, dword [?_5522]                     ; 10006C74 _ 8B. 0D, 10034640(d)
        lea     esi, [ecx+8H]                           ; 10006C7A _ 8D. 71, 08
?_0690: cmp     dword [esi], ebx                        ; 10006C7D _ 39. 1E
        jz      ?_0691                                  ; 10006C7F _ 74, 36
        mov     edx, dword [esi-4H]                     ; 10006C81 _ 8B. 56, FC
        lea     eax, [esp+0CH]                          ; 10006C84 _ 8D. 44 24, 0C
        push    edx                                     ; 10006C88 _ 52
        push    ?_5155                                  ; 10006C89 _ 68, 10028AEC(d)
        push    eax                                     ; 10006C8E _ 50
        call    ?_3039                                  ; 10006C8F _ E8, 00013605
        lea     ecx, [esp+18H]                          ; 10006C94 _ 8D. 4C 24, 18
        push    1                                       ; 10006C98 _ 6A, 01
        push    ecx                                     ; 10006C9A _ 51
        push    515                                     ; 10006C9B _ 68, 00000203
        push    ?_5141                                  ; 10006CA0 _ 68, 10028888(d)
        call    ?_0267                                  ; 10006CA5 _ E8, FFFFC996
        mov     edx, dword [esi]                        ; 10006CAA _ 8B. 16
        push    edx                                     ; 10006CAC _ 52
        call    ?_3158                                  ; 10006CAD _ E8, 00013ECF
        add     esp, 32                                 ; 10006CB2 _ 83. C4, 20
        mov     dword [esi], ebx                        ; 10006CB5 _ 89. 1E
?_0691: mov     eax, dword [?_5515]                     ; 10006CB7 _ A1, 10034624(d)
        inc     edi                                     ; 10006CBC _ 47
        add     esi, 16                                 ; 10006CBD _ 83. C6, 10
        cmp     edi, eax                                ; 10006CC0 _ 3B. F8
        jl      ?_0690                                  ; 10006CC2 _ 7C, B9
?_0692: mov     eax, dword [?_5786]                     ; 10006CC4 _ A1, 117640C4(d)
        mov     dword [?_5519], ebx                     ; 10006CC9 _ 89. 1D, 10034634(d)
        cmp     eax, ebx                                ; 10006CCF _ 3B. C3
        mov     dword [?_5517], ebx                     ; 10006CD1 _ 89. 1D, 1003462C(d)
        mov     dword [?_5518], ebx                     ; 10006CD7 _ 89. 1D, 10034630(d)
        mov     dword [?_5516], ebx                     ; 10006CDD _ 89. 1D, 10034628(d)
        mov     dword [?_5515], ebx                     ; 10006CE3 _ 89. 1D, 10034624(d)
        jz      ?_0694                                  ; 10006CE9 _ 74, 12
?_0693: mov     esi, dword [eax+24H]                    ; 10006CEB _ 8B. 70, 24
        push    eax                                     ; 10006CEE _ 50
        call    ?_3158                                  ; 10006CEF _ E8, 00013E8D
        add     esp, 4                                  ; 10006CF4 _ 83. C4, 04
        cmp     esi, ebx                                ; 10006CF7 _ 3B. F3
        mov     eax, esi                                ; 10006CF9 _ 8B. C6
        jnz     ?_0693                                  ; 10006CFB _ 75, EE
?_0694: mov     eax, dword [?_5522]                     ; 10006CFD _ A1, 10034640(d)
        push    eax                                     ; 10006D02 _ 50
        call    ?_3158                                  ; 10006D03 _ E8, 00013E79
        add     esp, 4                                  ; 10006D08 _ 83. C4, 04
        mov     dword [?_5522], ebx                     ; 10006D0B _ 89. 1D, 10034640(d)
        pop     edi                                     ; 10006D11 _ 5F
        pop     esi                                     ; 10006D12 _ 5E
        pop     ebx                                     ; 10006D13 _ 5B
        add     esp, 1024                               ; 10006D14 _ 81. C4, 00000400
        ret                                             ; 10006D1A _ C3

        nop                                             ; 10006D1B _ 90
        nop                                             ; 10006D1C _ 90
        nop                                             ; 10006D1D _ 90
        nop                                             ; 10006D1E _ 90
        nop                                             ; 10006D1F _ 90
?_0695: push    ebp                                     ; 10006D20 _ 55
        mov     ebp, esp                                ; 10006D21 _ 8B. EC
        push    ebx                                     ; 10006D23 _ 53
        mov     ebx, dword [ebp+8H]                     ; 10006D24 _ 8B. 5D, 08
        push    esi                                     ; 10006D27 _ 56
        push    edi                                     ; 10006D28 _ 57
        test    ebx, ebx                                ; 10006D29 _ 85. DB
        je      ?_0703                                  ; 10006D2B _ 0F 84, 000000B9
        mov     eax, dword [ebp+0CH]                    ; 10006D31 _ 8B. 45, 0C
        test    eax, eax                                ; 10006D34 _ 85. C0
        jbe     ?_0703                                  ; 10006D36 _ 0F 86, 000000AE
        mov     edi, dword [ebp+10H]                    ; 10006D3C _ 8B. 7D, 10
        test    edi, edi                                ; 10006D3F _ 85. FF
        jle     ?_0703                                  ; 10006D41 _ 0F 8E, 000000A3
        lea     esi, [eax+4H]                           ; 10006D47 _ 8D. 70, 04
        and     eax, 03H                                ; 10006D4A _ 83. E0, 03
        jle     ?_0696                                  ; 10006D4D _ 7E, 09
        mov     ecx, 4                                  ; 10006D4F _ B9, 00000004
        sub     ecx, eax                                ; 10006D54 _ 2B. C8
        add     esi, ecx                                ; 10006D56 _ 03. F1
?_0696: mov     eax, dword [ebx]                        ; 10006D58 _ 8B. 03
        test    eax, eax                                ; 10006D5A _ 85. C0
        jnz     ?_0697                                  ; 10006D5C _ 75, 2D
        mov     edx, esi                                ; 10006D5E _ 8B. D6
        push    ?_5158                                  ; 10006D60 _ 68, 10028B78(d)
        imul    edx, edi                                ; 10006D65 _ 0F AF. D7
        add     edx, 16                                 ; 10006D68 _ 83. C2, 10
        push    edx                                     ; 10006D6B _ 52
        call    ?_0640                                  ; 10006D6C _ E8, FFFFF80F
        mov     dword [ebx], eax                        ; 10006D71 _ 89. 03
        add     esp, 8                                  ; 10006D73 _ 83. C4, 08
        mov     dword [eax], 0                          ; 10006D76 _ C7. 00, 00000000
        mov     dword [eax+4H], edi                     ; 10006D7C _ 89. 78, 04
        mov     dword [eax+8H], esi                     ; 10006D7F _ 89. 70, 08
        mov     dword [eax+0CH], 0                      ; 10006D82 _ C7. 40, 0C, 00000000
        jmp     ?_0701                                  ; 10006D89 _ EB, 44

?_0697: mov     ecx, dword [eax]                        ; 10006D8B _ 8B. 08
        mov     edx, dword [eax+4H]                     ; 10006D8D _ 8B. 50, 04
        cmp     ecx, edx                                ; 10006D90 _ 3B. CA
        jge     ?_0698                                  ; 10006D92 _ 7D, 05
        cmp     dword [eax+8H], esi                     ; 10006D94 _ 39. 70, 08
        jz      ?_0699                                  ; 10006D97 _ 74, 09
?_0698: mov     eax, dword [eax+0CH]                    ; 10006D99 _ 8B. 40, 0C
        test    eax, eax                                ; 10006D9C _ 85. C0
        jnz     ?_0697                                  ; 10006D9E _ 75, EB
        jmp     ?_0700                                  ; 10006DA0 _ EB, 04

?_0699: test    eax, eax                                ; 10006DA2 _ 85. C0
        jnz     ?_0701                                  ; 10006DA4 _ 75, 29
?_0700: mov     edx, esi                                ; 10006DA6 _ 8B. D6
        push    ?_5157                                  ; 10006DA8 _ 68, 10028B60(d)
        imul    edx, edi                                ; 10006DAD _ 0F AF. D7
        add     edx, 16                                 ; 10006DB0 _ 83. C2, 10
        push    edx                                     ; 10006DB3 _ 52
        call    ?_0640                                  ; 10006DB4 _ E8, FFFFF7C7
        mov     dword [eax], 0                          ; 10006DB9 _ C7. 00, 00000000
        mov     dword [eax+4H], edi                     ; 10006DBF _ 89. 78, 04
        mov     dword [eax+8H], esi                     ; 10006DC2 _ 89. 70, 08
        mov     ecx, dword [ebx]                        ; 10006DC5 _ 8B. 0B
        mov     dword [eax+0CH], ecx                    ; 10006DC7 _ 89. 48, 0C
        add     esp, 8                                  ; 10006DCA _ 83. C4, 08
        mov     dword [ebx], eax                        ; 10006DCD _ 89. 03
?_0701: mov     edi, dword [eax+4H]                     ; 10006DCF _ 8B. 78, 04
        xor     ecx, ecx                                ; 10006DD2 _ 33. C9
        test    edi, edi                                ; 10006DD4 _ 85. FF
        lea     edx, [eax+10H]                          ; 10006DD6 _ 8D. 50, 10
        jle     ?_0703                                  ; 10006DD9 _ 7E, 0F
?_0702: cmp     dword [edx], 0                          ; 10006DDB _ 83. 3A, 00
        jz      ?_0704                                  ; 10006DDE _ 74, 11
        mov     ebx, dword [eax+8H]                     ; 10006DE0 _ 8B. 58, 08
        inc     ecx                                     ; 10006DE3 _ 41
        add     edx, ebx                                ; 10006DE4 _ 03. D3
        cmp     ecx, edi                                ; 10006DE6 _ 3B. CF
        jl      ?_0702                                  ; 10006DE8 _ 7C, F1
?_0703: pop     edi                                     ; 10006DEA _ 5F
        pop     esi                                     ; 10006DEB _ 5E
        xor     eax, eax                                ; 10006DEC _ 33. C0
        pop     ebx                                     ; 10006DEE _ 5B
        pop     ebp                                     ; 10006DEF _ 5D
        ret                                             ; 10006DF0 _ C3
