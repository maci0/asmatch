; ---- 1000D187 ----
?_1451: ; Local function
        cmp     eax, 1818583414                         ; 1000D187 _ 3D, 6C656176
        jnz     ?_1454                                  ; 1000D18C _ 75, 54
        mov     edx, dword [esi+18H]                    ; 1000D18E _ 8B. 56, 18
        push    edx                                     ; 1000D191 _ 52
        push    1                                       ; 1000D192 _ 6A, 01
        push    1                                       ; 1000D194 _ 6A, 01
        call    ?_2609                                  ; 1000D196 _ E8, 00009F45
        add     esp, 12                                 ; 1000D19B _ 83. C4, 0C
        test    eax, eax                                ; 1000D19E _ 85. C0
        jz      ?_1449                                  ; 1000D1A0 _ 74, D5
        mov     eax, dword [eax+5DH]                    ; 1000D1A2 _ 8B. 40, 5D
        push    301                                     ; 1000D1A5 _ 68, 0000012D
        push    0                                       ; 1000D1AA _ 6A, 00
        push    6                                       ; 1000D1AC _ 6A, 06
        push    2                                       ; 1000D1AE _ 6A, 02
        push    eax                                     ; 1000D1B0 _ 50
        call    ?_2482                                  ; 1000D1B1 _ E8, 000092AA
        add     esp, 20                                 ; 1000D1B6 _ 83. C4, 14
        test    eax, eax                                ; 1000D1B9 _ 85. C0
        jz      ?_1449                                  ; 1000D1BB _ 74, BA
        mov     esi, dword [esi+14H]                    ; 1000D1BD _ 8B. 76, 14
        xor     ecx, ecx                                ; 1000D1C0 _ 33. C9
        add     eax, 28                                 ; 1000D1C2 _ 83. C0, 1C
?_1452: cmp     dword [eax], esi                        ; 1000D1C5 _ 39. 30
        jz      ?_1453                                  ; 1000D1C7 _ 74, 10
        inc     ecx                                     ; 1000D1C9 _ 41
        add     eax, 4                                  ; 1000D1CA _ 83. C0, 04
        cmp     ecx, 4                                  ; 1000D1CD _ 83. F9, 04
        jl      ?_1452                                  ; 1000D1D0 _ 7C, F3
        mov     eax, 1                                  ; 1000D1D2 _ B8, 00000001
        pop     esi                                     ; 1000D1D7 _ 5E
        ret                                             ; 1000D1D8 _ C3

?_1453: cmp     ecx, 4                                  ; 1000D1D9 _ 83. F9, 04
        jge     ?_1449                                  ; 1000D1DC _ 7D, 99
        xor     eax, eax                                ; 1000D1DE _ 33. C0
        pop     esi                                     ; 1000D1E0 _ 5E
        ret                                             ; 1000D1E1 _ C3
