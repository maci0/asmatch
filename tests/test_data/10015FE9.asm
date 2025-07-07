; ---- 10015FE9 ----
?_2441: ; Local function
        mov     ecx, dword [esp+30H]                    ; 10015FE9 _ 8B. 4C 24, 30
        xor     edx, edx                                ; 10015FED _ 33. D2
        mov     eax, ecx                                ; 10015FEF _ 8B. C1
        mov     dl, byte [?_5532]                       ; 10015FF1 _ 8A. 15, 10035439(d)
        shl     eax, 4                                  ; 10015FF7 _ C1. E0, 04
        add     eax, ecx                                ; 10015FFA _ 03. C1
        lea     eax, [eax+eax*4]                        ; 10015FFC _ 8D. 04 80
        lea     esi, [ecx+eax*8]                        ; 10015FFF _ 8D. 34 C1
        shl     esi, 4                                  ; 10016002 _ C1. E6, 04
        add     esi, ?_5667                             ; 10016005 _ 81. C6, 1009B770(d)
        cmp     ecx, edx                                ; 1001600B _ 3B. CA
        mov     dword [esp+8H], esi                     ; 1001600D _ 89. 74 24, 08
        jne     ?_2457                                  ; 10016011 _ 0F 85, 0000021E
        lea     eax, [esi+4H]                           ; 10016017 _ 8D. 46, 04
        mov     ecx, 85                                 ; 1001601A _ B9, 00000055
?_2442: mov     dword [eax], 0                          ; 1001601F _ C7. 00, 00000000
        add     eax, 128                                ; 10016025 _ 05, 00000080
        dec     ecx                                     ; 1001602A _ 49
        jnz     ?_2442                                  ; 1001602B _ 75, F2
        push    ebx                                     ; 1001602D _ 53
        push    edi                                     ; 1001602E _ 57
        push    6                                       ; 1001602F _ 6A, 06
        push    1                                       ; 10016031 _ 6A, 01
        call    ?_2609                                  ; 10016033 _ E8, 000010A8
        add     esp, 8                                  ; 10016038 _ 83. C4, 08
        test    eax, eax                                ; 1001603B _ 85. C0
        je      ?_2450                                  ; 1001603D _ 0F 84, 000000EE
        push    ebp                                     ; 10016043 _ 55
?_2443: xor     edx, edx                                ; 10016044 _ 33. D2
        mov     edi, dword [?_5668]                     ; 10016046 _ 8B. 3D, 100A8C30(d)
        mov     dl, byte [eax]                          ; 1001604C _ 8A. 10
        add     edi, edx                                ; 1001604E _ 03. FA
        lea     ecx, [edx+edx*2]                        ; 10016050 _ 8D. 0C 52
        shl     ecx, 4                                  ; 10016053 _ C1. E1, 04
        add     ecx, edx                                ; 10016056 _ 03. CA
        lea     ecx, [ecx+ecx*2]                        ; 10016058 _ 8D. 0C 49
        cmp     byte [edi+ecx*4], 10                    ; 1001605B _ 80. 3C 8F, 0A
        je      ?_2449                                  ; 1001605F _ 0F 84, 000000BE
        mov     edx, dword [eax+5DH]                    ; 10016065 _ 8B. 50, 5D
        push    255                                     ; 10016068 _ 68, 000000FF
        push    0                                       ; 1001606D _ 6A, 00
        push    1                                       ; 1001606F _ 6A, 01
        push    edx                                     ; 10016071 _ 52
        call    ?_2482                                  ; 10016072 _ E8, 000003E9
        mov     ebx, eax                                ; 10016077 _ 8B. D8
        add     esp, 16                                 ; 10016079 _ 83. C4, 10
        test    ebx, ebx                                ; 1001607C _ 85. DB
        mov     dword [esp+10H], ebx                    ; 1001607E _ 89. 5C 24, 10
        mov     dword [esp+3CH], 0                      ; 10016082 _ C7. 44 24, 3C, 00000000
        je      ?_2449                                  ; 1001608A _ 0F 84, 00000093
        mov     edi, esi                                ; 10016090 _ 8B. FE
?_2444: cmp     dword [esp+3CH], 85                     ; 10016092 _ 83. 7C 24, 3C, 55
        jge     ?_2449                                  ; 10016097 _ 0F 8D, 00000086
        mov     ax, word [edi]                          ; 1001609D _ 66: 8B. 07
        test    ax, ax                                  ; 100160A0 _ 66: 85. C0
        jz      ?_2448                                  ; 100160A3 _ 74, 6A
        and     eax, 0FFFFH                             ; 100160A5 _ 25, 0000FFFF
        push    eax                                     ; 100160AA _ 50
        mov     eax, dword [ebx+14H]                    ; 100160AB _ 8B. 43, 14
        push    0                                       ; 100160AE _ 6A, 00
        push    1                                       ; 100160B0 _ 6A, 01
        push    eax                                     ; 100160B2 _ 50
        call    ?_2482                                  ; 100160B3 _ E8, 000003A8
        add     esp, 16                                 ; 100160B8 _ 83. C4, 10
        test    eax, eax                                ; 100160BB _ 85. C0
        jz      ?_2448                                  ; 100160BD _ 74, 50
        xor     eax, eax                                ; 100160BF _ 33. C0
        mov     dword [edi+4H], 1                       ; 100160C1 _ C7. 47, 04, 00000001
        mov     ax, word [edi]                          ; 100160C8 _ 66: 8B. 07
        mov     edx, dword [?_5693]                     ; 100160CB _ 8B. 15, 101DE450(d)
        mov     ecx, eax                                ; 100160D1 _ 8B. C8
        mov     ebx, 85                                 ; 100160D3 _ BB, 00000055
        shl     ecx, 6                                  ; 100160D8 _ C1. E1, 06
        add     edx, ecx                                ; 100160DB _ 03. D1
        add     eax, edx                                ; 100160DD _ 03. C2
        mov     edx, esi                                ; 100160DF _ 8B. D6
?_2445: lea     ecx, [eax+2EH]                          ; 100160E1 _ 8D. 48, 2E
        mov     esi, 4                                  ; 100160E4 _ BE, 00000004
?_2446: mov     bp, word [edx]                          ; 100160E9 _ 66: 8B. 2A
        cmp     bp, word [ecx]                          ; 100160EC _ 66: 3B. 29
        jnz     ?_2447                                  ; 100160EF _ 75, 07
        mov     dword [edx+4H], 1                       ; 100160F1 _ C7. 42, 04, 00000001
?_2447: add     ecx, 2                                  ; 100160F8 _ 83. C1, 02
        dec     esi                                     ; 100160FB _ 4E
        jnz     ?_2446                                  ; 100160FC _ 75, EB
        add     edx, 128                                ; 100160FE _ 81. C2, 00000080
        dec     ebx                                     ; 10016104 _ 4B
        jnz     ?_2445                                  ; 10016105 _ 75, DA
        mov     ebx, dword [esp+10H]                    ; 10016107 _ 8B. 5C 24, 10
        mov     esi, dword [esp+14H]                    ; 1001610B _ 8B. 74 24, 14
?_2448: mov     ecx, dword [esp+3CH]                    ; 1001610F _ 8B. 4C 24, 3C
        inc     ecx                                     ; 10016113 _ 41
        add     edi, 128                                ; 10016114 _ 81. C7, 00000080
        mov     dword [esp+3CH], ecx                    ; 1001611A _ 89. 4C 24, 3C
        jmp     ?_2444                                  ; 1001611E _ E9, FFFFFF6F

?_2449: call    ?_2587                                  ; 10016123 _ E8, 00000E58
        test    eax, eax                                ; 10016128 _ 85. C0
        jne     ?_2443                                  ; 1001612A _ 0F 85, FFFFFF14
        pop     ebp                                     ; 10016130 _ 5D
?_2450: mov     ebx, 85                                 ; 10016131 _ BB, 00000055
?_2451: mov     ecx, dword [?_5533]                     ; 10016136 _ 8B. 0D, 1003543C(d)
        xor     eax, eax                                ; 1001613C _ 33. C0
        mov     ax, word [esi+3CH]                      ; 1001613E _ 66: 8B. 46, 3C
        mov     edx, dword [ecx+5DH]                    ; 10016142 _ 8B. 51, 5D
        push    eax                                     ; 10016145 _ 50
        push    0                                       ; 10016146 _ 6A, 00
        push    1                                       ; 10016148 _ 6A, 01
        push    edx                                     ; 1001614A _ 52
        call    ?_2482                                  ; 1001614B _ E8, 00000310
        add     esp, 16                                 ; 10016150 _ 83. C4, 10
        test    eax, eax                                ; 10016153 _ 85. C0
        jz      ?_2452                                  ; 10016155 _ 74, 4A
        mov     eax, dword [eax+14H]                    ; 10016157 _ 8B. 40, 14
        push    255                                     ; 1001615A _ 68, 000000FF
        push    0                                       ; 1001615F _ 6A, 00
        push    1                                       ; 10016161 _ 6A, 01
        push    eax                                     ; 10016163 _ 50
        call    ?_2482                                  ; 10016164 _ E8, 000002F7
        mov     edi, eax                                ; 10016169 _ 8B. F8
        mov     eax, dword [esi+4H]                     ; 1001616B _ 8B. 46, 04
        add     esp, 16                                 ; 1001616E _ 83. C4, 10
        test    eax, eax                                ; 10016171 _ 85. C0
        jz      ?_2452                                  ; 10016173 _ 74, 2C
        mov     edx, dword [edi+14H]                    ; 10016175 _ 8B. 57, 14
        xor     ecx, ecx                                ; 10016178 _ 33. C9
        mov     cx, word [esi]                          ; 1001617A _ 66: 8B. 0E
        push    ecx                                     ; 1001617D _ 51
        push    0                                       ; 1001617E _ 6A, 00
        push    1                                       ; 10016180 _ 6A, 01
        push    edx                                     ; 10016182 _ 52
        call    ?_2482                                  ; 10016183 _ E8, 000002D8
        add     esp, 16                                 ; 10016188 _ 83. C4, 10
        test    eax, eax                                ; 1001618B _ 85. C0
        jnz     ?_2452                                  ; 1001618D _ 75, 12
        mov     ax, word [esi]                          ; 1001618F _ 66: 8B. 06
        mov     ecx, dword [edi+2H]                     ; 10016192 _ 8B. 4F, 02
        push    1                                       ; 10016195 _ 6A, 01
        push    eax                                     ; 10016197 _ 50
        push    ecx                                     ; 10016198 _ 51
        call    ?_2524                                  ; 10016199 _ E8, 000005C2
        add     esp, 12                                 ; 1001619E _ 83. C4, 0C
?_2452: add     esi, 128                                ; 100161A1 _ 81. C6, 00000080
        dec     ebx                                     ; 100161A7 _ 4B
        jnz     ?_2451                                  ; 100161A8 _ 75, 8C
        mov     eax, 146                                ; 100161AA _ B8, 00000092
        lea     edi, [esp+14H]                          ; 100161AF _ 8D. 7C 24, 14
?_2453: mov     edx, dword [?_5533]                     ; 100161B3 _ 8B. 15, 1003543C(d)
        xor     ebx, ebx                                ; 100161B9 _ 33. DB
        push    eax                                     ; 100161BB _ 50
        push    ebx                                     ; 100161BC _ 53
        mov     eax, dword [edx+5DH]                    ; 100161BD _ 8B. 42, 5D
        push    1                                       ; 100161C0 _ 6A, 01
        push    eax                                     ; 100161C2 _ 50
        call    ?_2482                                  ; 100161C3 _ E8, 00000298
        mov     esi, eax                                ; 100161C8 _ 8B. F0
        add     esp, 16                                 ; 100161CA _ 83. C4, 10
        test    esi, esi                                ; 100161CD _ 85. F6
        jz      ?_2456                                  ; 100161CF _ 74, 58
        mov     ecx, dword [esi+14H]                    ; 100161D1 _ 8B. 4E, 14
        push    255                                     ; 100161D4 _ 68, 000000FF
        push    ebx                                     ; 100161D9 _ 53
        push    1                                       ; 100161DA _ 6A, 01
        push    ecx                                     ; 100161DC _ 51
        call    ?_2482                                  ; 100161DD _ E8, 0000027E
        add     esp, 16                                 ; 100161E2 _ 83. C4, 10
        test    eax, eax                                ; 100161E5 _ 85. C0
        jz      ?_2456                                  ; 100161E7 _ 74, 40
        mov     edx, dword [eax+14H]                    ; 100161E9 _ 8B. 50, 14
        push    5                                       ; 100161EC _ 6A, 05
        push    1                                       ; 100161EE _ 6A, 01
        push    edx                                     ; 100161F0 _ 52
        call    ?_2482                                  ; 100161F1 _ E8, 0000026A
        add     esp, 12                                 ; 100161F6 _ 83. C4, 0C
        test    eax, eax                                ; 100161F9 _ 85. C0
        jz      ?_2455                                  ; 100161FB _ 74, 0A
?_2454: inc     ebx                                     ; 100161FD _ 43
        call    ?_2461                                  ; 100161FE _ E8, 0000008D
        test    eax, eax                                ; 10016203 _ 85. C0
        jnz     ?_2454                                  ; 10016205 _ 75, F6
?_2455: mov     eax, dword [esi+14H]                    ; 10016207 _ 8B. 46, 14
        push    17                                      ; 1001620A _ 6A, 11
        push    4                                       ; 1001620C _ 6A, 04
        push    1                                       ; 1001620E _ 6A, 01
        push    eax                                     ; 10016210 _ 50
        call    ?_2482                                  ; 10016211 _ E8, 0000024A
        add     esp, 16                                 ; 10016216 _ 83. C4, 10
        test    eax, eax                                ; 10016219 _ 85. C0
        jz      ?_2456                                  ; 1001621B _ 74, 0C
        xor     ecx, ecx                                ; 1001621D _ 33. C9
        mov     cl, byte [eax+1CH]                      ; 1001621F _ 8A. 48, 1C
        cmp     ecx, ebx                                ; 10016222 _ 3B. CB
        jz      ?_2456                                  ; 10016224 _ 74, 03
        mov     byte [eax+1CH], bl                      ; 10016226 _ 88. 58, 1C
?_2456: mov     eax, dword [edi+4H]                     ; 10016229 _ 8B. 47, 04
        add     edi, 4                                  ; 1001622C _ 83. C7, 04
        test    eax, eax                                ; 1001622F _ 85. C0
        jnz     ?_2453                                  ; 10016231 _ 75, 80
        pop     edi                                     ; 10016233 _ 5F
        pop     ebx                                     ; 10016234 _ 5B
?_2457: pop     esi                                     ; 10016235 _ 5E
        add     esp, 40                                 ; 10016236 _ 83. C4, 28
        ret                                             ; 10016239 _ C3

        nop                                             ; 1001623A _ 90
        nop                                             ; 1001623B _ 90
        nop                                             ; 1001623C _ 90
        nop                                             ; 1001623D _ 90
        nop                                             ; 1001623E _ 90
        nop                                             ; 1001623F _ 90

