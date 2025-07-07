; ---- 10021BCA ----
?_4515: ; Local function
        push    ebp                                     ; 10021BCA _ 55
        mov     ebp, esp                                ; 10021BCB _ 8B. EC
        push    -1                                      ; 10021BCD _ 6A, FF
        push    ?_4995                                  ; 10021BCF _ 68, 10026460(d)
        push    ?_3881                                  ; 10021BD4 _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 10021BD9 _ 64: A1, 00000000
        push    eax                                     ; 10021BDF _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 10021BE0 _ 64: 89. 25, 00000000
        sub     esp, 24                                 ; 10021BE7 _ 83. EC, 18
        push    ebx                                     ; 10021BEA _ 53
        push    esi                                     ; 10021BEB _ 56
        push    edi                                     ; 10021BEC _ 57
        mov     dword [ebp-18H], esp                    ; 10021BED _ 89. 65, E8
        mov     eax, dword [?_5620]                     ; 10021BF0 _ A1, 10035830(d)
        xor     ebx, ebx                                ; 10021BF5 _ 33. DB
        cmp     eax, ebx                                ; 10021BF7 _ 3B. C3
        jnz     ?_4518                                  ; 10021BF9 _ 75, 3E
        lea     eax, [ebp-1CH]                          ; 10021BFB _ 8D. 45, E4
        push    eax                                     ; 10021BFE _ 50
        push    1                                       ; 10021BFF _ 6A, 01
        pop     esi                                     ; 10021C01 _ 5E
        push    esi                                     ; 10021C02 _ 56
        push    ?_4967                                  ; 10021C03 _ 68, 100260F4(d)
        push    esi                                     ; 10021C08 _ 56
        call    near [imp_GetStringTypeW]               ; 10021C09 _ FF. 15, 10024098(d)
        test    eax, eax                                ; 10021C0F _ 85. C0
        jz      ?_4516                                  ; 10021C11 _ 74, 04
        mov     eax, esi                                ; 10021C13 _ 8B. C6
        jmp     ?_4517                                  ; 10021C15 _ EB, 1D

?_4516: lea     eax, [ebp-1CH]                          ; 10021C17 _ 8D. 45, E4
        push    eax                                     ; 10021C1A _ 50
        push    esi                                     ; 10021C1B _ 56
        push    ?_4966                                  ; 10021C1C _ 68, 100260F0(d)
        push    esi                                     ; 10021C21 _ 56
        push    ebx                                     ; 10021C22 _ 53
        call    near [imp_GetStringTypeA]               ; 10021C23 _ FF. 15, 1002409C(d)
        test    eax, eax                                ; 10021C29 _ 85. C0
        je      ?_4525                                  ; 10021C2B _ 0F 84, 000000CE
        push    2                                       ; 10021C31 _ 6A, 02
        pop     eax                                     ; 10021C33 _ 58
?_4517: mov     dword [?_5620], eax                     ; 10021C34 _ A3, 10035830(d)
?_4518: cmp     eax, 2                                  ; 10021C39 _ 83. F8, 02
        jnz     ?_4520                                  ; 10021C3C _ 75, 24
        mov     eax, dword [ebp+1CH]                    ; 10021C3E _ 8B. 45, 1C
        cmp     eax, ebx                                ; 10021C41 _ 3B. C3
        jnz     ?_4519                                  ; 10021C43 _ 75, 05
        mov     eax, dword [?_5589]                     ; 10021C45 _ A1, 100355BC(d)
?_4519: push    dword [ebp+14H]                         ; 10021C4A _ FF. 75, 14
        push    dword [ebp+10H]                         ; 10021C4D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10021C50 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10021C53 _ FF. 75, 08
        push    eax                                     ; 10021C56 _ 50
        call    near [imp_GetStringTypeA]               ; 10021C57 _ FF. 15, 1002409C(d)
        jmp     ?_4526                                  ; 10021C5D _ E9, 0000009F

?_4520: cmp     eax, 1                                  ; 10021C62 _ 83. F8, 01
        jne     ?_4525                                  ; 10021C65 _ 0F 85, 00000094
        cmp     dword [ebp+18H], ebx                    ; 10021C6B _ 39. 5D, 18
        jnz     ?_4521                                  ; 10021C6E _ 75, 08
        mov     eax, dword [?_5590]                     ; 10021C70 _ A1, 100355CC(d)
        mov     dword [ebp+18H], eax                    ; 10021C75 _ 89. 45, 18
?_4521: push    ebx                                     ; 10021C78 _ 53
        push    ebx                                     ; 10021C79 _ 53
        push    dword [ebp+10H]                         ; 10021C7A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10021C7D _ FF. 75, 0C
        mov     eax, dword [ebp+20H]                    ; 10021C80 _ 8B. 45, 20
        neg     eax                                     ; 10021C83 _ F7. D8
        sbb     eax, eax                                ; 10021C85 _ 1B. C0
        and     eax, 08H                                ; 10021C87 _ 83. E0, 08
        inc     eax                                     ; 10021C8A _ 40
        push    eax                                     ; 10021C8B _ 50
        push    dword [ebp+18H]                         ; 10021C8C _ FF. 75, 18
        call    near [imp_MultiByteToWideChar]          ; 10021C8F _ FF. 15, 10024134(d)
        mov     dword [ebp-20H], eax                    ; 10021C95 _ 89. 45, E0
        cmp     eax, ebx                                ; 10021C98 _ 3B. C3
        jz      ?_4525                                  ; 10021C9A _ 74, 63
        mov     dword [ebp-4H], ebx                     ; 10021C9C _ 89. 5D, FC
        lea     edi, [eax+eax]                          ; 10021C9F _ 8D. 3C 00
        mov     eax, edi                                ; 10021CA2 _ 8B. C7
        add     eax, 3                                  ; 10021CA4 _ 83. C0, 03
        and     al, 0FFFFFFFCH                          ; 10021CA7 _ 24, FC
        call    ?_3168                                  ; 10021CA9 _ E8, FFFF8FC2
        mov     dword [ebp-18H], esp                    ; 10021CAE _ 89. 65, E8
        mov     esi, esp                                ; 10021CB1 _ 8B. F4
        mov     dword [ebp-24H], esi                    ; 10021CB3 _ 89. 75, DC
        push    edi                                     ; 10021CB6 _ 57
        push    ebx                                     ; 10021CB7 _ 53
        push    esi                                     ; 10021CB8 _ 56
        call    ?_4392                                  ; 10021CB9 _ E8, FFFFF582
        add     esp, 12                                 ; 10021CBE _ 83. C4, 0C
        jmp     ?_4524                                  ; 10021CC1 _ EB, 0B

?_4522: push    1                                       ; 10021CC3 _ 6A, 01
        pop     eax                                     ; 10021CC5 _ 58
        ret                                             ; 10021CC6 _ C3

?_4523: mov     esp, dword [ebp-18H]                    ; 10021CC7 _ 8B. 65, E8
        xor     ebx, ebx                                ; 10021CCA _ 33. DB
        xor     esi, esi                                ; 10021CCC _ 33. F6
?_4524: or      dword [ebp-4H], 0FFFFFFFFH              ; 10021CCE _ 83. 4D, FC, FF
        cmp     esi, ebx                                ; 10021CD2 _ 3B. F3
        jz      ?_4525                                  ; 10021CD4 _ 74, 29
        push    dword [ebp-20H]                         ; 10021CD6 _ FF. 75, E0
        push    esi                                     ; 10021CD9 _ 56
        push    dword [ebp+10H]                         ; 10021CDA _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10021CDD _ FF. 75, 0C
        push    1                                       ; 10021CE0 _ 6A, 01
        push    dword [ebp+18H]                         ; 10021CE2 _ FF. 75, 18
        call    near [imp_MultiByteToWideChar]          ; 10021CE5 _ FF. 15, 10024134(d)
        cmp     eax, ebx                                ; 10021CEB _ 3B. C3
        jz      ?_4525                                  ; 10021CED _ 74, 10
        push    dword [ebp+14H]                         ; 10021CEF _ FF. 75, 14
        push    eax                                     ; 10021CF2 _ 50
        push    esi                                     ; 10021CF3 _ 56
        push    dword [ebp+8H]                          ; 10021CF4 _ FF. 75, 08
        call    near [imp_GetStringTypeW]               ; 10021CF7 _ FF. 15, 10024098(d)
        jmp     ?_4526                                  ; 10021CFD _ EB, 02

?_4525: xor     eax, eax                                ; 10021CFF _ 33. C0
?_4526: lea     esp, [ebp-34H]                          ; 10021D01 _ 8D. 65, CC
        mov     ecx, dword [ebp-10H]                    ; 10021D04 _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 10021D07 _ 64: 89. 0D, 00000000
        pop     edi                                     ; 10021D0E _ 5F
        pop     esi                                     ; 10021D0F _ 5E
        pop     ebx                                     ; 10021D10 _ 5B
        leave                                           ; 10021D11 _ C9
        ret                                             ; 10021D12 _ C3

