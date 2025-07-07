; ---- 10020142 ----
?_4192: ; Local function
        push    ecx                                     ; 10020142 _ 51
        push    ecx                                     ; 10020143 _ 51
        push    ebx                                     ; 10020144 _ 53
        push    ebp                                     ; 10020145 _ 55
        push    esi                                     ; 10020146 _ 56
        push    edi                                     ; 10020147 _ 57
        push    18                                      ; 10020148 _ 6A, 12
        or      edi, 0FFFFFFFFH                         ; 1002014A _ 83. CF, FF
        call    ?_3610                                  ; 1002014D _ E8, FFFFCEE4
        xor     ebx, ebx                                ; 10020152 _ 33. DB
        pop     ecx                                     ; 10020154 _ 59
        mov     dword [esp+10H], ebx                    ; 10020155 _ 89. 5C 24, 10
        mov     dword [esp+14H], ebx                    ; 10020159 _ 89. 5C 24, 14
        mov     ebp, ?_5809                             ; 1002015D _ BD, 11766460(d)
?_4193: mov     esi, dword [ebp]                        ; 10020162 _ 8B. 75, 00
        test    esi, esi                                ; 10020165 _ 85. F6
        je      ?_4200                                  ; 10020167 _ 0F 84, 00000099
        lea     eax, [esi+480H]                         ; 1002016D _ 8D. 86, 00000480
?_4194: cmp     esi, eax                                ; 10020173 _ 3B. F0
        jnc     ?_4199                                  ; 10020175 _ 73, 74
        test    byte [esi+4H], 01H                      ; 10020177 _ F6. 46, 04, 01
        jnz     ?_4197                                  ; 1002017B _ 75, 44
        cmp     dword [esi+8H], 0                       ; 1002017D _ 83. 7E, 08, 00
        jnz     ?_4196                                  ; 10020181 _ 75, 23
        push    17                                      ; 10020183 _ 6A, 11
        call    ?_3610                                  ; 10020185 _ E8, FFFFCEAC
        cmp     dword [esi+8H], 0                       ; 1002018A _ 83. 7E, 08, 00
        pop     ecx                                     ; 1002018E _ 59
        jnz     ?_4195                                  ; 1002018F _ 75, 0D
        lea     eax, [esi+0CH]                          ; 10020191 _ 8D. 46, 0C
        push    eax                                     ; 10020194 _ 50
        call    near [imp_InitializeCriticalSection]    ; 10020195 _ FF. 15, 100240F4(d)
        inc     dword [esi+8H]                          ; 1002019B _ FF. 46, 08
?_4195: push    17                                      ; 1002019E _ 6A, 11
        call    ?_3615                                  ; 100201A0 _ E8, FFFFCEF2
        pop     ecx                                     ; 100201A5 _ 59
?_4196: lea     ebx, [esi+0CH]                          ; 100201A6 _ 8D. 5E, 0C
        push    ebx                                     ; 100201A9 _ 53
        call    near [imp_EnterCriticalSection]         ; 100201AA _ FF. 15, 100240EC(d)
        test    byte [esi+4H], 01H                      ; 100201B0 _ F6. 46, 04, 01
        jz      ?_4198                                  ; 100201B4 _ 74, 18
        push    ebx                                     ; 100201B6 _ 53
        call    near [imp_LeaveCriticalSection]         ; 100201B7 _ FF. 15, 100240F0(d)
        mov     ebx, dword [esp+10H]                    ; 100201BD _ 8B. 5C 24, 10
?_4197: mov     eax, dword [ebp]                        ; 100201C1 _ 8B. 45, 00
        add     esi, 36                                 ; 100201C4 _ 83. C6, 24
        add     eax, 1152                               ; 100201C7 _ 05, 00000480
        jmp     ?_4194                                  ; 100201CC _ EB, A5

?_4198: or      dword [esi], 0FFFFFFFFH                 ; 100201CE _ 83. 0E, FF
        mov     eax, esi                                ; 100201D1 _ 8B. C6
        sub     eax, dword [ebp]                        ; 100201D3 _ 2B. 45, 00
        push    36                                      ; 100201D6 _ 6A, 24
        pop     ecx                                     ; 100201D8 _ 59
        cdq                                             ; 100201D9 _ 99
        idiv    ecx                                     ; 100201DA _ F7. F9
        mov     edi, eax                                ; 100201DC _ 8B. F8
        add     edi, dword [esp+14H]                    ; 100201DE _ 03. 7C 24, 14
        cmp     edi, -1                                 ; 100201E2 _ 83. FF, FF
        jnz     ?_4203                                  ; 100201E5 _ 75, 6D
        mov     ebx, dword [esp+10H]                    ; 100201E7 _ 8B. 5C 24, 10
?_4199: add     dword [esp+14H], 32                     ; 100201EB _ 83. 44 24, 14, 20
        add     ebp, 4                                  ; 100201F0 _ 83. C5, 04
        inc     ebx                                     ; 100201F3 _ 43
        cmp     ebp, ?_5811                             ; 100201F4 _ 81. FD, 11766560(d)
        mov     dword [esp+10H], ebx                    ; 100201FA _ 89. 5C 24, 10
        jl      ?_4193                                  ; 100201FE _ 0F 8C, FFFFFF5E
        jmp     ?_4203                                  ; 10020204 _ EB, 4E

?_4200: mov     esi, 1152                               ; 10020206 _ BE, 00000480
        push    esi                                     ; 1002020B _ 56
        call    ?_3109                                  ; 1002020C _ E8, FFFFA5E6
        test    eax, eax                                ; 10020211 _ 85. C0
        pop     ecx                                     ; 10020213 _ 59
        jz      ?_4203                                  ; 10020214 _ 74, 3E
        add     dword [?_5811], 32                      ; 10020216 _ 83. 05, 11766560(d), 20
        lea     ecx, [?_5809+ebx*4]                     ; 1002021D _ 8D. 0C 9D, 11766460(d)
        lea     edx, [eax+480H]                         ; 10020224 _ 8D. 90, 00000480
        mov     dword [ecx], eax                        ; 1002022A _ 89. 01
?_4201: cmp     eax, edx                                ; 1002022C _ 3B. C2
        jnc     ?_4202                                  ; 1002022E _ 73, 18
        and     byte [eax+4H], 00H                      ; 10020230 _ 80. 60, 04, 00
        or      dword [eax], 0FFFFFFFFH                 ; 10020234 _ 83. 08, FF
        and     dword [eax+8H], 00H                     ; 10020237 _ 83. 60, 08, 00
        mov     byte [eax+5H], 10                       ; 1002023B _ C6. 40, 05, 0A
        mov     edx, dword [ecx]                        ; 1002023F _ 8B. 11
        add     eax, 36                                 ; 10020241 _ 83. C0, 24
        add     edx, esi                                ; 10020244 _ 03. D6
        jmp     ?_4201                                  ; 10020246 _ EB, E4

?_4202: shl     ebx, 5                                  ; 10020248 _ C1. E3, 05
        mov     edi, ebx                                ; 1002024B _ 8B. FB
        push    edi                                     ; 1002024D _ 57
        call    ?_4220                                  ; 1002024E _ E8, 0000014F
        pop     ecx                                     ; 10020253 _ 59
?_4203: push    18                                      ; 10020254 _ 6A, 12
        call    ?_3615                                  ; 10020256 _ E8, FFFFCE3C
        pop     ecx                                     ; 1002025B _ 59
        mov     eax, edi                                ; 1002025C _ 8B. C7
        pop     edi                                     ; 1002025E _ 5F
        pop     esi                                     ; 1002025F _ 5E
        pop     ebp                                     ; 10020260 _ 5D
        pop     ebx                                     ; 10020261 _ 5B
        pop     ecx                                     ; 10020262 _ 59
        pop     ecx                                     ; 10020263 _ 59
        ret                                             ; 10020264 _ C3

