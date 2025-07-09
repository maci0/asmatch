; ---- 1000CDE0 ----
?_1418: ; Local function
        sub     esp, 16                                 ; 1000CDE0 _ 83. EC, 10
        push    ebx                                     ; 1000CDE3 _ 53
        push    ebp                                     ; 1000CDE4 _ 55
        push    esi                                     ; 1000CDE5 _ 56
        push    edi                                     ; 1000CDE6 _ 57
        mov     edi, dword [esp+24H]                    ; 1000CDE7 _ 8B. 7C 24, 24
        mov     eax, dword [edi+10H]                    ; 1000CDEB _ 8B. 47, 10
        push    eax                                     ; 1000CDEE _ 50
        push    edi                                     ; 1000CDEF _ 57
        call    ?_1389                                  ; 1000CDF0 _ E8, FFFFFC9B
        lea     ecx, [esp+18H]                          ; 1000CDF5 _ 8D. 4C 24, 18
        mov     dword [edi+10H], eax                    ; 1000CDF9 _ 89. 47, 10
        push    eax                                     ; 1000CDFC _ 50
        lea     edx, [esp+28H]                          ; 1000CDFD _ 8D. 54 24, 28
        push    ecx                                     ; 1000CE01 _ 51
        lea     eax, [esp+28H]                          ; 1000CE02 _ 8D. 44 24, 28
        push    edx                                     ; 1000CE06 _ 52
        push    eax                                     ; 1000CE07 _ 50
        call    ?_2425                                  ; 1000CE08 _ E8, 00009083
        add     esp, 24                                 ; 1000CE0D _ 83. C4, 18
        test    eax, eax                                ; 1000CE10 _ 85. C0
        jnz     ?_1419                                  ; 1000CE12 _ 75, 11
        push    1                                       ; 1000CE14 _ 6A, 01
        push    ?_5273                                  ; 1000CE16 _ 68, 1002C9E0(d)
        push    9277                                    ; 1000CE1B _ 68, 0000243D
        jmp     ?_1431                                  ; 1000CE20 _ E9, 000000EC

?_1419: mov     eax, dword [esp+18H]                    ; 1000CE25 _ 8B. 44 24, 18
        mov     edx, dword [esp+10H]                    ; 1000CE29 _ 8B. 54 24, 10
        test    eax, eax                                ; 1000CE2D _ 85. C0
        jz      ?_1420                                  ; 1000CE2F _ 74, 04
        mov     ebp, eax                                ; 1000CE31 _ 8B. E8
        jmp     ?_1421                                  ; 1000CE33 _ EB, 0C

?_1420: mov     eax, dword [esp+1CH]                    ; 1000CE35 _ 8B. 44 24, 1C
        test    eax, eax                                ; 1000CE39 _ 85. C0
        mov     ebp, eax                                ; 1000CE3B _ 8B. E8
        jnz     ?_1421                                  ; 1000CE3D _ 75, 02
        mov     ebp, edx                                ; 1000CE3F _ 8B. EA
?_1421: mov     al, byte [edi+14H]                      ; 1000CE41 _ 8A. 47, 14
        lea     esi, [edi+15H]                          ; 1000CE44 _ 8D. 77, 15
        test    al, al                                  ; 1000CE47 _ 84. C0
        mov     dword [esp+14H], 0                      ; 1000CE49 _ C7. 44 24, 14, 00000000
        jbe     ?_1427                                  ; 1000CE51 _ 0F 86, 00000088
?_1422: movsx   ebx, byte [esi]                         ; 1000CE57 _ 0F BE. 1E
        movsx   edi, byte [esi+1H]                      ; 1000CE5A _ 0F BE. 7E, 01
        inc     esi                                     ; 1000CE5E _ 46
        xor     eax, eax                                ; 1000CE5F _ 33. C0
        inc     esi                                     ; 1000CE61 _ 46
        mov     ax, word [esi]                          ; 1000CE62 _ 66: 8B. 06
        add     esi, 2                                  ; 1000CE65 _ 83. C6, 02
        add     eax, ebp                                ; 1000CE68 _ 03. C5
        test    edx, edx                                ; 1000CE6A _ 85. D2
        jz      ?_1423                                  ; 1000CE6C _ 74, 32
        lea     ecx, [edx+4H]                           ; 1000CE6E _ 8D. 4A, 04
        cmp     eax, ecx                                ; 1000CE71 _ 3B. C1
        jz      ?_1428                                  ; 1000CE73 _ 74, 74
        lea     ecx, [edx+5CH]                          ; 1000CE75 _ 8D. 4A, 5C
        cmp     eax, ecx                                ; 1000CE78 _ 3B. C1
        jnz     ?_1423                                  ; 1000CE7A _ 75, 24
        mov     eax, dword [esi]                        ; 1000CE7C _ 8B. 06
        mov     edx, dword [ecx]                        ; 1000CE7E _ 8B. 11
        add     eax, edx                                ; 1000CE80 _ 03. C2
        push    eax                                     ; 1000CE82 _ 50
        call    ?_2817                                  ; 1000CE83 _ E8, 0000B618
        add     esp, 4                                  ; 1000CE88 _ 83. C4, 04
        test    eax, eax                                ; 1000CE8B _ 85. C0
        jz      ?_1429                                  ; 1000CE8D _ 74, 68
        mov     eax, dword [eax+5CH]                    ; 1000CE8F _ 8B. 40, 5C
        mov     edx, dword [esp+10H]                    ; 1000CE92 _ 8B. 54 24, 10
        cmp     eax, -1                                 ; 1000CE96 _ 83. F8, FF
        jz      ?_1423                                  ; 1000CE99 _ 74, 05
        cmp     eax, dword [edx+4H]                     ; 1000CE9B _ 3B. 42, 04
        jnz     ?_1430                                  ; 1000CE9E _ 75, 65
?_1423: mov     eax, ebx                                ; 1000CEA0 _ 8B. C3
        dec     eax                                     ; 1000CEA2 _ 48
        jz      ?_1425                                  ; 1000CEA3 _ 74, 1A
        dec     eax                                     ; 1000CEA5 _ 48
        jz      ?_1424                                  ; 1000CEA6 _ 74, 0E
        sub     eax, 2                                  ; 1000CEA8 _ 83. E8, 02
        jnz     ?_1426                                  ; 1000CEAB _ 75, 18
        test    edi, edi                                ; 1000CEAD _ 85. FF
        jbe     ?_1426                                  ; 1000CEAF _ 76, 14
        lea     esi, [esi+edi*4]                        ; 1000CEB1 _ 8D. 34 BE
        jmp     ?_1426                                  ; 1000CEB4 _ EB, 0F

?_1424: test    edi, edi                                ; 1000CEB6 _ 85. FF
        jbe     ?_1426                                  ; 1000CEB8 _ 76, 0B
        lea     esi, [esi+edi*2]                        ; 1000CEBA _ 8D. 34 7E
        jmp     ?_1426                                  ; 1000CEBD _ EB, 06

?_1425: test    edi, edi                                ; 1000CEBF _ 85. FF
        jbe     ?_1426                                  ; 1000CEC1 _ 76, 02
        add     esi, edi                                ; 1000CEC3 _ 03. F7
?_1426: mov     edi, dword [esp+24H]                    ; 1000CEC5 _ 8B. 7C 24, 24
        mov     eax, dword [esp+14H]                    ; 1000CEC9 _ 8B. 44 24, 14
        xor     ecx, ecx                                ; 1000CECD _ 33. C9
        inc     eax                                     ; 1000CECF _ 40
        mov     cl, byte [edi+14H]                      ; 1000CED0 _ 8A. 4F, 14
        mov     dword [esp+14H], eax                    ; 1000CED3 _ 89. 44 24, 14
        cmp     eax, ecx                                ; 1000CED7 _ 3B. C1
        jc      ?_1422                                  ; 1000CED9 _ 0F 82, FFFFFF78
?_1427: pop     edi                                     ; 1000CEDF _ 5F
        pop     esi                                     ; 1000CEE0 _ 5E
        pop     ebp                                     ; 1000CEE1 _ 5D
        xor     eax, eax                                ; 1000CEE2 _ 33. C0
        pop     ebx                                     ; 1000CEE4 _ 5B
        add     esp, 16                                 ; 1000CEE5 _ 83. C4, 10
        ret                                             ; 1000CEE8 _ C3

?_1428: push    1                                       ; 1000CEE9 _ 6A, 01
        push    ?_5272                                  ; 1000CEEB _ 68, 1002C9A0(d)
        push    9337                                    ; 1000CEF0 _ 68, 00002479
        jmp     ?_1431                                  ; 1000CEF5 _ EB, 1A

?_1429: push    1                                       ; 1000CEF7 _ 6A, 01
        push    ?_5271                                  ; 1000CEF9 _ 68, 1002C958(d)
        push    9371                                    ; 1000CEFE _ 68, 0000249B
        jmp     ?_1431                                  ; 1000CF03 _ EB, 0C

?_1430: push    1                                       ; 1000CF05 _ 6A, 01
        push    ?_5270                                  ; 1000CF07 _ 68, 1002C90C(d)
        push    9381                                    ; 1000CF0C _ 68, 000024A5
?_1431: push    ?_5260                                  ; 1000CF11 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000CF16 _ E8, FFFF6725
        add     esp, 16                                 ; 1000CF1B _ 83. C4, 10
        mov     eax, 1                                  ; 1000CF1E _ B8, 00000001
        pop     edi                                     ; 1000CF23 _ 5F
        pop     esi                                     ; 1000CF24 _ 5E
        pop     ebp                                     ; 1000CF25 _ 5D
        pop     ebx                                     ; 1000CF26 _ 5B
        add     esp, 16                                 ; 1000CF27 _ 83. C4, 10
        ret                                             ; 1000CF2A _ C3

        nop                                             ; 1000CF2B _ 90
        nop                                             ; 1000CF2C _ 90
        nop                                             ; 1000CF2D _ 90
        nop                                             ; 1000CF2E _ 90
        nop                                             ; 1000CF2F _ 90
