; ---- 1000159C ----
?_0029: ; Local function
        mov     eax, 4294967294                         ; 1000159C _ B8, FFFFFFFE
        pop     esi                                     ; 100015A1 _ 5E
        ret                                             ; 100015A2 _ C3

        nop                                             ; 100015A3 _ 90
        nop                                             ; 100015A4 _ 90
        nop                                             ; 100015A5 _ 90
        nop                                             ; 100015A6 _ 90
        nop                                             ; 100015A7 _ 90
        nop                                             ; 100015A8 _ 90
        nop                                             ; 100015A9 _ 90
        nop                                             ; 100015AA _ 90
        nop                                             ; 100015AB _ 90
        nop                                             ; 100015AC _ 90
        nop                                             ; 100015AD _ 90
        nop                                             ; 100015AE _ 90
        nop                                             ; 100015AF _ 90
?_0030: push    ebx                                     ; 100015B0 _ 53
        mov     ebx, dword [esp+8H]                     ; 100015B1 _ 8B. 5C 24, 08
        push    ebp                                     ; 100015B5 _ 55
        push    esi                                     ; 100015B6 _ 56
        test    ebx, ebx                                ; 100015B7 _ 85. DB
        push    edi                                     ; 100015B9 _ 57
        je      ?_0053                                  ; 100015BA _ 0F 84, 00000293
        mov     esi, dword [ebx+1CH]                    ; 100015C0 _ 8B. 73, 1C
        test    esi, esi                                ; 100015C3 _ 85. F6
        je      ?_0053                                  ; 100015C5 _ 0F 84, 00000288
        mov     ebp, dword [esp+18H]                    ; 100015CB _ 8B. 6C 24, 18
        cmp     ebp, 4                                  ; 100015CF _ 83. FD, 04
        jg      ?_0053                                  ; 100015D2 _ 0F 8F, 0000027B
        test    ebp, ebp                                ; 100015D8 _ 85. ED
        jl      ?_0053                                  ; 100015DA _ 0F 8C, 00000273
        mov     eax, dword [ebx+0CH]                    ; 100015E0 _ 8B. 43, 0C
        test    eax, eax                                ; 100015E3 _ 85. C0
        je      ?_0052                                  ; 100015E5 _ 0F 84, 0000025F
        cmp     dword [ebx], 0                          ; 100015EB _ 83. 3B, 00
        jnz     ?_0031                                  ; 100015EE _ 75, 0B
        mov     eax, dword [ebx+4H]                     ; 100015F0 _ 8B. 43, 04
        test    eax, eax                                ; 100015F3 _ 85. C0
        jne     ?_0052                                  ; 100015F5 _ 0F 85, 0000024F
?_0031: mov     eax, dword [esi+4H]                     ; 100015FB _ 8B. 46, 04
        cmp     eax, 666                                ; 100015FE _ 3D, 0000029A
        jnz     ?_0032                                  ; 10001603 _ 75, 09
        cmp     ebp, 4                                  ; 10001605 _ 83. FD, 04
        jne     ?_0052                                  ; 10001608 _ 0F 85, 0000023C
?_0032: mov     ecx, dword [ebx+10H]                    ; 1000160E _ 8B. 4B, 10
        test    ecx, ecx                                ; 10001611 _ 85. C9
        jnz     ?_0033                                  ; 10001613 _ 75, 12
        mov     eax, dword [?_5190]                     ; 10001615 _ A1, 100294F0(d)
        pop     edi                                     ; 1000161A _ 5F
        pop     esi                                     ; 1000161B _ 5E
        mov     dword [ebx+18H], eax                    ; 1000161C _ 89. 43, 18
        pop     ebp                                     ; 1000161F _ 5D
        mov     eax, 4294967291                         ; 10001620 _ B8, FFFFFFFB
        pop     ebx                                     ; 10001625 _ 5B
        ret                                             ; 10001626 _ C3

?_0033: mov     ecx, dword [esi+20H]                    ; 10001627 _ 8B. 4E, 20
        cmp     eax, 42                                 ; 1000162A _ 83. F8, 2A
        mov     dword [esi], ebx                        ; 1000162D _ 89. 1E
        mov     dword [esp+14H], ecx                    ; 1000162F _ 89. 4C 24, 14
        mov     dword [esi+20H], ebp                    ; 10001633 _ 89. 6E, 20
        jnz     ?_0037                                  ; 10001636 _ 75, 78
        mov     ecx, dword [esi+28H]                    ; 10001638 _ 8B. 4E, 28
        mov     eax, dword [esi+7CH]                    ; 1000163B _ 8B. 46, 7C
        shl     ecx, 12                                 ; 1000163E _ C1. E1, 0C
        sub     ecx, 30720                              ; 10001641 _ 81. E9, 00007800
        dec     eax                                     ; 10001647 _ 48
        sar     eax, 1                                  ; 10001648 _ D1. F8
        cmp     eax, 3                                  ; 1000164A _ 83. F8, 03
        jbe     ?_0034                                  ; 1000164D _ 76, 05
        mov     eax, 3                                  ; 1000164F _ B8, 00000003
?_0034: shl     eax, 6                                  ; 10001654 _ C1. E0, 06
        or      ecx, eax                                ; 10001657 _ 0B. C8
        mov     eax, dword [esi+64H]                    ; 10001659 _ 8B. 46, 64
        test    eax, eax                                ; 1000165C _ 85. C0
        jz      ?_0035                                  ; 1000165E _ 74, 03
        or      ecx, 20H                                ; 10001660 _ 83. C9, 20
?_0035: mov     eax, ecx                                ; 10001663 _ 8B. C1
        xor     edx, edx                                ; 10001665 _ 33. D2
        mov     edi, 31                                 ; 10001667 _ BF, 0000001F
        mov     dword [esi+4H], 113                     ; 1000166C _ C7. 46, 04, 00000071
        div     edi                                     ; 10001673 _ F7. F7
        sub     ecx, edx                                ; 10001675 _ 2B. CA
        add     ecx, edi                                ; 10001677 _ 03. CF
        push    ecx                                     ; 10001679 _ 51
        push    esi                                     ; 1000167A _ 56
        call    ?_0054                                  ; 1000167B _ E8, 000001E0
        mov     eax, dword [esi+64H]                    ; 10001680 _ 8B. 46, 64
        add     esp, 8                                  ; 10001683 _ 83. C4, 08
        test    eax, eax                                ; 10001686 _ 85. C0
        jz      ?_0036                                  ; 10001688 _ 74, 1F
        mov     edx, dword [ebx+30H]                    ; 1000168A _ 8B. 53, 30
        shr     edx, 16                                 ; 1000168D _ C1. EA, 10
        push    edx                                     ; 10001690 _ 52
        push    esi                                     ; 10001691 _ 56
        call    ?_0054                                  ; 10001692 _ E8, 000001C9
        mov     eax, dword [ebx+30H]                    ; 10001697 _ 8B. 43, 30
        and     eax, 0FFFFH                             ; 1000169A _ 25, 0000FFFF
        push    eax                                     ; 1000169F _ 50
        push    esi                                     ; 100016A0 _ 56
        call    ?_0054                                  ; 100016A1 _ E8, 000001BA
        add     esp, 16                                 ; 100016A6 _ 83. C4, 10
?_0036: mov     dword [ebx+30H], 1                      ; 100016A9 _ C7. 43, 30, 00000001
?_0037: mov     eax, dword [esi+14H]                    ; 100016B0 _ 8B. 46, 14
        test    eax, eax                                ; 100016B3 _ 85. C0
        jz      ?_0038                                  ; 100016B5 _ 74, 1E
        push    ebx                                     ; 100016B7 _ 53
        call    ?_0055                                  ; 100016B8 _ E8, 000001D3
        mov     eax, dword [ebx+10H]                    ; 100016BD _ 8B. 43, 10
        add     esp, 4                                  ; 100016C0 _ 83. C4, 04
        test    eax, eax                                ; 100016C3 _ 85. C0
        jnz     ?_0039                                  ; 100016C5 _ 75, 33
        mov     dword [esi+20H], -1                     ; 100016C7 _ C7. 46, 20, FFFFFFFF
        pop     edi                                     ; 100016CE _ 5F
        pop     esi                                     ; 100016CF _ 5E
        pop     ebp                                     ; 100016D0 _ 5D
        xor     eax, eax                                ; 100016D1 _ 33. C0
        pop     ebx                                     ; 100016D3 _ 5B
        ret                                             ; 100016D4 _ C3

?_0038: mov     eax, dword [ebx+4H]                     ; 100016D5 _ 8B. 43, 04
        test    eax, eax                                ; 100016D8 _ 85. C0
        jnz     ?_0039                                  ; 100016DA _ 75, 1E
        cmp     ebp, dword [esp+14H]                    ; 100016DC _ 3B. 6C 24, 14
        jg      ?_0039                                  ; 100016E0 _ 7F, 18
        cmp     ebp, 4                                  ; 100016E2 _ 83. FD, 04
        jz      ?_0039                                  ; 100016E5 _ 74, 13
        mov     ecx, dword [?_5190]                     ; 100016E7 _ 8B. 0D, 100294F0(d)
        pop     edi                                     ; 100016ED _ 5F
        pop     esi                                     ; 100016EE _ 5E
        mov     dword [ebx+18H], ecx                    ; 100016EF _ 89. 4B, 18
        pop     ebp                                     ; 100016F2 _ 5D
        mov     eax, 4294967291                         ; 100016F3 _ B8, FFFFFFFB
        pop     ebx                                     ; 100016F8 _ 5B
        ret                                             ; 100016F9 _ C3

?_0039: mov     eax, dword [esi+4H]                     ; 100016FA _ 8B. 46, 04
        mov     ecx, dword [ebx+4H]                     ; 100016FD _ 8B. 4B, 04
        cmp     eax, 666                                ; 10001700 _ 3D, 0000029A
        jnz     ?_0040                                  ; 10001705 _ 75, 17
        test    ecx, ecx                                ; 10001707 _ 85. C9
        jz      ?_0041                                  ; 10001709 _ 74, 17
        mov     edx, dword [?_5190]                     ; 1000170B _ 8B. 15, 100294F0(d)
        pop     edi                                     ; 10001711 _ 5F
        pop     esi                                     ; 10001712 _ 5E
        mov     dword [ebx+18H], edx                    ; 10001713 _ 89. 53, 18
        pop     ebp                                     ; 10001716 _ 5D
        mov     eax, 4294967291                         ; 10001717 _ B8, FFFFFFFB
        pop     ebx                                     ; 1000171C _ 5B
        ret                                             ; 1000171D _ C3

?_0040: test    ecx, ecx                                ; 1000171E _ 85. C9
        jnz     ?_0042                                  ; 10001720 _ 75, 1A
?_0041: mov     ecx, dword [esi+6CH]                    ; 10001722 _ 8B. 4E, 6C
        test    ecx, ecx                                ; 10001725 _ 85. C9
        jnz     ?_0042                                  ; 10001727 _ 75, 13
        test    ebp, ebp                                ; 10001729 _ 85. ED
        je      ?_0047                                  ; 1000172B _ 0F 84, 000000AB
        cmp     eax, 666                                ; 10001731 _ 3D, 0000029A
        je      ?_0047                                  ; 10001736 _ 0F 84, 000000A0
?_0042: mov     eax, dword [esi+7CH]                    ; 1000173C _ 8B. 46, 7C
        push    ebp                                     ; 1000173F _ 55
        push    esi                                     ; 10001740 _ 56
        lea     eax, [eax+eax*2]                        ; 10001741 _ 8D. 04 40
        call    near [?_4887+eax*4]                     ; 10001744 _ FF. 14 85, 100245E0(d)
        add     esp, 8                                  ; 1000174B _ 83. C4, 08
        cmp     eax, 2                                  ; 1000174E _ 83. F8, 02
        jz      ?_0043                                  ; 10001751 _ 74, 05
        cmp     eax, 3                                  ; 10001753 _ 83. F8, 03
        jnz     ?_0044                                  ; 10001756 _ 75, 07
?_0043: mov     dword [esi+4H], 666                     ; 10001758 _ C7. 46, 04, 0000029A
?_0044: test    eax, eax                                ; 1000175F _ 85. C0
        je      ?_0050                                  ; 10001761 _ 0F 84, 000000CE
        cmp     eax, 2                                  ; 10001767 _ 83. F8, 02
        je      ?_0050                                  ; 1000176A _ 0F 84, 000000C5
        cmp     eax, 1                                  ; 10001770 _ 83. F8, 01
        jnz     ?_0047                                  ; 10001773 _ 75, 67
        cmp     ebp, eax                                ; 10001775 _ 3B. E8
        jnz     ?_0045                                  ; 10001777 _ 75, 0B
        push    esi                                     ; 10001779 _ 56
        call    ?_0721                                  ; 1000177A _ E8, 000058D1
        add     esp, 4                                  ; 1000177F _ 83. C4, 04
        jmp     ?_0046                                  ; 10001782 _ EB, 3A

?_0045: push    0                                       ; 10001784 _ 6A, 00
        push    0                                       ; 10001786 _ 6A, 00
        push    0                                       ; 10001788 _ 6A, 00
        push    esi                                     ; 1000178A _ 56
        call    ?_0718                                  ; 1000178B _ E8, 00005820
        add     esp, 16                                 ; 10001790 _ 83. C4, 10
        cmp     ebp, 3                                  ; 10001793 _ 83. FD, 03
        jnz     ?_0046                                  ; 10001796 _ 75, 26
        mov     ecx, dword [esi+44H]                    ; 10001798 _ 8B. 4E, 44
        mov     edx, dword [esi+3CH]                    ; 1000179B _ 8B. 56, 3C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx+ecx*2-2H], 0                  ; 1000179E _ 66: C7. 44 4A, FE, 0000
        mov     eax, dword [esi+44H]                    ; 100017A5 _ 8B. 46, 44
        mov     edi, dword [esi+3CH]                    ; 100017A8 _ 8B. 7E, 3C
        lea     ecx, [eax+eax-2H]                       ; 100017AB _ 8D. 4C 00, FE
        xor     eax, eax                                ; 100017AF _ 33. C0
        mov     edx, ecx                                ; 100017B1 _ 8B. D1
        shr     ecx, 2                                  ; 100017B3 _ C1. E9, 02
        rep stosd                                       ; 100017B6 _ F3: AB
        mov     ecx, edx                                ; 100017B8 _ 8B. CA
        and     ecx, ebp                                ; 100017BA _ 23. CD
        rep stosb                                       ; 100017BC _ F3: AA
?_0046: push    ebx                                     ; 100017BE _ 53
        call    ?_0055                                  ; 100017BF _ E8, 000000CC
        mov     eax, dword [ebx+10H]                    ; 100017C4 _ 8B. 43, 10
        add     esp, 4                                  ; 100017C7 _ 83. C4, 04
        test    eax, eax                                ; 100017CA _ 85. C0
        jnz     ?_0047                                  ; 100017CC _ 75, 0E
        mov     dword [esi+20H], -1                     ; 100017CE _ C7. 46, 20, FFFFFFFF
        pop     edi                                     ; 100017D5 _ 5F
        pop     esi                                     ; 100017D6 _ 5E
        pop     ebp                                     ; 100017D7 _ 5D
        xor     eax, eax                                ; 100017D8 _ 33. C0
        pop     ebx                                     ; 100017DA _ 5B
        ret                                             ; 100017DB _ C3

?_0047: cmp     ebp, 4                                  ; 100017DC _ 83. FD, 04
        jz      ?_0048                                  ; 100017DF _ 74, 07
        pop     edi                                     ; 100017E1 _ 5F
        pop     esi                                     ; 100017E2 _ 5E
        pop     ebp                                     ; 100017E3 _ 5D
        xor     eax, eax                                ; 100017E4 _ 33. C0
        pop     ebx                                     ; 100017E6 _ 5B
        ret                                             ; 100017E7 _ C3

?_0048: mov     eax, dword [esi+18H]                    ; 100017E8 _ 8B. 46, 18
        test    eax, eax                                ; 100017EB _ 85. C0
        jz      ?_0049                                  ; 100017ED _ 74, 0A
        pop     edi                                     ; 100017EF _ 5F
        pop     esi                                     ; 100017F0 _ 5E
        pop     ebp                                     ; 100017F1 _ 5D
        mov     eax, 1                                  ; 100017F2 _ B8, 00000001
        pop     ebx                                     ; 100017F7 _ 5B
        ret                                             ; 100017F8 _ C3

?_0049: mov     eax, dword [ebx+30H]                    ; 100017F9 _ 8B. 43, 30
        shr     eax, 16                                 ; 100017FC _ C1. E8, 10
        push    eax                                     ; 100017FF _ 50
        push    esi                                     ; 10001800 _ 56
        call    ?_0054                                  ; 10001801 _ E8, 0000005A
        mov     ecx, dword [ebx+30H]                    ; 10001806 _ 8B. 4B, 30
        and     ecx, 0FFFFH                             ; 10001809 _ 81. E1, 0000FFFF
        push    ecx                                     ; 1000180F _ 51
        push    esi                                     ; 10001810 _ 56
        call    ?_0054                                  ; 10001811 _ E8, 0000004A
        push    ebx                                     ; 10001816 _ 53
        call    ?_0055                                  ; 10001817 _ E8, 00000074
        mov     ecx, dword [esi+14H]                    ; 1000181C _ 8B. 4E, 14
        add     esp, 20                                 ; 1000181F _ 83. C4, 14
        mov     dword [esi+18H], -1                     ; 10001822 _ C7. 46, 18, FFFFFFFF
        xor     eax, eax                                ; 10001829 _ 33. C0
        pop     edi                                     ; 1000182B _ 5F
        pop     esi                                     ; 1000182C _ 5E
        test    ecx, ecx                                ; 1000182D _ 85. C9
        pop     ebp                                     ; 1000182F _ 5D
        pop     ebx                                     ; 10001830 _ 5B
        sete    al                                      ; 10001831 _ 0F 94. C0
        ret                                             ; 10001834 _ C3

?_0050: mov     eax, dword [ebx+10H]                    ; 10001835 _ 8B. 43, 10
        test    eax, eax                                ; 10001838 _ 85. C0
        jnz     ?_0051                                  ; 1000183A _ 75, 07
        mov     dword [esi+20H], -1                     ; 1000183C _ C7. 46, 20, FFFFFFFF
?_0051: pop     edi                                     ; 10001843 _ 5F
        pop     esi                                     ; 10001844 _ 5E
        pop     ebp                                     ; 10001845 _ 5D
        xor     eax, eax                                ; 10001846 _ 33. C0
        pop     ebx                                     ; 10001848 _ 5B
        ret                                             ; 10001849 _ C3

?_0052: mov     edx, dword [?_5188]                     ; 1000184A _ 8B. 15, 100294E4(d)
        mov     dword [ebx+18H], edx                    ; 10001850 _ 89. 53, 18
?_0053: pop     edi                                     ; 10001853 _ 5F
        pop     esi                                     ; 10001854 _ 5E
        pop     ebp                                     ; 10001855 _ 5D
        mov     eax, 4294967294                         ; 10001856 _ B8, FFFFFFFE
        pop     ebx                                     ; 1000185B _ 5B
        ret                                             ; 1000185C _ C3

        nop                                             ; 1000185D _ 90
        nop                                             ; 1000185E _ 90
        nop                                             ; 1000185F _ 90

