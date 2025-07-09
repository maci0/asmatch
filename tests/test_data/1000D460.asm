; ---- 1000D460 ----
?_1478: ; Local function
        mov     eax, dword [?_5380]                     ; 1000D460 _ A1, 10030B6C(d)
        push    esi                                     ; 1000D465 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D466 _ 8B. 74 24, 08
        mov     dword [esi+10H], eax                    ; 1000D46A _ 89. 46, 10
        call    ?_3297                                  ; 1000D46D _ E8, 0000E0D0
        push    eax                                     ; 1000D472 _ 50
        mov     dword [esi+26H], eax                    ; 1000D473 _ 89. 46, 26
        call    ?_3028                                  ; 1000D476 _ E8, 0000CCD5
        mov     eax, dword [esi+1FH]                    ; 1000D47B _ 8B. 46, 1F
        add     esp, 4                                  ; 1000D47E _ 83. C4, 04
        cmp     eax, -1                                 ; 1000D481 _ 83. F8, FF
        jnz     ?_1480                                  ; 1000D484 _ 75, 5C
        xor     eax, eax                                ; 1000D486 _ 33. C0
?_1479: xor     ecx, ecx                                ; 1000D488 _ 33. C9
        xor     edx, edx                                ; 1000D48A _ 33. D2
        mov     cl, byte [esi+25H]                      ; 1000D48C _ 8A. 4E, 25
        mov     dl, byte [esi+24H]                      ; 1000D48F _ 8A. 56, 24
        push    ecx                                     ; 1000D492 _ 51
        xor     ecx, ecx                                ; 1000D493 _ 33. C9
        mov     cl, byte [esi+23H]                      ; 1000D495 _ 8A. 4E, 23
        push    edx                                     ; 1000D498 _ 52
        mov     dx, word [esi+1DH]                      ; 1000D499 _ 66: 8B. 56, 1D
        push    ecx                                     ; 1000D49D _ 51
        mov     ecx, dword [esi+15H]                    ; 1000D49E _ 8B. 4E, 15
        push    eax                                     ; 1000D4A1 _ 50
        mov     eax, dword [esi+19H]                    ; 1000D4A2 _ 8B. 46, 19
        push    edx                                     ; 1000D4A5 _ 52
        xor     edx, edx                                ; 1000D4A6 _ 33. D2
        push    eax                                     ; 1000D4A8 _ 50
        mov     dl, byte [esi+14H]                      ; 1000D4A9 _ 8A. 56, 14
        push    ecx                                     ; 1000D4AC _ 51
        push    edx                                     ; 1000D4AD _ 52
        call    ?_2844                                  ; 1000D4AE _ E8, 0000B39D
        and     eax, 0FFFFH                             ; 1000D4B3 _ 25, 0000FFFF
        add     esp, 32                                 ; 1000D4B8 _ 83. C4, 20
        cmp     eax, 65535                              ; 1000D4BB _ 3D, 0000FFFF
        jnz     ?_1481                                  ; 1000D4C0 _ 75, 5B
        push    1                                       ; 1000D4C2 _ 6A, 01
        push    ?_5282                                  ; 1000D4C4 _ 68, 1002CB8C(d)
        push    10391                                   ; 1000D4C9 _ 68, 00002897
        push    ?_5260                                  ; 1000D4CE _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D4D3 _ E8, FFFF6168
        add     esp, 16                                 ; 1000D4D8 _ 83. C4, 10
        mov     eax, 1                                  ; 1000D4DB _ B8, 00000001
        pop     esi                                     ; 1000D4E0 _ 5E
        ret                                             ; 1000D4E1 _ C3

?_1480: push    eax                                     ; 1000D4E2 _ 50
        push    esi                                     ; 1000D4E3 _ 56
        call    ?_1389                                  ; 1000D4E4 _ E8, FFFFF5A7
        push    eax                                     ; 1000D4E9 _ 50
        push    1                                       ; 1000D4EA _ 6A, 01
        push    1                                       ; 1000D4EC _ 6A, 01
        mov     dword [esi+1FH], eax                    ; 1000D4EE _ 89. 46, 1F
        call    ?_2609                                  ; 1000D4F1 _ E8, 00009BEA
        add     esp, 20                                 ; 1000D4F6 _ 83. C4, 14
        test    eax, eax                                ; 1000D4F9 _ 85. C0
        jnz     ?_1479                                  ; 1000D4FB _ 75, 8B
        push    1                                       ; 1000D4FD _ 6A, 01
        push    ?_5281                                  ; 1000D4FF _ 68, 1002CB50(d)
        push    10377                                   ; 1000D504 _ 68, 00002889
        push    ?_5260                                  ; 1000D509 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D50E _ E8, FFFF612D
        add     esp, 16                                 ; 1000D513 _ 83. C4, 10
        mov     eax, 1                                  ; 1000D516 _ B8, 00000001
        pop     esi                                     ; 1000D51B _ 5E
        ret                                             ; 1000D51C _ C3
