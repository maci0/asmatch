; ---- 1000F980 ----
?_1779: ; Local function
        mov     eax, dword [?_5380]                     ; 1000F980 _ A1, 10030B6C(d)
        push    ebp                                     ; 1000F985 _ 55
        push    esi                                     ; 1000F986 _ 56
        mov     esi, dword [esp+0CH]                    ; 1000F987 _ 8B. 74 24, 0C
        push    edi                                     ; 1000F98B _ 57
        mov     dword [esi+10H], eax                    ; 1000F98C _ 89. 46, 10
        call    ?_3297                                  ; 1000F98F _ E8, 0000BBAE
        mov     ebp, dword [esp+14H]                    ; 1000F994 _ 8B. 6C 24, 14
        mov     dword [esi+22H], eax                    ; 1000F998 _ 89. 46, 22
        test    ebp, ebp                                ; 1000F99B _ 85. ED
        jz      ?_1780                                  ; 1000F99D _ 74, 0F
        mov     byte [ebp], 2                           ; 1000F99F _ C6. 45, 00, 02
        mov     byte [ebp+1H], 1                        ; 1000F9A3 _ C6. 45, 01, 01
        mov     dword [ebp+6H], 0                       ; 1000F9A7 _ C7. 45, 06, 00000000
?_1780: mov     ecx, dword [esi+22H]                    ; 1000F9AE _ 8B. 4E, 22
        push    ecx                                     ; 1000F9B1 _ 51
        call    ?_3028                                  ; 1000F9B2 _ E8, 0000A799
        mov     eax, dword [esi+17H]                    ; 1000F9B7 _ 8B. 46, 17
        add     esp, 4                                  ; 1000F9BA _ 83. C4, 04
        cmp     eax, -1                                 ; 1000F9BD _ 83. F8, FF
        jz      ?_1781                                  ; 1000F9C0 _ 74, 29
        push    eax                                     ; 1000F9C2 _ 50
        push    esi                                     ; 1000F9C3 _ 56
        call    ?_1389                                  ; 1000F9C4 _ E8, FFFFD0C7
        push    eax                                     ; 1000F9C9 _ 50
        push    1                                       ; 1000F9CA _ 6A, 01
        push    1                                       ; 1000F9CC _ 6A, 01
        mov     dword [esi+17H], eax                    ; 1000F9CE _ 89. 46, 17
        call    ?_2609                                  ; 1000F9D1 _ E8, 0000770A
        add     esp, 20                                 ; 1000F9D6 _ 83. C4, 14
        test    eax, eax                                ; 1000F9D9 _ 85. C0
        jnz     ?_1781                                  ; 1000F9DB _ 75, 0E
        push    1                                       ; 1000F9DD _ 6A, 01
        push    ?_5329                                  ; 1000F9DF _ 68, 1002D394(d)
        push    21062                                   ; 1000F9E4 _ 68, 00005246
        jmp     ?_1782                                  ; 1000F9E9 _ EB, 41

?_1781: xor     edx, edx                                ; 1000F9EB _ 33. D2
        xor     eax, eax                                ; 1000F9ED _ 33. C0
        mov     dl, byte [esi+20H]                      ; 1000F9EF _ 8A. 56, 20
        mov     al, byte [esi+1FH]                      ; 1000F9F2 _ 8A. 46, 1F
        push    0                                       ; 1000F9F5 _ 6A, 00
        push    edx                                     ; 1000F9F7 _ 52
        push    eax                                     ; 1000F9F8 _ 50
        push    0                                       ; 1000F9F9 _ 6A, 00
        xor     ecx, ecx                                ; 1000F9FB _ 33. C9
        push    20                                      ; 1000F9FD _ 6A, 14
        mov     cl, byte [esi+14H]                      ; 1000F9FF _ 8A. 4E, 14
        push    -1                                      ; 1000FA02 _ 6A, FF
        push    -1                                      ; 1000FA04 _ 6A, FF
        push    ecx                                     ; 1000FA06 _ 51
        call    ?_2844                                  ; 1000FA07 _ E8, 00008E44
        mov     di, ax                                  ; 1000FA0C _ 66: 8B. F8
        add     esp, 32                                 ; 1000FA0F _ 83. C4, 20
        and     edi, 0FFFFH                             ; 1000FA12 _ 81. E7, 0000FFFF
        cmp     edi, 65535                              ; 1000FA18 _ 81. FF, 0000FFFF
        jnz     ?_1783                                  ; 1000FA1E _ 75, 22
        push    1                                       ; 1000FA20 _ 6A, 01
        push    ?_5328                                  ; 1000FA22 _ 68, 1002D364(d)
        push    21082                                   ; 1000FA27 _ 68, 0000525A
?_1782: push    ?_5260                                  ; 1000FA2C _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000FA31 _ E8, FFFF3C0A
        add     esp, 16                                 ; 1000FA36 _ 83. C4, 10
        mov     eax, 1                                  ; 1000FA39 _ B8, 00000001
        pop     edi                                     ; 1000FA3E _ 5F
        pop     esi                                     ; 1000FA3F _ 5E
        pop     ebp                                     ; 1000FA40 _ 5D
        ret                                             ; 1000FA41 _ C3

