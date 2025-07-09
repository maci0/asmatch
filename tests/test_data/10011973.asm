; ---- 10011973 ----
?_2030: ; Local function
        mov     edx, dword [ebp+4H]                     ; 10011973 _ 8B. 55, 04
        lea     eax, [esp+0CH]                          ; 10011976 _ 8D. 44 24, 0C
        push    edx                                     ; 1001197A _ 52
        push    0                                       ; 1001197B _ 6A, 00
        push    0                                       ; 1001197D _ 6A, 00
        push    eax                                     ; 1001197F _ 50
        call    ?_2425                                  ; 10011980 _ E8, 0000450B
        mov     edx, dword [esp+1CH]                    ; 10011985 _ 8B. 54 24, 1C
        add     esp, 16                                 ; 10011989 _ 83. C4, 10
        test    edx, edx                                ; 1001198C _ 85. D2
        je      ?_2042                                  ; 1001198E _ 0F 84, 00000244
        mov     ax, word [edx+27H]                      ; 10011994 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 10011998 _ 66: 3D, FFFF
        je      ?_2042                                  ; 1001199C _ 0F 84, 00000236
        and     eax, 0FFFFH                             ; 100119A2 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 100119A7 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100119AA _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 100119AD _ 8D. 0C C0
        lea     eax, [?_5632+ecx*4]                     ; 100119B0 _ 8D. 04 8D, 100358A0(d)
        mov     ecx, dword [?_5547]                     ; 100119B7 _ 8B. 0D, 1003546C(d)
        cmp     eax, ecx                                ; 100119BD _ 3B. C1
        je      ?_2042                                  ; 100119BF _ 0F 84, 00000213
        xor     ecx, ecx                                ; 100119C5 _ 33. C9
        mov     esi, dword [?_5668]                     ; 100119C7 _ 8B. 35, 100A8C30(d)
        mov     cl, byte [edx]                          ; 100119CD _ 8A. 0A
        add     esi, ecx                                ; 100119CF _ 03. F1
        lea     eax, [ecx+ecx*2]                        ; 100119D1 _ 8D. 04 49
        shl     eax, 4                                  ; 100119D4 _ C1. E0, 04
        add     eax, ecx                                ; 100119D7 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 100119D9 _ 8D. 04 40
        cmp     byte [esi+eax*4], 29                    ; 100119DC _ 80. 3C 86, 1D
        jz      ?_2031                                  ; 100119E0 _ 74, 0C
        pop     esi                                     ; 100119E2 _ 5E
        pop     ebp                                     ; 100119E3 _ 5D
        mov     eax, 4294967294                         ; 100119E4 _ B8, FFFFFFFE
        pop     ebx                                     ; 100119E9 _ 5B
        add     esp, 20                                 ; 100119EA _ 83. C4, 14
        ret                                             ; 100119ED _ C3

?_2031: mov     esi, dword [edx+65H]                    ; 100119EE _ 8B. 72, 65
        test    esi, esi                                ; 100119F1 _ 85. F6
        jnz     ?_2032                                  ; 100119F3 _ 75, 0C
        pop     esi                                     ; 100119F5 _ 5E
        pop     ebp                                     ; 100119F6 _ 5D
        mov     eax, 4294967293                         ; 100119F7 _ B8, FFFFFFFD
        pop     ebx                                     ; 100119FC _ 5B
        add     esp, 20                                 ; 100119FD _ 83. C4, 14
        ret                                             ; 10011A00 _ C3

?_2032: mov     ecx, dword [ebp+8H]                     ; 10011A01 _ 8B. 4D, 08
        push    ecx                                     ; 10011A04 _ 51
        push    esi                                     ; 10011A05 _ 56
        call    ?_1891                                  ; 10011A06 _ E8, FFFFEB25
        add     esp, 8                                  ; 10011A0B _ 83. C4, 08
        test    eax, eax                                ; 10011A0E _ 85. C0
        jnz     ?_2033                                  ; 10011A10 _ 75, 0C
        pop     esi                                     ; 10011A12 _ 5E
        pop     ebp                                     ; 10011A13 _ 5D
        mov     eax, 4294967292                         ; 10011A14 _ B8, FFFFFFFC
        pop     ebx                                     ; 10011A19 _ 5B
        add     esp, 20                                 ; 10011A1A _ 83. C4, 14
        ret                                             ; 10011A1D _ C3

?_2033: mov     dl, byte [ebp+0CH]                      ; 10011A1E _ 8A. 55, 0C
        mov     eax, dword [ebp+8H]                     ; 10011A21 _ 8B. 45, 08
        push    edx                                     ; 10011A24 _ 52
        push    eax                                     ; 10011A25 _ 50
        push    esi                                     ; 10011A26 _ 56
        call    ?_1900                                  ; 10011A27 _ E8, FFFFEB84
        mov     esi, eax                                ; 10011A2C _ 8B. F0
        add     esp, 12                                 ; 10011A2E _ 83. C4, 0C
        test    esi, esi                                ; 10011A31 _ 85. F6
        mov     dword [esp+18H], esi                    ; 10011A33 _ 89. 74 24, 18
        jz      ?_2034                                  ; 10011A37 _ 74, 40
        mov     eax, dword [esp+24H]                    ; 10011A39 _ 8B. 44 24, 24
        mov     cx, word [esi+8H]                       ; 10011A3D _ 66: 8B. 4E, 08
        cmp     cx, word [eax+50H]                      ; 10011A41 _ 66: 3B. 48, 50
        jnz     ?_2034                                  ; 10011A45 _ 75, 32
        mov     edx, dword [ebp+8H]                     ; 10011A47 _ 8B. 55, 08
        mov     ebx, dword [esi+10H]                    ; 10011A4A _ 8B. 5E, 10
        mov     ecx, dword [?_4926+edx*4]               ; 10011A4D _ 8B. 0C 95, 1002574C(d)
        mov     edx, dword [ebp+0DH]                    ; 10011A54 _ 8B. 55, 0D
        mov     dword [esp+10H], ecx                    ; 10011A57 _ 89. 4C 24, 10
        mov     ecx, dword [esp+0CH]                    ; 10011A5B _ 8B. 4C 24, 0C
        push    edx                                     ; 10011A5F _ 52
        push    ?_1914                                  ; 10011A60 _ 68, 10010700(d)
        push    0                                       ; 10011A65 _ 6A, 00
        push    ecx                                     ; 10011A67 _ 51
        push    eax                                     ; 10011A68 _ 50
        call    ?_1915                                  ; 10011A69 _ E8, FFFFECA2
        add     esp, 20                                 ; 10011A6E _ 83. C4, 14
        mov     dword [esp+1CH], eax                    ; 10011A71 _ 89. 44 24, 1C
        test    eax, eax                                ; 10011A75 _ 85. C0
        jnz     ?_2035                                  ; 10011A77 _ 75, 0C
?_2034: pop     esi                                     ; 10011A79 _ 5E
        pop     ebp                                     ; 10011A7A _ 5D
        mov     eax, 4294967289                         ; 10011A7B _ B8, FFFFFFF9
        pop     ebx                                     ; 10011A80 _ 5B
        add     esp, 20                                 ; 10011A81 _ 83. C4, 14
        ret                                             ; 10011A84 _ C3

?_2035: mov     ecx, dword [ebp+0DH]                    ; 10011A85 _ 8B. 4D, 0D
        mov     edx, dword [eax+10H]                    ; 10011A88 _ 8B. 50, 10
        push    edi                                     ; 10011A8B _ 57
        mov     ecx, dword [?_4926+ecx*4]               ; 10011A8C _ 8B. 0C 8D, 1002574C(d)
        mov     edi, ecx                                ; 10011A93 _ 8B. F9
        shl     edi, 4                                  ; 10011A95 _ C1. E7, 04
        add     edi, ecx                                ; 10011A98 _ 03. F9
        lea     ecx, [edx+edi*4]                        ; 10011A9A _ 8D. 0C BA
        mov     dword [esp+18H], ecx                    ; 10011A9D _ 89. 4C 24, 18
        mov     ecx, dword [esp+14H]                    ; 10011AA1 _ 8B. 4C 24, 14
        mov     edi, ecx                                ; 10011AA5 _ 8B. F9
        shl     edi, 4                                  ; 10011AA7 _ C1. E7, 04
        add     edi, ecx                                ; 10011AAA _ 03. F9
        lea     ecx, [ebx+edi*4]                        ; 10011AAC _ 8D. 0C BB
        mov     edi, dword [esp+18H]                    ; 10011AAF _ 8B. 7C 24, 18
        cmp     edx, edi                                ; 10011AB3 _ 3B. D7
        mov     dword [esp+14H], ecx                    ; 10011AB5 _ 89. 4C 24, 14
        jnc     ?_2040                                  ; 10011AB9 _ 73, 52
?_2036: cmp     dword [edx], -1                         ; 10011ABB _ 83. 3A, FF
        jnz     ?_2039                                  ; 10011ABE _ 75, 42
        cmp     ebx, ecx                                ; 10011AC0 _ 3B. D9
        jnc     ?_2040                                  ; 10011AC2 _ 73, 49
?_2037: cmp     dword [ebx], -1                         ; 10011AC4 _ 83. 3B, FF
        jnz     ?_2038                                  ; 10011AC7 _ 75, 09
        add     ebx, 68                                 ; 10011AC9 _ 83. C3, 44
        cmp     ebx, ecx                                ; 10011ACC _ 3B. D9
        jnc     ?_2040                                  ; 10011ACE _ 73, 3D
        jmp     ?_2037                                  ; 10011AD0 _ EB, F2

?_2038: mov     ecx, 17                                 ; 10011AD2 _ B9, 00000011
        mov     esi, ebx                                ; 10011AD7 _ 8B. F3
        mov     edi, edx                                ; 10011AD9 _ 8B. FA
        xor     eax, eax                                ; 10011ADB _ 33. C0
        rep movsd                                       ; 10011ADD _ F3: A5
        mov     esi, dword [esp+1CH]                    ; 10011ADF _ 8B. 74 24, 1C
        mov     ecx, 17                                 ; 10011AE3 _ B9, 00000011
        mov     edi, ebx                                ; 10011AE8 _ 8B. FB
        rep stosd                                       ; 10011AEA _ F3: AB
        mov     eax, dword [esp+14H]                    ; 10011AEC _ 8B. 44 24, 14
        mov     dword [ebx], -1                         ; 10011AF0 _ C7. 03, FFFFFFFF
        cmp     ebx, eax                                ; 10011AF6 _ 3B. D8
        mov     eax, dword [esp+20H]                    ; 10011AF8 _ 8B. 44 24, 20
        jnc     ?_2040                                  ; 10011AFC _ 73, 0F
        mov     ecx, dword [esp+14H]                    ; 10011AFE _ 8B. 4C 24, 14
?_2039: mov     edi, dword [esp+18H]                    ; 10011B02 _ 8B. 7C 24, 18
        add     edx, 68                                 ; 10011B06 _ 83. C2, 44
        cmp     edx, edi                                ; 10011B09 _ 3B. D7
        jc      ?_2036                                  ; 10011B0B _ 72, AE
?_2040: mov     edx, dword [esi+4H]                     ; 10011B0D _ 8B. 56, 04
        pop     edi                                     ; 10011B10 _ 5F
        mov     dword [eax+4H], edx                     ; 10011B11 _ 89. 50, 04
        mov     cx, word [esi+8H]                       ; 10011B14 _ 66: 8B. 4E, 08
        mov     dword [esi+4H], -1                      ; 10011B18 _ C7. 46, 04, FFFFFFFF
        mov     word [eax+8H], cx                       ; 10011B1F _ 66: 89. 48, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+8H], -1                       ; 10011B23 _ 66: C7. 46, 08, FFFF
        mov     edx, dword [?_5628]                     ; 10011B29 _ 8B. 15, 10035880(d)
        add     edx, 10                                 ; 10011B2F _ 83. C2, 0A
        mov     ecx, 255                                ; 10011B32 _ B9, 000000FF
        mov     word [eax+0AH], dx                      ; 10011B37 _ 66: 89. 50, 0A
        mov     byte [eax+0CH], cl                      ; 10011B3B _ 88. 48, 0C
        mov     word [esi+0AH], cx                      ; 10011B3E _ 66: 89. 4E, 0A
        mov     eax, dword [?_5380]                     ; 10011B42 _ A1, 10030B6C(d)
        mov     dword [ebp+15H], eax                    ; 10011B47 _ 89. 45, 15
        mov     eax, dword [ebp+11H]                    ; 10011B4A _ 8B. 45, 11
        test    eax, eax                                ; 10011B4D _ 85. C0
        jle     ?_2041                                  ; 10011B4F _ 7E, 7E
        xor     ecx, ecx                                ; 10011B51 _ 33. C9
        push    eax                                     ; 10011B53 _ 50
        mov     cl, byte [?_5532]                       ; 10011B54 _ 8A. 0D, 10035439(d)
        xor     edx, edx                                ; 10011B5A _ 33. D2
        mov     eax, ecx                                ; 10011B5C _ 8B. C1
        shl     eax, 6                                  ; 10011B5E _ C1. E0, 06
        sub     eax, ecx                                ; 10011B61 _ 2B. C1
        lea     ecx, [eax+eax*2]                        ; 10011B63 _ 8D. 0C 40
        mov     eax, dword [esp+28H]                    ; 10011B66 _ 8B. 44 24, 28
        mov     dx, word [?_5672+ecx*4]                 ; 10011B6A _ 66: 8B. 14 8D, 100A8C94(d)
        mov     ecx, dword [eax+4H]                     ; 10011B72 _ 8B. 48, 04
        push    edx                                     ; 10011B75 _ 52
        push    ecx                                     ; 10011B76 _ 51
        call    ?_2579                                  ; 10011B77 _ E8, 00005324
        fild    dword [ebp+11H]                         ; 10011B7C _ DB. 45, 11
        mov     edx, dword [ebp+0DH]                    ; 10011B7F _ 8B. 55, 0D
        fmul    dword [?_4925+edx*4]                    ; 10011B82 _ D8. 0C 95, 1002572C(d)
        call    ?_3298                                  ; 10011B89 _ E8, 000099D6
        xor     ecx, ecx                                ; 10011B8E _ 33. C9
        push    eax                                     ; 10011B90 _ 50
        mov     cl, byte [?_5532]                       ; 10011B91 _ 8A. 0D, 10035439(d)
        mov     edx, dword [esp+1CH]                    ; 10011B97 _ 8B. 54 24, 1C
        mov     eax, ecx                                ; 10011B9B _ 8B. C1
        shl     eax, 6                                  ; 10011B9D _ C1. E0, 06
        sub     eax, ecx                                ; 10011BA0 _ 2B. C1
        xor     ecx, ecx                                ; 10011BA2 _ 33. C9
        lea     eax, [eax+eax*2]                        ; 10011BA4 _ 8D. 04 40
        mov     cx, word [?_5672+eax*4]                 ; 10011BA7 _ 66: 8B. 0C 85, 100A8C94(d)
        xor     eax, eax                                ; 10011BAF _ 33. C0
        mov     ax, word [edx+27H]                      ; 10011BB1 _ 66: 8B. 42, 27
        push    ecx                                     ; 10011BB5 _ 51
        lea     eax, [eax+eax*2]                        ; 10011BB6 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10011BB9 _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 10011BBC _ 8D. 04 C0
        mov     ecx, dword [?_5634+eax*4]               ; 10011BBF _ 8B. 0C 85, 100358A4(d)
        push    ecx                                     ; 10011BC6 _ 51
        call    ?_2564                                  ; 10011BC7 _ E8, 00005104
        add     esp, 24                                 ; 10011BCC _ 83. C4, 18
?_2041: pop     esi                                     ; 10011BCF _ 5E
        pop     ebp                                     ; 10011BD0 _ 5D
        xor     eax, eax                                ; 10011BD1 _ 33. C0
        pop     ebx                                     ; 10011BD3 _ 5B
        add     esp, 20                                 ; 10011BD4 _ 83. C4, 14
        ret                                             ; 10011BD7 _ C3
