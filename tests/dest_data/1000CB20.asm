; ---- 1000CB20 ----
?_1393: ; Local function
        sub     esp, 8                                  ; 1000CB20 _ 83. EC, 08
        push    esi                                     ; 1000CB23 _ 56
        mov     esi, dword [esp+10H]                    ; 1000CB24 _ 8B. 74 24, 10
        mov     eax, dword [esi+14H]                    ; 1000CB28 _ 8B. 46, 14
        cmp     eax, -1                                 ; 1000CB2B _ 83. F8, FF
        je      ?_1399                                  ; 1000CB2E _ 0F 84, 00000090
        push    eax                                     ; 1000CB34 _ 50
        push    esi                                     ; 1000CB35 _ 56
        call    ?_1389                                  ; 1000CB36 _ E8, FFFFFF55
        mov     dword [esi+14H], eax                    ; 1000CB3B _ 89. 46, 14
        push    eax                                     ; 1000CB3E _ 50
        lea     eax, [esp+14H]                          ; 1000CB3F _ 8D. 44 24, 14
        lea     ecx, [esp+10H]                          ; 1000CB43 _ 8D. 4C 24, 10
        push    eax                                     ; 1000CB47 _ 50
        lea     edx, [esp+20H]                          ; 1000CB48 _ 8D. 54 24, 20
        push    ecx                                     ; 1000CB4C _ 51
        push    edx                                     ; 1000CB4D _ 52
        call    ?_2425                                  ; 1000CB4E _ E8, 0000933D
        add     esp, 24                                 ; 1000CB53 _ 83. C4, 18
        test    eax, eax                                ; 1000CB56 _ 85. C0
        jnz     ?_1394                                  ; 1000CB58 _ 75, 0E
        push    1                                       ; 1000CB5A _ 6A, 01
        push    ?_5262                                  ; 1000CB5C _ 68, 1002C7A4(d)
        push    8953                                    ; 1000CB61 _ 68, 000022F9
        jmp     ?_1398                                  ; 1000CB66 _ EB, 45

?_1394: mov     eax, dword [esp+10H]                    ; 1000CB68 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000CB6C _ 85. C0
        jz      ?_1395                                  ; 1000CB6E _ 74, 05
        add     eax, 93                                 ; 1000CB70 _ 83. C0, 5D
        jmp     ?_1397                                  ; 1000CB73 _ EB, 16

?_1395: mov     eax, dword [esp+4H]                     ; 1000CB75 _ 8B. 44 24, 04
        test    eax, eax                                ; 1000CB79 _ 85. C0
        jz      ?_1396                                  ; 1000CB7B _ 74, 05
        add     eax, 20                                 ; 1000CB7D _ 83. C0, 14
        jmp     ?_1397                                  ; 1000CB80 _ EB, 09

?_1396: mov     eax, dword [esp+8H]                     ; 1000CB82 _ 8B. 44 24, 08
        add     eax, 376                                ; 1000CB86 _ 05, 00000178
?_1397: mov     cl, byte [esi+1CH]                      ; 1000CB8B _ 8A. 4E, 1C
        mov     edx, dword [eax]                        ; 1000CB8E _ 8B. 10
        push    ecx                                     ; 1000CB90 _ 51
        push    edx                                     ; 1000CB91 _ 52
        call    ?_2929                                  ; 1000CB92 _ E8, 0000CB29
        mov     ecx, dword [esi+1DH]                    ; 1000CB97 _ 8B. 4E, 1D
        add     esp, 8                                  ; 1000CB9A _ 83. C4, 08
        sub     eax, ecx                                ; 1000CB9D _ 2B. C1
        jns     ?_1399                                  ; 1000CB9F _ 79, 23
        push    1                                       ; 1000CBA1 _ 6A, 01
        push    ?_5261                                  ; 1000CBA3 _ 68, 1002C774(d)
        push    8987                                    ; 1000CBA8 _ 68, 0000231B
?_1398: push    ?_5260                                  ; 1000CBAD _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000CBB2 _ E8, FFFF6A89
        add     esp, 16                                 ; 1000CBB7 _ 83. C4, 10
        mov     eax, 1                                  ; 1000CBBA _ B8, 00000001
        pop     esi                                     ; 1000CBBF _ 5E
        add     esp, 8                                  ; 1000CBC0 _ 83. C4, 08
        ret                                             ; 1000CBC3 _ C3

