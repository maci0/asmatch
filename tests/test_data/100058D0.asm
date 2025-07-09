; ---- 100058D0 ----
?_0539: ; Local function
        push    ebx                                     ; 100058D0 _ 53
        push    ebp                                     ; 100058D1 _ 55
        push    esi                                     ; 100058D2 _ 56
        mov     esi, dword [esp+10H]                    ; 100058D3 _ 8B. 74 24, 10
        test    esi, esi                                ; 100058D7 _ 85. F6
        push    edi                                     ; 100058D9 _ 57
        je      ?_0565                                  ; 100058DA _ 0F 84, 000003C0
        mov     eax, dword [esi+1CH]                    ; 100058E0 _ 8B. 46, 1C
        test    eax, eax                                ; 100058E3 _ 85. C0
        je      ?_0565                                  ; 100058E5 _ 0F 84, 000003B5
        cmp     dword [esi], 0                          ; 100058EB _ 83. 3E, 00
        je      ?_0565                                  ; 100058EE _ 0F 84, 000003AC
        mov     edx, dword [esp+18H]                    ; 100058F4 _ 8B. 54 24, 18
        xor     ebx, ebx                                ; 100058F8 _ 33. DB
        cmp     edx, 4                                  ; 100058FA _ 83. FA, 04
        mov     edi, 4294967291                         ; 100058FD _ BF, FFFFFFFB
        setne   bl                                      ; 10005902 _ 0F 95. C3
        dec     ebx                                     ; 10005905 _ 4B
        mov     ebp, 5                                  ; 10005906 _ BD, 00000005
        and     ebx, 0FFFFFFFBH                         ; 1000590B _ 83. E3, FB
        mov     dword [esp+18H], ebx                    ; 1000590E _ 89. 5C 24, 18
?_0540: mov     eax, dword [esi+1CH]                    ; 10005912 _ 8B. 46, 1C
        mov     ecx, dword [eax]                        ; 10005915 _ 8B. 08
        cmp     ecx, 13                                 ; 10005917 _ 83. F9, 0D
        ja      ?_0565                                  ; 1000591A _ 0F 87, 00000380
        jmp     near [?_0569+ecx*4]                     ; 10005920 _ FF. 24 8D, 10005CC8(d)

?_0541: mov     ecx, dword [esi+4H]                     ; 10005927 _ 8B. 4E, 04
        test    ecx, ecx                                ; 1000592A _ 85. C9
        je      ?_0556                                  ; 1000592C _ 0F 84, 00000265
        dec     ecx                                     ; 10005932 _ 49
        xor     edx, edx                                ; 10005933 _ 33. D2
        mov     dword [esi+4H], ecx                     ; 10005935 _ 89. 4E, 04
        mov     ecx, dword [esi+8H]                     ; 10005938 _ 8B. 4E, 08
        inc     ecx                                     ; 1000593B _ 41
        mov     edi, ebx                                ; 1000593C _ 8B. FB
        mov     dword [esi+8H], ecx                     ; 1000593E _ 89. 4E, 08
        mov     ecx, dword [esi]                        ; 10005941 _ 8B. 0E
        mov     dl, byte [ecx]                          ; 10005943 _ 8A. 11
        mov     dword [eax+4H], edx                     ; 10005945 _ 89. 50, 04
        mov     eax, dword [esi+1CH]                    ; 10005948 _ 8B. 46, 1C
        mov     edx, dword [esi]                        ; 1000594B _ 8B. 16
        mov     ecx, dword [eax+4H]                     ; 1000594D _ 8B. 48, 04
        and     ecx, 0FH                                ; 10005950 _ 83. E1, 0F
        inc     edx                                     ; 10005953 _ 42
        cmp     cl, 8                                   ; 10005954 _ 80. F9, 08
        mov     dword [esi], edx                        ; 10005957 _ 89. 16
        jz      ?_0542                                  ; 10005959 _ 74, 15
        mov     dword [eax], 13                         ; 1000595B _ C7. 00, 0000000D
        mov     edx, dword [esi+1CH]                    ; 10005961 _ 8B. 56, 1C
        mov     dword [esi+18H], ?_5125                 ; 10005964 _ C7. 46, 18, 1002758C(d)
        mov     dword [edx+4H], ebp                     ; 1000596B _ 89. 6A, 04
        jmp     ?_0540                                  ; 1000596E _ EB, A2

?_0542: mov     ecx, dword [eax+4H]                     ; 10005970 _ 8B. 48, 04
        mov     edx, dword [eax+10H]                    ; 10005973 _ 8B. 50, 10
        shr     ecx, 4                                  ; 10005976 _ C1. E9, 04
        add     ecx, 8                                  ; 10005979 _ 83. C1, 08
        cmp     ecx, edx                                ; 1000597C _ 3B. CA
        jbe     ?_0543                                  ; 1000597E _ 76, 18
        mov     dword [eax], 13                         ; 10005980 _ C7. 00, 0000000D
        mov     edx, dword [esi+1CH]                    ; 10005986 _ 8B. 56, 1C
        mov     dword [esi+18H], ?_5124                 ; 10005989 _ C7. 46, 18, 10027578(d)
        mov     dword [edx+4H], ebp                     ; 10005990 _ 89. 6A, 04
        jmp     ?_0540                                  ; 10005993 _ E9, FFFFFF7A

?_0543: mov     dword [eax], 1                          ; 10005998 _ C7. 00, 00000001
?_0544: mov     eax, dword [esi+4H]                     ; 1000599E _ 8B. 46, 04
        test    eax, eax                                ; 100059A1 _ 85. C0
        je      ?_0556                                  ; 100059A3 _ 0F 84, 000001EE
        dec     eax                                     ; 100059A9 _ 48
        xor     ecx, ecx                                ; 100059AA _ 33. C9
        mov     dword [esi+4H], eax                     ; 100059AC _ 89. 46, 04
        mov     eax, dword [esi+8H]                     ; 100059AF _ 8B. 46, 08
        inc     eax                                     ; 100059B2 _ 40
        mov     edi, ebx                                ; 100059B3 _ 8B. FB
        mov     ebx, dword [esi+1CH]                    ; 100059B5 _ 8B. 5E, 1C
        mov     dword [esi+8H], eax                     ; 100059B8 _ 89. 46, 08
        mov     eax, dword [esi]                        ; 100059BB _ 8B. 06
        xor     edx, edx                                ; 100059BD _ 33. D2
        mov     ebp, 31                                 ; 100059BF _ BD, 0000001F
        mov     cl, byte [eax]                          ; 100059C4 _ 8A. 08
        inc     eax                                     ; 100059C6 _ 40
        mov     dword [esi], eax                        ; 100059C7 _ 89. 06
        mov     eax, dword [ebx+4H]                     ; 100059C9 _ 8B. 43, 04
        shl     eax, 8                                  ; 100059CC _ C1. E0, 08
        add     eax, ecx                                ; 100059CF _ 03. C1
        div     ebp                                     ; 100059D1 _ F7. F5
        test    edx, edx                                ; 100059D3 _ 85. D2
        jz      ?_0545                                  ; 100059D5 _ 74, 21
        mov     dword [ebx], 13                         ; 100059D7 _ C7. 03, 0000000D
        mov     eax, dword [esi+1CH]                    ; 100059DD _ 8B. 46, 1C
        mov     ebx, dword [esp+18H]                    ; 100059E0 _ 8B. 5C 24, 18
        mov     ebp, 5                                  ; 100059E4 _ BD, 00000005
        mov     dword [esi+18H], ?_5123                 ; 100059E9 _ C7. 46, 18, 10027560(d)
        mov     dword [eax+4H], ebp                     ; 100059F0 _ 89. 68, 04
        jmp     ?_0540                                  ; 100059F3 _ E9, FFFFFF1A

?_0545: test    cl, 20H                                 ; 100059F8 _ F6. C1, 20
        jne     ?_0554                                  ; 100059FB _ 0F 85, 0000017D
        mov     dword [ebx], 7                          ; 10005A01 _ C7. 03, 00000007
        mov     ebx, dword [esp+18H]                    ; 10005A07 _ 8B. 5C 24, 18
        mov     ebp, 5                                  ; 10005A0B _ BD, 00000005
        jmp     ?_0540                                  ; 10005A10 _ E9, FFFFFEFD

?_0546: mov     ecx, dword [eax+14H]                    ; 10005A15 _ 8B. 48, 14
        push    edi                                     ; 10005A18 _ 57
        push    esi                                     ; 10005A19 _ 56
        push    ecx                                     ; 10005A1A _ 51
        call    ?_0346                                  ; 10005A1B _ E8, FFFFE420
        mov     edi, eax                                ; 10005A20 _ 8B. F8
        add     esp, 12                                 ; 10005A22 _ 83. C4, 0C
        cmp     edi, -3                                 ; 10005A25 _ 83. FF, FD
        jnz     ?_0547                                  ; 10005A28 _ 75, 18
        mov     edx, dword [esi+1CH]                    ; 10005A2A _ 8B. 56, 1C
        mov     dword [edx], 13                         ; 10005A2D _ C7. 02, 0000000D
        mov     eax, dword [esi+1CH]                    ; 10005A33 _ 8B. 46, 1C
        mov     dword [eax+4H], 0                       ; 10005A36 _ C7. 40, 04, 00000000
        jmp     ?_0540                                  ; 10005A3D _ E9, FFFFFED0

?_0547: test    edi, edi                                ; 10005A42 _ 85. FF
        jnz     ?_0548                                  ; 10005A44 _ 75, 02
        mov     edi, ebx                                ; 10005A46 _ 8B. FB
?_0548: cmp     edi, 1                                  ; 10005A48 _ 83. FF, 01
        jne     ?_0556                                  ; 10005A4B _ 0F 85, 00000146
        mov     eax, dword [esi+1CH]                    ; 10005A51 _ 8B. 46, 1C
        mov     edi, ebx                                ; 10005A54 _ 8B. FB
        mov     edx, dword [eax+14H]                    ; 10005A56 _ 8B. 50, 14
        lea     ecx, [eax+4H]                           ; 10005A59 _ 8D. 48, 04
        push    ecx                                     ; 10005A5C _ 51
        push    esi                                     ; 10005A5D _ 56
        push    edx                                     ; 10005A5E _ 52
        call    ?_0336                                  ; 10005A5F _ E8, FFFFE2BC
        mov     eax, dword [esi+1CH]                    ; 10005A64 _ 8B. 46, 1C
        add     esp, 12                                 ; 10005A67 _ 83. C4, 0C
        mov     ecx, dword [eax+0CH]                    ; 10005A6A _ 8B. 48, 0C
        test    ecx, ecx                                ; 10005A6D _ 85. C9
        jz      ?_0549                                  ; 10005A6F _ 74, 0B
        mov     dword [eax], 12                         ; 10005A71 _ C7. 00, 0000000C
        jmp     ?_0540                                  ; 10005A77 _ E9, FFFFFE96

?_0549: mov     dword [eax], 8                          ; 10005A7C _ C7. 00, 00000008
?_0550: mov     eax, dword [esi+4H]                     ; 10005A82 _ 8B. 46, 04
        test    eax, eax                                ; 10005A85 _ 85. C0
        je      ?_0556                                  ; 10005A87 _ 0F 84, 0000010A
        dec     eax                                     ; 10005A8D _ 48
        mov     edx, dword [esi+1CH]                    ; 10005A8E _ 8B. 56, 1C
        mov     dword [esi+4H], eax                     ; 10005A91 _ 89. 46, 04
        mov     eax, dword [esi+8H]                     ; 10005A94 _ 8B. 46, 08
        inc     eax                                     ; 10005A97 _ 40
        xor     ecx, ecx                                ; 10005A98 _ 33. C9
        mov     dword [esi+8H], eax                     ; 10005A9A _ 89. 46, 08
        mov     eax, dword [esi]                        ; 10005A9D _ 8B. 06
        mov     edi, ebx                                ; 10005A9F _ 8B. FB
        mov     cl, byte [eax]                          ; 10005AA1 _ 8A. 08
        shl     ecx, 24                                 ; 10005AA3 _ C1. E1, 18
        mov     dword [edx+8H], ecx                     ; 10005AA6 _ 89. 4A, 08
        mov     eax, dword [esi]                        ; 10005AA9 _ 8B. 06
        inc     eax                                     ; 10005AAB _ 40
        mov     dword [esi], eax                        ; 10005AAC _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005AAE _ 8B. 46, 1C
        mov     dword [eax], 9                          ; 10005AB1 _ C7. 00, 00000009
?_0551: mov     eax, dword [esi+4H]                     ; 10005AB7 _ 8B. 46, 04
        test    eax, eax                                ; 10005ABA _ 85. C0
        je      ?_0556                                  ; 10005ABC _ 0F 84, 000000D5
        mov     edx, dword [esi+8H]                     ; 10005AC2 _ 8B. 56, 08
        mov     ecx, dword [esi]                        ; 10005AC5 _ 8B. 0E
        dec     eax                                     ; 10005AC7 _ 48
        inc     edx                                     ; 10005AC8 _ 42
        mov     dword [esi+8H], edx                     ; 10005AC9 _ 89. 56, 08
        mov     dword [esi+4H], eax                     ; 10005ACC _ 89. 46, 04
        mov     eax, dword [esi+1CH]                    ; 10005ACF _ 8B. 46, 1C
        xor     edx, edx                                ; 10005AD2 _ 33. D2
        mov     dl, byte [ecx]                          ; 10005AD4 _ 8A. 11
        mov     edi, ebx                                ; 10005AD6 _ 8B. FB
        mov     ecx, dword [eax+8H]                     ; 10005AD8 _ 8B. 48, 08
        shl     edx, 16                                 ; 10005ADB _ C1. E2, 10
        add     ecx, edx                                ; 10005ADE _ 03. CA
        mov     dword [eax+8H], ecx                     ; 10005AE0 _ 89. 48, 08
        mov     eax, dword [esi]                        ; 10005AE3 _ 8B. 06
        inc     eax                                     ; 10005AE5 _ 40
        mov     dword [esi], eax                        ; 10005AE6 _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005AE8 _ 8B. 46, 1C
        mov     dword [eax], 10                         ; 10005AEB _ C7. 00, 0000000A
?_0552: mov     eax, dword [esi+4H]                     ; 10005AF1 _ 8B. 46, 04
        test    eax, eax                                ; 10005AF4 _ 85. C0
        je      ?_0556                                  ; 10005AF6 _ 0F 84, 0000009B
        mov     edx, dword [esi+8H]                     ; 10005AFC _ 8B. 56, 08
        mov     ecx, dword [esi]                        ; 10005AFF _ 8B. 0E
        dec     eax                                     ; 10005B01 _ 48
        inc     edx                                     ; 10005B02 _ 42
        mov     dword [esi+8H], edx                     ; 10005B03 _ 89. 56, 08
        mov     dword [esi+4H], eax                     ; 10005B06 _ 89. 46, 04
        mov     eax, dword [esi+1CH]                    ; 10005B09 _ 8B. 46, 1C
        xor     edx, edx                                ; 10005B0C _ 33. D2
        mov     dl, byte [ecx]                          ; 10005B0E _ 8A. 11
        mov     edi, ebx                                ; 10005B10 _ 8B. FB
        mov     ecx, dword [eax+8H]                     ; 10005B12 _ 8B. 48, 08
        shl     edx, 8                                  ; 10005B15 _ C1. E2, 08
        add     ecx, edx                                ; 10005B18 _ 03. CA
        mov     dword [eax+8H], ecx                     ; 10005B1A _ 89. 48, 08
        mov     eax, dword [esi]                        ; 10005B1D _ 8B. 06
        inc     eax                                     ; 10005B1F _ 40
        mov     dword [esi], eax                        ; 10005B20 _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005B22 _ 8B. 46, 1C
        mov     dword [eax], 11                         ; 10005B25 _ C7. 00, 0000000B
?_0553: mov     eax, dword [esi+4H]                     ; 10005B2B _ 8B. 46, 04
        test    eax, eax                                ; 10005B2E _ 85. C0
        jz      ?_0556                                  ; 10005B30 _ 74, 65
        mov     edx, dword [esi+8H]                     ; 10005B32 _ 8B. 56, 08
        mov     ecx, dword [esi]                        ; 10005B35 _ 8B. 0E
        dec     eax                                     ; 10005B37 _ 48
        inc     edx                                     ; 10005B38 _ 42
        mov     dword [esi+4H], eax                     ; 10005B39 _ 89. 46, 04
        mov     eax, dword [esi+1CH]                    ; 10005B3C _ 8B. 46, 1C
        mov     dword [esi+8H], edx                     ; 10005B3F _ 89. 56, 08
        xor     edx, edx                                ; 10005B42 _ 33. D2
        mov     dl, byte [ecx]                          ; 10005B44 _ 8A. 11
        mov     ecx, dword [eax+8H]                     ; 10005B46 _ 8B. 48, 08
        add     ecx, edx                                ; 10005B49 _ 03. CA
        mov     edi, ebx                                ; 10005B4B _ 8B. FB
        mov     dword [eax+8H], ecx                     ; 10005B4D _ 89. 48, 08
        mov     eax, dword [esi]                        ; 10005B50 _ 8B. 06
        inc     eax                                     ; 10005B52 _ 40
        mov     dword [esi], eax                        ; 10005B53 _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005B55 _ 8B. 46, 1C
        mov     ecx, dword [eax+4H]                     ; 10005B58 _ 8B. 48, 04
        mov     edx, dword [eax+8H]                     ; 10005B5B _ 8B. 50, 08
        cmp     ecx, edx                                ; 10005B5E _ 3B. CA
        je      ?_0566                                  ; 10005B60 _ 0F 84, 00000144
        mov     dword [eax], 13                         ; 10005B66 _ C7. 00, 0000000D
        mov     edx, dword [esi+1CH]                    ; 10005B6C _ 8B. 56, 1C
        mov     dword [esi+18H], ?_5122                 ; 10005B6F _ C7. 46, 18, 10027548(d)
        mov     dword [edx+4H], ebp                     ; 10005B76 _ 89. 6A, 04
        jmp     ?_0540                                  ; 10005B79 _ E9, FFFFFD94

?_0554: mov     eax, dword [esi+1CH]                    ; 10005B7E _ 8B. 46, 1C
        mov     ebx, dword [esp+18H]                    ; 10005B81 _ 8B. 5C 24, 18
        mov     ebp, 5                                  ; 10005B85 _ BD, 00000005
        mov     dword [eax], 2                          ; 10005B8A _ C7. 00, 00000002
?_0555: mov     eax, dword [esi+4H]                     ; 10005B90 _ 8B. 46, 04
        test    eax, eax                                ; 10005B93 _ 85. C0
        jnz     ?_0557                                  ; 10005B95 _ 75, 07
?_0556: mov     eax, edi                                ; 10005B97 _ 8B. C7
        pop     edi                                     ; 10005B99 _ 5F
        pop     esi                                     ; 10005B9A _ 5E
        pop     ebp                                     ; 10005B9B _ 5D
        pop     ebx                                     ; 10005B9C _ 5B
        ret                                             ; 10005B9D _ C3

?_0557: mov     edx, dword [esi+8H]                     ; 10005B9E _ 8B. 56, 08
        mov     ecx, dword [esi]                        ; 10005BA1 _ 8B. 0E
        dec     eax                                     ; 10005BA3 _ 48
        inc     edx                                     ; 10005BA4 _ 42
        mov     dword [esi+8H], edx                     ; 10005BA5 _ 89. 56, 08
        xor     edx, edx                                ; 10005BA8 _ 33. D2
        mov     dword [esi+4H], eax                     ; 10005BAA _ 89. 46, 04
        mov     dl, byte [ecx]                          ; 10005BAD _ 8A. 11
        mov     eax, dword [esi+1CH]                    ; 10005BAF _ 8B. 46, 1C
        mov     edi, ebx                                ; 10005BB2 _ 8B. FB
        shl     edx, 24                                 ; 10005BB4 _ C1. E2, 18
        mov     dword [eax+8H], edx                     ; 10005BB7 _ 89. 50, 08
        mov     eax, dword [esi]                        ; 10005BBA _ 8B. 06
        mov     ecx, dword [esi+1CH]                    ; 10005BBC _ 8B. 4E, 1C
        inc     eax                                     ; 10005BBF _ 40
        mov     dword [esi], eax                        ; 10005BC0 _ 89. 06
        mov     dword [ecx], 3                          ; 10005BC2 _ C7. 01, 00000003
?_0558: mov     eax, dword [esi+4H]                     ; 10005BC8 _ 8B. 46, 04
        test    eax, eax                                ; 10005BCB _ 85. C0
        jnz     ?_0559                                  ; 10005BCD _ 75, 07
        mov     eax, edi                                ; 10005BCF _ 8B. C7
        pop     edi                                     ; 10005BD1 _ 5F
        pop     esi                                     ; 10005BD2 _ 5E
        pop     ebp                                     ; 10005BD3 _ 5D
        pop     ebx                                     ; 10005BD4 _ 5B
        ret                                             ; 10005BD5 _ C3

?_0559: mov     edx, dword [esi]                        ; 10005BD6 _ 8B. 16
        dec     eax                                     ; 10005BD8 _ 48
        mov     dword [esi+4H], eax                     ; 10005BD9 _ 89. 46, 04
        mov     eax, dword [esi+8H]                     ; 10005BDC _ 8B. 46, 08
        inc     eax                                     ; 10005BDF _ 40
        xor     ecx, ecx                                ; 10005BE0 _ 33. C9
        mov     dword [esi+8H], eax                     ; 10005BE2 _ 89. 46, 08
        mov     eax, dword [esi+1CH]                    ; 10005BE5 _ 8B. 46, 1C
        mov     cl, byte [edx]                          ; 10005BE8 _ 8A. 0A
        mov     edi, ebx                                ; 10005BEA _ 8B. FB
        mov     edx, dword [eax+8H]                     ; 10005BEC _ 8B. 50, 08
        shl     ecx, 16                                 ; 10005BEF _ C1. E1, 10
        add     edx, ecx                                ; 10005BF2 _ 03. D1
        mov     dword [eax+8H], edx                     ; 10005BF4 _ 89. 50, 08
        mov     eax, dword [esi]                        ; 10005BF7 _ 8B. 06
        mov     edx, dword [esi+1CH]                    ; 10005BF9 _ 8B. 56, 1C
        inc     eax                                     ; 10005BFC _ 40
        mov     dword [esi], eax                        ; 10005BFD _ 89. 06
        mov     dword [edx], 4                          ; 10005BFF _ C7. 02, 00000004
?_0560: mov     eax, dword [esi+4H]                     ; 10005C05 _ 8B. 46, 04
        test    eax, eax                                ; 10005C08 _ 85. C0
        jnz     ?_0561                                  ; 10005C0A _ 75, 07
        mov     eax, edi                                ; 10005C0C _ 8B. C7
        pop     edi                                     ; 10005C0E _ 5F
        pop     esi                                     ; 10005C0F _ 5E
        pop     ebp                                     ; 10005C10 _ 5D
        pop     ebx                                     ; 10005C11 _ 5B
        ret                                             ; 10005C12 _ C3

?_0561: mov     ecx, dword [esi]                        ; 10005C13 _ 8B. 0E
        dec     eax                                     ; 10005C15 _ 48
        mov     dword [esi+4H], eax                     ; 10005C16 _ 89. 46, 04
        mov     eax, dword [esi+8H]                     ; 10005C19 _ 8B. 46, 08
        inc     eax                                     ; 10005C1C _ 40
        xor     edx, edx                                ; 10005C1D _ 33. D2
        mov     dword [esi+8H], eax                     ; 10005C1F _ 89. 46, 08
        mov     eax, dword [esi+1CH]                    ; 10005C22 _ 8B. 46, 1C
        mov     dl, byte [ecx]                          ; 10005C25 _ 8A. 11
        mov     edi, ebx                                ; 10005C27 _ 8B. FB
        mov     ecx, dword [eax+8H]                     ; 10005C29 _ 8B. 48, 08
        shl     edx, 8                                  ; 10005C2C _ C1. E2, 08
        add     ecx, edx                                ; 10005C2F _ 03. CA
        mov     dword [eax+8H], ecx                     ; 10005C31 _ 89. 48, 08
        mov     eax, dword [esi]                        ; 10005C34 _ 8B. 06
        inc     eax                                     ; 10005C36 _ 40
        mov     dword [esi], eax                        ; 10005C37 _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005C39 _ 8B. 46, 1C
        mov     dword [eax], ebp                        ; 10005C3C _ 89. 28
?_0562: mov     eax, dword [esi+4H]                     ; 10005C3E _ 8B. 46, 04
        test    eax, eax                                ; 10005C41 _ 85. C0
        jnz     ?_0563                                  ; 10005C43 _ 75, 07
        mov     eax, edi                                ; 10005C45 _ 8B. C7
        pop     edi                                     ; 10005C47 _ 5F
        pop     esi                                     ; 10005C48 _ 5E
        pop     ebp                                     ; 10005C49 _ 5D
        pop     ebx                                     ; 10005C4A _ 5B
        ret                                             ; 10005C4B _ C3

?_0563: mov     edx, dword [esi+8H]                     ; 10005C4C _ 8B. 56, 08
        mov     ecx, dword [esi]                        ; 10005C4F _ 8B. 0E
        dec     eax                                     ; 10005C51 _ 48
        inc     edx                                     ; 10005C52 _ 42
        mov     dword [esi+4H], eax                     ; 10005C53 _ 89. 46, 04
        mov     eax, dword [esi+1CH]                    ; 10005C56 _ 8B. 46, 1C
        mov     dword [esi+8H], edx                     ; 10005C59 _ 89. 56, 08
        xor     edx, edx                                ; 10005C5C _ 33. D2
        mov     dl, byte [ecx]                          ; 10005C5E _ 8A. 11
        mov     ecx, dword [eax+8H]                     ; 10005C60 _ 8B. 48, 08
        add     ecx, edx                                ; 10005C63 _ 03. CA
        pop     edi                                     ; 10005C65 _ 5F
        mov     dword [eax+8H], ecx                     ; 10005C66 _ 89. 48, 08
        mov     eax, dword [esi]                        ; 10005C69 _ 8B. 06
        inc     eax                                     ; 10005C6B _ 40
        mov     dword [esi], eax                        ; 10005C6C _ 89. 06
        mov     eax, dword [esi+1CH]                    ; 10005C6E _ 8B. 46, 1C
        mov     ecx, dword [eax+8H]                     ; 10005C71 _ 8B. 48, 08
        mov     dword [esi+30H], ecx                    ; 10005C74 _ 89. 4E, 30
        pop     esi                                     ; 10005C77 _ 5E
        mov     dword [eax], 6                          ; 10005C78 _ C7. 00, 00000006
        pop     ebp                                     ; 10005C7E _ 5D
        mov     eax, 2                                  ; 10005C7F _ B8, 00000002
        pop     ebx                                     ; 10005C84 _ 5B
        ret                                             ; 10005C85 _ C3

?_0564: mov     edx, dword [esi+1CH]                    ; 10005C86 _ 8B. 56, 1C
        mov     dword [edx], 13                         ; 10005C89 _ C7. 02, 0000000D
        mov     eax, dword [esi+1CH]                    ; 10005C8F _ 8B. 46, 1C
        mov     dword [esi+18H], ?_5121                 ; 10005C92 _ C7. 46, 18, 10027538(d)
        mov     dword [eax+4H], 0                       ; 10005C99 _ C7. 40, 04, 00000000
?_0565: pop     edi                                     ; 10005CA0 _ 5F
        pop     esi                                     ; 10005CA1 _ 5E
        pop     ebp                                     ; 10005CA2 _ 5D
        mov     eax, 4294967294                         ; 10005CA3 _ B8, FFFFFFFE
        pop     ebx                                     ; 10005CA8 _ 5B
        ret                                             ; 10005CA9 _ C3

?_0566: mov     ecx, dword [esi+1CH]                    ; 10005CAA _ 8B. 4E, 1C
        mov     dword [ecx], 12                         ; 10005CAD _ C7. 01, 0000000C
?_0567: pop     edi                                     ; 10005CB3 _ 5F
        pop     esi                                     ; 10005CB4 _ 5E
        pop     ebp                                     ; 10005CB5 _ 5D
        mov     eax, 1                                  ; 10005CB6 _ B8, 00000001
        pop     ebx                                     ; 10005CBB _ 5B
        ret                                             ; 10005CBC _ C3
