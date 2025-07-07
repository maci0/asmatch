; ---- 10009D30 ----
?_1037: ; Local function
        sub     esp, 1284                               ; 10009D30 _ 81. EC, 00000504
        push    ebx                                     ; 10009D36 _ 53
        push    esi                                     ; 10009D37 _ 56
        push    edi                                     ; 10009D38 _ 57
        call    near [imp_GetCurrentThread]             ; 10009D39 _ FF. 15, 1002406C(d)
        push    2                                       ; 10009D3F _ 6A, 02
        push    eax                                     ; 10009D41 _ 50
        call    near [imp_SetThreadPriority]            ; 10009D42 _ FF. 15, 10024068(d)
        push    3                                       ; 10009D48 _ 6A, 03
        push    0                                       ; 10009D4A _ 6A, 00
        push    0                                       ; 10009D4C _ 6A, 00
        push    ?_1047                                  ; 10009D4E _ 68, 1000A010(d)
        call    ?_0248                                  ; 10009D53 _ E8, FFFF95C8
        push    32678                                   ; 10009D58 _ 68, 00007FA6
        call    ?_0668                                  ; 10009D5D _ E8, FFFFCB7E
        mov     edi, ?_5198                             ; 10009D62 _ BF, 10029594(d)
        or      ecx, 0FFFFFFFFH                         ; 10009D67 _ 83. C9, FF
        xor     eax, eax                                ; 10009D6A _ 33. C0
        lea     edx, [esp+20H]                          ; 10009D6C _ 8D. 54 24, 20
        repne scasb                                     ; 10009D70 _ F2: AE
        not     ecx                                     ; 10009D72 _ F7. D1
        sub     edi, ecx                                ; 10009D74 _ 2B. F9
        mov     eax, ecx                                ; 10009D76 _ 8B. C1
        mov     esi, edi                                ; 10009D78 _ 8B. F7
        mov     edi, edx                                ; 10009D7A _ 8B. FA
        lea     edx, [esp+20H]                          ; 10009D7C _ 8D. 54 24, 20
        shr     ecx, 2                                  ; 10009D80 _ C1. E9, 02
        rep movsd                                       ; 10009D83 _ F3: A5
        mov     ecx, eax                                ; 10009D85 _ 8B. C8
        xor     eax, eax                                ; 10009D87 _ 33. C0
        and     ecx, 03H                                ; 10009D89 _ 83. E1, 03
        rep movsb                                       ; 10009D8C _ F3: A4
        mov     edi, ?_5221                             ; 10009D8E _ BF, 10029998(d)
        or      ecx, 0FFFFFFFFH                         ; 10009D93 _ 83. C9, FF
        repne scasb                                     ; 10009D96 _ F2: AE
        not     ecx                                     ; 10009D98 _ F7. D1
        sub     edi, ecx                                ; 10009D9A _ 2B. F9
        mov     esi, edi                                ; 10009D9C _ 8B. F7
        mov     ebx, ecx                                ; 10009D9E _ 8B. D9
        mov     edi, edx                                ; 10009DA0 _ 8B. FA
        or      ecx, 0FFFFFFFFH                         ; 10009DA2 _ 83. C9, FF
        repne scasb                                     ; 10009DA5 _ F2: AE
        mov     ecx, ebx                                ; 10009DA7 _ 8B. CB
        dec     edi                                     ; 10009DA9 _ 4F
        shr     ecx, 2                                  ; 10009DAA _ C1. E9, 02
        rep movsd                                       ; 10009DAD _ F3: A5
        mov     ecx, ebx                                ; 10009DAF _ 8B. CB
        lea     eax, [esp+20H]                          ; 10009DB1 _ 8D. 44 24, 20
        and     ecx, 03H                                ; 10009DB5 _ 83. E1, 03
        push    eax                                     ; 10009DB8 _ 50
        rep movsb                                       ; 10009DB9 _ F3: A4
        call    ?_2392                                  ; 10009DBB _ E8, 0000BB90
        add     esp, 24                                 ; 10009DC0 _ 83. C4, 18
        test    eax, eax                                ; 10009DC3 _ 85. C0
        pop     edi                                     ; 10009DC5 _ 5F
        pop     esi                                     ; 10009DC6 _ 5E
        pop     ebx                                     ; 10009DC7 _ 5B
        jge     ?_1038                                  ; 10009DC8 _ 7D, 3A
; Note: Zero displacement could be omitted
        lea     ecx, [esp]                              ; 10009DCA _ 8D. 4C 24, 00
        lea     edx, [esp+104H]                         ; 10009DCE _ 8D. 94 24, 00000104
        push    ecx                                     ; 10009DD5 _ 51
        push    ?_5220                                  ; 10009DD6 _ 68, 10029974(d)
        push    edx                                     ; 10009DDB _ 52
        call    ?_3039                                  ; 10009DDC _ E8, 000104B8
        lea     eax, [esp+110H]                         ; 10009DE1 _ 8D. 84 24, 00000110
        push    1                                       ; 10009DE8 _ 6A, 01
        push    eax                                     ; 10009DEA _ 50
        push    973                                     ; 10009DEB _ 68, 000003CD
        push    ?_5209                                  ; 10009DF0 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009DF5 _ E8, FFFF9846
        add     esp, 28                                 ; 10009DFA _ 83. C4, 1C
        add     esp, 1284                               ; 10009DFD _ 81. C4, 00000504
        ret                                             ; 10009E03 _ C3

