; ---- 10021D13 ----
?_4527: ; Local function
        push    ebp                                     ; 10021D13 _ 55
        mov     ebp, esp                                ; 10021D14 _ 8B. EC
        sub     esp, 24                                 ; 10021D16 _ 83. EC, 18
        push    ebx                                     ; 10021D19 _ 53
        push    esi                                     ; 10021D1A _ 56
        push    edi                                     ; 10021D1B _ 57
        push    25                                      ; 10021D1C _ 6A, 19
        call    ?_3610                                  ; 10021D1E _ E8, FFFFB313
        push    dword [ebp+8H]                          ; 10021D23 _ FF. 75, 08
        call    ?_4549                                  ; 10021D26 _ E8, 00000195
        mov     ebx, eax                                ; 10021D2B _ 8B. D8
        pop     ecx                                     ; 10021D2D _ 59
        cmp     ebx, dword [?_5791]                     ; 10021D2E _ 3B. 1D, 11766208(d)
        pop     ecx                                     ; 10021D34 _ 59
        mov     dword [ebp+8H], ebx                     ; 10021D35 _ 89. 5D, 08
        jnz     ?_4529                                  ; 10021D38 _ 75, 07
?_4528: xor     esi, esi                                ; 10021D3A _ 33. F6
        jmp     ?_4548                                  ; 10021D3C _ E9, 00000170

?_4529: test    ebx, ebx                                ; 10021D41 _ 85. DB
        je      ?_4545                                  ; 10021D43 _ 0F 84, 00000156
        xor     edx, edx                                ; 10021D49 _ 33. D2
        mov     eax, ?_5501                             ; 10021D4B _ B8, 10034168(d)
?_4530: cmp     dword [eax], ebx                        ; 10021D50 _ 39. 18
        jz      ?_4533                                  ; 10021D52 _ 74, 74
        add     eax, 48                                 ; 10021D54 _ 83. C0, 30
        inc     edx                                     ; 10021D57 _ 42
        cmp     eax, ?_5504                             ; 10021D58 _ 3D, 10034258(d)
        jl      ?_4530                                  ; 10021D5D _ 7C, F1
        lea     eax, [ebp-18H]                          ; 10021D5F _ 8D. 45, E8
        push    eax                                     ; 10021D62 _ 50
        push    ebx                                     ; 10021D63 _ 53
        call    near [imp_GetCPInfo]                    ; 10021D64 _ FF. 15, 100240A0(d)
        push    1                                       ; 10021D6A _ 6A, 01
        pop     esi                                     ; 10021D6C _ 5E
        cmp     eax, esi                                ; 10021D6D _ 3B. C6
        jne     ?_4544                                  ; 10021D6F _ 0F 85, 00000121
        push    64                                      ; 10021D75 _ 6A, 40
        and     dword [?_5797], 00H                     ; 10021D77 _ 83. 25, 11766424(d), 00
        pop     ecx                                     ; 10021D7E _ 59
        xor     eax, eax                                ; 10021D7F _ 33. C0
        mov     edi, ?_5795                             ; 10021D81 _ BF, 11766320(d)
        cmp     dword [ebp-18H], esi                    ; 10021D86 _ 39. 75, E8
        rep stosd                                       ; 10021D89 _ F3: AB
        stosb                                           ; 10021D8B _ AA
        mov     dword [?_5791], ebx                     ; 10021D8C _ 89. 1D, 11766208(d)
        jbe     ?_4542                                  ; 10021D92 _ 0F 86, 000000EB
        cmp     byte [ebp-12H], 0                       ; 10021D98 _ 80. 7D, EE, 00
        je      ?_4540                                  ; 10021D9C _ 0F 84, 000000BC
        lea     ecx, [ebp-11H]                          ; 10021DA2 _ 8D. 4D, EF
?_4531: mov     dl, byte [ecx]                          ; 10021DA5 _ 8A. 11
        test    dl, dl                                  ; 10021DA7 _ 84. D2
        je      ?_4540                                  ; 10021DA9 _ 0F 84, 000000AF
        movzx   eax, byte [ecx-1H]                      ; 10021DAF _ 0F B6. 41, FF
        movzx   edx, dl                                 ; 10021DB3 _ 0F B6. D2
?_4532: cmp     eax, edx                                ; 10021DB6 _ 3B. C2
        ja      ?_4539                                  ; 10021DB8 _ 0F 87, 00000094
        or      byte [?_5796+eax], 04H                  ; 10021DBE _ 80. 88, 11766321(d), 04
        inc     eax                                     ; 10021DC5 _ 40
        jmp     ?_4532                                  ; 10021DC6 _ EB, EE

?_4533: and     dword [ebp-4H], 00H                     ; 10021DC8 _ 83. 65, FC, 00
        push    64                                      ; 10021DCC _ 6A, 40
        pop     ecx                                     ; 10021DCE _ 59
        xor     eax, eax                                ; 10021DCF _ 33. C0
        mov     edi, ?_5795                             ; 10021DD1 _ BF, 11766320(d)
        lea     esi, [edx+edx*2]                        ; 10021DD6 _ 8D. 34 52
        rep stosd                                       ; 10021DD9 _ F3: AB
        shl     esi, 4                                  ; 10021DDB _ C1. E6, 04
        stosb                                           ; 10021DDE _ AA
        lea     ebx, [?_5503+esi]                       ; 10021DDF _ 8D. 9E, 10034178(d)
?_4534: cmp     byte [ebx], 0                           ; 10021DE5 _ 80. 3B, 00
        mov     ecx, ebx                                ; 10021DE8 _ 8B. CB
        jz      ?_4538                                  ; 10021DEA _ 74, 2C
?_4535: mov     dl, byte [ecx+1H]                       ; 10021DEC _ 8A. 51, 01
        test    dl, dl                                  ; 10021DEF _ 84. D2
        jz      ?_4538                                  ; 10021DF1 _ 74, 25
        movzx   eax, byte [ecx]                         ; 10021DF3 _ 0F B6. 01
        movzx   edi, dl                                 ; 10021DF6 _ 0F B6. FA
        cmp     eax, edi                                ; 10021DF9 _ 3B. C7
        ja      ?_4537                                  ; 10021DFB _ 77, 14
        mov     edx, dword [ebp-4H]                     ; 10021DFD _ 8B. 55, FC
        mov     dl, byte [?_5500+edx]                   ; 10021E00 _ 8A. 92, 10034160(d)
?_4536: or      byte [?_5796+eax], dl                   ; 10021E06 _ 08. 90, 11766321(d)
        inc     eax                                     ; 10021E0C _ 40
        cmp     eax, edi                                ; 10021E0D _ 3B. C7
        jbe     ?_4536                                  ; 10021E0F _ 76, F5
?_4537: inc     ecx                                     ; 10021E11 _ 41
        inc     ecx                                     ; 10021E12 _ 41
        cmp     byte [ecx], 0                           ; 10021E13 _ 80. 39, 00
        jnz     ?_4535                                  ; 10021E16 _ 75, D4
?_4538: inc     dword [ebp-4H]                          ; 10021E18 _ FF. 45, FC
        add     ebx, 8                                  ; 10021E1B _ 83. C3, 08
        cmp     dword [ebp-4H], 4                       ; 10021E1E _ 83. 7D, FC, 04
        jc      ?_4534                                  ; 10021E22 _ 72, C1
        mov     eax, dword [ebp+8H]                     ; 10021E24 _ 8B. 45, 08
        mov     dword [?_5793], 1                       ; 10021E27 _ C7. 05, 1176621C(d), 00000001
        push    eax                                     ; 10021E31 _ 50
        mov     dword [?_5791], eax                     ; 10021E32 _ A3, 11766208(d)
        call    ?_4553                                  ; 10021E37 _ E8, 000000CE
        lea     esi, [?_5502+esi]                       ; 10021E3C _ 8D. B6, 1003416C(d)
        mov     edi, ?_5792                             ; 10021E42 _ BF, 11766210(d)
        movsd                                           ; 10021E47 _ A5
        movsd                                           ; 10021E48 _ A5
        pop     ecx                                     ; 10021E49 _ 59
        mov     dword [?_5797], eax                     ; 10021E4A _ A3, 11766424(d)
        movsd                                           ; 10021E4F _ A5
        jmp     ?_4546                                  ; 10021E50 _ EB, 52

?_4539: inc     ecx                                     ; 10021E52 _ 41
        inc     ecx                                     ; 10021E53 _ 41
        cmp     byte [ecx-1H], 0                        ; 10021E54 _ 80. 79, FF, 00
        jne     ?_4531                                  ; 10021E58 _ 0F 85, FFFFFF47
?_4540: mov     eax, esi                                ; 10021E5E _ 8B. C6
?_4541: or      byte [?_5796+eax], 08H                  ; 10021E60 _ 80. 88, 11766321(d), 08
        inc     eax                                     ; 10021E67 _ 40
        cmp     eax, 255                                ; 10021E68 _ 3D, 000000FF
        jc      ?_4541                                  ; 10021E6D _ 72, F1
        push    ebx                                     ; 10021E6F _ 53
        call    ?_4553                                  ; 10021E70 _ E8, 00000095
        pop     ecx                                     ; 10021E75 _ 59
        mov     dword [?_5797], eax                     ; 10021E76 _ A3, 11766424(d)
        mov     dword [?_5793], esi                     ; 10021E7B _ 89. 35, 1176621C(d)
        jmp     ?_4543                                  ; 10021E81 _ EB, 07

?_4542: and     dword [?_5793], 00H                     ; 10021E83 _ 83. 25, 1176621C(d), 00
?_4543: xor     eax, eax                                ; 10021E8A _ 33. C0
        mov     edi, ?_5792                             ; 10021E8C _ BF, 11766210(d)
        stosd                                           ; 10021E91 _ AB
        stosd                                           ; 10021E92 _ AB
        stosd                                           ; 10021E93 _ AB
        jmp     ?_4546                                  ; 10021E94 _ EB, 0E

?_4544: cmp     dword [?_5621], 0                       ; 10021E96 _ 83. 3D, 10035834(d), 00
        jz      ?_4547                                  ; 10021E9D _ 74, 0F
?_4545: call    ?_4558                                  ; 10021E9F _ E8, 00000099
?_4546: call    ?_4559                                  ; 10021EA4 _ E8, 000000BD
        jmp     ?_4528                                  ; 10021EA9 _ E9, FFFFFE8C

?_4547: or      esi, 0FFFFFFFFH                         ; 10021EAE _ 83. CE, FF
?_4548: push    25                                      ; 10021EB1 _ 6A, 19
        call    ?_3615                                  ; 10021EB3 _ E8, FFFFB1DF
        pop     ecx                                     ; 10021EB8 _ 59
        mov     eax, esi                                ; 10021EB9 _ 8B. C6
        pop     edi                                     ; 10021EBB _ 5F
        pop     esi                                     ; 10021EBC _ 5E
        pop     ebx                                     ; 10021EBD _ 5B
        leave                                           ; 10021EBE _ C9
        ret                                             ; 10021EBF _ C3

