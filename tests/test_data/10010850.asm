; ---- 10010850 ----
?_1931: ; Local function
        mov     eax, dword [esp+4H]                     ; 10010850 _ 8B. 44 24, 04
        xor     ecx, ecx                                ; 10010854 _ 33. C9
        push    ebx                                     ; 10010856 _ 53
        push    ebp                                     ; 10010857 _ 55
        mov     cl, byte [eax]                          ; 10010858 _ 8A. 08
        push    esi                                     ; 1001085A _ 56
        push    edi                                     ; 1001085B _ 57
        lea     eax, [ecx+ecx*2]                        ; 1001085C _ 8D. 04 49
        shl     eax, 4                                  ; 1001085F _ C1. E0, 04
        add     eax, ecx                                ; 10010862 _ 03. C1
        lea     edx, [eax+eax*2]                        ; 10010864 _ 8D. 14 40
        mov     eax, dword [?_5668]                     ; 10010867 _ A1, 100A8C30(d)
        add     eax, ecx                                ; 1001086C _ 03. C1
        mov     cl, byte [eax+edx*4]                    ; 1001086E _ 8A. 0C 90
        lea     eax, [eax+edx*4]                        ; 10010871 _ 8D. 04 90
        cmp     cl, 29                                  ; 10010874 _ 80. F9, 1D
        jne     ?_1935                                  ; 10010877 _ 0F 85, 0000013E
        mov     al, byte [eax+247H]                     ; 1001087D _ 8A. 80, 00000247
        cmp     al, 1                                   ; 10010883 _ 3C, 01
        jc      ?_1935                                  ; 10010885 _ 0F 82, 00000130
        cmp     al, 3                                   ; 1001088B _ 3C, 03
        ja      ?_1935                                  ; 1001088D _ 0F 87, 00000128
        mov     ebx, dword [esp+18H]                    ; 10010893 _ 8B. 5C 24, 18
        xor     ebp, ebp                                ; 10010897 _ 33. ED
        test    ebx, ebx                                ; 10010899 _ 85. DB
        jle     ?_1934                                  ; 1001089B _ 0F 8E, 00000113
?_1932: mov     ecx, dword [esp+14H]                    ; 100108A1 _ 8B. 4C 24, 14
        push    0                                       ; 100108A5 _ 6A, 00
        push    ?_1914                                  ; 100108A7 _ 68, 10010700(d)
        push    0                                       ; 100108AC _ 6A, 00
        push    ecx                                     ; 100108AE _ 51
        push    0                                       ; 100108AF _ 6A, 00
        call    ?_1915                                  ; 100108B1 _ E8, FFFFFE5A
        mov     esi, eax                                ; 100108B6 _ 8B. F0
        add     esp, 20                                 ; 100108B8 _ 83. C4, 14
        test    esi, esi                                ; 100108BB _ 85. F6
        je      ?_1934                                  ; 100108BD _ 0F 84, 000000F1
        mov     edx, dword [esi+10H]                    ; 100108C3 _ 8B. 56, 10
        mov     eax, dword [?_5380]                     ; 100108C6 _ A1, 10030B6C(d)
        mov     dword [edx], eax                        ; 100108CB _ 89. 02
        mov     eax, dword [?_5380]                     ; 100108CD _ A1, 10030B6C(d)
        inc     eax                                     ; 100108D2 _ 40
        mov     dword [?_5380], eax                     ; 100108D3 _ A3, 10030B6C(d)
        mov     ecx, dword [esi+10H]                    ; 100108D8 _ 8B. 4E, 10
        mov     edx, dword [ecx]                        ; 100108DB _ 8B. 11
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+8H], 32767                    ; 100108DD _ 66: C7. 46, 08, 7FFF
        mov     dword [esi+4H], edx                     ; 100108E3 _ 89. 56, 04
        mov     eax, dword [?_5628]                     ; 100108E6 _ A1, 10035880(d)
        add     eax, 5                                  ; 100108EB _ 83. C0, 05
        mov     byte [esi+0CH], -1                      ; 100108EE _ C6. 46, 0C, FF
        mov     word [esi+0AH], ax                      ; 100108F2 _ 66: 89. 46, 0A
        xor     edi, edi                                ; 100108F6 _ 33. FF
?_1933: push    8                                       ; 100108F8 _ 6A, 08
        call    ?_3022                                  ; 100108FA _ E8, 000097D1
        and     eax, 0FFFFH                             ; 100108FF _ 25, 0000FFFF
        add     esp, 4                                  ; 10010904 _ 83. C4, 04
        mov     dword [esp+18H], eax                    ; 10010907 _ 89. 44 24, 18
        fild    dword [esp+18H]                         ; 1001090B _ DB. 44 24, 18
        fmul    dword [?_4934]                          ; 1001090F _ D8. 0D, 100257C0(d)
        fadd    dword [?_4933]                          ; 10010915 _ D8. 05, 100257BC(d)
        call    ?_3298                                  ; 1001091B _ E8, 0000AC44
        mov     ecx, dword [esi+10H]                    ; 10010920 _ 8B. 4E, 10
        inc     edi                                     ; 10010923 _ 47
        cmp     edi, 5                                  ; 10010924 _ 83. FF, 05
        mov     byte [ecx+edi+23H], al                  ; 10010927 _ 88. 44 39, 23
        jl      ?_1933                                  ; 1001092B _ 7C, CB
        push    9                                       ; 1001092D _ 6A, 09
        call    ?_3022                                  ; 1001092F _ E8, 0000979C
        mov     edx, dword [esi+10H]                    ; 10010934 _ 8B. 56, 10
        and     eax, 0FFFFH                             ; 10010937 _ 25, 0000FFFF
        inc     eax                                     ; 1001093C _ 40
        push    2                                       ; 1001093D _ 6A, 02
        mov     dword [edx+2CH], eax                    ; 1001093F _ 89. 42, 2C
        call    ?_3022                                  ; 10010942 _ E8, 00009789
        mov     ecx, dword [esi+10H]                    ; 10010947 _ 8B. 4E, 10
        and     eax, 0FFFFH                             ; 1001094A _ 25, 0000FFFF
        inc     eax                                     ; 1001094F _ 40
        push    94                                      ; 10010950 _ 6A, 5E
        mov     dword [ecx+30H], eax                    ; 10010952 _ 89. 41, 30
        call    ?_3022                                  ; 10010955 _ E8, 00009776
        mov     edx, dword [esi+10H]                    ; 1001095A _ 8B. 56, 10
        and     eax, 0FFFFH                             ; 1001095D _ 25, 0000FFFF
        inc     eax                                     ; 10010962 _ 40
        push    4                                       ; 10010963 _ 6A, 04
        mov     dword [edx+34H], eax                    ; 10010965 _ 89. 42, 34
        call    ?_3022                                  ; 10010968 _ E8, 00009763
        mov     ecx, dword [?_5628]                     ; 1001096D _ 8B. 0D, 10035880(d)
        mov     edx, dword [esi+10H]                    ; 10010973 _ 8B. 56, 10
        and     eax, 0FFFFH                             ; 10010976 _ 25, 0000FFFF
        push    2                                       ; 1001097B _ 6A, 02
        sub     ecx, eax                                ; 1001097D _ 2B. C8
        dec     ecx                                     ; 1001097F _ 49
        mov     dword [edx+40H], ecx                    ; 10010980 _ 89. 4A, 40
        call    ?_3022                                  ; 10010983 _ E8, 00009748
        mov     ecx, dword [esi+10H]                    ; 10010988 _ 8B. 4E, 10
        and     eax, 0FFFFH                             ; 1001098B _ 25, 0000FFFF
        push    16                                      ; 10010990 _ 6A, 10
        mov     dword [ecx+38H], eax                    ; 10010992 _ 89. 41, 38
        call    ?_3022                                  ; 10010995 _ E8, 00009736
        push    16                                      ; 1001099A _ 6A, 10
        call    ?_3022                                  ; 1001099C _ E8, 0000972F
        push    16                                      ; 100109A1 _ 6A, 10
        call    ?_3022                                  ; 100109A3 _ E8, 00009728
        add     esp, 32                                 ; 100109A8 _ 83. C4, 20
        inc     ebp                                     ; 100109AB _ 45
        cmp     ebp, ebx                                ; 100109AC _ 3B. EB
        jl      ?_1932                                  ; 100109AE _ 0F 8C, FFFFFEED
?_1934: pop     edi                                     ; 100109B4 _ 5F
        mov     eax, ebp                                ; 100109B5 _ 8B. C5
        pop     esi                                     ; 100109B7 _ 5E
        pop     ebp                                     ; 100109B8 _ 5D
        pop     ebx                                     ; 100109B9 _ 5B
        ret                                             ; 100109BA _ C3
