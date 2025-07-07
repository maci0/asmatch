; ---- 100062B3 ----
?_0618: ; Local function
        mov     edx, dword [esp+34H]                    ; 100062B3 _ 8B. 54 24, 34
        mov     eax, dword [esp+24H]                    ; 100062B7 _ 8B. 44 24, 24
        mov     ebp, dword [esp+18H]                    ; 100062BB _ 8B. 6C 24, 18
        lea     ecx, [esp+10H]                          ; 100062BF _ 8D. 4C 24, 10
        push    edi                                     ; 100062C3 _ 57
        push    ecx                                     ; 100062C4 _ 51
        mov     ecx, dword [esp+34H]                    ; 100062C5 _ 8B. 4C 24, 34
        push    edx                                     ; 100062C9 _ 52
        mov     edx, dword [esp+2CH]                    ; 100062CA _ 8B. 54 24, 2C
        push    eax                                     ; 100062CE _ 50
        push    ecx                                     ; 100062CF _ 51
        push    ?_4890                                  ; 100062D0 _ 68, 1002474C(d)
        push    ?_4889                                  ; 100062D5 _ 68, 100246D0(d)
        push    257                                     ; 100062DA _ 68, 00000101
        push    ebp                                     ; 100062DF _ 55
        push    edx                                     ; 100062E0 _ 52
        call    ?_0575                                  ; 100062E1 _ E8, FFFFFACA
        mov     esi, eax                                ; 100062E6 _ 8B. F0
        add     esp, 40                                 ; 100062E8 _ 83. C4, 28
        test    esi, esi                                ; 100062EB _ 85. F6
        jne     ?_0625                                  ; 100062ED _ 0F 85, 000000D3
        mov     eax, dword [esp+24H]                    ; 100062F3 _ 8B. 44 24, 24
        cmp     dword [eax], 0                          ; 100062F7 _ 83. 38, 00
        je      ?_0627                                  ; 100062FA _ 0F 84, 000000EA
        mov     edx, dword [esp+34H]                    ; 10006300 _ 8B. 54 24, 34
        mov     eax, dword [esp+28H]                    ; 10006304 _ 8B. 44 24, 28
        lea     ecx, [esp+10H]                          ; 10006308 _ 8D. 4C 24, 10
        push    edi                                     ; 1000630C _ 57
        push    ecx                                     ; 1000630D _ 51
        mov     ecx, dword [esp+38H]                    ; 1000630E _ 8B. 4C 24, 38
        push    edx                                     ; 10006312 _ 52
        mov     edx, dword [esp+28H]                    ; 10006313 _ 8B. 54 24, 28
        push    eax                                     ; 10006317 _ 50
        mov     eax, dword [esp+30H]                    ; 10006318 _ 8B. 44 24, 30
        push    ecx                                     ; 1000631C _ 51
        push    ?_4892                                  ; 1000631D _ 68, 10024840(d)
        push    ?_4891                                  ; 10006322 _ 68, 100247C8(d)
        push    esi                                     ; 10006327 _ 56
        lea     ecx, [eax+ebp*4]                        ; 10006328 _ 8D. 0C A8
        push    edx                                     ; 1000632B _ 52
        push    ecx                                     ; 1000632C _ 51
        call    ?_0575                                  ; 1000632D _ E8, FFFFFA7E
        mov     esi, eax                                ; 10006332 _ 8B. F0
        add     esp, 40                                 ; 10006334 _ 83. C4, 28
        test    esi, esi                                ; 10006337 _ 85. F6
        jnz     ?_0620                                  ; 10006339 _ 75, 24
        mov     edx, dword [esp+28H]                    ; 1000633B _ 8B. 54 24, 28
        cmp     dword [edx], 0                          ; 1000633F _ 83. 3A, 00
        jnz     ?_0619                                  ; 10006342 _ 75, 08
        cmp     ebp, 257                                ; 10006344 _ 81. FD, 00000101
        ja      ?_0623                                  ; 1000634A _ 77, 5B
?_0619: mov     eax, dword [ebx+28H]                    ; 1000634C _ 8B. 43, 28
        push    edi                                     ; 1000634F _ 57
        push    eax                                     ; 10006350 _ 50
        call    near [ebx+24H]                          ; 10006351 _ FF. 53, 24
        add     esp, 8                                  ; 10006354 _ 83. C4, 08
        xor     eax, eax                                ; 10006357 _ 33. C0
        pop     edi                                     ; 10006359 _ 5F
        pop     esi                                     ; 1000635A _ 5E
        pop     ebp                                     ; 1000635B _ 5D
        pop     ebx                                     ; 1000635C _ 5B
        pop     ecx                                     ; 1000635D _ 59
        ret                                             ; 1000635E _ C3

?_0620: cmp     esi, -3                                 ; 1000635F _ 83. FE, FD
        jnz     ?_0621                                  ; 10006362 _ 75, 1A
        mov     ecx, dword [ebx+28H]                    ; 10006364 _ 8B. 4B, 28
        push    edi                                     ; 10006367 _ 57
        push    ecx                                     ; 10006368 _ 51
        mov     dword [ebx+18H], ?_5136                 ; 10006369 _ C7. 43, 18, 10028780(d)
        call    near [ebx+24H]                          ; 10006370 _ FF. 53, 24
        add     esp, 8                                  ; 10006373 _ 83. C4, 08
        mov     eax, esi                                ; 10006376 _ 8B. C6
        pop     edi                                     ; 10006378 _ 5F
        pop     esi                                     ; 10006379 _ 5E
        pop     ebp                                     ; 1000637A _ 5D
        pop     ebx                                     ; 1000637B _ 5B
        pop     ecx                                     ; 1000637C _ 59
        ret                                             ; 1000637D _ C3

?_0621: cmp     esi, -5                                 ; 1000637E _ 83. FE, FB
        jnz     ?_0622                                  ; 10006381 _ 75, 1F
        mov     ecx, dword [ebx+28H]                    ; 10006383 _ 8B. 4B, 28
        push    edi                                     ; 10006386 _ 57
        push    ecx                                     ; 10006387 _ 51
        mov     dword [ebx+18H], ?_5135                 ; 10006388 _ C7. 43, 18, 10028764(d)
        mov     esi, 4294967293                         ; 1000638F _ BE, FFFFFFFD
        call    near [ebx+24H]                          ; 10006394 _ FF. 53, 24
        add     esp, 8                                  ; 10006397 _ 83. C4, 08
        mov     eax, esi                                ; 1000639A _ 8B. C6
        pop     edi                                     ; 1000639C _ 5F
        pop     esi                                     ; 1000639D _ 5E
        pop     ebp                                     ; 1000639E _ 5D
        pop     ebx                                     ; 1000639F _ 5B
        pop     ecx                                     ; 100063A0 _ 59
        ret                                             ; 100063A1 _ C3

?_0622: cmp     esi, -4                                 ; 100063A2 _ 83. FE, FC
        jz      ?_0624                                  ; 100063A5 _ 74, 0C
?_0623: mov     dword [ebx+18H], ?_5134                 ; 100063A7 _ C7. 43, 18, 10028740(d)
        mov     esi, 4294967293                         ; 100063AE _ BE, FFFFFFFD
?_0624: mov     ecx, dword [ebx+28H]                    ; 100063B3 _ 8B. 4B, 28
        push    edi                                     ; 100063B6 _ 57
        push    ecx                                     ; 100063B7 _ 51
        call    near [ebx+24H]                          ; 100063B8 _ FF. 53, 24
        add     esp, 8                                  ; 100063BB _ 83. C4, 08
        mov     eax, esi                                ; 100063BE _ 8B. C6
        pop     edi                                     ; 100063C0 _ 5F
        pop     esi                                     ; 100063C1 _ 5E
        pop     ebp                                     ; 100063C2 _ 5D
        pop     ebx                                     ; 100063C3 _ 5B
        pop     ecx                                     ; 100063C4 _ 59
        ret                                             ; 100063C5 _ C3

?_0625: cmp     esi, -3                                 ; 100063C6 _ 83. FE, FD
        jnz     ?_0626                                  ; 100063C9 _ 75, 1A
        mov     edx, dword [ebx+28H]                    ; 100063CB _ 8B. 53, 28
        push    edi                                     ; 100063CE _ 57
        push    edx                                     ; 100063CF _ 52
        mov     dword [ebx+18H], ?_5133                 ; 100063D0 _ C7. 43, 18, 1002871C(d)
        call    near [ebx+24H]                          ; 100063D7 _ FF. 53, 24
        add     esp, 8                                  ; 100063DA _ 83. C4, 08
        mov     eax, esi                                ; 100063DD _ 8B. C6
        pop     edi                                     ; 100063DF _ 5F
        pop     esi                                     ; 100063E0 _ 5E
        pop     ebp                                     ; 100063E1 _ 5D
        pop     ebx                                     ; 100063E2 _ 5B
        pop     ecx                                     ; 100063E3 _ 59
        ret                                             ; 100063E4 _ C3

?_0626: cmp     esi, -4                                 ; 100063E5 _ 83. FE, FC
        jz      ?_0628                                  ; 100063E8 _ 74, 0C
?_0627: mov     dword [ebx+18H], ?_5132                 ; 100063EA _ C7. 43, 18, 100286FC(d)
        mov     esi, 4294967293                         ; 100063F1 _ BE, FFFFFFFD
?_0628: mov     edx, dword [ebx+28H]                    ; 100063F6 _ 8B. 53, 28
        push    edi                                     ; 100063F9 _ 57
        push    edx                                     ; 100063FA _ 52
        call    near [ebx+24H]                          ; 100063FB _ FF. 53, 24
        add     esp, 8                                  ; 100063FE _ 83. C4, 08
        mov     eax, esi                                ; 10006401 _ 8B. C6
        pop     edi                                     ; 10006403 _ 5F
        pop     esi                                     ; 10006404 _ 5E
        pop     ebp                                     ; 10006405 _ 5D
        pop     ebx                                     ; 10006406 _ 5B
        pop     ecx                                     ; 10006407 _ 59
        ret                                             ; 10006408 _ C3

        nop                                             ; 10006409 _ 90
        nop                                             ; 1000640A _ 90
        nop                                             ; 1000640B _ 90
        nop                                             ; 1000640C _ 90
        nop                                             ; 1000640D _ 90
        nop                                             ; 1000640E _ 90
        nop                                             ; 1000640F _ 90

