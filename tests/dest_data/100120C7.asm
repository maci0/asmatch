; ---- 100120C7 ----
?_2074: ; Local function
        mov     edx, dword [edi]                        ; 100120C7 _ 8B. 17
        mov     ebp, dword [ebx+20H]                    ; 100120C9 _ 8B. 6B, 20
        mov     dword [esp+1CH], 0                      ; 100120CC _ C7. 44 24, 1C, 00000000
        mov     eax, dword [?_4928+edx*4]               ; 100120D4 _ 8B. 04 95, 1002576C(d)
        test    eax, eax                                ; 100120DB _ 85. C0
        jle     ?_2076                                  ; 100120DD _ 0F 8E, 00000108
        lea     edi, [ebp+14H]                          ; 100120E3 _ 8D. 7D, 14
?_2075: push    esi                                     ; 100120E6 _ 56
        push    1                                       ; 100120E7 _ 6A, 01
        push    4                                       ; 100120E9 _ 6A, 04
        push    ebp                                     ; 100120EB _ 55
        call    ?_2085                                  ; 100120EC _ E8, 0000034F
        add     esp, 16                                 ; 100120F1 _ 83. C4, 10
        test    eax, eax                                ; 100120F4 _ 85. C0
        jz      ?_2073                                  ; 100120F6 _ 74, C7
        push    esi                                     ; 100120F8 _ 56
        push    1                                       ; 100120F9 _ 6A, 01
        lea     eax, [edi-10H]                          ; 100120FB _ 8D. 47, F0
        push    16                                      ; 100120FE _ 6A, 10
        push    eax                                     ; 10012100 _ 50
        call    ?_2085                                  ; 10012101 _ E8, 0000033A
        add     esp, 16                                 ; 10012106 _ 83. C4, 10
        test    eax, eax                                ; 10012109 _ 85. C0
        jz      ?_2073                                  ; 1001210B _ 74, B2
        push    esi                                     ; 1001210D _ 56
        push    1                                       ; 1001210E _ 6A, 01
        push    16                                      ; 10012110 _ 6A, 10
        push    edi                                     ; 10012112 _ 57
        call    ?_2085                                  ; 10012113 _ E8, 00000328
        add     esp, 16                                 ; 10012118 _ 83. C4, 10
        test    eax, eax                                ; 1001211B _ 85. C0
        jz      ?_2073                                  ; 1001211D _ 74, A0
        push    esi                                     ; 1001211F _ 56
        push    1                                       ; 10012120 _ 6A, 01
        lea     ecx, [edi+10H]                          ; 10012122 _ 8D. 4F, 10
        push    5                                       ; 10012125 _ 6A, 05
        push    ecx                                     ; 10012127 _ 51
        call    ?_2085                                  ; 10012128 _ E8, 00000313
        add     esp, 16                                 ; 1001212D _ 83. C4, 10
        test    eax, eax                                ; 10012130 _ 85. C0
        jz      ?_2073                                  ; 10012132 _ 74, 8B
        push    esi                                     ; 10012134 _ 56
        push    1                                       ; 10012135 _ 6A, 01
        lea     edx, [edi+18H]                          ; 10012137 _ 8D. 57, 18
        push    4                                       ; 1001213A _ 6A, 04
        push    edx                                     ; 1001213C _ 52
        call    ?_2085                                  ; 1001213D _ E8, 000002FE
        add     esp, 16                                 ; 10012142 _ 83. C4, 10
        test    eax, eax                                ; 10012145 _ 85. C0
        je      ?_2073                                  ; 10012147 _ 0F 84, FFFFFF72
        push    esi                                     ; 1001214D _ 56
        push    1                                       ; 1001214E _ 6A, 01
        lea     eax, [edi+1CH]                          ; 10012150 _ 8D. 47, 1C
        push    4                                       ; 10012153 _ 6A, 04
        push    eax                                     ; 10012155 _ 50
        call    ?_2085                                  ; 10012156 _ E8, 000002E5
        add     esp, 16                                 ; 1001215B _ 83. C4, 10
        test    eax, eax                                ; 1001215E _ 85. C0
        je      ?_2073                                  ; 10012160 _ 0F 84, FFFFFF59
        push    esi                                     ; 10012166 _ 56
        push    1                                       ; 10012167 _ 6A, 01
        lea     ecx, [edi+20H]                          ; 10012169 _ 8D. 4F, 20
        push    4                                       ; 1001216C _ 6A, 04
        push    ecx                                     ; 1001216E _ 51
        call    ?_2085                                  ; 1001216F _ E8, 000002CC
        add     esp, 16                                 ; 10012174 _ 83. C4, 10
        test    eax, eax                                ; 10012177 _ 85. C0
        je      ?_2073                                  ; 10012179 _ 0F 84, FFFFFF40
        push    esi                                     ; 1001217F _ 56
        push    1                                       ; 10012180 _ 6A, 01
        lea     edx, [edi+24H]                          ; 10012182 _ 8D. 57, 24
        push    4                                       ; 10012185 _ 6A, 04
        push    edx                                     ; 10012187 _ 52
        call    ?_2085                                  ; 10012188 _ E8, 000002B3
        add     esp, 16                                 ; 1001218D _ 83. C4, 10
        test    eax, eax                                ; 10012190 _ 85. C0
        je      ?_2073                                  ; 10012192 _ 0F 84, FFFFFF27
        push    esi                                     ; 10012198 _ 56
        push    1                                       ; 10012199 _ 6A, 01
        lea     eax, [edi+28H]                          ; 1001219B _ 8D. 47, 28
        push    4                                       ; 1001219E _ 6A, 04
        push    eax                                     ; 100121A0 _ 50
        call    ?_2085                                  ; 100121A1 _ E8, 0000029A
        add     esp, 16                                 ; 100121A6 _ 83. C4, 10
        test    eax, eax                                ; 100121A9 _ 85. C0
        je      ?_2073                                  ; 100121AB _ 0F 84, FFFFFF0E
        push    esi                                     ; 100121B1 _ 56
        push    1                                       ; 100121B2 _ 6A, 01
        lea     ecx, [edi+2CH]                          ; 100121B4 _ 8D. 4F, 2C
        push    4                                       ; 100121B7 _ 6A, 04
        push    ecx                                     ; 100121B9 _ 51
        call    ?_2085                                  ; 100121BA _ E8, 00000281
        add     esp, 16                                 ; 100121BF _ 83. C4, 10
        test    eax, eax                                ; 100121C2 _ 85. C0
        je      ?_2073                                  ; 100121C4 _ 0F 84, FFFFFEF5
        mov     edx, dword [ebx+4H]                     ; 100121CA _ 8B. 53, 04
        mov     eax, dword [esp+1CH]                    ; 100121CD _ 8B. 44 24, 1C
        inc     eax                                     ; 100121D1 _ 40
        add     ebp, 68                                 ; 100121D2 _ 83. C5, 44
        mov     ecx, dword [?_4928+edx*4]               ; 100121D5 _ 8B. 0C 95, 1002576C(d)
        add     edi, 68                                 ; 100121DC _ 83. C7, 44
        cmp     eax, ecx                                ; 100121DF _ 3B. C1
        mov     dword [esp+1CH], eax                    ; 100121E1 _ 89. 44 24, 1C
        jl      ?_2075                                  ; 100121E5 _ 0F 8C, FFFFFEFB
?_2076: mov     eax, dword [esp+10H]                    ; 100121EB _ 8B. 44 24, 10
        mov     ebx, dword [ebx+1CH]                    ; 100121EF _ 8B. 5B, 1C
        add     eax, 4                                  ; 100121F2 _ 83. C0, 04
        xor     ebp, ebp                                ; 100121F5 _ 33. ED
        mov     ecx, dword [eax]                        ; 100121F7 _ 8B. 08
        mov     eax, dword [?_4927+ecx*4]               ; 100121F9 _ 8B. 04 8D, 1002575C(d)
        test    eax, eax                                ; 10012200 _ 85. C0
        jle     ?_2078                                  ; 10012202 _ 0F 8E, 000000C5
        lea     edi, [ebx+8H]                           ; 10012208 _ 8D. 7B, 08
?_2077: push    esi                                     ; 1001220B _ 56
        push    1                                       ; 1001220C _ 6A, 01
        push    4                                       ; 1001220E _ 6A, 04
        push    ebx                                     ; 10012210 _ 53
        call    ?_2085                                  ; 10012211 _ E8, 0000022A
        add     esp, 16                                 ; 10012216 _ 83. C4, 10
        test    eax, eax                                ; 10012219 _ 85. C0
        je      ?_2073                                  ; 1001221B _ 0F 84, FFFFFE9E
        push    esi                                     ; 10012221 _ 56
        push    1                                       ; 10012222 _ 6A, 01
        lea     edx, [edi-4H]                           ; 10012224 _ 8D. 57, FC
        push    4                                       ; 10012227 _ 6A, 04
        push    edx                                     ; 10012229 _ 52
        call    ?_2085                                  ; 1001222A _ E8, 00000211
        add     esp, 16                                 ; 1001222F _ 83. C4, 10
        test    eax, eax                                ; 10012232 _ 85. C0
        je      ?_2073                                  ; 10012234 _ 0F 84, FFFFFE85
        push    esi                                     ; 1001223A _ 56
        push    1                                       ; 1001223B _ 6A, 01
        push    2                                       ; 1001223D _ 6A, 02
        push    edi                                     ; 1001223F _ 57
        call    ?_2085                                  ; 10012240 _ E8, 000001FB
        add     esp, 16                                 ; 10012245 _ 83. C4, 10
        test    eax, eax                                ; 10012248 _ 85. C0
        je      ?_2073                                  ; 1001224A _ 0F 84, FFFFFE6F
        push    esi                                     ; 10012250 _ 56
        push    1                                       ; 10012251 _ 6A, 01
        lea     eax, [edi+2H]                           ; 10012253 _ 8D. 47, 02
        push    2                                       ; 10012256 _ 6A, 02
        push    eax                                     ; 10012258 _ 50
        call    ?_2085                                  ; 10012259 _ E8, 000001E2
        add     esp, 16                                 ; 1001225E _ 83. C4, 10
        test    eax, eax                                ; 10012261 _ 85. C0
        je      ?_2073                                  ; 10012263 _ 0F 84, FFFFFE56
        push    esi                                     ; 10012269 _ 56
        push    1                                       ; 1001226A _ 6A, 01
        lea     ecx, [edi+4H]                           ; 1001226C _ 8D. 4F, 04
        push    1                                       ; 1001226F _ 6A, 01
        push    ecx                                     ; 10012271 _ 51
        call    ?_2085                                  ; 10012272 _ E8, 000001C9
        add     esp, 16                                 ; 10012277 _ 83. C4, 10
        test    eax, eax                                ; 1001227A _ 85. C0
        je      ?_2073                                  ; 1001227C _ 0F 84, FFFFFE3D
        push    esi                                     ; 10012282 _ 56
        push    1                                       ; 10012283 _ 6A, 01
        lea     edx, [esp+24H]                          ; 10012285 _ 8D. 54 24, 24
        push    4                                       ; 10012289 _ 6A, 04
        push    edx                                     ; 1001228B _ 52
        call    ?_2085                                  ; 1001228C _ E8, 000001AF
        add     esp, 16                                 ; 10012291 _ 83. C4, 10
        test    eax, eax                                ; 10012294 _ 85. C0
        je      ?_2073                                  ; 10012296 _ 0F 84, FFFFFE23
        mov     eax, dword [esp+1CH]                    ; 1001229C _ 8B. 44 24, 1C
        add     ebx, 20                                 ; 100122A0 _ 83. C3, 14
        mov     ecx, eax                                ; 100122A3 _ 8B. C8
        add     edi, 20                                 ; 100122A5 _ 83. C7, 14
        shl     ecx, 4                                  ; 100122A8 _ C1. E1, 04
        add     ecx, eax                                ; 100122AB _ 03. C8
        mov     eax, dword [esp+10H]                    ; 100122AD _ 8B. 44 24, 10
        inc     ebp                                     ; 100122B1 _ 45
        mov     edx, dword [eax+20H]                    ; 100122B2 _ 8B. 50, 20
        add     eax, 4                                  ; 100122B5 _ 83. C0, 04
        lea     ecx, [edx+ecx*4]                        ; 100122B8 _ 8D. 0C 8A
        mov     dword [edi-0CH], ecx                    ; 100122BB _ 89. 4F, F4
        mov     edx, dword [eax]                        ; 100122BE _ 8B. 10
        cmp     ebp, dword [?_4927+edx*4]               ; 100122C0 _ 3B. 2C 95, 1002575C(d)
        jl      ?_2077                                  ; 100122C7 _ 0F 8C, FFFFFF3E
?_2078: pop     edi                                     ; 100122CD _ 5F
        pop     esi                                     ; 100122CE _ 5E
        pop     ebp                                     ; 100122CF _ 5D
        mov     eax, 1                                  ; 100122D0 _ B8, 00000001
        pop     ebx                                     ; 100122D5 _ 5B
        pop     ecx                                     ; 100122D6 _ 59
        ret                                             ; 100122D7 _ C3

        nop                                             ; 100122D8 _ 90
        nop                                             ; 100122D9 _ 90
        nop                                             ; 100122DA _ 90
        nop                                             ; 100122DB _ 90
        nop                                             ; 100122DC _ 90
        nop                                             ; 100122DD _ 90
        nop                                             ; 100122DE _ 90
        nop                                             ; 100122DF _ 90
?_2079: mov     eax, dword [esp+4H]                     ; 100122E0 _ 8B. 44 24, 04
        push    ebp                                     ; 100122E4 _ 55
        mov     ebp, dword [esp+14H]                    ; 100122E5 _ 8B. 6C 24, 14
        cmp     eax, 21                                 ; 100122E9 _ 83. F8, 15
        push    esi                                     ; 100122EC _ 56
        jnz     ?_2080                                  ; 100122ED _ 75, 1A
        mov     edx, dword [ebp+1CCH]                   ; 100122EF _ 8B. 95, 000001CC
        mov     eax, dword [ebp+4H]                     ; 100122F5 _ 8B. 45, 04
        or      dh, 10H                                 ; 100122F8 _ 80. CE, 10
        push    eax                                     ; 100122FB _ 50
        mov     dword [ebp+1CCH], edx                   ; 100122FC _ 89. 95, 000001CC
        call    ?_1220                                  ; 10012302 _ E8, FFFF9519
        jmp     ?_2081                                  ; 10012307 _ EB, 1B

?_2080: mov     esi, dword [ebp+1CCH]                   ; 10012309 _ 8B. B5, 000001CC
        mov     ecx, dword [ebp+4H]                     ; 1001230F _ 8B. 4D, 04
        or      esi, 2000H                              ; 10012312 _ 81. CE, 00002000
        push    ecx                                     ; 10012318 _ 51
        mov     dword [ebp+1CCH], esi                   ; 10012319 _ 89. B5, 000001CC
        call    ?_1223                                  ; 1001231F _ E8, FFFF952C
?_2081: mov     dx, word [esp+18H]                      ; 10012324 _ 66: 8B. 54 24, 18
        add     esp, 4                                  ; 10012329 _ 83. C4, 04
        mov     word [ebp+0AH], dx                      ; 1001232C _ 66: 89. 55, 0A
        mov     dword [esp+14H], ?_5674                 ; 10012330 _ C7. 44 24, 14, 100A9820(d)
        push    ebx                                     ; 10012338 _ 53
        xor     ebx, ebx                                ; 10012339 _ 33. DB
        push    edi                                     ; 1001233B _ 57
        mov     byte [ebp+0CH], bl                      ; 1001233C _ 88. 5D, 0C
?_2082: mov     edi, dword [esp+1CH]                    ; 1001233F _ 8B. 7C 24, 1C
        xor     esi, esi                                ; 10012343 _ 33. F6
        sub     edi, ?_5674                             ; 10012345 _ 81. EF, 100A9820(d)
?_2083: push    64                                      ; 1001234B _ 6A, 40
        call    ?_3022                                  ; 1001234D _ E8, 00007D7E
        sub     al, 32                                  ; 10012352 _ 2C, 20
        add     esp, 4                                  ; 10012354 _ 83. C4, 04
        mov     byte [?_5674+edi+esi], al               ; 10012357 _ 88. 84 37, 100A9820(d)
        mov     byte [?_5691+edi+esi], bl               ; 1001235E _ 88. 9C 37, 1014D8E0(d)
        inc     esi                                     ; 10012365 _ 46
        cmp     esi, 768                                ; 10012366 _ 81. FE, 00000300
        jl      ?_2083                                  ; 1001236C _ 7C, DD
        mov     eax, dword [esp+1CH]                    ; 1001236E _ 8B. 44 24, 1C
        add     eax, 768                                ; 10012372 _ 05, 00000300
        cmp     eax, ?_5677                             ; 10012377 _ 3D, 10139820(d)
        mov     dword [esp+1CH], eax                    ; 1001237C _ 89. 44 24, 1C
        jl      ?_2082                                  ; 10012380 _ 7C, BD
        lea     edi, [ebp+5CH]                          ; 10012382 _ 8D. 7D, 5C
        mov     ecx, 8                                  ; 10012385 _ B9, 00000008
        or      eax, 0FFFFFFFFH                         ; 1001238A _ 83. C8, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp+50H], 32767                   ; 1001238D _ 66: C7. 45, 50, 7FFF
        mov     dword [ebp+7CH], ebx                    ; 10012393 _ 89. 5D, 7C
        mov     byte [ebp+58H], bl                      ; 10012396 _ 88. 5D, 58
        rep stosd                                       ; 10012399 _ F3: AB
        mov     eax, 1148846080                         ; 1001239B _ B8, 447A0000
        mov     dword [ebp+170H], ebx                   ; 100123A0 _ 89. 9D, 00000170
        mov     dword [ebp+16CH], ebx                   ; 100123A6 _ 89. 9D, 0000016C
        pop     edi                                     ; 100123AC _ 5F
        mov     dword [ebp+1CH], eax                    ; 100123AD _ 89. 45, 1C
        mov     dword [ebp+14H], 1065353216             ; 100123B0 _ C7. 45, 14, 3F800000
        mov     dword [ebp+20H], 1094713344             ; 100123B7 _ C7. 45, 20, 41400000
        mov     dword [ebp+10H], 1134886912             ; 100123BE _ C7. 45, 10, 43A50000
        mov     dword [ebp+18H], eax                    ; 100123C5 _ 89. 45, 18
        xor     esi, esi                                ; 100123C8 _ 33. F6
        pop     ebx                                     ; 100123CA _ 5B
?_2084: push    42                                      ; 100123CB _ 6A, 2A
        call    ?_3022                                  ; 100123CD _ E8, 00007CFE
        and     eax, 0FFFFH                             ; 100123D2 _ 25, 0000FFFF
        add     esp, 4                                  ; 100123D7 _ 83. C4, 04
        mov     dword [esp+14H], eax                    ; 100123DA _ 89. 44 24, 14
        fild    dword [esp+14H]                         ; 100123DE _ DB. 44 24, 14
        fadd    dword [?_4939]                          ; 100123E2 _ D8. 05, 10025808(d)
        call    ?_3298                                  ; 100123E8 _ E8, 00009177
        mov     byte [esi+ebp+80H], al                  ; 100123ED _ 88. 84 2E, 00000080
        inc     esi                                     ; 100123F4 _ 46
        cmp     esi, 5                                  ; 100123F5 _ 83. FE, 05
        jl      ?_2084                                  ; 100123F8 _ 7C, D1
        xor     ecx, ecx                                ; 100123FA _ 33. C9
        mov     byte [ebp+0DH], 9                       ; 100123FC _ C6. 45, 0D, 09
        mov     cl, byte [?_5532]                       ; 10012400 _ 8A. 0D, 10035439(d)
        mov     edx, dword [ebp+4H]                     ; 10012406 _ 8B. 55, 04
        mov     eax, ecx                                ; 10012409 _ 8B. C1
        push    16000000                                ; 1001240B _ 68, 00F42400
        shl     eax, 6                                  ; 10012410 _ C1. E0, 06
        sub     eax, ecx                                ; 10012413 _ 2B. C1
        xor     ecx, ecx                                ; 10012415 _ 33. C9
        lea     eax, [eax+eax*2]                        ; 10012417 _ 8D. 04 40
        mov     cx, word [?_5672+eax*4]                 ; 1001241A _ 66: 8B. 0C 85, 100A8C94(d)
        push    ecx                                     ; 10012422 _ 51
        push    edx                                     ; 10012423 _ 52
        call    ?_2564                                  ; 10012424 _ E8, 000048A7
        push    2                                       ; 10012429 _ 6A, 02
        call    ?_3022                                  ; 1001242B _ E8, 00007CA0
        add     esp, 16                                 ; 10012430 _ 83. C4, 10
        mov     byte [ebp+2H], 3                        ; 10012433 _ C6. 45, 02, 03
        pop     esi                                     ; 10012437 _ 5E
        pop     ebp                                     ; 10012438 _ 5D
        ret                                             ; 10012439 _ C3

        nop                                             ; 1001243A _ 90
        nop                                             ; 1001243B _ 90
        nop                                             ; 1001243C _ 90
        nop                                             ; 1001243D _ 90
        nop                                             ; 1001243E _ 90
        nop                                             ; 1001243F _ 90

