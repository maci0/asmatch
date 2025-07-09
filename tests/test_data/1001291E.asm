; ---- 1001291E ----
?_2123: ; Local function
        mov     ecx, dword [esp+14H]                    ; 1001291E _ 8B. 4C 24, 14
        xor     eax, eax                                ; 10012922 _ 33. C0
        cmp     ecx, eax                                ; 10012924 _ 3B. C8
        mov     dword [esp+10H], eax                    ; 10012926 _ 89. 44 24, 10
        jle     ?_2138                                  ; 1001292A _ 0F 8E, 000004BA
        mov     dword [esp+20H], eax                    ; 10012930 _ 89. 44 24, 20
        or      ebp, 0FFFFFFFFH                         ; 10012934 _ 83. CD, FF
?_2124: mov     ecx, dword [?_5690]                     ; 10012937 _ 8B. 0D, 1014D8C0(d)
        mov     edx, dword [esp+20H]                    ; 1001293D _ 8B. 54 24, 20
        push    edi                                     ; 10012941 _ 57
        push    1                                       ; 10012942 _ 6A, 01
        lea     esi, [edx+ecx]                          ; 10012944 _ 8D. 34 0A
        push    1                                       ; 10012947 _ 6A, 01
        push    esi                                     ; 10012949 _ 56
        call    ?_2085                                  ; 1001294A _ E8, FFFFFAF1
        add     esp, 16                                 ; 1001294F _ 83. C4, 10
        test    eax, eax                                ; 10012952 _ 85. C0
        je      ?_2139                                  ; 10012954 _ 0F 84, 000004A6
        push    edi                                     ; 1001295A _ 57
        push    1                                       ; 1001295B _ 6A, 01
        lea     eax, [esi+1H]                           ; 1001295D _ 8D. 46, 01
        push    4                                       ; 10012960 _ 6A, 04
        push    eax                                     ; 10012962 _ 50
        call    ?_2085                                  ; 10012963 _ E8, FFFFFAD8
        add     esp, 16                                 ; 10012968 _ 83. C4, 10
        test    eax, eax                                ; 1001296B _ 85. C0
        je      ?_2139                                  ; 1001296D _ 0F 84, 0000048D
        push    edi                                     ; 10012973 _ 57
        push    1                                       ; 10012974 _ 6A, 01
        lea     ecx, [esi+5H]                           ; 10012976 _ 8D. 4E, 05
        push    32                                      ; 10012979 _ 6A, 20
        push    ecx                                     ; 1001297B _ 51
        call    ?_2085                                  ; 1001297C _ E8, FFFFFABF
        add     esp, 16                                 ; 10012981 _ 83. C4, 10
        test    eax, eax                                ; 10012984 _ 85. C0
        je      ?_2139                                  ; 10012986 _ 0F 84, 00000474
        push    edi                                     ; 1001298C _ 57
        push    1                                       ; 1001298D _ 6A, 01
        lea     edx, [esi+25H]                          ; 1001298F _ 8D. 56, 25
        push    2                                       ; 10012992 _ 6A, 02
        push    edx                                     ; 10012994 _ 52
        call    ?_2085                                  ; 10012995 _ E8, FFFFFAA6
        add     esp, 16                                 ; 1001299A _ 83. C4, 10
        test    eax, eax                                ; 1001299D _ 85. C0
        je      ?_2139                                  ; 1001299F _ 0F 84, 0000045B
        push    edi                                     ; 100129A5 _ 57
        push    1                                       ; 100129A6 _ 6A, 01
        lea     eax, [esi+27H]                          ; 100129A8 _ 8D. 46, 27
        push    2                                       ; 100129AB _ 6A, 02
        push    eax                                     ; 100129AD _ 50
        call    ?_2085                                  ; 100129AE _ E8, FFFFFA8D
        add     esp, 16                                 ; 100129B3 _ 83. C4, 10
        test    eax, eax                                ; 100129B6 _ 85. C0
        je      ?_2139                                  ; 100129B8 _ 0F 84, 00000442
        push    edi                                     ; 100129BE _ 57
        push    1                                       ; 100129BF _ 6A, 01
        lea     ecx, [esi+29H]                          ; 100129C1 _ 8D. 4E, 29
        push    2                                       ; 100129C4 _ 6A, 02
        push    ecx                                     ; 100129C6 _ 51
        call    ?_2085                                  ; 100129C7 _ E8, FFFFFA74
        add     esp, 16                                 ; 100129CC _ 83. C4, 10
        test    eax, eax                                ; 100129CF _ 85. C0
        je      ?_2139                                  ; 100129D1 _ 0F 84, 00000429
        push    edi                                     ; 100129D7 _ 57
        push    1                                       ; 100129D8 _ 6A, 01
        lea     edx, [esi+2BH]                          ; 100129DA _ 8D. 56, 2B
        push    4                                       ; 100129DD _ 6A, 04
        push    edx                                     ; 100129DF _ 52
        call    ?_2085                                  ; 100129E0 _ E8, FFFFFA5B
        add     esp, 16                                 ; 100129E5 _ 83. C4, 10
        test    eax, eax                                ; 100129E8 _ 85. C0
        je      ?_2139                                  ; 100129EA _ 0F 84, 00000410
        push    edi                                     ; 100129F0 _ 57
        push    1                                       ; 100129F1 _ 6A, 01
        lea     eax, [esi+2FH]                          ; 100129F3 _ 8D. 46, 2F
        push    1                                       ; 100129F6 _ 6A, 01
        push    eax                                     ; 100129F8 _ 50
        call    ?_2085                                  ; 100129F9 _ E8, FFFFFA42
        add     esp, 16                                 ; 100129FE _ 83. C4, 10
        test    eax, eax                                ; 10012A01 _ 85. C0
        je      ?_2139                                  ; 10012A03 _ 0F 84, 000003F7
        push    edi                                     ; 10012A09 _ 57
        push    1                                       ; 10012A0A _ 6A, 01
        lea     ecx, [esi+34H]                          ; 10012A0C _ 8D. 4E, 34
        push    1                                       ; 10012A0F _ 6A, 01
        push    ecx                                     ; 10012A11 _ 51
        call    ?_2085                                  ; 10012A12 _ E8, FFFFFA29
        add     esp, 16                                 ; 10012A17 _ 83. C4, 10
        test    eax, eax                                ; 10012A1A _ 85. C0
        je      ?_2139                                  ; 10012A1C _ 0F 84, 000003DE
        push    edi                                     ; 10012A22 _ 57
        push    1                                       ; 10012A23 _ 6A, 01
        lea     edx, [esi+35H]                          ; 10012A25 _ 8D. 56, 35
        push    4                                       ; 10012A28 _ 6A, 04
        push    edx                                     ; 10012A2A _ 52
        call    ?_2085                                  ; 10012A2B _ E8, FFFFFA10
        add     esp, 16                                 ; 10012A30 _ 83. C4, 10
        test    eax, eax                                ; 10012A33 _ 85. C0
        je      ?_2139                                  ; 10012A35 _ 0F 84, 000003C5
        push    edi                                     ; 10012A3B _ 57
        push    1                                       ; 10012A3C _ 6A, 01
        lea     eax, [esi+39H]                          ; 10012A3E _ 8D. 46, 39
        push    4                                       ; 10012A41 _ 6A, 04
        push    eax                                     ; 10012A43 _ 50
        call    ?_2085                                  ; 10012A44 _ E8, FFFFF9F7
        add     esp, 16                                 ; 10012A49 _ 83. C4, 10
        test    eax, eax                                ; 10012A4C _ 85. C0
        je      ?_2139                                  ; 10012A4E _ 0F 84, 000003AC
        push    edi                                     ; 10012A54 _ 57
        push    1                                       ; 10012A55 _ 6A, 01
        lea     ecx, [esi+3DH]                          ; 10012A57 _ 8D. 4E, 3D
        push    4                                       ; 10012A5A _ 6A, 04
        push    ecx                                     ; 10012A5C _ 51
        call    ?_2085                                  ; 10012A5D _ E8, FFFFF9DE
        add     esp, 16                                 ; 10012A62 _ 83. C4, 10
        test    eax, eax                                ; 10012A65 _ 85. C0
        je      ?_2139                                  ; 10012A67 _ 0F 84, 00000393
        push    edi                                     ; 10012A6D _ 57
        lea     ebx, [esi+41H]                          ; 10012A6E _ 8D. 5E, 41
        push    1                                       ; 10012A71 _ 6A, 01
        push    4                                       ; 10012A73 _ 6A, 04
        push    ebx                                     ; 10012A75 _ 53
        call    ?_2085                                  ; 10012A76 _ E8, FFFFF9C5
        add     esp, 16                                 ; 10012A7B _ 83. C4, 10
        test    eax, eax                                ; 10012A7E _ 85. C0
        je      ?_2139                                  ; 10012A80 _ 0F 84, 0000037A
        cmp     dword [ebx], 4                          ; 10012A86 _ 83. 3B, 04
        jle     ?_2125                                  ; 10012A89 _ 7E, 06
        mov     dword [ebx], 2                          ; 10012A8B _ C7. 03, 00000002
?_2125: push    edi                                     ; 10012A91 _ 57
        push    1                                       ; 10012A92 _ 6A, 01
        lea     edx, [esi+45H]                          ; 10012A94 _ 8D. 56, 45
        push    4                                       ; 10012A97 _ 6A, 04
        push    edx                                     ; 10012A99 _ 52
        call    ?_2085                                  ; 10012A9A _ E8, FFFFF9A1
        add     esp, 16                                 ; 10012A9F _ 83. C4, 10
        test    eax, eax                                ; 10012AA2 _ 85. C0
        je      ?_2139                                  ; 10012AA4 _ 0F 84, 00000356
        cmp     dword [?_5338], 65576                   ; 10012AAA _ 81. 3D, 1002D4EC(d), 00010028
        jl      ?_2126                                  ; 10012AB4 _ 7C, 19
        push    edi                                     ; 10012AB6 _ 57
        push    1                                       ; 10012AB7 _ 6A, 01
        lea     eax, [esi+49H]                          ; 10012AB9 _ 8D. 46, 49
        push    4                                       ; 10012ABC _ 6A, 04
        push    eax                                     ; 10012ABE _ 50
        call    ?_2085                                  ; 10012ABF _ E8, FFFFF97C
        add     esp, 16                                 ; 10012AC4 _ 83. C4, 10
        test    eax, eax                                ; 10012AC7 _ 85. C0
        je      ?_2139                                  ; 10012AC9 _ 0F 84, 00000331
?_2126: cmp     dword [?_5338], 65586                   ; 10012ACF _ 81. 3D, 1002D4EC(d), 00010032
        jge     ?_2127                                  ; 10012AD9 _ 7D, 1A
        push    edi                                     ; 10012ADB _ 57
        push    1                                       ; 10012ADC _ 6A, 01
        lea     ecx, [esp+20H]                          ; 10012ADE _ 8D. 4C 24, 20
        push    4                                       ; 10012AE2 _ 6A, 04
        push    ecx                                     ; 10012AE4 _ 51
        call    ?_2085                                  ; 10012AE5 _ E8, FFFFF956
        add     esp, 16                                 ; 10012AEA _ 83. C4, 10
        test    eax, eax                                ; 10012AED _ 85. C0
        je      ?_2139                                  ; 10012AEF _ 0F 84, 0000030B
?_2127: cmp     dword [?_5338], 65623                   ; 10012AF5 _ 81. 3D, 1002D4EC(d), 00010057
        jl      ?_2128                                  ; 10012AFF _ 7C, 4B
        push    edi                                     ; 10012B01 _ 57
        push    1                                       ; 10012B02 _ 6A, 01
        lea     edx, [esi+4DH]                          ; 10012B04 _ 8D. 56, 4D
        push    4                                       ; 10012B07 _ 6A, 04
        push    edx                                     ; 10012B09 _ 52
        call    ?_2085                                  ; 10012B0A _ E8, FFFFF931
        add     esp, 16                                 ; 10012B0F _ 83. C4, 10
        test    eax, eax                                ; 10012B12 _ 85. C0
        je      ?_2139                                  ; 10012B14 _ 0F 84, 000002E6
        push    edi                                     ; 10012B1A _ 57
        push    1                                       ; 10012B1B _ 6A, 01
        lea     eax, [esi+51H]                          ; 10012B1D _ 8D. 46, 51
        push    4                                       ; 10012B20 _ 6A, 04
        push    eax                                     ; 10012B22 _ 50
        call    ?_2085                                  ; 10012B23 _ E8, FFFFF918
        add     esp, 16                                 ; 10012B28 _ 83. C4, 10
        test    eax, eax                                ; 10012B2B _ 85. C0
        je      ?_2139                                  ; 10012B2D _ 0F 84, 000002CD
        push    edi                                     ; 10012B33 _ 57
        push    1                                       ; 10012B34 _ 6A, 01
        lea     ecx, [esi+55H]                          ; 10012B36 _ 8D. 4E, 55
        push    4                                       ; 10012B39 _ 6A, 04
        push    ecx                                     ; 10012B3B _ 51
        call    ?_2085                                  ; 10012B3C _ E8, FFFFF8FF
        add     esp, 16                                 ; 10012B41 _ 83. C4, 10
        test    eax, eax                                ; 10012B44 _ 85. C0
        je      ?_2139                                  ; 10012B46 _ 0F 84, 000002B4
?_2128: push    edi                                     ; 10012B4C _ 57
        push    1                                       ; 10012B4D _ 6A, 01
        lea     edx, [esi+5AH]                          ; 10012B4F _ 8D. 56, 5A
        push    2                                       ; 10012B52 _ 6A, 02
        push    edx                                     ; 10012B54 _ 52
        call    ?_2085                                  ; 10012B55 _ E8, FFFFF8E6
        add     esp, 16                                 ; 10012B5A _ 83. C4, 10
        test    eax, eax                                ; 10012B5D _ 85. C0
        je      ?_2139                                  ; 10012B5F _ 0F 84, 0000029B
        push    edi                                     ; 10012B65 _ 57
        push    1                                       ; 10012B66 _ 6A, 01
        lea     eax, [esi+5CH]                          ; 10012B68 _ 8D. 46, 5C
        push    1                                       ; 10012B6B _ 6A, 01
        push    eax                                     ; 10012B6D _ 50
        call    ?_2085                                  ; 10012B6E _ E8, FFFFF8CD
        add     esp, 16                                 ; 10012B73 _ 83. C4, 10
        test    eax, eax                                ; 10012B76 _ 85. C0
        je      ?_2139                                  ; 10012B78 _ 0F 84, 00000282
        mov     al, byte [esi]                          ; 10012B7E _ 8A. 06
        cmp     al, 30                                  ; 10012B80 _ 3C, 1E
        jne     ?_2130                                  ; 10012B82 _ 0F 85, 0000011E
        push    ?_5344                                  ; 10012B88 _ 68, 1002D510(d)
        push    1536                                    ; 10012B8D _ 68, 00000600
        call    ?_0640                                  ; 10012B92 _ E8, FFFF39E9
        add     esp, 8                                  ; 10012B97 _ 83. C4, 08
        mov     dword [esi+71H], eax                    ; 10012B9A _ 89. 46, 71
        xor     ebx, ebx                                ; 10012B9D _ 33. DB
?_2129: mov     edx, dword [esi+71H]                    ; 10012B9F _ 8B. 56, 71
        mov     ecx, ebx                                ; 10012BA2 _ 8B. CB
        push    edi                                     ; 10012BA4 _ 57
        push    1                                       ; 10012BA5 _ 6A, 01
        add     ecx, edx                                ; 10012BA7 _ 03. CA
        push    4                                       ; 10012BA9 _ 6A, 04
        push    ecx                                     ; 10012BAB _ 51
        call    ?_2085                                  ; 10012BAC _ E8, FFFFF88F
        add     esp, 16                                 ; 10012BB1 _ 83. C4, 10
        test    eax, eax                                ; 10012BB4 _ 85. C0
        je      ?_2139                                  ; 10012BB6 _ 0F 84, 00000244
        mov     edx, dword [esi+71H]                    ; 10012BBC _ 8B. 56, 71
        push    edi                                     ; 10012BBF _ 57
        push    1                                       ; 10012BC0 _ 6A, 01
        push    4                                       ; 10012BC2 _ 6A, 04
        lea     eax, [ebx+edx+4H]                       ; 10012BC4 _ 8D. 44 13, 04
        push    eax                                     ; 10012BC8 _ 50
        call    ?_2085                                  ; 10012BC9 _ E8, FFFFF872
        add     esp, 16                                 ; 10012BCE _ 83. C4, 10
        test    eax, eax                                ; 10012BD1 _ 85. C0
        je      ?_2139                                  ; 10012BD3 _ 0F 84, 00000227
        mov     ecx, dword [esi+71H]                    ; 10012BD9 _ 8B. 4E, 71
        push    edi                                     ; 10012BDC _ 57
        push    1                                       ; 10012BDD _ 6A, 01
        push    1                                       ; 10012BDF _ 6A, 01
        lea     edx, [ebx+ecx+8H]                       ; 10012BE1 _ 8D. 54 0B, 08
        push    edx                                     ; 10012BE5 _ 52
        call    ?_2085                                  ; 10012BE6 _ E8, FFFFF855
        add     esp, 16                                 ; 10012BEB _ 83. C4, 10
        test    eax, eax                                ; 10012BEE _ 85. C0
        je      ?_2139                                  ; 10012BF0 _ 0F 84, 0000020A
        mov     eax, dword [esi+71H]                    ; 10012BF6 _ 8B. 46, 71
        push    edi                                     ; 10012BF9 _ 57
        push    1                                       ; 10012BFA _ 6A, 01
        push    1                                       ; 10012BFC _ 6A, 01
        lea     ecx, [ebx+eax+9H]                       ; 10012BFE _ 8D. 4C 03, 09
        push    ecx                                     ; 10012C02 _ 51
        call    ?_2085                                  ; 10012C03 _ E8, FFFFF838
        add     esp, 16                                 ; 10012C08 _ 83. C4, 10
        test    eax, eax                                ; 10012C0B _ 85. C0
        je      ?_2139                                  ; 10012C0D _ 0F 84, 000001ED
        mov     edx, dword [esi+71H]                    ; 10012C13 _ 8B. 56, 71
        push    edi                                     ; 10012C16 _ 57
        push    1                                       ; 10012C17 _ 6A, 01
        push    2                                       ; 10012C19 _ 6A, 02
        lea     eax, [ebx+edx+0AH]                      ; 10012C1B _ 8D. 44 13, 0A
        push    eax                                     ; 10012C1F _ 50
        call    ?_2085                                  ; 10012C20 _ E8, FFFFF81B
        add     esp, 16                                 ; 10012C25 _ 83. C4, 10
        test    eax, eax                                ; 10012C28 _ 85. C0
        je      ?_2139                                  ; 10012C2A _ 0F 84, 000001D0
        mov     ecx, dword [esi+71H]                    ; 10012C30 _ 8B. 4E, 71
        push    edi                                     ; 10012C33 _ 57
        push    1                                       ; 10012C34 _ 6A, 01
        push    4                                       ; 10012C36 _ 6A, 04
        lea     edx, [ebx+ecx+10H]                      ; 10012C38 _ 8D. 54 0B, 10
        push    edx                                     ; 10012C3C _ 52
        call    ?_2085                                  ; 10012C3D _ E8, FFFFF7FE
        add     esp, 16                                 ; 10012C42 _ 83. C4, 10
        test    eax, eax                                ; 10012C45 _ 85. C0
        je      ?_2139                                  ; 10012C47 _ 0F 84, 000001B3
        mov     eax, dword [esi+71H]                    ; 10012C4D _ 8B. 46, 71
        push    edi                                     ; 10012C50 _ 57
        push    1                                       ; 10012C51 _ 6A, 01
        push    1                                       ; 10012C53 _ 6A, 01
        lea     ecx, [ebx+eax+0CH]                      ; 10012C55 _ 8D. 4C 03, 0C
        push    ecx                                     ; 10012C59 _ 51
        call    ?_2085                                  ; 10012C5A _ E8, FFFFF7E1
        add     esp, 16                                 ; 10012C5F _ 83. C4, 10
        test    eax, eax                                ; 10012C62 _ 85. C0
        je      ?_2139                                  ; 10012C64 _ 0F 84, 00000196
        mov     edx, dword [esi+71H]                    ; 10012C6A _ 8B. 56, 71
        push    edi                                     ; 10012C6D _ 57
        push    1                                       ; 10012C6E _ 6A, 01
        push    1                                       ; 10012C70 _ 6A, 01
        lea     eax, [ebx+edx+0DH]                      ; 10012C72 _ 8D. 44 13, 0D
        push    eax                                     ; 10012C76 _ 50
        call    ?_2085                                  ; 10012C77 _ E8, FFFFF7C4
        add     esp, 16                                 ; 10012C7C _ 83. C4, 10
        test    eax, eax                                ; 10012C7F _ 85. C0
        je      ?_2139                                  ; 10012C81 _ 0F 84, 00000179
        mov     ecx, dword [esi+71H]                    ; 10012C87 _ 8B. 4E, 71
        add     ebx, 24                                 ; 10012C8A _ 83. C3, 18
        cmp     ebx, 1536                               ; 10012C8D _ 81. FB, 00000600
        mov     dword [ebx+ecx-4H], 0                   ; 10012C93 _ C7. 44 0B, FC, 00000000
        jl      ?_2129                                  ; 10012C9B _ 0F 8C, FFFFFEFE
        jmp     ?_2135                                  ; 10012CA1 _ E9, 000000CC

?_2130: cmp     al, 72                                  ; 10012CA6 _ 3C, 48
        je      ?_2133                                  ; 10012CA8 _ 0F 84, 00000080
        cmp     al, 73                                  ; 10012CAE _ 3C, 49
        jz      ?_2133                                  ; 10012CB0 _ 74, 7C
        cmp     al, 74                                  ; 10012CB2 _ 3C, 4A
        jz      ?_2133                                  ; 10012CB4 _ 74, 78
        cmp     al, 75                                  ; 10012CB6 _ 3C, 4B
        jz      ?_2131                                  ; 10012CB8 _ 74, 26
        cmp     al, 76                                  ; 10012CBA _ 3C, 4C
        jz      ?_2131                                  ; 10012CBC _ 74, 22
        cmp     al, 77                                  ; 10012CBE _ 3C, 4D
        jz      ?_2131                                  ; 10012CC0 _ 74, 1E
        push    edi                                     ; 10012CC2 _ 57
        push    1                                       ; 10012CC3 _ 6A, 01
        lea     edx, [esi+65H]                          ; 10012CC5 _ 8D. 56, 65
        push    48                                      ; 10012CC8 _ 6A, 30
        push    edx                                     ; 10012CCA _ 52
        call    ?_2085                                  ; 10012CCB _ E8, FFFFF770
        add     esp, 16                                 ; 10012CD0 _ 83. C4, 10
        test    eax, eax                                ; 10012CD3 _ 85. C0
        je      ?_2139                                  ; 10012CD5 _ 0F 84, 00000125
        jmp     ?_2135                                  ; 10012CDB _ E9, 00000092

?_2131: cmp     dword [?_5338], 65609                   ; 10012CE0 _ 81. 3D, 1002D4EC(d), 00010049
        jl      ?_2132                                  ; 10012CEA _ 7C, 14
        push    esi                                     ; 10012CEC _ 56
        push    edi                                     ; 10012CED _ 57
        call    ?_1312                                  ; 10012CEE _ E8, FFFF97DD
        add     esp, 8                                  ; 10012CF3 _ 83. C4, 08
        test    eax, eax                                ; 10012CF6 _ 85. C0
        je      ?_2139                                  ; 10012CF8 _ 0F 84, 00000102
        jmp     ?_2135                                  ; 10012CFE _ EB, 72

?_2132: push    edi                                     ; 10012D00 _ 57
        lea     ebx, [esi+65H]                          ; 10012D01 _ 8D. 5E, 65
        push    1                                       ; 10012D04 _ 6A, 01
        push    48                                      ; 10012D06 _ 6A, 30
        push    ebx                                     ; 10012D08 _ 53
        call    ?_2085                                  ; 10012D09 _ E8, FFFFF732
        add     esp, 16                                 ; 10012D0E _ 83. C4, 10
        test    eax, eax                                ; 10012D11 _ 85. C0
        je      ?_2139                                  ; 10012D13 _ 0F 84, 000000E7
        push    ?_5343                                  ; 10012D19 _ 68, 1002D504(d)
        push    60                                      ; 10012D1E _ 6A, 3C
        call    ?_0640                                  ; 10012D20 _ E8, FFFF385B
        mov     dword [ebx], eax                        ; 10012D25 _ 89. 03
        add     esp, 8                                  ; 10012D27 _ 83. C4, 08
        mov     dword [eax], ebp                        ; 10012D2A _ 89. 28
        jmp     ?_2135                                  ; 10012D2C _ EB, 44

?_2133: cmp     dword [?_5338], 65607                   ; 10012D2E _ 81. 3D, 1002D4EC(d), 00010047
        jl      ?_2134                                  ; 10012D38 _ 7C, 14
        push    esi                                     ; 10012D3A _ 56
        push    edi                                     ; 10012D3B _ 57
        call    ?_2066                                  ; 10012D3C _ E8, FFFFF2BF
        add     esp, 8                                  ; 10012D41 _ 83. C4, 08
        test    eax, eax                                ; 10012D44 _ 85. C0
        je      ?_2139                                  ; 10012D46 _ 0F 84, 000000B4
        jmp     ?_2135                                  ; 10012D4C _ EB, 24

?_2134: push    edi                                     ; 10012D4E _ 57
        lea     ebx, [esi+65H]                          ; 10012D4F _ 8D. 5E, 65
        push    1                                       ; 10012D52 _ 6A, 01
        push    48                                      ; 10012D54 _ 6A, 30
        push    ebx                                     ; 10012D56 _ 53
        call    ?_2085                                  ; 10012D57 _ E8, FFFFF6E4
        add     esp, 16                                 ; 10012D5C _ 83. C4, 10
        test    eax, eax                                ; 10012D5F _ 85. C0
        je      ?_2139                                  ; 10012D61 _ 0F 84, 00000099
        push    esi                                     ; 10012D67 _ 56
        call    ?_1936                                  ; 10012D68 _ E8, FFFFDC63
        add     esp, 4                                  ; 10012D6D _ 83. C4, 04
        mov     dword [ebx], eax                        ; 10012D70 _ 89. 03
?_2135: cmp     dword [?_5338], 65603                   ; 10012D72 _ 81. 3D, 1002D4EC(d), 00010043
        jl      ?_2136                                  ; 10012D7C _ 7C, 1A
        push    edi                                     ; 10012D7E _ 57
        push    1                                       ; 10012D7F _ 6A, 01
        lea     eax, [esi+99H]                          ; 10012D81 _ 8D. 86, 00000099
        push    16                                      ; 10012D87 _ 6A, 10
        push    eax                                     ; 10012D89 _ 50
        call    ?_2085                                  ; 10012D8A _ E8, FFFFF6B1
        add     esp, 16                                 ; 10012D8F _ 83. C4, 10
        test    eax, eax                                ; 10012D92 _ 85. C0
        jz      ?_2139                                  ; 10012D94 _ 74, 6A
        jmp     ?_2137                                  ; 10012D96 _ EB, 22

?_2136: lea     eax, [esi+99H]                          ; 10012D98 _ 8D. 86, 00000099
        xor     ecx, ecx                                ; 10012D9E _ 33. C9
        mov     edx, eax                                ; 10012DA0 _ 8B. D0
        mov     dword [edx], ecx                        ; 10012DA2 _ 89. 0A
        mov     dword [edx+4H], ecx                     ; 10012DA4 _ 89. 4A, 04
        mov     dword [edx+8H], ecx                     ; 10012DA7 _ 89. 4A, 08
        mov     dword [edx+0CH], ecx                    ; 10012DAA _ 89. 4A, 0C
        mov     ecx, dword [eax]                        ; 10012DAD _ 8B. 08
        or      ecx, 01H                                ; 10012DAF _ 83. C9, 01
        mov     dword [esi+0A5H], ebp                   ; 10012DB2 _ 89. AE, 000000A5
        mov     dword [eax], ecx                        ; 10012DB8 _ 89. 08
?_2137: mov     eax, dword [esp+10H]                    ; 10012DBA _ 8B. 44 24, 10
        mov     edx, dword [esp+20H]                    ; 10012DBE _ 8B. 54 24, 20
        mov     dword [esi+30H], 5000                   ; 10012DC2 _ C7. 46, 30, 00001388
        mov     dword [esi+95H], ebp                    ; 10012DC9 _ 89. AE, 00000095
        mov     ecx, dword [esp+14H]                    ; 10012DCF _ 8B. 4C 24, 14
        inc     eax                                     ; 10012DD3 _ 40
        add     edx, 169                                ; 10012DD4 _ 81. C2, 000000A9
        cmp     eax, ecx                                ; 10012DDA _ 3B. C1
        mov     dword [esp+10H], eax                    ; 10012DDC _ 89. 44 24, 10
        mov     dword [esp+20H], edx                    ; 10012DE0 _ 89. 54 24, 20
        jl      ?_2124                                  ; 10012DE4 _ 0F 8C, FFFFFB4D
?_2138: push    edi                                     ; 10012DEA _ 57
        push    1                                       ; 10012DEB _ 6A, 01
        push    4                                       ; 10012DED _ 6A, 04
        push    ?_5694                                  ; 10012DEF _ 68, 101DE454(d)
        call    ?_2085                                  ; 10012DF4 _ E8, FFFFF647
        add     esp, 16                                 ; 10012DF9 _ 83. C4, 10
        test    eax, eax                                ; 10012DFC _ 85. C0
        jnz     ?_2140                                  ; 10012DFE _ 75, 0A
?_2139: pop     edi                                     ; 10012E00 _ 5F
        pop     esi                                     ; 10012E01 _ 5E
        pop     ebp                                     ; 10012E02 _ 5D
        xor     eax, eax                                ; 10012E03 _ 33. C0
        pop     ebx                                     ; 10012E05 _ 5B
        add     esp, 12                                 ; 10012E06 _ 83. C4, 0C
        ret                                             ; 10012E09 _ C3
