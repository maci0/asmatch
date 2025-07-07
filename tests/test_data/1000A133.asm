; ---- 1000A133 ----
?_1057: ; Local function
        push    edi                                     ; 1000A133 _ 57
        mov     edi, dword [imp_WS2_32_Ordinal_21]      ; 1000A134 _ 8B. 3D, 10024184(d)
        lea     ecx, [esp+10H]                          ; 1000A13A _ 8D. 4C 24, 10
        push    4                                       ; 1000A13E _ 6A, 04
        push    ecx                                     ; 1000A140 _ 51
        push    4098                                    ; 1000A141 _ 68, 00001002
        push    65535                                   ; 1000A146 _ 68, 0000FFFF
        push    ebx                                     ; 1000A14B _ 53
        mov     dword [esp+24H], 65536                  ; 1000A14C _ C7. 44 24, 24, 00010000
        call    edi                                     ; 1000A154 _ FF. D7
        lea     edx, [esp+10H]                          ; 1000A156 _ 8D. 54 24, 10
        push    4                                       ; 1000A15A _ 6A, 04
        push    edx                                     ; 1000A15C _ 52
        push    4097                                    ; 1000A15D _ 68, 00001001
        push    65535                                   ; 1000A162 _ 68, 0000FFFF
        push    ebx                                     ; 1000A167 _ 53
        mov     dword [esp+24H], 65536                  ; 1000A168 _ C7. 44 24, 24, 00010000
        call    edi                                     ; 1000A170 _ FF. D7
        mov     eax, dword [?_5525]                     ; 1000A172 _ A1, 1003467C(d)
        lea     edx, [esi+26420CH]                      ; 1000A177 _ 8D. 96, 0026420C
        inc     eax                                     ; 1000A17D _ 40
        mov     ecx, 21                                 ; 1000A17E _ B9, 00000015
        mov     dword [?_5525], eax                     ; 1000A183 _ A3, 1003467C(d)
        mov     dword [esi+4H], eax                     ; 1000A188 _ 89. 46, 04
        xor     eax, eax                                ; 1000A18B _ 33. C0
        mov     edi, edx                                ; 1000A18D _ 8B. FA
        mov     dword [esi], 8451                       ; 1000A18F _ C7. 06, 00002103
        rep stosd                                       ; 1000A195 _ F3: AB
        stosw                                           ; 1000A197 _ 66: AB
        stosb                                           ; 1000A199 _ AA
        mov     eax, dword [esi+4H]                     ; 1000A19A _ 8B. 46, 04
        xor     edi, edi                                ; 1000A19D _ 33. FF
        cmp     ebp, edi                                ; 1000A19F _ 3B. EF
        mov     dword [edx], eax                        ; 1000A1A1 _ 89. 02
        jnz     ?_1058                                  ; 1000A1A3 _ 75, 07
        mov     eax, dword [esi]                        ; 1000A1A5 _ 8B. 06
        or      ah, 04H                                 ; 1000A1A7 _ 80. CC, 04
        mov     dword [esi], eax                        ; 1000A1AA _ 89. 06
?_1058: mov     dword [esi+14H], ebx                    ; 1000A1AC _ 89. 5E, 14
        mov     word [esi+14AH], di                     ; 1000A1AF _ 66: 89. BE, 0000014A
        mov     word [esi+14CH], di                     ; 1000A1B6 _ 66: 89. BE, 0000014C
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+14EH], 25                     ; 1000A1BD _ 66: C7. 86, 0000014E, 0019
        call    near [imp_GetTickCount]                 ; 1000A1C6 _ FF. 15, 1002405C(d)
        add     eax, 300000                             ; 1000A1CC _ 05, 000493E0
        xor     ecx, ecx                                ; 1000A1D1 _ 33. C9
        mov     dword [esi+150H], eax                   ; 1000A1D3 _ 89. 86, 00000150
?_1059: mov     eax, ecx                                ; 1000A1D9 _ 8B. C1
        shl     eax, 4                                  ; 1000A1DB _ C1. E0, 04
        add     eax, ecx                                ; 1000A1DE _ 03. C1
        lea     edx, [esi+eax*8]                        ; 1000A1E0 _ 8D. 14 C6
        add     eax, edx                                ; 1000A1E3 _ 03. C2
        cmp     ecx, edi                                ; 1000A1E5 _ 3B. CF
        mov     byte [eax+154H], 0                      ; 1000A1E7 _ C6. 80, 00000154, 00
        mov     byte [eax+132154H], 0                   ; 1000A1EE _ C6. 80, 00132154, 00
        jnz     ?_1060                                  ; 1000A1F5 _ 75, 0E
        mov     dword [esi+1E5H], edi                   ; 1000A1F7 _ 89. BE, 000001E5
        mov     dword [esi+1321E5H], edi                ; 1000A1FD _ 89. BE, 001321E5
        jmp     ?_1061                                  ; 1000A203 _ EB, 20

?_1060: lea     edx, [eax+0BBH]                         ; 1000A205 _ 8D. 90, 000000BB
        cmp     ecx, 8191                               ; 1000A20B _ 81. F9, 00001FFF
        mov     dword [eax+1E5H], edx                   ; 1000A211 _ 89. 90, 000001E5
        lea     edx, [eax+1320BBH]                      ; 1000A217 _ 8D. 90, 001320BB
        mov     dword [eax+1321E5H], edx                ; 1000A21D _ 89. 90, 001321E5
        jge     ?_1062                                  ; 1000A223 _ 7D, 1A
?_1061: lea     edx, [eax+1EDH]                         ; 1000A225 _ 8D. 90, 000001ED
        mov     dword [eax+1E9H], edx                   ; 1000A22B _ 89. 90, 000001E9
        lea     edx, [eax+1321EDH]                      ; 1000A231 _ 8D. 90, 001321ED
        mov     dword [eax+1321E9H], edx                ; 1000A237 _ 89. 90, 001321E9
        jmp     ?_1063                                  ; 1000A23D _ EB, 0C

?_1062: mov     dword [eax+1E9H], edi                   ; 1000A23F _ 89. B8, 000001E9
        mov     dword [eax+1321E9H], edi                ; 1000A245 _ 89. B8, 001321E9
?_1063: inc     ecx                                     ; 1000A24B _ 41
        cmp     ecx, 8192                               ; 1000A24C _ 81. F9, 00002000
        jl      ?_1059                                  ; 1000A252 _ 7C, 85
        mov     edx, dword [esp+1FH]                    ; 1000A254 _ 8B. 54 24, 1F
        lea     eax, [esi+154H]                         ; 1000A258 _ 8D. 86, 00000154
        lea     ecx, [esi+132154H]                      ; 1000A25E _ 8D. 8E, 00132154
        mov     dword [esi+2641F8H], eax                ; 1000A264 _ 89. 86, 002641F8
        mov     eax, dword [esp+1EH]                    ; 1000A26A _ 8B. 44 24, 1E
        and     edx, 0FFH                               ; 1000A26E _ 81. E2, 000000FF
        mov     dword [esi+2641FCH], ecx                ; 1000A274 _ 89. 8E, 002641FC
        mov     ecx, dword [esp+1DH]                    ; 1000A27A _ 8B. 4C 24, 1D
        push    edx                                     ; 1000A27E _ 52
        mov     edx, dword [esp+20H]                    ; 1000A27F _ 8B. 54 24, 20
        and     eax, 0FFH                               ; 1000A283 _ 25, 000000FF
        and     ecx, 0FFH                               ; 1000A288 _ 81. E1, 000000FF
        push    eax                                     ; 1000A28E _ 50
        and     edx, 0FFH                               ; 1000A28F _ 81. E2, 000000FF
        push    ecx                                     ; 1000A295 _ 51
        push    edx                                     ; 1000A296 _ 52
        lea     eax, [esp+38H]                          ; 1000A297 _ 8D. 44 24, 38
        push    ?_5222                                  ; 1000A29B _ 68, 100299A0(d)
        push    eax                                     ; 1000A2A0 _ 50
        mov     dword [esi+2641F0H], edi                ; 1000A2A1 _ 89. BE, 002641F0
        mov     dword [esi+2641F4H], edi                ; 1000A2A7 _ 89. BE, 002641F4
        call    ?_3039                                  ; 1000A2AD _ E8, 0000FFE7
        lea     ecx, [esp+40H]                          ; 1000A2B2 _ 8D. 4C 24, 40
        push    1                                       ; 1000A2B6 _ 6A, 01
        push    ecx                                     ; 1000A2B8 _ 51
        push    1249                                    ; 1000A2B9 _ 68, 000004E1
        push    ?_5209                                  ; 1000A2BE _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A2C3 _ E8, FFFF9378
        add     esp, 40                                 ; 1000A2C8 _ 83. C4, 28
        mov     eax, ebx                                ; 1000A2CB _ 8B. C3
        pop     edi                                     ; 1000A2CD _ 5F
        pop     esi                                     ; 1000A2CE _ 5E
        pop     ebp                                     ; 1000A2CF _ 5D
        pop     ebx                                     ; 1000A2D0 _ 5B
        add     esp, 280                                ; 1000A2D1 _ 81. C4, 00000118
        ret                                             ; 1000A2D7 _ C3

        nop                                             ; 1000A2D8 _ 90
        nop                                             ; 1000A2D9 _ 90
        nop                                             ; 1000A2DA _ 90
        nop                                             ; 1000A2DB _ 90
        nop                                             ; 1000A2DC _ 90
        nop                                             ; 1000A2DD _ 90
        nop                                             ; 1000A2DE _ 90
        nop                                             ; 1000A2DF _ 90

