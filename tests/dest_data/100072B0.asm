; ---- 100072B0 ----
?_0731: ; Local function
        push    ebx                                     ; 100072B0 _ 53
        push    ebp                                     ; 100072B1 _ 55
        mov     ebp, dword [esp+14H]                    ; 100072B2 _ 8B. 6C 24, 14
        push    esi                                     ; 100072B6 _ 56
        mov     esi, dword [esp+10H]                    ; 100072B7 _ 8B. 74 24, 10
        xor     eax, eax                                ; 100072BB _ 33. C0
        push    edi                                     ; 100072BD _ 57
        mov     ecx, dword [esi+7CH]                    ; 100072BE _ 8B. 4E, 7C
        test    ecx, ecx                                ; 100072C1 _ 85. C9
        jle     ?_0733                                  ; 100072C3 _ 7E, 50
        cmp     byte [esi+1CH], 2                       ; 100072C5 _ 80. 7E, 1C, 02
        jnz     ?_0732                                  ; 100072C9 _ 75, 09
        push    esi                                     ; 100072CB _ 56
        call    ?_0861                                  ; 100072CC _ E8, 0000152F
        add     esp, 4                                  ; 100072D1 _ 83. C4, 04
?_0732: lea     eax, [esi+0B10H]                        ; 100072D4 _ 8D. 86, 00000B10
        push    eax                                     ; 100072DA _ 50
        push    esi                                     ; 100072DB _ 56
        call    ?_0744                                  ; 100072DC _ E8, 000001BF
        lea     ecx, [esi+0B1CH]                        ; 100072E1 _ 8D. 8E, 00000B1C
        push    ecx                                     ; 100072E7 _ 51
        push    esi                                     ; 100072E8 _ 56
        call    ?_0744                                  ; 100072E9 _ E8, 000001B2
        push    esi                                     ; 100072EE _ 56
        call    ?_0788                                  ; 100072EF _ E8, 0000077C
        mov     edx, dword [esi+16A0H]                  ; 100072F4 _ 8B. 96, 000016A0
        mov     ecx, dword [esi+16A4H]                  ; 100072FA _ 8B. 8E, 000016A4
        add     edx, 10                                 ; 10007300 _ 83. C2, 0A
        add     ecx, 10                                 ; 10007303 _ 83. C1, 0A
        shr     edx, 3                                  ; 10007306 _ C1. EA, 03
        shr     ecx, 3                                  ; 10007309 _ C1. E9, 03
        add     esp, 20                                 ; 1000730C _ 83. C4, 14
        cmp     ecx, edx                                ; 1000730F _ 3B. CA
        ja      ?_0735                                  ; 10007311 _ 77, 07
        jmp     ?_0734                                  ; 10007313 _ EB, 03

?_0733: lea     ecx, [ebp+5H]                           ; 10007315 _ 8D. 4D, 05
?_0734: mov     edx, ecx                                ; 10007318 _ 8B. D1
?_0735: lea     edi, [ebp+4H]                           ; 1000731A _ 8D. 7D, 04
        cmp     edi, edx                                ; 1000731D _ 3B. FA
        ja      ?_0736                                  ; 1000731F _ 77, 1D
        mov     ebx, dword [esp+18H]                    ; 10007321 _ 8B. 5C 24, 18
        test    ebx, ebx                                ; 10007325 _ 85. DB
        jz      ?_0736                                  ; 10007327 _ 74, 15
        mov     edi, dword [esp+20H]                    ; 10007329 _ 8B. 7C 24, 20
        push    edi                                     ; 1000732D _ 57
        push    ebp                                     ; 1000732E _ 55
        push    ebx                                     ; 1000732F _ 53
        push    esi                                     ; 10007330 _ 56
        call    ?_0718                                  ; 10007331 _ E8, FFFFFC7A
        add     esp, 16                                 ; 10007336 _ 83. C4, 10
        jmp     ?_0742                                  ; 10007339 _ E9, 00000145

?_0736: cmp     ecx, edx                                ; 1000733E _ 3B. CA
        mov     ecx, dword [esi+16B4H]                  ; 10007340 _ 8B. 8E, 000016B4
        jne     ?_0739                                  ; 10007346 _ 0F 85, 00000090
        mov     edi, dword [esp+20H]                    ; 1000734C _ 8B. 7C 24, 20
        cmp     ecx, 13                                 ; 10007350 _ 83. F9, 0D
        lea     eax, [edi+2H]                           ; 10007353 _ 8D. 47, 02
        jle     ?_0737                                  ; 10007356 _ 7E, 5A
        mov     edx, eax                                ; 10007358 _ 8B. D0
        shl     edx, cl                                 ; 1000735A _ D3. E2
        mov     ecx, dword [esi+8H]                     ; 1000735C _ 8B. 4E, 08
        or      word [esi+16B0H], dx                    ; 1000735F _ 66: 09. 96, 000016B0
        mov     edx, dword [esi+14H]                    ; 10007366 _ 8B. 56, 14
        mov     bl, byte [esi+16B0H]                    ; 10007369 _ 8A. 9E, 000016B0
        mov     byte [ecx+edx], bl                      ; 1000736F _ 88. 1C 11
        mov     edx, dword [esi+14H]                    ; 10007372 _ 8B. 56, 14
        mov     ebx, dword [esi+8H]                     ; 10007375 _ 8B. 5E, 08
        inc     edx                                     ; 10007378 _ 42
        mov     dword [esi+14H], edx                    ; 10007379 _ 89. 56, 14
        mov     ecx, edx                                ; 1000737C _ 8B. CA
        xor     edx, edx                                ; 1000737E _ 33. D2
        mov     dl, byte [esi+16B1H]                    ; 10007380 _ 8A. 96, 000016B1
        mov     byte [ebx+ecx], dl                      ; 10007386 _ 88. 14 0B
        mov     ecx, dword [esi+14H]                    ; 10007389 _ 8B. 4E, 14
        mov     edx, dword [esi+16B4H]                  ; 1000738C _ 8B. 96, 000016B4
        inc     ecx                                     ; 10007392 _ 41
        mov     dword [esi+14H], ecx                    ; 10007393 _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007396 _ 66: B9, 0010
        sub     cx, dx                                  ; 1000739A _ 66: 2B. CA
        shr     ax, cl                                  ; 1000739D _ 66: D3. E8
        add     edx, -13                                ; 100073A0 _ 83. C2, F3
        mov     dword [esi+16B4H], edx                  ; 100073A3 _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 100073A9 _ 66: 89. 86, 000016B0
        jmp     ?_0738                                  ; 100073B0 _ EB, 12

?_0737: shl     eax, cl                                 ; 100073B2 _ D3. E0
        or      word [esi+16B0H], ax                    ; 100073B4 _ 66: 09. 86, 000016B0
        add     ecx, 3                                  ; 100073BB _ 83. C1, 03
        mov     dword [esi+16B4H], ecx                  ; 100073BE _ 89. 8E, 000016B4
?_0738: push    ?_4900                                  ; 100073C4 _ 68, 10024E84(d)
        push    ?_4897                                  ; 100073C9 _ 68, 10024A04(d)
        push    esi                                     ; 100073CE _ 56
        call    ?_0843                                  ; 100073CF _ E8, 00000FEC
        add     esp, 12                                 ; 100073D4 _ 83. C4, 0C
        jmp     ?_0742                                  ; 100073D7 _ E9, 000000A7

?_0739: mov     edi, dword [esp+20H]                    ; 100073DC _ 8B. 7C 24, 20
        cmp     ecx, 13                                 ; 100073E0 _ 83. F9, 0D
        lea     edx, [edi+4H]                           ; 100073E3 _ 8D. 57, 04
        jle     ?_0740                                  ; 100073E6 _ 7E, 5A
        mov     ebx, edx                                ; 100073E8 _ 8B. DA
        mov     ebp, dword [esi+8H]                     ; 100073EA _ 8B. 6E, 08
        shl     ebx, cl                                 ; 100073ED _ D3. E3
        or      word [esi+16B0H], bx                    ; 100073EF _ 66: 09. 9E, 000016B0
        mov     ebx, dword [esi+14H]                    ; 100073F6 _ 8B. 5E, 14
        mov     cl, byte [esi+16B0H]                    ; 100073F9 _ 8A. 8E, 000016B0
        mov     byte [ebx+ebp], cl                      ; 100073FF _ 88. 0C 2B
        mov     ebx, dword [esi+14H]                    ; 10007402 _ 8B. 5E, 14
        mov     ebp, dword [esi+8H]                     ; 10007405 _ 8B. 6E, 08
        inc     ebx                                     ; 10007408 _ 43
        mov     dword [esi+14H], ebx                    ; 10007409 _ 89. 5E, 14
        mov     ecx, ebx                                ; 1000740C _ 8B. CB
        xor     ebx, ebx                                ; 1000740E _ 33. DB
        mov     bl, byte [esi+16B1H]                    ; 10007410 _ 8A. 9E, 000016B1
        mov     byte [ecx+ebp], bl                      ; 10007416 _ 88. 1C 29
        mov     ecx, dword [esi+14H]                    ; 10007419 _ 8B. 4E, 14
        mov     ebx, dword [esi+16B4H]                  ; 1000741C _ 8B. 9E, 000016B4
        inc     ecx                                     ; 10007422 _ 41
        mov     dword [esi+14H], ecx                    ; 10007423 _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007426 _ 66: B9, 0010
        sub     cx, bx                                  ; 1000742A _ 66: 2B. CB
        shr     dx, cl                                  ; 1000742D _ 66: D3. EA
        add     ebx, -13                                ; 10007430 _ 83. C3, F3
        mov     dword [esi+16B4H], ebx                  ; 10007433 _ 89. 9E, 000016B4
        mov     word [esi+16B0H], dx                    ; 10007439 _ 66: 89. 96, 000016B0
        jmp     ?_0741                                  ; 10007440 _ EB, 12

?_0740: shl     edx, cl                                 ; 10007442 _ D3. E2
        or      word [esi+16B0H], dx                    ; 10007444 _ 66: 09. 96, 000016B0
        add     ecx, 3                                  ; 1000744B _ 83. C1, 03
        mov     dword [esi+16B4H], ecx                  ; 1000744E _ 89. 8E, 000016B4
?_0741: mov     ecx, dword [esi+0B14H]                  ; 10007454 _ 8B. 8E, 00000B14
        inc     eax                                     ; 1000745A _ 40
        push    eax                                     ; 1000745B _ 50
        mov     eax, dword [esi+0B20H]                  ; 1000745C _ 8B. 86, 00000B20
        inc     eax                                     ; 10007462 _ 40
        inc     ecx                                     ; 10007463 _ 41
        push    eax                                     ; 10007464 _ 50
        push    ecx                                     ; 10007465 _ 51
        push    esi                                     ; 10007466 _ 56
        call    ?_0804                                  ; 10007467 _ E8, 00000764
        lea     edx, [esi+980H]                         ; 1000746C _ 8D. 96, 00000980
        lea     eax, [esi+8CH]                          ; 10007472 _ 8D. 86, 0000008C
        push    edx                                     ; 10007478 _ 52
        push    eax                                     ; 10007479 _ 50
        push    esi                                     ; 1000747A _ 56
        call    ?_0843                                  ; 1000747B _ E8, 00000F40
        add     esp, 28                                 ; 10007480 _ 83. C4, 1C
?_0742: push    esi                                     ; 10007483 _ 56
        call    ?_0714                                  ; 10007484 _ E8, FFFFFAB7
        add     esp, 4                                  ; 10007489 _ 83. C4, 04
        test    edi, edi                                ; 1000748C _ 85. FF
        jz      ?_0743                                  ; 1000748E _ 74, 09
        push    esi                                     ; 10007490 _ 56
        call    ?_0871                                  ; 10007491 _ E8, 0000149A
        add     esp, 4                                  ; 10007496 _ 83. C4, 04
?_0743: pop     edi                                     ; 10007499 _ 5F
        pop     esi                                     ; 1000749A _ 5E
        pop     ebp                                     ; 1000749B _ 5D
        pop     ebx                                     ; 1000749C _ 5B
        ret                                             ; 1000749D _ C3

        nop                                             ; 1000749E _ 90
        nop                                             ; 1000749F _ 90

