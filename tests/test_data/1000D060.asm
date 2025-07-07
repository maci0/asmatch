; ---- 1000D060 ----
?_1441: ; Local function
        push    esi                                     ; 1000D060 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D061 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000D065 _ 8B. 46, 10
        cmp     eax, 1668048242                         ; 1000D068 _ 3D, 636C6572
        jnz     ?_1442                                  ; 1000D06D _ 75, 44
        mov     eax, dword [esi+18H]                    ; 1000D06F _ 8B. 46, 18
        push    eax                                     ; 1000D072 _ 50
        push    1                                       ; 1000D073 _ 6A, 01
        push    1                                       ; 1000D075 _ 6A, 01
        call    ?_2609                                  ; 1000D077 _ E8, 0000A064
        add     esp, 12                                 ; 1000D07C _ 83. C4, 0C
        test    eax, eax                                ; 1000D07F _ 85. C0
        jz      ?_1444                                  ; 1000D081 _ 74, 7B
        mov     ecx, dword [eax+5DH]                    ; 1000D083 _ 8B. 48, 5D
        push    300                                     ; 1000D086 _ 68, 0000012C
        push    0                                       ; 1000D08B _ 6A, 00
        push    6                                       ; 1000D08D _ 6A, 06
        push    2                                       ; 1000D08F _ 6A, 02
        push    ecx                                     ; 1000D091 _ 51
        call    ?_2482                                  ; 1000D092 _ E8, 000093C9
        add     esp, 20                                 ; 1000D097 _ 83. C4, 14
        test    eax, eax                                ; 1000D09A _ 85. C0
        jz      ?_1444                                  ; 1000D09C _ 74, 60
        mov     edx, dword [?_5628]                     ; 1000D09E _ 8B. 15, 10035880(d)
        mov     esi, dword [eax+28H]                    ; 1000D0A4 _ 8B. 70, 28
        sub     edx, esi                                ; 1000D0A7 _ 2B. D6
        xor     eax, eax                                ; 1000D0A9 _ 33. C0
        cmp     edx, 1                                  ; 1000D0AB _ 83. FA, 01
        pop     esi                                     ; 1000D0AE _ 5E
        setle   al                                      ; 1000D0AF _ 0F 9E. C0
        ret                                             ; 1000D0B2 _ C3

?_1442: cmp     eax, 1651865888                         ; 1000D0B3 _ 3D, 62757920
        jnz     ?_1444                                  ; 1000D0B8 _ 75, 44
        mov     eax, dword [esi+18H]                    ; 1000D0BA _ 8B. 46, 18
        push    eax                                     ; 1000D0BD _ 50
        push    1                                       ; 1000D0BE _ 6A, 01
        push    1                                       ; 1000D0C0 _ 6A, 01
        call    ?_2609                                  ; 1000D0C2 _ E8, 0000A019
        add     esp, 12                                 ; 1000D0C7 _ 83. C4, 0C
        test    eax, eax                                ; 1000D0CA _ 85. C0
        jz      ?_1444                                  ; 1000D0CC _ 74, 30
        mov     ecx, dword [eax+5DH]                    ; 1000D0CE _ 8B. 48, 5D
        push    300                                     ; 1000D0D1 _ 68, 0000012C
        push    0                                       ; 1000D0D6 _ 6A, 00
        push    6                                       ; 1000D0D8 _ 6A, 06
        push    2                                       ; 1000D0DA _ 6A, 02
        push    ecx                                     ; 1000D0DC _ 51
        call    ?_2482                                  ; 1000D0DD _ E8, 0000937E
        add     esp, 20                                 ; 1000D0E2 _ 83. C4, 14
        test    eax, eax                                ; 1000D0E5 _ 85. C0
        jz      ?_1444                                  ; 1000D0E7 _ 74, 15
        mov     esi, dword [esi+1CH]                    ; 1000D0E9 _ 8B. 76, 1C
        xor     ecx, ecx                                ; 1000D0EC _ 33. C9
        add     eax, 28                                 ; 1000D0EE _ 83. C0, 1C
?_1443: cmp     dword [eax], esi                        ; 1000D0F1 _ 39. 30
        jz      ?_1445                                  ; 1000D0F3 _ 74, 10
        inc     ecx                                     ; 1000D0F5 _ 41
        add     eax, 4                                  ; 1000D0F6 _ 83. C0, 04
        cmp     ecx, 3                                  ; 1000D0F9 _ 83. F9, 03
        jl      ?_1443                                  ; 1000D0FC _ 7C, F3
?_1444: mov     eax, 1                                  ; 1000D0FE _ B8, 00000001
        pop     esi                                     ; 1000D103 _ 5E
        ret                                             ; 1000D104 _ C3

