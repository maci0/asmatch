; ---- 1000D110 ----
?_1446: ; Local function
        push    esi                                     ; 1000D110 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D111 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000D115 _ 8B. 46, 10
        cmp     eax, 1785686382                         ; 1000D118 _ 3D, 6A6F696E
        jnz     ?_1451                                  ; 1000D11D _ 75, 68
        mov     eax, dword [esi+18H]                    ; 1000D11F _ 8B. 46, 18
        push    eax                                     ; 1000D122 _ 50
        push    1                                       ; 1000D123 _ 6A, 01
        push    1                                       ; 1000D125 _ 6A, 01
        call    ?_2609                                  ; 1000D127 _ E8, 00009FB4
        add     esp, 12                                 ; 1000D12C _ 83. C4, 0C
        test    eax, eax                                ; 1000D12F _ 85. C0
        jz      ?_1449                                  ; 1000D131 _ 74, 44
        mov     ecx, dword [eax+5DH]                    ; 1000D133 _ 8B. 48, 5D
        push    301                                     ; 1000D136 _ 68, 0000012D
        push    0                                       ; 1000D13B _ 6A, 00
        push    6                                       ; 1000D13D _ 6A, 06
        push    2                                       ; 1000D13F _ 6A, 02
        push    ecx                                     ; 1000D141 _ 51
        call    ?_2482                                  ; 1000D142 _ E8, 00009319
        add     esp, 20                                 ; 1000D147 _ 83. C4, 14
        test    eax, eax                                ; 1000D14A _ 85. C0
        jz      ?_1449                                  ; 1000D14C _ 74, 29
        mov     esi, dword [esi+14H]                    ; 1000D14E _ 8B. 76, 14
        lea     edx, [eax+1CH]                          ; 1000D151 _ 8D. 50, 1C
        xor     ecx, ecx                                ; 1000D154 _ 33. C9
        mov     eax, edx                                ; 1000D156 _ 8B. C2
?_1447: cmp     dword [eax], esi                        ; 1000D158 _ 39. 30
        jz      ?_1449                                  ; 1000D15A _ 74, 1B
        inc     ecx                                     ; 1000D15C _ 41
        add     eax, 4                                  ; 1000D15D _ 83. C0, 04
        cmp     ecx, 4                                  ; 1000D160 _ 83. F9, 04
        jl      ?_1447                                  ; 1000D163 _ 7C, F3
        xor     eax, eax                                ; 1000D165 _ 33. C0
        mov     ecx, edx                                ; 1000D167 _ 8B. CA
?_1448: cmp     dword [ecx], -1                         ; 1000D169 _ 83. 39, FF
        jz      ?_1450                                  ; 1000D16C _ 74, 10
        inc     eax                                     ; 1000D16E _ 40
        add     ecx, 4                                  ; 1000D16F _ 83. C1, 04
        cmp     eax, 4                                  ; 1000D172 _ 83. F8, 04
        jl      ?_1448                                  ; 1000D175 _ 7C, F2
?_1449: mov     eax, 1                                  ; 1000D177 _ B8, 00000001
        pop     esi                                     ; 1000D17C _ 5E
        ret                                             ; 1000D17D _ C3

?_1450: cmp     eax, 4                                  ; 1000D17E _ 83. F8, 04
        jge     ?_1449                                  ; 1000D181 _ 7D, F4
        xor     eax, eax                                ; 1000D183 _ 33. C0
        pop     esi                                     ; 1000D185 _ 5E
        ret                                             ; 1000D186 _ C3
