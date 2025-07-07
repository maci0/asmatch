; ---- 1001489B ----
?_2257: ; Local function
        mov     ebp, dword [esp+138H]                   ; 1001489B _ 8B. AC 24, 00000138
        mov     eax, ?_5761                             ; 100148A2 _ B8, 101DEB00(d)
        lea     esi, [ebp+14H]                          ; 100148A7 _ 8D. 75, 14
        mov     dword [esi+4H], edi                     ; 100148AA _ 89. 7E, 04
?_2258: mov     ecx, dword [eax]                        ; 100148AD _ 8B. 08
        test    cl, 01H                                 ; 100148AF _ F6. C1, 01
        jz      ?_2259                                  ; 100148B2 _ 74, 16
        test    ch, 02H                                 ; 100148B4 _ F6. C5, 02
        jz      ?_2259                                  ; 100148B7 _ 74, 11
        cmp     eax, ebx                                ; 100148B9 _ 3B. C3
        jz      ?_2259                                  ; 100148BB _ 74, 0D
        mov     ecx, dword [eax+264218H]                ; 100148BD _ 8B. 88, 00264218
        mov     edx, dword [esi+0CH]                    ; 100148C3 _ 8B. 56, 0C
        cmp     ecx, edx                                ; 100148C6 _ 3B. CA
        jz      ?_2260                                  ; 100148C8 _ 74, 0E
?_2259: add     eax, 2507364                            ; 100148CA _ 05, 00264264
        cmp     eax, ?_5770                             ; 100148CF _ 3D, 114FFE20(d)
        jl      ?_2258                                  ; 100148D4 _ 7C, D7
        jmp     ?_2265                                  ; 100148D6 _ EB, 75

?_2260: mov     dword [esp+10H], edi                    ; 100148D8 _ 89. 7C 24, 10
        mov     dword [esp+14H], edi                    ; 100148DC _ 89. 7C 24, 14
        mov     dword [esp+18H], edi                    ; 100148E0 _ 89. 7C 24, 18
        mov     dword [esp+1CH], edi                    ; 100148E4 _ 89. 7C 24, 1C
        mov     dword [esp+20H], edi                    ; 100148E8 _ 89. 7C 24, 20
        mov     dword [esp+24H], edi                    ; 100148EC _ 89. 7C 24, 24
        mov     dword [esp+28H], edi                    ; 100148F0 _ 89. 7C 24, 28
        mov     dword [esp+2CH], edi                    ; 100148F4 _ 89. 7C 24, 2C
        lea     edx, [esp+10H]                          ; 100148F8 _ 8D. 54 24, 10
        mov     eax, ?_5761                             ; 100148FC _ B8, 101DEB00(d)
?_2261: mov     ecx, dword [eax]                        ; 10014901 _ 8B. 08
        test    cl, 01H                                 ; 10014903 _ F6. C1, 01
        jz      ?_2262                                  ; 10014906 _ 74, 1E
        test    ch, 02H                                 ; 10014908 _ F6. C5, 02
        jz      ?_2262                                  ; 1001490B _ 74, 19
        cmp     eax, ebx                                ; 1001490D _ 3B. C3
        jz      ?_2262                                  ; 1001490F _ 74, 15
        mov     ecx, dword [eax+264218H]                ; 10014911 _ 8B. 88, 00264218
        cmp     ecx, edi                                ; 10014917 _ 3B. CF
        jl      ?_2262                                  ; 10014919 _ 7C, 0B
        cmp     ecx, 8                                  ; 1001491B _ 83. F9, 08
        jge     ?_2262                                  ; 1001491E _ 7D, 06
        mov     dword [edx], 1                          ; 10014920 _ C7. 02, 00000001
?_2262: add     eax, 2507364                            ; 10014926 _ 05, 00264264
        add     edx, 4                                  ; 1001492B _ 83. C2, 04
        cmp     eax, ?_5770                             ; 1001492E _ 3D, 114FFE20(d)
        jl      ?_2261                                  ; 10014933 _ 7C, CC
        xor     eax, eax                                ; 10014935 _ 33. C0
        lea     ecx, [esp+10H]                          ; 10014937 _ 8D. 4C 24, 10
?_2263: cmp     dword [ecx], edi                        ; 1001493B _ 39. 39
        jz      ?_2264                                  ; 1001493D _ 74, 0B
        inc     eax                                     ; 1001493F _ 40
        add     ecx, 4                                  ; 10014940 _ 83. C1, 04
        cmp     eax, 8                                  ; 10014943 _ 83. F8, 08
        jl      ?_2263                                  ; 10014946 _ 7C, F3
        jmp     ?_2265                                  ; 10014948 _ EB, 03

?_2264: mov     dword [esi+0CH], eax                    ; 1001494A _ 89. 46, 0C
?_2265: mov     edx, dword [ebx]                        ; 1001494D _ 8B. 13
        lea     eax, [esp+30H]                          ; 1001494F _ 8D. 44 24, 30
        push    edx                                     ; 10014953 _ 52
        push    ?_5365                                  ; 10014954 _ 68, 1002D81C(d)
        push    eax                                     ; 10014959 _ 50
        call    ?_3039                                  ; 1001495A _ E8, 0000593A
        lea     ecx, [esp+3CH]                          ; 1001495F _ 8D. 4C 24, 3C
        push    1                                       ; 10014963 _ 6A, 01
        push    ecx                                     ; 10014965 _ 51
        push    733                                     ; 10014966 _ 68, 000002DD
        push    ?_5358                                  ; 1001496B _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014970 _ E8, FFFEECCB
        lea     edi, [ebx+26420CH]                      ; 10014975 _ 8D. BB, 0026420C
        mov     ecx, 21                                 ; 1001497B _ B9, 00000015
        rep movsd                                       ; 10014980 _ F3: A5
        mov     edx, dword [ebx]                        ; 10014982 _ 8B. 13
        lea     eax, [esp+4CH]                          ; 10014984 _ 8D. 44 24, 4C
        movsw                                           ; 10014988 _ 66: A5
        push    edx                                     ; 1001498A _ 52
        push    ?_5364                                  ; 1001498B _ 68, 1002D7F0(d)
        push    eax                                     ; 10014990 _ 50
        movsb                                           ; 10014991 _ A4
        call    ?_3039                                  ; 10014992 _ E8, 00005902
        lea     ecx, [esp+58H]                          ; 10014997 _ 8D. 4C 24, 58
        push    1                                       ; 1001499B _ 6A, 01
        push    ecx                                     ; 1001499D _ 51
        push    738                                     ; 1001499E _ 68, 000002E2
        push    ?_5358                                  ; 100149A3 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 100149A8 _ E8, FFFEEC93
        mov     edi, dword [ebx]                        ; 100149AD _ 8B. 3B
        lea     edx, [esp+68H]                          ; 100149AF _ 8D. 54 24, 68
        and     edi, 0FFFFDFFFH                         ; 100149B3 _ 81. E7, FFFFDFFF
        mov     eax, edi                                ; 100149B9 _ 8B. C7
        mov     dword [ebx], edi                        ; 100149BB _ 89. 3B
        push    eax                                     ; 100149BD _ 50
        push    ?_5363                                  ; 100149BE _ 68, 1002D7B4(d)
        push    edx                                     ; 100149C3 _ 52
        call    ?_3039                                  ; 100149C4 _ E8, 000058D0
        add     esp, 68                                 ; 100149C9 _ 83. C4, 44
        lea     eax, [esp+30H]                          ; 100149CC _ 8D. 44 24, 30
        push    1                                       ; 100149D0 _ 6A, 01
        push    eax                                     ; 100149D2 _ 50
        push    743                                     ; 100149D3 _ 68, 000002E7
        push    ?_5358                                  ; 100149D8 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 100149DD _ E8, FFFEEC5E
        add     esp, 16                                 ; 100149E2 _ 83. C4, 10
        mov     esi, ?_5761                             ; 100149E5 _ BE, 101DEB00(d)
?_2266: mov     eax, dword [esi]                        ; 100149EA _ 8B. 06
        test    al, 01H                                 ; 100149EC _ A8, 01
        jz      ?_2267                                  ; 100149EE _ 74, 18
        test    ah, 02H                                 ; 100149F0 _ F6. C4, 02
        jz      ?_2267                                  ; 100149F3 _ 74, 13
        push    ebp                                     ; 100149F5 _ 55
        push    esi                                     ; 100149F6 _ 56
        call    ?_1110                                  ; 100149F7 _ E8, FFFF5FA4
        add     esp, 8                                  ; 100149FC _ 83. C4, 08
        cmp     eax, -1                                 ; 100149FF _ 83. F8, FF
        je      ?_2255                                  ; 10014A02 _ 0F 84, FFFFFE6F
?_2267: add     esi, 2507364                            ; 10014A08 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10014A0E _ 81. FE, 114FFE20(d)
        jl      ?_2266                                  ; 10014A14 _ 7C, D4
        mov     ecx, dword [ebx]                        ; 10014A16 _ 8B. 0B
        lea     edx, [esp+30H]                          ; 10014A18 _ 8D. 54 24, 30
        push    ecx                                     ; 10014A1C _ 51
        push    ?_5362                                  ; 10014A1D _ 68, 1002D788(d)
        push    edx                                     ; 10014A22 _ 52
        call    ?_3039                                  ; 10014A23 _ E8, 00005871
        lea     eax, [esp+3CH]                          ; 10014A28 _ 8D. 44 24, 3C
        push    1                                       ; 10014A2C _ 6A, 01
        push    eax                                     ; 10014A2E _ 50
        push    751                                     ; 10014A2F _ 68, 000002EF
        push    ?_5358                                  ; 10014A34 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014A39 _ E8, FFFEEC02
        add     esp, 28                                 ; 10014A3E _ 83. C4, 1C
        xor     eax, eax                                ; 10014A41 _ 33. C0
        pop     edi                                     ; 10014A43 _ 5F
        pop     esi                                     ; 10014A44 _ 5E
        pop     ebp                                     ; 10014A45 _ 5D
        pop     ebx                                     ; 10014A46 _ 5B
        add     esp, 288                                ; 10014A47 _ 81. C4, 00000120
        ret                                             ; 10014A4D _ C3

        nop                                             ; 10014A4E _ 90
        nop                                             ; 10014A4F _ 90
?_2268: push    esi                                     ; 10014A50 _ 56
        mov     esi, dword [esp+8H]                     ; 10014A51 _ 8B. 74 24, 08
        push    edi                                     ; 10014A55 _ 57
        mov     eax, dword [esi]                        ; 10014A56 _ 8B. 06
        test    ah, 60H                                 ; 10014A58 _ F6. C4, 60
        jz      ?_2269                                  ; 10014A5B _ 74, 32
        push    1                                       ; 10014A5D _ 6A, 01
        push    ?_5359                                  ; 10014A5F _ 68, 1002D740(d)
        push    764                                     ; 10014A64 _ 68, 000002FC
        push    ?_5358                                  ; 10014A69 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014A6E _ E8, FFFEEBCD
        mov     eax, dword [esp+20H]                    ; 10014A73 _ 8B. 44 24, 20
        push    eax                                     ; 10014A77 _ 50
        push    esi                                     ; 10014A78 _ 56
        mov     byte [eax], 2                           ; 10014A79 _ C6. 00, 02
        call    ?_1110                                  ; 10014A7C _ E8, FFFF5F1F
        add     esp, 24                                 ; 10014A81 _ 83. C4, 18
        inc     eax                                     ; 10014A84 _ 40
        neg     eax                                     ; 10014A85 _ F7. D8
        sbb     eax, eax                                ; 10014A87 _ 1B. C0
        pop     edi                                     ; 10014A89 _ 5F
        neg     eax                                     ; 10014A8A _ F7. D8
        dec     eax                                     ; 10014A8C _ 48
        pop     esi                                     ; 10014A8D _ 5E
        ret                                             ; 10014A8E _ C3

