; ---- 1000E530 ----
?_1585: ; Local function
        sub     esp, 8                                  ; 1000E530 _ 83. EC, 08
        push    ebx                                     ; 1000E533 _ 53
        push    esi                                     ; 1000E534 _ 56
        mov     esi, dword [esp+14H]                    ; 1000E535 _ 8B. 74 24, 14
        push    edi                                     ; 1000E539 _ 57
        mov     eax, dword [esi+14H]                    ; 1000E53A _ 8B. 46, 14
        push    eax                                     ; 1000E53D _ 50
        push    esi                                     ; 1000E53E _ 56
        call    ?_1389                                  ; 1000E53F _ E8, FFFFE54C
        lea     ecx, [esp+18H]                          ; 1000E544 _ 8D. 4C 24, 18
        mov     dword [esi+14H], eax                    ; 1000E548 _ 89. 46, 14
        push    eax                                     ; 1000E54B _ 50
        lea     edx, [esp+24H]                          ; 1000E54C _ 8D. 54 24, 24
        push    ecx                                     ; 1000E550 _ 51
        lea     eax, [esp+1CH]                          ; 1000E551 _ 8D. 44 24, 1C
        push    edx                                     ; 1000E555 _ 52
        push    eax                                     ; 1000E556 _ 50
        call    ?_2425                                  ; 1000E557 _ E8, 00007934
        add     esp, 24                                 ; 1000E55C _ 83. C4, 18
        test    eax, eax                                ; 1000E55F _ 85. C0
        jnz     ?_1586                                  ; 1000E561 _ 75, 11
        push    8                                       ; 1000E563 _ 6A, 08
        push    ?_5308                                  ; 1000E565 _ 68, 1002D024(d)
        push    12449                                   ; 1000E56A _ 68, 000030A1
        jmp     ?_1599                                  ; 1000E56F _ E9, 000000D4

?_1586: mov     eax, dword [esp+0CH]                    ; 1000E574 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000E578 _ 85. C0
        jz      ?_1587                                  ; 1000E57A _ 74, 05
        lea     ebx, [eax+5DH]                          ; 1000E57C _ 8D. 58, 5D
        jmp     ?_1589                                  ; 1000E57F _ EB, 17

?_1587: mov     eax, dword [esp+18H]                    ; 1000E581 _ 8B. 44 24, 18
        test    eax, eax                                ; 1000E585 _ 85. C0
        jz      ?_1588                                  ; 1000E587 _ 74, 05
        lea     ebx, [eax+14H]                          ; 1000E589 _ 8D. 58, 14
        jmp     ?_1589                                  ; 1000E58C _ EB, 0A

?_1588: mov     ecx, dword [esp+10H]                    ; 1000E58E _ 8B. 4C 24, 10
        lea     ebx, [ecx+178H]                         ; 1000E592 _ 8D. 99, 00000178
?_1589: mov     edx, dword [esi+10H]                    ; 1000E598 _ 8B. 56, 10
        push    edx                                     ; 1000E59B _ 52
        push    esi                                     ; 1000E59C _ 56
        call    ?_1389                                  ; 1000E59D _ E8, FFFFE4EE
        mov     dword [esi+10H], eax                    ; 1000E5A2 _ 89. 46, 10
        push    eax                                     ; 1000E5A5 _ 50
        lea     eax, [esp+1CH]                          ; 1000E5A6 _ 8D. 44 24, 1C
        lea     ecx, [esp+24H]                          ; 1000E5AA _ 8D. 4C 24, 24
        push    eax                                     ; 1000E5AE _ 50
        lea     edx, [esp+1CH]                          ; 1000E5AF _ 8D. 54 24, 1C
        push    ecx                                     ; 1000E5B3 _ 51
        push    edx                                     ; 1000E5B4 _ 52
        call    ?_2425                                  ; 1000E5B5 _ E8, 000078D6
        add     esp, 24                                 ; 1000E5BA _ 83. C4, 18
        test    eax, eax                                ; 1000E5BD _ 85. C0
        jnz     ?_1590                                  ; 1000E5BF _ 75, 0E
        push    1                                       ; 1000E5C1 _ 6A, 01
        push    ?_5307                                  ; 1000E5C3 _ 68, 1002CFF4(d)
        push    12477                                   ; 1000E5C8 _ 68, 000030BD
        jmp     ?_1599                                  ; 1000E5CD _ EB, 79

?_1590: mov     eax, dword [esp+0CH]                    ; 1000E5CF _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000E5D3 _ 85. C0
        jz      ?_1591                                  ; 1000E5D5 _ 74, 05
        lea     edi, [eax+5DH]                          ; 1000E5D7 _ 8D. 78, 5D
        jmp     ?_1593                                  ; 1000E5DA _ EB, 17

?_1591: mov     eax, dword [esp+18H]                    ; 1000E5DC _ 8B. 44 24, 18
        test    eax, eax                                ; 1000E5E0 _ 85. C0
        jz      ?_1592                                  ; 1000E5E2 _ 74, 05
        lea     edi, [eax+14H]                          ; 1000E5E4 _ 8D. 78, 14
        jmp     ?_1593                                  ; 1000E5E7 _ EB, 0A

?_1592: mov     eax, dword [esp+10H]                    ; 1000E5E9 _ 8B. 44 24, 10
        lea     edi, [eax+178H]                         ; 1000E5ED _ 8D. B8, 00000178
?_1593: mov     ecx, dword [esi+18H]                    ; 1000E5F3 _ 8B. 4E, 18
        push    ecx                                     ; 1000E5F6 _ 51
        push    esi                                     ; 1000E5F7 _ 56
        call    ?_1389                                  ; 1000E5F8 _ E8, FFFFE493
        mov     dword [esi+18H], eax                    ; 1000E5FD _ 89. 46, 18
        mov     ecx, dword [ebx]                        ; 1000E600 _ 8B. 0B
        add     esp, 8                                  ; 1000E602 _ 83. C4, 08
        xor     edx, edx                                ; 1000E605 _ 33. D2
        test    ecx, ecx                                ; 1000E607 _ 85. C9
        mov     dword [esp+18H], ecx                    ; 1000E609 _ 89. 4C 24, 18
        jz      ?_1598                                  ; 1000E60D _ 74, 2D
?_1594: cmp     dword [ecx+2H], eax                     ; 1000E60F _ 39. 41, 02
        jz      ?_1595                                  ; 1000E612 _ 74, 0F
        mov     edx, ecx                                ; 1000E614 _ 8B. D1
        mov     ecx, dword [ecx+3FH]                    ; 1000E616 _ 8B. 49, 3F
        test    ecx, ecx                                ; 1000E619 _ 85. C9
        mov     dword [esp+18H], ecx                    ; 1000E61B _ 89. 4C 24, 18
        jnz     ?_1594                                  ; 1000E61F _ 75, EE
        jmp     ?_1598                                  ; 1000E621 _ EB, 19

?_1595: test    edx, edx                                ; 1000E623 _ 85. D2
        jnz     ?_1596                                  ; 1000E625 _ 75, 07
        mov     edx, dword [ecx+3FH]                    ; 1000E627 _ 8B. 51, 3F
        mov     dword [ebx], edx                        ; 1000E62A _ 89. 13
        jmp     ?_1597                                  ; 1000E62C _ EB, 06

?_1596: mov     eax, dword [ecx+3FH]                    ; 1000E62E _ 8B. 41, 3F
        mov     dword [edx+3FH], eax                    ; 1000E631 _ 89. 42, 3F
?_1597: mov     eax, dword [esp+18H]                    ; 1000E634 _ 8B. 44 24, 18
        test    eax, eax                                ; 1000E638 _ 85. C0
        jnz     ?_1600                                  ; 1000E63A _ 75, 25
?_1598: push    8                                       ; 1000E63C _ 6A, 08
        push    ?_5306                                  ; 1000E63E _ 68, 1002CFC4(d)
        push    12537                                   ; 1000E643 _ 68, 000030F9
?_1599: push    ?_5260                                  ; 1000E648 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E64D _ E8, FFFF4FEE
        add     esp, 16                                 ; 1000E652 _ 83. C4, 10
        mov     eax, 1                                  ; 1000E655 _ B8, 00000001
        pop     edi                                     ; 1000E65A _ 5F
        pop     esi                                     ; 1000E65B _ 5E
        pop     ebx                                     ; 1000E65C _ 5B
        add     esp, 8                                  ; 1000E65D _ 83. C4, 08
        ret                                             ; 1000E660 _ C3

