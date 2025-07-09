; ---- 1000B94A ----
?_1236: ; Local function
        mov     cl, byte [esi+8H]                       ; 1000B94A _ 8A. 4E, 08
        mov     byte [ebp+166H], cl                     ; 1000B94D _ 88. 8D, 00000166
        mov     dl, byte [edi+8H]                       ; 1000B953 _ 8A. 57, 08
        mov     byte [eax+166H], dl                     ; 1000B956 _ 88. 90, 00000166
        mov     ecx, dword [esi+4H]                     ; 1000B95C _ 8B. 4E, 04
        mov     eax, dword [edi+4H]                     ; 1000B95F _ 8B. 47, 04
        mov     dword [edi+4H], ecx                     ; 1000B962 _ 89. 4F, 04
        mov     dword [esi+4H], eax                     ; 1000B965 _ 89. 46, 04
        mov     eax, dword [esp+14H]                    ; 1000B968 _ 8B. 44 24, 14
        mov     edx, dword [ebx+6H]                     ; 1000B96C _ 8B. 53, 06
        pop     edi                                     ; 1000B96F _ 5F
        mov     ecx, dword [eax+194H]                   ; 1000B970 _ 8B. 88, 00000194
        pop     esi                                     ; 1000B976 _ 5E
        sub     ecx, edx                                ; 1000B977 _ 2B. CA
        pop     ebp                                     ; 1000B979 _ 5D
        mov     dword [eax+194H], ecx                   ; 1000B97A _ 89. 88, 00000194
        mov     eax, 1                                  ; 1000B980 _ B8, 00000001
        pop     ebx                                     ; 1000B985 _ 5B
        ret                                             ; 1000B986 _ C3

        nop                                             ; 1000B987 _ 90
        nop                                             ; 1000B988 _ 90
        nop                                             ; 1000B989 _ 90
        nop                                             ; 1000B98A _ 90
        nop                                             ; 1000B98B _ 90
        nop                                             ; 1000B98C _ 90
        nop                                             ; 1000B98D _ 90
        nop                                             ; 1000B98E _ 90
        nop                                             ; 1000B98F _ 90
?_1237: push    ebx                                     ; 1000B990 _ 53
        push    ebp                                     ; 1000B991 _ 55
        mov     ebp, dword [esp+0CH]                    ; 1000B992 _ 8B. 6C 24, 0C
        push    esi                                     ; 1000B996 _ 56
        mov     si, word [?_5629]                       ; 1000B997 _ 66: 8B. 35, 10035884(d)
        xor     ebx, ebx                                ; 1000B99E _ 33. DB
        xor     eax, eax                                ; 1000B9A0 _ 33. C0
        mov     ecx, ?_5705                             ; 1000B9A2 _ B9, 101DE5B4(d)
?_1238: mov     edx, dword [ebp+4H]                     ; 1000B9A7 _ 8B. 55, 04
        cmp     dword [ecx-10H], edx                    ; 1000B9AA _ 39. 51, F0
        jnz     ?_1239                                  ; 1000B9AD _ 75, 21
        cmp     si, 11                                  ; 1000B9AF _ 66: 83. FE, 0B
        mov     dword [ecx-10H], -1                     ; 1000B9B3 _ C7. 41, F0, FFFFFFFF
        seta    dl                                      ; 1000B9BA _ 0F 97. C2
        add     edx, 3                                  ; 1000B9BD _ 83. C2, 03
        mov     dword [ecx], -1                         ; 1000B9C0 _ C7. 01, FFFFFFFF
        mov     byte [ecx-4H], dl                       ; 1000B9C6 _ 88. 51, FC
        mov     dword [ecx-8H], ebx                     ; 1000B9C9 _ 89. 59, F8
        or      al, 01H                                 ; 1000B9CC _ 0C, 01
        jmp     ?_1240                                  ; 1000B9CE _ EB, 0E

?_1239: cmp     dword [ecx], edx                        ; 1000B9D0 _ 39. 11
        jnz     ?_1240                                  ; 1000B9D2 _ 75, 0A
        mov     dword [ecx], -1                         ; 1000B9D4 _ C7. 01, FFFFFFFF
        mov     byte [ecx-4H], 1                        ; 1000B9DA _ C6. 41, FC, 01
?_1240: add     ecx, 24                                 ; 1000B9DE _ 83. C1, 18
        cmp     ecx, ?_5754                             ; 1000B9E1 _ 81. F9, 101DE9A4(d)
        jl      ?_1238                                  ; 1000B9E7 _ 7C, BE
        cmp     byte [ebp+168H], bl                     ; 1000B9E9 _ 38. 9D, 00000168
        jz      ?_1243                                  ; 1000B9EF _ 74, 26
        mov     ecx, ?_5703                             ; 1000B9F1 _ B9, 101DE5AC(d)
?_1241: mov     dl, byte [ecx-4H]                       ; 1000B9F6 _ 8A. 51, FC
        cmp     dl, byte [ebp+168H]                     ; 1000B9F9 _ 3A. 95, 00000168
        jnz     ?_1242                                  ; 1000B9FF _ 75, 0B
        mov     edx, dword [ecx]                        ; 1000BA01 _ 8B. 11
        cmp     edx, ebx                                ; 1000BA03 _ 3B. D3
        jle     ?_1242                                  ; 1000BA05 _ 7E, 05
        dec     edx                                     ; 1000BA07 _ 4A
        or      al, 01H                                 ; 1000BA08 _ 0C, 01
        mov     dword [ecx], edx                        ; 1000BA0A _ 89. 11
?_1242: add     ecx, 24                                 ; 1000BA0C _ 83. C1, 18
        cmp     ecx, ?_5752                             ; 1000BA0F _ 81. F9, 101DE99C(d)
        jl      ?_1241                                  ; 1000BA15 _ 7C, DF
?_1243: mov     byte [ebp+166H], bl                     ; 1000BA17 _ 88. 9D, 00000166
        mov     byte [ebp+169H], bl                     ; 1000BA1D _ 88. 9D, 00000169
        mov     byte [ebp+168H], bl                     ; 1000BA23 _ 88. 9D, 00000168
        pop     esi                                     ; 1000BA29 _ 5E
        pop     ebp                                     ; 1000BA2A _ 5D
        pop     ebx                                     ; 1000BA2B _ 5B
        ret                                             ; 1000BA2C _ C3

        nop                                             ; 1000BA2D _ 90
        nop                                             ; 1000BA2E _ 90
        nop                                             ; 1000BA2F _ 90
?_1244: mov     dx, word [?_5629]                       ; 1000BA30 _ 66: 8B. 15, 10035884(d)
        push    ebx                                     ; 1000BA37 _ 53
        push    ebp                                     ; 1000BA38 _ 55
        mov     ebp, dword [esp+0CH]                    ; 1000BA39 _ 8B. 6C 24, 0C
        push    esi                                     ; 1000BA3D _ 56
        xor     ebx, ebx                                ; 1000BA3E _ 33. DB
        xor     esi, esi                                ; 1000BA40 _ 33. F6
        mov     eax, ?_5705                             ; 1000BA42 _ B8, 101DE5B4(d)
?_1245: mov     ecx, dword [ebp+4H]                     ; 1000BA47 _ 8B. 4D, 04
        cmp     dword [eax-10H], ecx                    ; 1000BA4A _ 39. 48, F0
        jnz     ?_1247                                  ; 1000BA4D _ 75, 30
        cmp     dword [esp+14H], ebx                    ; 1000BA4F _ 39. 5C 24, 14
        jz      ?_1246                                  ; 1000BA53 _ 74, 26
        mov     ebp, dword [esp+10H]                    ; 1000BA55 _ 8B. 6C 24, 10
        cmp     dx, 11                                  ; 1000BA59 _ 66: 83. FA, 0B
        seta    cl                                      ; 1000BA5D _ 0F 97. C1
        mov     dword [eax-10H], -1                     ; 1000BA60 _ C7. 40, F0, FFFFFFFF
        add     ecx, 3                                  ; 1000BA67 _ 83. C1, 03
        mov     dword [eax], -1                         ; 1000BA6A _ C7. 00, FFFFFFFF
        mov     byte [eax-4H], cl                       ; 1000BA70 _ 88. 48, FC
        mov     dword [eax-8H], ebx                     ; 1000BA73 _ 89. 58, F8
        or      esi, 01H                                ; 1000BA76 _ 83. CE, 01
        jmp     ?_1248                                  ; 1000BA79 _ EB, 12

?_1246: mov     ebp, dword [esp+10H]                    ; 1000BA7B _ 8B. 6C 24, 10
?_1247: cmp     dword [eax], ecx                        ; 1000BA7F _ 39. 08
        jnz     ?_1248                                  ; 1000BA81 _ 75, 0A
        mov     dword [eax], -1                         ; 1000BA83 _ C7. 00, FFFFFFFF
        mov     byte [eax-4H], 1                        ; 1000BA89 _ C6. 40, FC, 01
?_1248: add     eax, 24                                 ; 1000BA8D _ 83. C0, 18
        cmp     eax, ?_5754                             ; 1000BA90 _ 3D, 101DE9A4(d)
        jl      ?_1245                                  ; 1000BA95 _ 7C, B0
        cmp     byte [ebp+168H], bl                     ; 1000BA97 _ 38. 9D, 00000168
        jz      ?_1251                                  ; 1000BA9D _ 74, 28
        mov     eax, ?_5703                             ; 1000BA9F _ B8, 101DE5AC(d)
?_1249: mov     dl, byte [eax-4H]                       ; 1000BAA4 _ 8A. 50, FC
        mov     cl, byte [ebp+168H]                     ; 1000BAA7 _ 8A. 8D, 00000168
        cmp     dl, cl                                  ; 1000BAAD _ 3A. D1
        jnz     ?_1250                                  ; 1000BAAF _ 75, 0C
        mov     ecx, dword [eax]                        ; 1000BAB1 _ 8B. 08
        cmp     ecx, ebx                                ; 1000BAB3 _ 3B. CB
        jle     ?_1250                                  ; 1000BAB5 _ 7E, 06
        dec     ecx                                     ; 1000BAB7 _ 49
        or      esi, 01H                                ; 1000BAB8 _ 83. CE, 01
        mov     dword [eax], ecx                        ; 1000BABB _ 89. 08
?_1250: add     eax, 24                                 ; 1000BABD _ 83. C0, 18
        cmp     eax, ?_5752                             ; 1000BAC0 _ 3D, 101DE99C(d)
        jl      ?_1249                                  ; 1000BAC5 _ 7C, DD
?_1251: cmp     dword [esp+14H], ebx                    ; 1000BAC7 _ 39. 5C 24, 14
        jz      ?_1252                                  ; 1000BACB _ 74, 0C
        mov     byte [ebp+166H], bl                     ; 1000BACD _ 88. 9D, 00000166
        mov     byte [ebp+169H], bl                     ; 1000BAD3 _ 88. 9D, 00000169
?_1252: mov     byte [ebp+168H], bl                     ; 1000BAD9 _ 88. 9D, 00000168
        pop     esi                                     ; 1000BADF _ 5E
        pop     ebp                                     ; 1000BAE0 _ 5D
        pop     ebx                                     ; 1000BAE1 _ 5B
        ret                                             ; 1000BAE2 _ C3

        nop                                             ; 1000BAE3 _ 90
        nop                                             ; 1000BAE4 _ 90
        nop                                             ; 1000BAE5 _ 90
        nop                                             ; 1000BAE6 _ 90
        nop                                             ; 1000BAE7 _ 90
        nop                                             ; 1000BAE8 _ 90
        nop                                             ; 1000BAE9 _ 90
        nop                                             ; 1000BAEA _ 90
        nop                                             ; 1000BAEB _ 90
        nop                                             ; 1000BAEC _ 90
        nop                                             ; 1000BAED _ 90
        nop                                             ; 1000BAEE _ 90
        nop                                             ; 1000BAEF _ 90
?_1253: sub     esp, 260                                ; 1000BAF0 _ 81. EC, 00000104
        xor     eax, eax                                ; 1000BAF6 _ 33. C0
        push    ebx                                     ; 1000BAF8 _ 53
        push    ebp                                     ; 1000BAF9 _ 55
        push    esi                                     ; 1000BAFA _ 56
        push    edi                                     ; 1000BAFB _ 57
        cmp     dword [esp+11CH], 65617                 ; 1000BAFC _ 81. BC 24, 0000011C, 00010051
        setl    al                                      ; 1000BB07 _ 0F 9C. C0
        dec     eax                                     ; 1000BB0A _ 48
        and     eax, 05H                                ; 1000BB0B _ 83. E0, 05
        add     eax, 37                                 ; 1000BB0E _ 83. C0, 25
        mov     ebp, eax                                ; 1000BB11 _ 8B. E8
        call    ?_1158                                  ; 1000BB13 _ E8, FFFFF528
        mov     edi, dword [esp+118H]                   ; 1000BB18 _ 8B. BC 24, 00000118
        test    edi, edi                                ; 1000BB1F _ 85. FF
        jnz     ?_1254                                  ; 1000BB21 _ 75, 0D
        pop     edi                                     ; 1000BB23 _ 5F
        pop     esi                                     ; 1000BB24 _ 5E
        pop     ebp                                     ; 1000BB25 _ 5D
        xor     eax, eax                                ; 1000BB26 _ 33. C0
        pop     ebx                                     ; 1000BB28 _ 5B
        add     esp, 260                                ; 1000BB29 _ 81. C4, 00000104
        ret                                             ; 1000BB2F _ C3
