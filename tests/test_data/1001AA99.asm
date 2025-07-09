; ---- 1001AA99 ----
?_3144: ; Local function
        push    ebp                                     ; 1001AA99 _ 55
        mov     ebp, esp                                ; 1001AA9A _ 8B. EC
        push    ecx                                     ; 1001AA9C _ 51
        push    ebx                                     ; 1001AA9D _ 53
        push    esi                                     ; 1001AA9E _ 56
        push    edi                                     ; 1001AA9F _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001AAA0 _ 8B. 7D, 0C
        imul    edi, dword [ebp+10H]                    ; 1001AAA3 _ 0F AF. 7D, 10
        mov     ebx, dword [ebp+8H]                     ; 1001AAA7 _ 8B. 5D, 08
        mov     ecx, edi                                ; 1001AAAA _ 8B. CF
        test    edi, edi                                ; 1001AAAC _ 85. FF
        mov     dword [ebp-4H], edi                     ; 1001AAAE _ 89. 7D, FC
        mov     dword [ebp+8H], ecx                     ; 1001AAB1 _ 89. 4D, 08
        jnz     ?_3145                                  ; 1001AAB4 _ 75, 07
        xor     eax, eax                                ; 1001AAB6 _ 33. C0
        jmp     ?_3154                                  ; 1001AAB8 _ E9, 000000A9

?_3145: mov     esi, dword [ebp+14H]                    ; 1001AABD _ 8B. 75, 14
; Note: Length-changing prefix causes delay on Intel processors
        test    word [esi+0CH], 10CH                    ; 1001AAC0 _ 66: F7. 46, 0C, 010C
        jz      ?_3146                                  ; 1001AAC6 _ 74, 08
        mov     eax, dword [esi+18H]                    ; 1001AAC8 _ 8B. 46, 18
        mov     dword [ebp+14H], eax                    ; 1001AACB _ 89. 45, 14
        jmp     ?_3148                                  ; 1001AACE _ EB, 0C

?_3146: mov     dword [ebp+14H], 4096                   ; 1001AAD0 _ C7. 45, 14, 00001000
        jmp     ?_3148                                  ; 1001AAD7 _ EB, 03

?_3147: mov     ecx, dword [ebp+8H]                     ; 1001AAD9 _ 8B. 4D, 08
?_3148:
; Note: Length-changing prefix causes delay on Intel processors
        test    word [esi+0CH], 10CH                    ; 1001AADC _ 66: F7. 46, 0C, 010C
        jz      ?_3150                                  ; 1001AAE2 _ 74, 2A
        mov     eax, dword [esi+4H]                     ; 1001AAE4 _ 8B. 46, 04
        test    eax, eax                                ; 1001AAE7 _ 85. C0
        jz      ?_3150                                  ; 1001AAE9 _ 74, 23
        cmp     ecx, eax                                ; 1001AAEB _ 3B. C8
        mov     edi, ecx                                ; 1001AAED _ 8B. F9
        jc      ?_3149                                  ; 1001AAEF _ 72, 02
        mov     edi, eax                                ; 1001AAF1 _ 8B. F8
?_3149: push    edi                                     ; 1001AAF3 _ 57
        push    dword [esi]                             ; 1001AAF4 _ FF. 36
        push    ebx                                     ; 1001AAF6 _ 53
        call    ?_3909                                  ; 1001AAF7 _ E8, 00003FB4
        sub     dword [ebp+8H], edi                     ; 1001AAFC _ 29. 7D, 08
        sub     dword [esi+4H], edi                     ; 1001AAFF _ 29. 7E, 04
        add     dword [esi], edi                        ; 1001AB02 _ 01. 3E
        add     esp, 12                                 ; 1001AB04 _ 83. C4, 0C
        add     ebx, edi                                ; 1001AB07 _ 03. DF
        mov     edi, dword [ebp-4H]                     ; 1001AB09 _ 8B. 7D, FC
        jmp     ?_3153                                  ; 1001AB0C _ EB, 4B

?_3150: cmp     ecx, dword [ebp+14H]                    ; 1001AB0E _ 3B. 4D, 14
        jc      ?_3152                                  ; 1001AB11 _ 72, 2E
        cmp     dword [ebp+14H], 0                      ; 1001AB13 _ 83. 7D, 14, 00
        mov     eax, ecx                                ; 1001AB17 _ 8B. C1
        jz      ?_3151                                  ; 1001AB19 _ 74, 09
        xor     edx, edx                                ; 1001AB1B _ 33. D2
        div     dword [ebp+14H]                         ; 1001AB1D _ F7. 75, 14
        mov     eax, ecx                                ; 1001AB20 _ 8B. C1
        sub     eax, edx                                ; 1001AB22 _ 2B. C2
?_3151: push    eax                                     ; 1001AB24 _ 50
        push    ebx                                     ; 1001AB25 _ 53
        push    dword [esi+10H]                         ; 1001AB26 _ FF. 76, 10
        call    ?_3964                                  ; 1001AB29 _ E8, 00004393
        add     esp, 12                                 ; 1001AB2E _ 83. C4, 0C
        test    eax, eax                                ; 1001AB31 _ 85. C0
        jz      ?_3155                                  ; 1001AB33 _ 74, 36
        cmp     eax, -1                                 ; 1001AB35 _ 83. F8, FF
        jz      ?_3156                                  ; 1001AB38 _ 74, 37
        sub     dword [ebp+8H], eax                     ; 1001AB3A _ 29. 45, 08
        add     ebx, eax                                ; 1001AB3D _ 03. D8
        jmp     ?_3153                                  ; 1001AB3F _ EB, 18

?_3152: push    esi                                     ; 1001AB41 _ 56
        call    ?_3954                                  ; 1001AB42 _ E8, 0000429E
        cmp     eax, -1                                 ; 1001AB47 _ 83. F8, FF
        pop     ecx                                     ; 1001AB4A _ 59
        jz      ?_3157                                  ; 1001AB4B _ 74, 28
        mov     byte [ebx], al                          ; 1001AB4D _ 88. 03
        mov     eax, dword [esi+18H]                    ; 1001AB4F _ 8B. 46, 18
        inc     ebx                                     ; 1001AB52 _ 43
        dec     dword [ebp+8H]                          ; 1001AB53 _ FF. 4D, 08
        mov     dword [ebp+14H], eax                    ; 1001AB56 _ 89. 45, 14
?_3153: cmp     dword [ebp+8H], 0                       ; 1001AB59 _ 83. 7D, 08, 00
        jne     ?_3147                                  ; 1001AB5D _ 0F 85, FFFFFF76
        mov     eax, dword [ebp+10H]                    ; 1001AB63 _ 8B. 45, 10
?_3154: pop     edi                                     ; 1001AB66 _ 5F
        pop     esi                                     ; 1001AB67 _ 5E
        pop     ebx                                     ; 1001AB68 _ 5B
        leave                                           ; 1001AB69 _ C9
        ret                                             ; 1001AB6A _ C3

?_3155: or      dword [esi+0CH], 10H                    ; 1001AB6B _ 83. 4E, 0C, 10
        jmp     ?_3157                                  ; 1001AB6F _ EB, 04

?_3156: or      dword [esi+0CH], 20H                    ; 1001AB71 _ 83. 4E, 0C, 20
?_3157: mov     eax, edi                                ; 1001AB75 _ 8B. C7
        xor     edx, edx                                ; 1001AB77 _ 33. D2
        sub     eax, dword [ebp+8H]                     ; 1001AB79 _ 2B. 45, 08
        div     dword [ebp+0CH]                         ; 1001AB7C _ F7. 75, 0C
        jmp     ?_3154                                  ; 1001AB7F _ EB, E5
