; ---- 10020943 ----
?_4290: ; Local function
        push    ebp                                     ; 10020943 _ 55
        mov     ebp, esp                                ; 10020944 _ 8B. EC
        push    ecx                                     ; 10020946 _ 51
        push    ecx                                     ; 10020947 _ 51
        push    ebx                                     ; 10020948 _ 53
        push    esi                                     ; 10020949 _ 56
        push    edi                                     ; 1002094A _ 57
        push    12                                      ; 1002094B _ 6A, 0C
        pop     edi                                     ; 1002094D _ 5F
        xor     ebx, ebx                                ; 1002094E _ 33. DB
        push    edi                                     ; 10020950 _ 57
        mov     dword [ebp-8H], ebx                     ; 10020951 _ 89. 5D, F8
        call    ?_3610                                  ; 10020954 _ E8, FFFFC6DD
        or      dword [?_5491], 0FFFFFFFFH              ; 10020959 _ 83. 0D, 10034028(d), FF
        or      dword [?_5488], 0FFFFFFFFH              ; 10020960 _ 83. 0D, 10034018(d), FF
        mov     dword [?_5595], ebx                     ; 10020967 _ 89. 1D, 100356E8(d)
        mov     dword [esp], ?_4994                     ; 1002096D _ C7. 04 24, 10026458(d)
        call    ?_4605                                  ; 10020974 _ E8, 000019C7
        mov     esi, eax                                ; 10020979 _ 8B. F0
        pop     ecx                                     ; 1002097B _ 59
        cmp     esi, ebx                                ; 1002097C _ 3B. F3
        jne     ?_4296                                  ; 1002097E _ 0F 85, 000000FD
        push    edi                                     ; 10020984 _ 57
        call    ?_3615                                  ; 10020985 _ E8, FFFFC70D
        mov     dword [esp], ?_5596                     ; 1002098A _ C7. 04 24, 100356F0(d)
        call    near [imp_GetTimeZoneInformation]       ; 10020991 _ FF. 15, 100240B8(d)
        cmp     eax, -1                                 ; 10020997 _ 83. F8, FF
        je      ?_4309                                  ; 1002099A _ 0F 84, 00000225
        mov     eax, dword [?_5596]                     ; 100209A0 _ A1, 100356F0(d)
        mov     ecx, dword [?_5606]                     ; 100209A5 _ 8B. 0D, 10035744(d)
        imul    eax, eax, 60                            ; 100209AB _ 6B. C0, 3C
        cmp     word [?_5599], bx                       ; 100209AE _ 66: 39. 1D, 10035736(d)
        push    1                                       ; 100209B5 _ 6A, 01
        pop     edx                                     ; 100209B7 _ 5A
        mov     dword [?_5481], eax                     ; 100209B8 _ A3, 10033F80(d)
        mov     dword [?_5595], edx                     ; 100209BD _ 89. 15, 100356E8(d)
        jz      ?_4291                                  ; 100209C3 _ 74, 0C
        mov     esi, ecx                                ; 100209C5 _ 8B. F1
        imul    esi, esi, 60                            ; 100209C7 _ 6B. F6, 3C
        add     eax, esi                                ; 100209CA _ 03. C6
        mov     dword [?_5481], eax                     ; 100209CC _ A3, 10033F80(d)
?_4291: cmp     word [?_5609], bx                       ; 100209D1 _ 66: 39. 1D, 1003578A(d)
        jz      ?_4292                                  ; 100209D8 _ 74, 1B
        mov     eax, dword [?_5616]                     ; 100209DA _ A1, 10035798(d)
        cmp     eax, ebx                                ; 100209DF _ 3B. C3
        jz      ?_4292                                  ; 100209E1 _ 74, 12
        sub     eax, ecx                                ; 100209E3 _ 2B. C1
        mov     dword [?_5482], edx                     ; 100209E5 _ 89. 15, 10033F84(d)
        imul    eax, eax, 60                            ; 100209EB _ 6B. C0, 3C
        mov     dword [?_5483], eax                     ; 100209EE _ A3, 10033F88(d)
        jmp     ?_4293                                  ; 100209F3 _ EB, 0C

?_4292: mov     dword [?_5482], ebx                     ; 100209F5 _ 89. 1D, 10033F84(d)
        mov     dword [?_5483], ebx                     ; 100209FB _ 89. 1D, 10033F88(d)
?_4293: lea     eax, [ebp-4H]                           ; 10020A01 _ 8D. 45, FC
        mov     esi, dword [imp_WideCharToMultiByte]    ; 10020A04 _ 8B. 35, 1002413C(d)
        push    eax                                     ; 10020A0A _ 50
        push    ebx                                     ; 10020A0B _ 53
        push    63                                      ; 10020A0C _ 6A, 3F
        mov     edi, 544                                ; 10020A0E _ BF, 00000220
        push    dword [?_5486]                          ; 10020A13 _ FF. 35, 1003400C(d)
        push    -1                                      ; 10020A19 _ 6A, FF
        push    ?_5597                                  ; 10020A1B _ 68, 100356F4(d)
        push    edi                                     ; 10020A20 _ 57
        push    dword [?_5590]                          ; 10020A21 _ FF. 35, 100355CC(d)
        call    esi                                     ; 10020A27 _ FF. D6
        test    eax, eax                                ; 10020A29 _ 85. C0
        jz      ?_4294                                  ; 10020A2B _ 74, 10
        cmp     dword [ebp-4H], ebx                     ; 10020A2D _ 39. 5D, FC
        jnz     ?_4294                                  ; 10020A30 _ 75, 0B
        mov     eax, dword [?_5486]                     ; 10020A32 _ A1, 1003400C(d)
        and     byte [eax+3FH], 00H                     ; 10020A37 _ 80. 60, 3F, 00
        jmp     ?_4295                                  ; 10020A3B _ EB, 08

?_4294: mov     eax, dword [?_5486]                     ; 10020A3D _ A1, 1003400C(d)
        and     byte [eax], 00H                         ; 10020A42 _ 80. 20, 00
?_4295: lea     eax, [ebp-4H]                           ; 10020A45 _ 8D. 45, FC
        push    eax                                     ; 10020A48 _ 50
        push    ebx                                     ; 10020A49 _ 53
        push    63                                      ; 10020A4A _ 6A, 3F
        push    dword [?_5487]                          ; 10020A4C _ FF. 35, 10034010(d)
        push    -1                                      ; 10020A52 _ 6A, FF
        push    ?_5607                                  ; 10020A54 _ 68, 10035748(d)
        push    edi                                     ; 10020A59 _ 57
        push    dword [?_5590]                          ; 10020A5A _ FF. 35, 100355CC(d)
        call    esi                                     ; 10020A60 _ FF. D6
        test    eax, eax                                ; 10020A62 _ 85. C0
        je      ?_4307                                  ; 10020A64 _ 0F 84, 0000014A
        cmp     dword [ebp-4H], ebx                     ; 10020A6A _ 39. 5D, FC
        jne     ?_4307                                  ; 10020A6D _ 0F 85, 00000141
        mov     eax, dword [?_5487]                     ; 10020A73 _ A1, 10034010(d)
        and     byte [eax+3FH], 00H                     ; 10020A78 _ 80. 60, 3F, 00
        jmp     ?_4309                                  ; 10020A7C _ E9, 00000144

?_4296: cmp     byte [esi], 0                           ; 10020A81 _ 80. 3E, 00
        je      ?_4308                                  ; 10020A84 _ 0F 84, 00000134
        mov     eax, dword [?_5617]                     ; 10020A8A _ A1, 1003579C(d)
        cmp     eax, ebx                                ; 10020A8F _ 3B. C3
        jz      ?_4297                                  ; 10020A91 _ 74, 11
        push    eax                                     ; 10020A93 _ 50
        push    esi                                     ; 10020A94 _ 56
        call    ?_4501                                  ; 10020A95 _ E8, 00001026
        pop     ecx                                     ; 10020A9A _ 59
        test    eax, eax                                ; 10020A9B _ 85. C0
        pop     ecx                                     ; 10020A9D _ 59
        je      ?_4308                                  ; 10020A9E _ 0F 84, 0000011A
?_4297: push    dword [?_5617]                          ; 10020AA4 _ FF. 35, 1003579C(d)
        call    ?_3158                                  ; 10020AAA _ E8, FFFFA0D2
        push    esi                                     ; 10020AAF _ 56
        call    ?_3393                                  ; 10020AB0 _ E8, FFFFB31B
        inc     eax                                     ; 10020AB5 _ 40
        push    eax                                     ; 10020AB6 _ 50
        call    ?_3109                                  ; 10020AB7 _ E8, FFFF9D3B
        add     esp, 12                                 ; 10020ABC _ 83. C4, 0C
        cmp     eax, ebx                                ; 10020ABF _ 3B. C3
        mov     dword [?_5617], eax                     ; 10020AC1 _ A3, 1003579C(d)
        je      ?_4308                                  ; 10020AC6 _ 0F 84, 000000F2
        push    esi                                     ; 10020ACC _ 56
        push    eax                                     ; 10020ACD _ 50
        call    ?_4074                                  ; 10020ACE _ E8, FFFFEDFD
        push    edi                                     ; 10020AD3 _ 57
        call    ?_3615                                  ; 10020AD4 _ E8, FFFFC5BE
        push    3                                       ; 10020AD9 _ 6A, 03
        push    esi                                     ; 10020ADB _ 56
        push    dword [?_5486]                          ; 10020ADC _ FF. 35, 1003400C(d)
        call    ?_3188                                  ; 10020AE2 _ E8, FFFFA339
        mov     eax, dword [?_5486]                     ; 10020AE7 _ A1, 1003400C(d)
        add     esi, 3                                  ; 10020AEC _ 83. C6, 03
        add     esp, 24                                 ; 10020AEF _ 83. C4, 18
        and     byte [eax+3H], 00H                      ; 10020AF2 _ 80. 60, 03, 00
        cmp     byte [esi], 45                          ; 10020AF6 _ 80. 3E, 2D
        jnz     ?_4298                                  ; 10020AF9 _ 75, 08
        mov     dword [ebp-8H], 1                       ; 10020AFB _ C7. 45, F8, 00000001
        inc     esi                                     ; 10020B02 _ 46
?_4298: push    esi                                     ; 10020B03 _ 56
        call    ?_4593                                  ; 10020B04 _ E8, 000017AC
        pop     ecx                                     ; 10020B09 _ 59
        mov     bl, 48                                  ; 10020B0A _ B3, 30
        mov     ecx, eax                                ; 10020B0C _ 8B. C8
        imul    ecx, ecx, 3600                          ; 10020B0E _ 69. C9, 00000E10
        mov     dword [?_5481], ecx                     ; 10020B14 _ 89. 0D, 10033F80(d)
?_4299: mov     al, byte [esi]                          ; 10020B1A _ 8A. 06
        cmp     al, 43                                  ; 10020B1C _ 3C, 2B
        jz      ?_4300                                  ; 10020B1E _ 74, 08
        cmp     al, bl                                  ; 10020B20 _ 3A. C3
        jl      ?_4301                                  ; 10020B22 _ 7C, 07
        cmp     al, 57                                  ; 10020B24 _ 3C, 39
        jg      ?_4301                                  ; 10020B26 _ 7F, 03
?_4300: inc     esi                                     ; 10020B28 _ 46
        jmp     ?_4299                                  ; 10020B29 _ EB, EF

?_4301: cmp     byte [esi], 58                          ; 10020B2B _ 80. 3E, 3A
        jnz     ?_4305                                  ; 10020B2E _ 75, 4E
        inc     esi                                     ; 10020B30 _ 46
        push    esi                                     ; 10020B31 _ 56
        call    ?_4593                                  ; 10020B32 _ E8, 0000177E
        imul    eax, eax, 60                            ; 10020B37 _ 6B. C0, 3C
        pop     ecx                                     ; 10020B3A _ 59
        mov     ecx, dword [?_5481]                     ; 10020B3B _ 8B. 0D, 10033F80(d)
        add     ecx, eax                                ; 10020B41 _ 03. C8
        mov     dword [?_5481], ecx                     ; 10020B43 _ 89. 0D, 10033F80(d)
?_4302: mov     al, byte [esi]                          ; 10020B49 _ 8A. 06
        cmp     al, bl                                  ; 10020B4B _ 3A. C3
        jl      ?_4303                                  ; 10020B4D _ 7C, 07
        cmp     al, 57                                  ; 10020B4F _ 3C, 39
        jg      ?_4303                                  ; 10020B51 _ 7F, 03
        inc     esi                                     ; 10020B53 _ 46
        jmp     ?_4302                                  ; 10020B54 _ EB, F3

?_4303: cmp     byte [esi], 58                          ; 10020B56 _ 80. 3E, 3A
        jnz     ?_4305                                  ; 10020B59 _ 75, 23
        inc     esi                                     ; 10020B5B _ 46
        push    esi                                     ; 10020B5C _ 56
        call    ?_4593                                  ; 10020B5D _ E8, 00001753
        pop     ecx                                     ; 10020B62 _ 59
        mov     ecx, dword [?_5481]                     ; 10020B63 _ 8B. 0D, 10033F80(d)
        add     ecx, eax                                ; 10020B69 _ 03. C8
        mov     dword [?_5481], ecx                     ; 10020B6B _ 89. 0D, 10033F80(d)
?_4304: mov     al, byte [esi]                          ; 10020B71 _ 8A. 06
        cmp     al, bl                                  ; 10020B73 _ 3A. C3
        jl      ?_4305                                  ; 10020B75 _ 7C, 07
        cmp     al, 57                                  ; 10020B77 _ 3C, 39
        jg      ?_4305                                  ; 10020B79 _ 7F, 03
        inc     esi                                     ; 10020B7B _ 46
        jmp     ?_4304                                  ; 10020B7C _ EB, F3

?_4305: cmp     dword [ebp-8H], 0                       ; 10020B7E _ 83. 7D, F8, 00
        jz      ?_4306                                  ; 10020B82 _ 74, 08
        neg     ecx                                     ; 10020B84 _ F7. D9
        mov     dword [?_5481], ecx                     ; 10020B86 _ 89. 0D, 10033F80(d)
?_4306: movsx   eax, byte [esi]                         ; 10020B8C _ 0F BE. 06
        test    eax, eax                                ; 10020B8F _ 85. C0
        mov     dword [?_5482], eax                     ; 10020B91 _ A3, 10033F84(d)
        jz      ?_4307                                  ; 10020B96 _ 74, 1C
        push    3                                       ; 10020B98 _ 6A, 03
        push    esi                                     ; 10020B9A _ 56
        push    dword [?_5487]                          ; 10020B9B _ FF. 35, 10034010(d)
        call    ?_3188                                  ; 10020BA1 _ E8, FFFFA27A
        mov     eax, dword [?_5487]                     ; 10020BA6 _ A1, 10034010(d)
        add     esp, 12                                 ; 10020BAB _ 83. C4, 0C
        and     byte [eax+3H], 00H                      ; 10020BAE _ 80. 60, 03, 00
        jmp     ?_4309                                  ; 10020BB2 _ EB, 11

?_4307: mov     eax, dword [?_5487]                     ; 10020BB4 _ A1, 10034010(d)
        and     byte [eax], 00H                         ; 10020BB9 _ 80. 20, 00
        jmp     ?_4309                                  ; 10020BBC _ EB, 07

?_4308: push    edi                                     ; 10020BBE _ 57
        call    ?_3615                                  ; 10020BBF _ E8, FFFFC4D3
        pop     ecx                                     ; 10020BC4 _ 59
?_4309: pop     edi                                     ; 10020BC5 _ 5F
        pop     esi                                     ; 10020BC6 _ 5E
        pop     ebx                                     ; 10020BC7 _ 5B
        leave                                           ; 10020BC8 _ C9
        ret                                             ; 10020BC9 _ C3

