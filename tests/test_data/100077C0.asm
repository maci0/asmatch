; ---- 100077C0 ----
?_0768: ; Local function
        sub     esp, 28                                 ; 100077C0 _ 83. EC, 1C
        mov     eax, dword [esp+24H]                    ; 100077C3 _ 8B. 44 24, 24
        push    ebx                                     ; 100077C7 _ 53
        push    ebp                                     ; 100077C8 _ 55
        push    esi                                     ; 100077C9 _ 56
        mov     ebx, dword [eax]                        ; 100077CA _ 8B. 18
        mov     ecx, dword [eax+4H]                     ; 100077CC _ 8B. 48, 04
        mov     eax, dword [eax+8H]                     ; 100077CF _ 8B. 40, 08
        mov     dword [esp+18H], ecx                    ; 100077D2 _ 89. 4C 24, 18
        push    edi                                     ; 100077D6 _ 57
        xor     esi, esi                                ; 100077D7 _ 33. F6
        mov     edx, dword [eax]                        ; 100077D9 _ 8B. 10
        mov     ecx, dword [eax+4H]                     ; 100077DB _ 8B. 48, 04
        mov     ebp, dword [eax+10H]                    ; 100077DE _ 8B. 68, 10
        mov     dword [esp+14H], edx                    ; 100077E1 _ 89. 54 24, 14
        mov     edx, dword [eax+8H]                     ; 100077E5 _ 8B. 50, 08
        mov     dword [esp+24H], ecx                    ; 100077E8 _ 89. 4C 24, 24
        mov     dword [esp+20H], edx                    ; 100077EC _ 89. 54 24, 20
        mov     edx, dword [esp+30H]                    ; 100077F0 _ 8B. 54 24, 30
        mov     ecx, 8                                  ; 100077F4 _ B9, 00000008
        xor     eax, eax                                ; 100077F9 _ 33. C0
        lea     edi, [edx+0B34H]                        ; 100077FB _ 8D. BA, 00000B34
        mov     dword [esp+10H], esi                    ; 10007801 _ 89. 74 24, 10
        rep stosd                                       ; 10007805 _ F3: AB
        mov     eax, dword [edx+144CH]                  ; 10007807 _ 8B. 82, 0000144C
        mov     dword [esp+28H], ebp                    ; 1000780D _ 89. 6C 24, 28
        mov     ecx, dword [edx+eax*4+0B54H]            ; 10007811 _ 8B. 8C 82, 00000B54
        mov     word [ebx+ecx*4+2H], si                 ; 10007818 _ 66: 89. 74 8B, 02
        mov     esi, dword [edx+144CH]                  ; 1000781D _ 8B. B2, 0000144C
        inc     esi                                     ; 10007823 _ 46
        cmp     esi, 573                                ; 10007824 _ 81. FE, 0000023D
        jge     ?_0782                                  ; 1000782A _ 0F 8D, 000001A9
        lea     eax, [edx+esi*4+0B54H]                  ; 10007830 _ 8D. 84 B2, 00000B54
        mov     dword [esp+30H], eax                    ; 10007837 _ 89. 44 24, 30
        mov     eax, 573                                ; 1000783B _ B8, 0000023D
        sub     eax, esi                                ; 10007840 _ 2B. C6
        add     esi, eax                                ; 10007842 _ 03. F0
        mov     dword [esp+18H], eax                    ; 10007844 _ 89. 44 24, 18
        mov     dword [esp+34H], esi                    ; 10007848 _ 89. 74 24, 34
?_0769: mov     ecx, dword [esp+30H]                    ; 1000784C _ 8B. 4C 24, 30
        xor     eax, eax                                ; 10007850 _ 33. C0
        xor     edi, edi                                ; 10007852 _ 33. FF
        mov     ecx, dword [ecx]                        ; 10007854 _ 8B. 09
        mov     ax, word [ebx+ecx*4+2H]                 ; 10007856 _ 66: 8B. 44 8B, 02
        mov     di, word [ebx+eax*4+2H]                 ; 1000785B _ 66: 8B. 7C 83, 02
        mov     eax, edi                                ; 10007860 _ 8B. C7
        inc     eax                                     ; 10007862 _ 40
        cmp     eax, ebp                                ; 10007863 _ 3B. C5
        jle     ?_0770                                  ; 10007865 _ 7E, 0B
        mov     edi, dword [esp+10H]                    ; 10007867 _ 8B. 7C 24, 10
        mov     eax, ebp                                ; 1000786B _ 8B. C5
        inc     edi                                     ; 1000786D _ 47
        mov     dword [esp+10H], edi                    ; 1000786E _ 89. 7C 24, 10
?_0770: mov     edi, dword [esp+1CH]                    ; 10007872 _ 8B. 7C 24, 1C
        mov     word [ebx+ecx*4+2H], ax                 ; 10007876 _ 66: 89. 44 8B, 02
        cmp     ecx, edi                                ; 1000787B _ 3B. CF
        jg      ?_0773                                  ; 1000787D _ 7F, 60
        mov     esi, dword [esp+20H]                    ; 1000787F _ 8B. 74 24, 20
        inc     word [edx+eax*2+0B34H]                  ; 10007883 _ 66: FF. 84 42, 00000B34
        xor     edi, edi                                ; 1000788B _ 33. FF
        cmp     ecx, esi                                ; 1000788D _ 3B. CE
        jl      ?_0771                                  ; 1000788F _ 7C, 0B
        mov     edi, ecx                                ; 10007891 _ 8B. F9
        sub     edi, esi                                ; 10007893 _ 2B. FE
        mov     esi, dword [esp+24H]                    ; 10007895 _ 8B. 74 24, 24
        mov     edi, dword [esi+edi*4]                  ; 10007899 _ 8B. 3C BE
?_0771: mov     si, word [ebx+ecx*4]                    ; 1000789C _ 66: 8B. 34 8B
        add     eax, edi                                ; 100078A0 _ 03. C7
        and     esi, 0FFFFH                             ; 100078A2 _ 81. E6, 0000FFFF
        imul    eax, esi                                ; 100078A8 _ 0F AF. C6
        add     dword [edx+16A0H], eax                  ; 100078AB _ 01. 82, 000016A0
        mov     eax, dword [esp+14H]                    ; 100078B1 _ 8B. 44 24, 14
        test    eax, eax                                ; 100078B5 _ 85. C0
        jz      ?_0772                                  ; 100078B7 _ 74, 22
        mov     ebp, dword [esp+14H]                    ; 100078B9 _ 8B. 6C 24, 14
        xor     eax, eax                                ; 100078BD _ 33. C0
        mov     ax, word [ebp+ecx*4+2H]                 ; 100078BF _ 66: 8B. 44 8D, 02
        mov     ecx, dword [edx+16A4H]                  ; 100078C4 _ 8B. 8A, 000016A4
        add     eax, edi                                ; 100078CA _ 03. C7
        mov     ebp, dword [esp+28H]                    ; 100078CC _ 8B. 6C 24, 28
        imul    eax, esi                                ; 100078D0 _ 0F AF. C6
        add     ecx, eax                                ; 100078D3 _ 03. C8
        mov     dword [edx+16A4H], ecx                  ; 100078D5 _ 89. 8A, 000016A4
?_0772: mov     esi, dword [esp+34H]                    ; 100078DB _ 8B. 74 24, 34
?_0773: mov     ecx, dword [esp+30H]                    ; 100078DF _ 8B. 4C 24, 30
        mov     eax, dword [esp+18H]                    ; 100078E3 _ 8B. 44 24, 18
        add     ecx, 4                                  ; 100078E7 _ 83. C1, 04
        dec     eax                                     ; 100078EA _ 48
        mov     dword [esp+30H], ecx                    ; 100078EB _ 89. 4C 24, 30
        mov     dword [esp+18H], eax                    ; 100078EF _ 89. 44 24, 18
        jne     ?_0769                                  ; 100078F3 _ 0F 85, FFFFFF53
        mov     edi, dword [esp+10H]                    ; 100078F9 _ 8B. 7C 24, 10
        test    edi, edi                                ; 100078FD _ 85. FF
        je      ?_0782                                  ; 100078FF _ 0F 84, 000000D4
?_0774: lea     eax, [ebp-1H]                           ; 10007905 _ 8D. 45, FF
        cmp     word [edx+eax*2+0B34H], 0               ; 10007908 _ 66: 83. BC 42, 00000B34, 00
        lea     ecx, [edx+eax*2+0B34H]                  ; 10007911 _ 8D. 8C 42, 00000B34
        jnz     ?_0776                                  ; 10007918 _ 75, 0A
?_0775: sub     ecx, 2                                  ; 1000791A _ 83. E9, 02
        dec     eax                                     ; 1000791D _ 48
        cmp     word [ecx], 0                           ; 1000791E _ 66: 83. 39, 00
        jz      ?_0775                                  ; 10007922 _ 74, F6
?_0776: dec     word [edx+eax*2+0B34H]                  ; 10007924 _ 66: FF. 8C 42, 00000B34
        add     word [edx+eax*2+0B36H], 2               ; 1000792C _ 66: 83. 84 42, 00000B36, 02
        dec     word [edx+ebp*2+0B34H]                  ; 10007935 _ 66: FF. 8C 6A, 00000B34
        sub     edi, 2                                  ; 1000793D _ 83. EF, 02
        test    edi, edi                                ; 10007940 _ 85. FF
        jg      ?_0774                                  ; 10007942 _ 7F, C1
        test    ebp, ebp                                ; 10007944 _ 85. ED
        mov     edi, ebp                                ; 10007946 _ 8B. FD
        je      ?_0782                                  ; 10007948 _ 0F 84, 0000008B
        lea     ebp, [edx+ebp*2+0B34H]                  ; 1000794E _ 8D. AC 6A, 00000B34
        mov     dword [esp+18H], ebp                    ; 10007955 _ 89. 6C 24, 18
?_0777: xor     eax, eax                                ; 10007959 _ 33. C0
        mov     ax, word [ebp]                          ; 1000795B _ 66: 8B. 45, 00
        test    eax, eax                                ; 1000795F _ 85. C0
        mov     dword [esp+30H], eax                    ; 10007961 _ 89. 44 24, 30
        jz      ?_0781                                  ; 10007965 _ 74, 62
        lea     ebp, [edx+esi*4+0B54H]                  ; 10007967 _ 8D. AC B2, 00000B54
?_0778: mov     esi, dword [esp+34H]                    ; 1000796E _ 8B. 74 24, 34
        mov     ecx, dword [ebp-4H]                     ; 10007972 _ 8B. 4D, FC
        dec     esi                                     ; 10007975 _ 4E
        sub     ebp, 4                                  ; 10007976 _ 83. ED, 04
        mov     dword [esp+34H], esi                    ; 10007979 _ 89. 74 24, 34
        mov     esi, dword [esp+1CH]                    ; 1000797D _ 8B. 74 24, 1C
        cmp     ecx, esi                                ; 10007981 _ 3B. CE
        mov     dword [esp+28H], ebp                    ; 10007983 _ 89. 6C 24, 28
        jg      ?_0780                                  ; 10007987 _ 7F, 38
        lea     esi, [ebx+ecx*4+2H]                     ; 10007989 _ 8D. 74 8B, 02
        xor     eax, eax                                ; 1000798D _ 33. C0
        mov     ax, word [esi]                          ; 1000798F _ 66: 8B. 06
        cmp     eax, edi                                ; 10007992 _ 3B. C7
        jz      ?_0779                                  ; 10007994 _ 74, 22
        mov     ebp, edi                                ; 10007996 _ 8B. EF
        sub     ebp, eax                                ; 10007998 _ 2B. E8
        xor     eax, eax                                ; 1000799A _ 33. C0
        mov     ax, word [ebx+ecx*4]                    ; 1000799C _ 66: 8B. 04 8B
        imul    ebp, eax                                ; 100079A0 _ 0F AF. E8
        mov     eax, dword [edx+16A0H]                  ; 100079A3 _ 8B. 82, 000016A0
        add     eax, ebp                                ; 100079A9 _ 03. C5
        mov     ebp, dword [esp+28H]                    ; 100079AB _ 8B. 6C 24, 28
        mov     dword [edx+16A0H], eax                  ; 100079AF _ 89. 82, 000016A0
        mov     word [esi], di                          ; 100079B5 _ 66: 89. 3E
?_0779: mov     eax, dword [esp+30H]                    ; 100079B8 _ 8B. 44 24, 30
        dec     eax                                     ; 100079BC _ 48
        mov     dword [esp+30H], eax                    ; 100079BD _ 89. 44 24, 30
?_0780: test    eax, eax                                ; 100079C1 _ 85. C0
        jnz     ?_0778                                  ; 100079C3 _ 75, A9
        mov     esi, dword [esp+34H]                    ; 100079C5 _ 8B. 74 24, 34
?_0781: mov     ebp, dword [esp+18H]                    ; 100079C9 _ 8B. 6C 24, 18
        dec     edi                                     ; 100079CD _ 4F
        sub     ebp, 2                                  ; 100079CE _ 83. ED, 02
        test    edi, edi                                ; 100079D1 _ 85. FF
        mov     dword [esp+18H], ebp                    ; 100079D3 _ 89. 6C 24, 18
        jnz     ?_0777                                  ; 100079D7 _ 75, 80
?_0782: pop     edi                                     ; 100079D9 _ 5F
        pop     esi                                     ; 100079DA _ 5E
        pop     ebp                                     ; 100079DB _ 5D
        pop     ebx                                     ; 100079DC _ 5B
        add     esp, 28                                 ; 100079DD _ 83. C4, 1C
        ret                                             ; 100079E0 _ C3

        nop                                             ; 100079E1 _ 90
        nop                                             ; 100079E2 _ 90
        nop                                             ; 100079E3 _ 90
        nop                                             ; 100079E4 _ 90
        nop                                             ; 100079E5 _ 90
        nop                                             ; 100079E6 _ 90
        nop                                             ; 100079E7 _ 90
        nop                                             ; 100079E8 _ 90
        nop                                             ; 100079E9 _ 90
        nop                                             ; 100079EA _ 90
        nop                                             ; 100079EB _ 90
        nop                                             ; 100079EC _ 90
        nop                                             ; 100079ED _ 90
        nop                                             ; 100079EE _ 90
        nop                                             ; 100079EF _ 90

