; ---- 10021040 ----
?_4358: ; Local function
        cmp     bl, 45                                  ; 10021040 _ 80. FB, 2D
        mov     dword [ebp-4H], esi                     ; 10021043 _ 89. 75, FC
        jnz     ?_4359                                  ; 10021046 _ 75, 06
        or      dword [ebp+14H], 02H                    ; 10021048 _ 83. 4D, 14, 02
        jmp     ?_4360                                  ; 1002104C _ EB, 05

?_4359: cmp     bl, 43                                  ; 1002104E _ 80. FB, 2B
        jnz     ?_4361                                  ; 10021051 _ 75, 06
?_4360: mov     bl, byte [esi]                          ; 10021053 _ 8A. 1E
        inc     esi                                     ; 10021055 _ 46
        mov     dword [ebp-4H], esi                     ; 10021056 _ 89. 75, FC
?_4361: mov     eax, dword [ebp+10H]                    ; 10021059 _ 8B. 45, 10
        test    eax, eax                                ; 1002105C _ 85. C0
        jl      ?_4386                                  ; 1002105E _ 0F 8C, 00000189
        cmp     eax, 1                                  ; 10021064 _ 83. F8, 01
        je      ?_4386                                  ; 10021067 _ 0F 84, 00000180
        cmp     eax, 36                                 ; 1002106D _ 83. F8, 24
        jg      ?_4386                                  ; 10021070 _ 0F 8F, 00000177
        push    16                                      ; 10021076 _ 6A, 10
        test    eax, eax                                ; 10021078 _ 85. C0
        pop     ecx                                     ; 1002107A _ 59
        jnz     ?_4364                                  ; 1002107B _ 75, 24
        cmp     bl, 48                                  ; 1002107D _ 80. FB, 30
        jz      ?_4362                                  ; 10021080 _ 74, 09
        mov     dword [ebp+10H], 10                     ; 10021082 _ C7. 45, 10, 0000000A
        jmp     ?_4366                                  ; 10021089 _ EB, 32

?_4362: mov     al, byte [esi]                          ; 1002108B _ 8A. 06
        cmp     al, 120                                 ; 1002108D _ 3C, 78
        jz      ?_4363                                  ; 1002108F _ 74, 0D
        cmp     al, 88                                  ; 10021091 _ 3C, 58
        jz      ?_4363                                  ; 10021093 _ 74, 09
        mov     dword [ebp+10H], 8                      ; 10021095 _ C7. 45, 10, 00000008
        jmp     ?_4366                                  ; 1002109C _ EB, 1F

?_4363: mov     dword [ebp+10H], ecx                    ; 1002109E _ 89. 4D, 10
?_4364: cmp     dword [ebp+10H], ecx                    ; 100210A1 _ 39. 4D, 10
        jnz     ?_4366                                  ; 100210A4 _ 75, 17
        cmp     bl, 48                                  ; 100210A6 _ 80. FB, 30
        jnz     ?_4366                                  ; 100210A9 _ 75, 12
        mov     al, byte [esi]                          ; 100210AB _ 8A. 06
        cmp     al, 120                                 ; 100210AD _ 3C, 78
        jz      ?_4365                                  ; 100210AF _ 74, 04
        cmp     al, 88                                  ; 100210B1 _ 3C, 58
        jnz     ?_4366                                  ; 100210B3 _ 75, 08
?_4365: mov     bl, byte [esi+1H]                       ; 100210B5 _ 8A. 5E, 01
        inc     esi                                     ; 100210B8 _ 46
        inc     esi                                     ; 100210B9 _ 46
        mov     dword [ebp-4H], esi                     ; 100210BA _ 89. 75, FC
?_4366: or      eax, 0FFFFFFFFH                         ; 100210BD _ 83. C8, FF
        xor     edx, edx                                ; 100210C0 _ 33. D2
        div     dword [ebp+10H]                         ; 100210C2 _ F7. 75, 10
        mov     edi, 259                                ; 100210C5 _ BF, 00000103
        mov     dword [ebp-0CH], eax                    ; 100210CA _ 89. 45, F4
?_4367: cmp     dword [?_5477], 1                       ; 100210CD _ 83. 3D, 10033EE0(d), 01
        movzx   esi, bl                                 ; 100210D4 _ 0F B6. F3
        jle     ?_4368                                  ; 100210D7 _ 7E, 0C
        push    4                                       ; 100210D9 _ 6A, 04
        push    esi                                     ; 100210DB _ 56
        call    ?_4068                                  ; 100210DC _ E8, FFFFE774
        pop     ecx                                     ; 100210E1 _ 59
        pop     ecx                                     ; 100210E2 _ 59
        jmp     ?_4369                                  ; 100210E3 _ EB, 0B

?_4368: mov     eax, dword [?_5475]                     ; 100210E5 _ A1, 10033CD4(d)
        mov     al, byte [eax+esi*2]                    ; 100210EA _ 8A. 04 70
        and     eax, 04H                                ; 100210ED _ 83. E0, 04
?_4369: test    eax, eax                                ; 100210F0 _ 85. C0
        jz      ?_4370                                  ; 100210F2 _ 74, 08
        movsx   ecx, bl                                 ; 100210F4 _ 0F BE. CB
        sub     ecx, 48                                 ; 100210F7 _ 83. E9, 30
        jmp     ?_4373                                  ; 100210FA _ EB, 32

?_4370: cmp     dword [?_5477], 1                       ; 100210FC _ 83. 3D, 10033EE0(d), 01
        jle     ?_4371                                  ; 10021103 _ 7E, 0B
        push    edi                                     ; 10021105 _ 57
        push    esi                                     ; 10021106 _ 56
        call    ?_4068                                  ; 10021107 _ E8, FFFFE749
        pop     ecx                                     ; 1002110C _ 59
        pop     ecx                                     ; 1002110D _ 59
        jmp     ?_4372                                  ; 1002110E _ EB, 0B

?_4371: mov     eax, dword [?_5475]                     ; 10021110 _ A1, 10033CD4(d)
        mov     ax, word [eax+esi*2]                    ; 10021115 _ 66: 8B. 04 70
        and     eax, edi                                ; 10021119 _ 23. C7
?_4372: test    eax, eax                                ; 1002111B _ 85. C0
        jz      ?_4377                                  ; 1002111D _ 74, 4A
        movsx   eax, bl                                 ; 1002111F _ 0F BE. C3
        push    eax                                     ; 10021122 _ 50
        call    ?_3235                                  ; 10021123 _ E8, FFFF9F98
        pop     ecx                                     ; 10021128 _ 59
        mov     ecx, eax                                ; 10021129 _ 8B. C8
        sub     ecx, 55                                 ; 1002112B _ 83. E9, 37
?_4373: cmp     ecx, dword [ebp+10H]                    ; 1002112E _ 3B. 4D, 10
        jnc     ?_4377                                  ; 10021131 _ 73, 36
        mov     esi, dword [ebp-8H]                     ; 10021133 _ 8B. 75, F8
        or      dword [ebp+14H], 08H                    ; 10021136 _ 83. 4D, 14, 08
        cmp     esi, dword [ebp-0CH]                    ; 1002113A _ 3B. 75, F4
        jc      ?_4375                                  ; 1002113D _ 72, 14
        jnz     ?_4374                                  ; 1002113F _ 75, 0C
        or      eax, 0FFFFFFFFH                         ; 10021141 _ 83. C8, FF
        xor     edx, edx                                ; 10021144 _ 33. D2
        div     dword [ebp+10H]                         ; 10021146 _ F7. 75, 10
        cmp     ecx, edx                                ; 10021149 _ 3B. CA
        jbe     ?_4375                                  ; 1002114B _ 76, 06
?_4374: or      dword [ebp+14H], 04H                    ; 1002114D _ 83. 4D, 14, 04
        jmp     ?_4376                                  ; 10021151 _ EB, 09

?_4375: imul    esi, dword [ebp+10H]                    ; 10021153 _ 0F AF. 75, 10
        add     esi, ecx                                ; 10021157 _ 03. F1
        mov     dword [ebp-8H], esi                     ; 10021159 _ 89. 75, F8
?_4376: mov     eax, dword [ebp-4H]                     ; 1002115C _ 8B. 45, FC
        inc     dword [ebp-4H]                          ; 1002115F _ FF. 45, FC
        mov     bl, byte [eax]                          ; 10021162 _ 8A. 18
        jmp     ?_4367                                  ; 10021164 _ E9, FFFFFF64

?_4377: mov     eax, dword [ebp+14H]                    ; 10021169 _ 8B. 45, 14
        dec     dword [ebp-4H]                          ; 1002116C _ FF. 4D, FC
        mov     ebx, dword [ebp+0CH]                    ; 1002116F _ 8B. 5D, 0C
        test    al, 08H                                 ; 10021172 _ A8, 08
        jnz     ?_4379                                  ; 10021174 _ 75, 10
        test    ebx, ebx                                ; 10021176 _ 85. DB
        jz      ?_4378                                  ; 10021178 _ 74, 06
        mov     eax, dword [ebp+8H]                     ; 1002117A _ 8B. 45, 08
        mov     dword [ebp-4H], eax                     ; 1002117D _ 89. 45, FC
?_4378: and     dword [ebp-8H], 00H                     ; 10021180 _ 83. 65, F8, 00
        jmp     ?_4383                                  ; 10021184 _ EB, 4B

?_4379: test    al, 04H                                 ; 10021186 _ A8, 04
        mov     esi, 2147483647                         ; 10021188 _ BE, 7FFFFFFF
        jnz     ?_4381                                  ; 1002118D _ 75, 1B
        test    al, 01H                                 ; 1002118F _ A8, 01
        jnz     ?_4383                                  ; 10021191 _ 75, 3E
        and     eax, 02H                                ; 10021193 _ 83. E0, 02
        jz      ?_4380                                  ; 10021196 _ 74, 09
        cmp     dword [ebp-8H], -2147483648             ; 10021198 _ 81. 7D, F8, 80000000
        ja      ?_4381                                  ; 1002119F _ 77, 09
?_4380: test    eax, eax                                ; 100211A1 _ 85. C0
        jnz     ?_4383                                  ; 100211A3 _ 75, 2C
        cmp     dword [ebp-8H], esi                     ; 100211A5 _ 39. 75, F8
        jbe     ?_4383                                  ; 100211A8 _ 76, 27
?_4381: call    ?_3107                                  ; 100211AA _ E8, FFFF9636
        test    byte [ebp+14H], 01H                     ; 100211AF _ F6. 45, 14, 01
        mov     dword [eax], 34                         ; 100211B3 _ C7. 00, 00000022
        jz      ?_4382                                  ; 100211B9 _ 74, 06
        or      dword [ebp-8H], 0FFFFFFFFH              ; 100211BB _ 83. 4D, F8, FF
        jmp     ?_4383                                  ; 100211BF _ EB, 10

?_4382: mov     eax, dword [ebp+14H]                    ; 100211C1 _ 8B. 45, 14
        and     al, 02H                                 ; 100211C4 _ 24, 02
        neg     al                                      ; 100211C6 _ F6. D8
        sbb     eax, eax                                ; 100211C8 _ 1B. C0
        neg     eax                                     ; 100211CA _ F7. D8
        add     eax, esi                                ; 100211CC _ 03. C6
        mov     dword [ebp-8H], eax                     ; 100211CE _ 89. 45, F8
?_4383: test    ebx, ebx                                ; 100211D1 _ 85. DB
        jz      ?_4384                                  ; 100211D3 _ 74, 05
        mov     eax, dword [ebp-4H]                     ; 100211D5 _ 8B. 45, FC
        mov     dword [ebx], eax                        ; 100211D8 _ 89. 03
?_4384: test    byte [ebp+14H], 02H                     ; 100211DA _ F6. 45, 14, 02
        jz      ?_4385                                  ; 100211DE _ 74, 08
        mov     eax, dword [ebp-8H]                     ; 100211E0 _ 8B. 45, F8
        neg     eax                                     ; 100211E3 _ F7. D8
        mov     dword [ebp-8H], eax                     ; 100211E5 _ 89. 45, F8
?_4385: mov     eax, dword [ebp-8H]                     ; 100211E8 _ 8B. 45, F8
        jmp     ?_4388                                  ; 100211EB _ EB, 0B

?_4386: mov     eax, dword [ebp+0CH]                    ; 100211ED _ 8B. 45, 0C
        test    eax, eax                                ; 100211F0 _ 85. C0
        jz      ?_4387                                  ; 100211F2 _ 74, 02
        mov     dword [eax], edi                        ; 100211F4 _ 89. 38
?_4387: xor     eax, eax                                ; 100211F6 _ 33. C0
?_4388: pop     edi                                     ; 100211F8 _ 5F
        pop     esi                                     ; 100211F9 _ 5E
        pop     ebx                                     ; 100211FA _ 5B
        leave                                           ; 100211FB _ C9
        ret                                             ; 100211FC _ C3

        int 3    ; breakpoint or filler                 ; 100211FD _ CC
        int 3    ; breakpoint or filler                 ; 100211FE _ CC
        int 3    ; breakpoint or filler                 ; 100211FF _ CC
