; ---- 10012E0A ----
?_2140: ; Local function
        mov     eax, dword [?_5694]                     ; 10012E0A _ A1, 101DE454(d)
        mov     ecx, dword [?_5697]                     ; 10012E0F _ 8B. 0D, 101DE55C(d)
        lea     eax, [eax+eax*2]                        ; 10012E15 _ 8D. 04 40
        shl     eax, 5                                  ; 10012E18 _ C1. E0, 05
        push    eax                                     ; 10012E1B _ 50
        push    ecx                                     ; 10012E1C _ 51
        call    ?_3300                                  ; 10012E1D _ E8, 000087AA
        mov     dword [?_5697], eax                     ; 10012E22 _ A3, 101DE55C(d)
        mov     eax, dword [?_5694]                     ; 10012E27 _ A1, 101DE454(d)
        add     esp, 8                                  ; 10012E2C _ 83. C4, 08
        xor     ebx, ebx                                ; 10012E2F _ 33. DB
        test    eax, eax                                ; 10012E31 _ 85. C0
        jle     ?_2142                                  ; 10012E33 _ 7E, 65
        xor     esi, esi                                ; 10012E35 _ 33. F6
?_2141: mov     edx, dword [?_5697]                     ; 10012E37 _ 8B. 15, 101DE55C(d)
        push    edi                                     ; 10012E3D _ 57
        push    1                                       ; 10012E3E _ 6A, 01
        push    64                                      ; 10012E40 _ 6A, 40
        lea     eax, [esi+edx]                          ; 10012E42 _ 8D. 04 16
        push    eax                                     ; 10012E45 _ 50
        call    ?_2085                                  ; 10012E46 _ E8, FFFFF5F5
        add     esp, 16                                 ; 10012E4B _ 83. C4, 10
        test    eax, eax                                ; 10012E4E _ 85. C0
        jz      ?_2139                                  ; 10012E50 _ 74, AE
        mov     ecx, dword [?_5697]                     ; 10012E52 _ 8B. 0D, 101DE55C(d)
        push    edi                                     ; 10012E58 _ 57
        push    1                                       ; 10012E59 _ 6A, 01
        push    16                                      ; 10012E5B _ 6A, 10
        lea     edx, [esi+ecx+40H]                      ; 10012E5D _ 8D. 54 0E, 40
        push    edx                                     ; 10012E61 _ 52
        call    ?_2085                                  ; 10012E62 _ E8, FFFFF5D9
        add     esp, 16                                 ; 10012E67 _ 83. C4, 10
        test    eax, eax                                ; 10012E6A _ 85. C0
        jz      ?_2139                                  ; 10012E6C _ 74, 92
        mov     eax, dword [?_5697]                     ; 10012E6E _ A1, 101DE55C(d)
        push    edi                                     ; 10012E73 _ 57
        push    1                                       ; 10012E74 _ 6A, 01
        push    16                                      ; 10012E76 _ 6A, 10
        lea     ecx, [esi+eax+50H]                      ; 10012E78 _ 8D. 4C 06, 50
        push    ecx                                     ; 10012E7C _ 51
        call    ?_2085                                  ; 10012E7D _ E8, FFFFF5BE
        add     esp, 16                                 ; 10012E82 _ 83. C4, 10
        test    eax, eax                                ; 10012E85 _ 85. C0
        je      ?_2139                                  ; 10012E87 _ 0F 84, FFFFFF73
        mov     eax, dword [?_5694]                     ; 10012E8D _ A1, 101DE454(d)
        inc     ebx                                     ; 10012E92 _ 43
        add     esi, 96                                 ; 10012E93 _ 83. C6, 60
        cmp     ebx, eax                                ; 10012E96 _ 3B. D8
        jl      ?_2141                                  ; 10012E98 _ 7C, 9D
?_2142: pop     edi                                     ; 10012E9A _ 5F
        pop     esi                                     ; 10012E9B _ 5E
        pop     ebp                                     ; 10012E9C _ 5D
        mov     eax, 1                                  ; 10012E9D _ B8, 00000001
        pop     ebx                                     ; 10012EA2 _ 5B
        add     esp, 12                                 ; 10012EA3 _ 83. C4, 0C
        ret                                             ; 10012EA6 _ C3

        nop                                             ; 10012EA7 _ 90
        nop                                             ; 10012EA8 _ 90
        nop                                             ; 10012EA9 _ 90
        nop                                             ; 10012EAA _ 90
        nop                                             ; 10012EAB _ 90
        nop                                             ; 10012EAC _ 90
        nop                                             ; 10012EAD _ 90
        nop                                             ; 10012EAE _ 90
        nop                                             ; 10012EAF _ 90
?_2143: push    ebx                                     ; 10012EB0 _ 53
        push    ebp                                     ; 10012EB1 _ 55
        push    esi                                     ; 10012EB2 _ 56
        push    edi                                     ; 10012EB3 _ 57
        mov     edi, dword [esp+14H]                    ; 10012EB4 _ 8B. 7C 24, 14
        mov     esi, ?_5657                             ; 10012EB8 _ BE, 1009ACA2(d)
?_2144: push    edi                                     ; 10012EBD _ 57
        push    1                                       ; 10012EBE _ 6A, 01
        lea     eax, [esi-2H]                           ; 10012EC0 _ 8D. 46, FE
        push    2                                       ; 10012EC3 _ 6A, 02
        push    eax                                     ; 10012EC5 _ 50
        call    ?_2085                                  ; 10012EC6 _ E8, FFFFF575
        add     esp, 16                                 ; 10012ECB _ 83. C4, 10
        test    eax, eax                                ; 10012ECE _ 85. C0
        je      ?_2152                                  ; 10012ED0 _ 0F 84, 00000347
        push    edi                                     ; 10012ED6 _ 57
        push    1                                       ; 10012ED7 _ 6A, 01
        push    16                                      ; 10012ED9 _ 6A, 10
        push    esi                                     ; 10012EDB _ 56
        call    ?_2085                                  ; 10012EDC _ E8, FFFFF55F
        add     esp, 16                                 ; 10012EE1 _ 83. C4, 10
        test    eax, eax                                ; 10012EE4 _ 85. C0
        je      ?_2152                                  ; 10012EE6 _ 0F 84, 00000331
        push    edi                                     ; 10012EEC _ 57
        push    1                                       ; 10012EED _ 6A, 01
        lea     ecx, [esi+12H]                          ; 10012EEF _ 8D. 4E, 12
        push    4                                       ; 10012EF2 _ 6A, 04
        push    ecx                                     ; 10012EF4 _ 51
        call    ?_2085                                  ; 10012EF5 _ E8, FFFFF546
        add     esp, 16                                 ; 10012EFA _ 83. C4, 10
        test    eax, eax                                ; 10012EFD _ 85. C0
        je      ?_2152                                  ; 10012EFF _ 0F 84, 00000318
        cmp     dword [?_5338], 65580                   ; 10012F05 _ 81. 3D, 1002D4EC(d), 0001002C
        jl      ?_2145                                  ; 10012F0F _ 7C, 19
        push    edi                                     ; 10012F11 _ 57
        push    1                                       ; 10012F12 _ 6A, 01
        lea     edx, [esi+26H]                          ; 10012F14 _ 8D. 56, 26
        push    4                                       ; 10012F17 _ 6A, 04
        push    edx                                     ; 10012F19 _ 52
        call    ?_2085                                  ; 10012F1A _ E8, FFFFF521
        add     esp, 16                                 ; 10012F1F _ 83. C4, 10
        test    eax, eax                                ; 10012F22 _ 85. C0
        je      ?_2152                                  ; 10012F24 _ 0F 84, 000002F3
?_2145: push    edi                                     ; 10012F2A _ 57
        push    1                                       ; 10012F2B _ 6A, 01
        lea     eax, [esi+1AH]                          ; 10012F2D _ 8D. 46, 1A
        push    4                                       ; 10012F30 _ 6A, 04
        push    eax                                     ; 10012F32 _ 50
        call    ?_2085                                  ; 10012F33 _ E8, FFFFF508
        add     esp, 16                                 ; 10012F38 _ 83. C4, 10
        test    eax, eax                                ; 10012F3B _ 85. C0
        je      ?_2152                                  ; 10012F3D _ 0F 84, 000002DA
        push    edi                                     ; 10012F43 _ 57
        push    1                                       ; 10012F44 _ 6A, 01
        lea     ecx, [esi+1EH]                          ; 10012F46 _ 8D. 4E, 1E
        push    4                                       ; 10012F49 _ 6A, 04
        push    ecx                                     ; 10012F4B _ 51
        call    ?_2085                                  ; 10012F4C _ E8, FFFFF4EF
        add     esp, 16                                 ; 10012F51 _ 83. C4, 10
        test    eax, eax                                ; 10012F54 _ 85. C0
        je      ?_2152                                  ; 10012F56 _ 0F 84, 000002C1
        push    edi                                     ; 10012F5C _ 57
        push    1                                       ; 10012F5D _ 6A, 01
        lea     edx, [esi+2AH]                          ; 10012F5F _ 8D. 56, 2A
        push    4                                       ; 10012F62 _ 6A, 04
        push    edx                                     ; 10012F64 _ 52
        call    ?_2085                                  ; 10012F65 _ E8, FFFFF4D6
        add     esp, 16                                 ; 10012F6A _ 83. C4, 10
        test    eax, eax                                ; 10012F6D _ 85. C0
        je      ?_2152                                  ; 10012F6F _ 0F 84, 000002A8
        push    edi                                     ; 10012F75 _ 57
        push    1                                       ; 10012F76 _ 6A, 01
        lea     eax, [esi+2EH]                          ; 10012F78 _ 8D. 46, 2E
        push    4                                       ; 10012F7B _ 6A, 04
        push    eax                                     ; 10012F7D _ 50
        call    ?_2085                                  ; 10012F7E _ E8, FFFFF4BD
        add     esp, 16                                 ; 10012F83 _ 83. C4, 10
        test    eax, eax                                ; 10012F86 _ 85. C0
        je      ?_2152                                  ; 10012F88 _ 0F 84, 0000028F
        push    edi                                     ; 10012F8E _ 57
        push    1                                       ; 10012F8F _ 6A, 01
        lea     ecx, [esi+32H]                          ; 10012F91 _ 8D. 4E, 32
        push    4                                       ; 10012F94 _ 6A, 04
        push    ecx                                     ; 10012F96 _ 51
        call    ?_2085                                  ; 10012F97 _ E8, FFFFF4A4
        add     esp, 16                                 ; 10012F9C _ 83. C4, 10
        test    eax, eax                                ; 10012F9F _ 85. C0
        je      ?_2152                                  ; 10012FA1 _ 0F 84, 00000276
        push    edi                                     ; 10012FA7 _ 57
        push    1                                       ; 10012FA8 _ 6A, 01
        lea     edx, [esi+36H]                          ; 10012FAA _ 8D. 56, 36
        push    4                                       ; 10012FAD _ 6A, 04
        push    edx                                     ; 10012FAF _ 52
        call    ?_2085                                  ; 10012FB0 _ E8, FFFFF48B
        add     esp, 16                                 ; 10012FB5 _ 83. C4, 10
        test    eax, eax                                ; 10012FB8 _ 85. C0
        je      ?_2152                                  ; 10012FBA _ 0F 84, 0000025D
        push    edi                                     ; 10012FC0 _ 57
        push    1                                       ; 10012FC1 _ 6A, 01
        lea     eax, [esi+3EH]                          ; 10012FC3 _ 8D. 46, 3E
        push    4                                       ; 10012FC6 _ 6A, 04
        push    eax                                     ; 10012FC8 _ 50
        call    ?_2085                                  ; 10012FC9 _ E8, FFFFF472
        add     esp, 16                                 ; 10012FCE _ 83. C4, 10
        test    eax, eax                                ; 10012FD1 _ 85. C0
        je      ?_2152                                  ; 10012FD3 _ 0F 84, 00000244
        push    edi                                     ; 10012FD9 _ 57
        push    1                                       ; 10012FDA _ 6A, 01
        lea     ecx, [esi+42H]                          ; 10012FDC _ 8D. 4E, 42
        push    4                                       ; 10012FDF _ 6A, 04
        push    ecx                                     ; 10012FE1 _ 51
        call    ?_2085                                  ; 10012FE2 _ E8, FFFFF459
        add     esp, 16                                 ; 10012FE7 _ 83. C4, 10
        test    eax, eax                                ; 10012FEA _ 85. C0
        je      ?_2152                                  ; 10012FEC _ 0F 84, 0000022B
        push    edi                                     ; 10012FF2 _ 57
        push    1                                       ; 10012FF3 _ 6A, 01
        lea     edx, [esi+46H]                          ; 10012FF5 _ 8D. 56, 46
        push    4                                       ; 10012FF8 _ 6A, 04
        push    edx                                     ; 10012FFA _ 52
        call    ?_2085                                  ; 10012FFB _ E8, FFFFF440
        add     esp, 16                                 ; 10013000 _ 83. C4, 10
        test    eax, eax                                ; 10013003 _ 85. C0
        je      ?_2152                                  ; 10013005 _ 0F 84, 00000212
        push    edi                                     ; 1001300B _ 57
        push    1                                       ; 1001300C _ 6A, 01
        lea     eax, [esi+4AH]                          ; 1001300E _ 8D. 46, 4A
        push    4                                       ; 10013011 _ 6A, 04
        push    eax                                     ; 10013013 _ 50
        call    ?_2085                                  ; 10013014 _ E8, FFFFF427
        add     esp, 16                                 ; 10013019 _ 83. C4, 10
        test    eax, eax                                ; 1001301C _ 85. C0
        je      ?_2152                                  ; 1001301E _ 0F 84, 000001F9
        push    edi                                     ; 10013024 _ 57
        push    1                                       ; 10013025 _ 6A, 01
        lea     ecx, [esi+4EH]                          ; 10013027 _ 8D. 4E, 4E
        push    4                                       ; 1001302A _ 6A, 04
        push    ecx                                     ; 1001302C _ 51
        call    ?_2085                                  ; 1001302D _ E8, FFFFF40E
        add     esp, 16                                 ; 10013032 _ 83. C4, 10
        test    eax, eax                                ; 10013035 _ 85. C0
        je      ?_2152                                  ; 10013037 _ 0F 84, 000001E0
        mov     eax, dword [?_5338]                     ; 1001303D _ A1, 1002D4EC(d)
        cmp     eax, 65556                              ; 10013042 _ 3D, 00010014
        jl      ?_2146                                  ; 10013047 _ 0F 8C, 000000B4
        push    edi                                     ; 1001304D _ 57
        push    1                                       ; 1001304E _ 6A, 01
        lea     edx, [esi+52H]                          ; 10013050 _ 8D. 56, 52
        push    4                                       ; 10013053 _ 6A, 04
        push    edx                                     ; 10013055 _ 52
        call    ?_2085                                  ; 10013056 _ E8, FFFFF3E5
        add     esp, 16                                 ; 1001305B _ 83. C4, 10
        test    eax, eax                                ; 1001305E _ 85. C0
        je      ?_2152                                  ; 10013060 _ 0F 84, 000001B7
        push    edi                                     ; 10013066 _ 57
        push    1                                       ; 10013067 _ 6A, 01
        lea     eax, [esi+56H]                          ; 10013069 _ 8D. 46, 56
        push    4                                       ; 1001306C _ 6A, 04
        push    eax                                     ; 1001306E _ 50
        call    ?_2085                                  ; 1001306F _ E8, FFFFF3CC
        add     esp, 16                                 ; 10013074 _ 83. C4, 10
        test    eax, eax                                ; 10013077 _ 85. C0
        je      ?_2152                                  ; 10013079 _ 0F 84, 0000019E
        push    edi                                     ; 1001307F _ 57
        push    1                                       ; 10013080 _ 6A, 01
        lea     ecx, [esi+5AH]                          ; 10013082 _ 8D. 4E, 5A
        push    4                                       ; 10013085 _ 6A, 04
        push    ecx                                     ; 10013087 _ 51
        call    ?_2085                                  ; 10013088 _ E8, FFFFF3B3
        add     esp, 16                                 ; 1001308D _ 83. C4, 10
        test    eax, eax                                ; 10013090 _ 85. C0
        je      ?_2152                                  ; 10013092 _ 0F 84, 00000185
        push    edi                                     ; 10013098 _ 57
        push    1                                       ; 10013099 _ 6A, 01
        lea     edx, [esi+3AH]                          ; 1001309B _ 8D. 56, 3A
        push    4                                       ; 1001309E _ 6A, 04
        push    edx                                     ; 100130A0 _ 52
        call    ?_2085                                  ; 100130A1 _ E8, FFFFF39A
        add     esp, 16                                 ; 100130A6 _ 83. C4, 10
        test    eax, eax                                ; 100130A9 _ 85. C0
        je      ?_2152                                  ; 100130AB _ 0F 84, 0000016C
        push    edi                                     ; 100130B1 _ 57
        push    1                                       ; 100130B2 _ 6A, 01
        lea     eax, [esi+62H]                          ; 100130B4 _ 8D. 46, 62
        push    4                                       ; 100130B7 _ 6A, 04
        push    eax                                     ; 100130B9 _ 50
        call    ?_2085                                  ; 100130BA _ E8, FFFFF381
        add     esp, 16                                 ; 100130BF _ 83. C4, 10
        test    eax, eax                                ; 100130C2 _ 85. C0
        je      ?_2152                                  ; 100130C4 _ 0F 84, 00000153
        push    edi                                     ; 100130CA _ 57
        push    1                                       ; 100130CB _ 6A, 01
        lea     ecx, [esi+66H]                          ; 100130CD _ 8D. 4E, 66
        push    4                                       ; 100130D0 _ 6A, 04
        push    ecx                                     ; 100130D2 _ 51
        call    ?_2085                                  ; 100130D3 _ E8, FFFFF368
        add     esp, 16                                 ; 100130D8 _ 83. C4, 10
        test    eax, eax                                ; 100130DB _ 85. C0
        je      ?_2152                                  ; 100130DD _ 0F 84, 0000013A
        push    edi                                     ; 100130E3 _ 57
        push    1                                       ; 100130E4 _ 6A, 01
        lea     edx, [esi+6AH]                          ; 100130E6 _ 8D. 56, 6A
        push    4                                       ; 100130E9 _ 6A, 04
        push    edx                                     ; 100130EB _ 52
        call    ?_2085                                  ; 100130EC _ E8, FFFFF34F
        add     esp, 16                                 ; 100130F1 _ 83. C4, 10
        test    eax, eax                                ; 100130F4 _ 85. C0
        je      ?_2152                                  ; 100130F6 _ 0F 84, 00000121
        mov     eax, dword [?_5338]                     ; 100130FC _ A1, 1002D4EC(d)
?_2146: cmp     eax, 65622                              ; 10013101 _ 3D, 00010056
        jl      ?_2147                                  ; 10013106 _ 7C, 20
        push    edi                                     ; 10013108 _ 57
        push    1                                       ; 10013109 _ 6A, 01
        lea     eax, [esi+5EH]                          ; 1001310B _ 8D. 46, 5E
        push    4                                       ; 1001310E _ 6A, 04
        push    eax                                     ; 10013110 _ 50
        call    ?_2085                                  ; 10013111 _ E8, FFFFF32A
        add     esp, 16                                 ; 10013116 _ 83. C4, 10
        test    eax, eax                                ; 10013119 _ 85. C0
        je      ?_2152                                  ; 1001311B _ 0F 84, 000000FC
        mov     eax, dword [?_5338]                     ; 10013121 _ A1, 1002D4EC(d)
        jmp     ?_2148                                  ; 10013126 _ EB, 07

?_2147: mov     dword [esi+5EH], 1065353216             ; 10013128 _ C7. 46, 5E, 3F800000
?_2148: cmp     eax, 65557                              ; 1001312F _ 3D, 00010015
        jl      ?_2150                                  ; 10013134 _ 7C, 46
        xor     ebx, ebx                                ; 10013136 _ 33. DB
        cmp     eax, 65606                              ; 10013138 _ 3D, 00010046
        setge   bl                                      ; 1001313D _ 0F 9D. C3
        dec     ebx                                     ; 10013140 _ 4B
        xor     ebp, ebp                                ; 10013141 _ 33. ED
        and     ebx, 0FFFFFFFDH                         ; 10013143 _ 83. E3, FD
        add     ebx, 17                                 ; 10013146 _ 83. C3, 11
        test    ebx, ebx                                ; 10013149 _ 85. DB
        jle     ?_2150                                  ; 1001314B _ 7E, 2F
        lea     ecx, [esi+72H]                          ; 1001314D _ 8D. 4E, 72
        mov     dword [esp+14H], ecx                    ; 10013150 _ 89. 4C 24, 14
?_2149: mov     edx, dword [esp+14H]                    ; 10013154 _ 8B. 54 24, 14
        push    edi                                     ; 10013158 _ 57
        push    1                                       ; 10013159 _ 6A, 01
        push    1                                       ; 1001315B _ 6A, 01
        push    edx                                     ; 1001315D _ 52
        call    ?_2085                                  ; 1001315E _ E8, FFFFF2DD
        add     esp, 16                                 ; 10013163 _ 83. C4, 10
        test    eax, eax                                ; 10013166 _ 85. C0
        je      ?_2152                                  ; 10013168 _ 0F 84, 000000AF
        mov     ecx, dword [esp+14H]                    ; 1001316E _ 8B. 4C 24, 14
        inc     ebp                                     ; 10013172 _ 45
        inc     ecx                                     ; 10013173 _ 41
        cmp     ebp, ebx                                ; 10013174 _ 3B. EB
        mov     dword [esp+14H], ecx                    ; 10013176 _ 89. 4C 24, 14
        jl      ?_2149                                  ; 1001317A _ 7C, D8
?_2150: push    edi                                     ; 1001317C _ 57
        push    1                                       ; 1001317D _ 6A, 01
        lea     eax, [esi+86H]                          ; 1001317F _ 8D. 86, 00000086
        push    4                                       ; 10013185 _ 6A, 04
        push    eax                                     ; 10013187 _ 50
        call    ?_2085                                  ; 10013188 _ E8, FFFFF2B3
        add     esp, 16                                 ; 1001318D _ 83. C4, 10
        test    eax, eax                                ; 10013190 _ 85. C0
        je      ?_2152                                  ; 10013192 _ 0F 84, 00000085
        push    edi                                     ; 10013198 _ 57
        push    1                                       ; 10013199 _ 6A, 01
        lea     ecx, [esi+8AH]                          ; 1001319B _ 8D. 8E, 0000008A
        push    16                                      ; 100131A1 _ 6A, 10
        push    ecx                                     ; 100131A3 _ 51
        call    ?_2085                                  ; 100131A4 _ E8, FFFFF297
        add     esp, 16                                 ; 100131A9 _ 83. C4, 10
        test    eax, eax                                ; 100131AC _ 85. C0
        jz      ?_2152                                  ; 100131AE _ 74, 6D
        push    edi                                     ; 100131B0 _ 57
        push    1                                       ; 100131B1 _ 6A, 01
        lea     edx, [esi+9AH]                          ; 100131B3 _ 8D. 96, 0000009A
        push    12                                      ; 100131B9 _ 6A, 0C
        push    edx                                     ; 100131BB _ 52
        call    ?_2085                                  ; 100131BC _ E8, FFFFF27F
        add     esp, 16                                 ; 100131C1 _ 83. C4, 10
        test    eax, eax                                ; 100131C4 _ 85. C0
        jz      ?_2152                                  ; 100131C6 _ 74, 55
        push    edi                                     ; 100131C8 _ 57
        push    1                                       ; 100131C9 _ 6A, 01
        lea     eax, [esi+0A6H]                         ; 100131CB _ 8D. 86, 000000A6
        push    4                                       ; 100131D1 _ 6A, 04
        push    eax                                     ; 100131D3 _ 50
        call    ?_2085                                  ; 100131D4 _ E8, FFFFF267
        add     esp, 16                                 ; 100131D9 _ 83. C4, 10
        test    eax, eax                                ; 100131DC _ 85. C0
        jz      ?_2152                                  ; 100131DE _ 74, 3D
        cmp     dword [?_5338], 65560                   ; 100131E0 _ 81. 3D, 1002D4EC(d), 00010018
        jl      ?_2151                                  ; 100131EA _ 7C, 15
        push    edi                                     ; 100131EC _ 57
        push    1                                       ; 100131ED _ 6A, 01
        lea     ecx, [esi+6EH]                          ; 100131EF _ 8D. 4E, 6E
        push    4                                       ; 100131F2 _ 6A, 04
        push    ecx                                     ; 100131F4 _ 51
        call    ?_2085                                  ; 100131F5 _ E8, FFFFF246
        add     esp, 16                                 ; 100131FA _ 83. C4, 10
        test    eax, eax                                ; 100131FD _ 85. C0
        jz      ?_2152                                  ; 100131FF _ 74, 1C
?_2151: add     esi, 172                                ; 10013201 _ 81. C6, 000000AC
        cmp     esi, ?_5664                             ; 10013207 _ 81. FE, 1009B762(d)
        jl      ?_2144                                  ; 1001320D _ 0F 8C, FFFFFCAA
        pop     edi                                     ; 10013213 _ 5F
        pop     esi                                     ; 10013214 _ 5E
        pop     ebp                                     ; 10013215 _ 5D
        mov     eax, 1                                  ; 10013216 _ B8, 00000001
        pop     ebx                                     ; 1001321B _ 5B
        ret                                             ; 1001321C _ C3

