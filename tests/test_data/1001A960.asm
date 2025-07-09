; ---- 1001A960 ----
?_3127: ; Local function
        push    ebp                                     ; 1001A960 _ 55
        mov     ebp, esp                                ; 1001A961 _ 8B. EC
        push    ecx                                     ; 1001A963 _ 51
        push    ebx                                     ; 1001A964 _ 53
        push    esi                                     ; 1001A965 _ 56
        push    edi                                     ; 1001A966 _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001A967 _ 8B. 7D, 0C
        imul    edi, dword [ebp+10H]                    ; 1001A96A _ 0F AF. 7D, 10
        mov     eax, dword [ebp+8H]                     ; 1001A96E _ 8B. 45, 08
        mov     dword [ebp-4H], edi                     ; 1001A971 _ 89. 7D, FC
        test    edi, edi                                ; 1001A974 _ 85. FF
        mov     dword [ebp+8H], eax                     ; 1001A976 _ 89. 45, 08
        mov     ebx, edi                                ; 1001A979 _ 8B. DF
        jnz     ?_3128                                  ; 1001A97B _ 75, 07
        xor     eax, eax                                ; 1001A97D _ 33. C0
        jmp     ?_3139                                  ; 1001A97F _ E9, 000000CD

?_3128: mov     esi, dword [ebp+14H]                    ; 1001A984 _ 8B. 75, 14
; Note: Length-changing prefix causes delay on Intel processors
        test    word [esi+0CH], 10CH                    ; 1001A987 _ 66: F7. 46, 0C, 010C
        jz      ?_3129                                  ; 1001A98D _ 74, 08
        mov     eax, dword [esi+18H]                    ; 1001A98F _ 8B. 46, 18
        mov     dword [ebp+14H], eax                    ; 1001A992 _ 89. 45, 14
        jmp     ?_3130                                  ; 1001A995 _ EB, 07

?_3129: mov     dword [ebp+14H], 4096                   ; 1001A997 _ C7. 45, 14, 00001000
?_3130: mov     ecx, dword [esi+0CH]                    ; 1001A99E _ 8B. 4E, 0C
        and     ecx, 108H                               ; 1001A9A1 _ 81. E1, 00000108
        jz      ?_3132                                  ; 1001A9A7 _ 74, 29
        mov     eax, dword [esi+4H]                     ; 1001A9A9 _ 8B. 46, 04
        test    eax, eax                                ; 1001A9AC _ 85. C0
        jz      ?_3132                                  ; 1001A9AE _ 74, 22
        cmp     ebx, eax                                ; 1001A9B0 _ 3B. D8
        mov     edi, ebx                                ; 1001A9B2 _ 8B. FB
        jc      ?_3131                                  ; 1001A9B4 _ 72, 02
        mov     edi, eax                                ; 1001A9B6 _ 8B. F8
?_3131: push    edi                                     ; 1001A9B8 _ 57
        push    dword [ebp+8H]                          ; 1001A9B9 _ FF. 75, 08
        push    dword [esi]                             ; 1001A9BC _ FF. 36
        call    ?_3909                                  ; 1001A9BE _ E8, 000040ED
        sub     dword [esi+4H], edi                     ; 1001A9C3 _ 29. 7E, 04
        add     dword [esi], edi                        ; 1001A9C6 _ 01. 3E
        add     esp, 12                                 ; 1001A9C8 _ 83. C4, 0C
        sub     ebx, edi                                ; 1001A9CB _ 2B. DF
        add     dword [ebp+8H], edi                     ; 1001A9CD _ 01. 7D, 08
        jmp     ?_3136                                  ; 1001A9D0 _ EB, 46

?_3132: cmp     ebx, dword [ebp+14H]                    ; 1001A9D2 _ 3B. 5D, 14
        jc      ?_3137                                  ; 1001A9D5 _ 72, 46
        test    ecx, ecx                                ; 1001A9D7 _ 85. C9
        jz      ?_3133                                  ; 1001A9D9 _ 74, 0B
        push    esi                                     ; 1001A9DB _ 56
        call    ?_3174                                  ; 1001A9DC _ E8, 000002EC
        test    eax, eax                                ; 1001A9E1 _ 85. C0
        pop     ecx                                     ; 1001A9E3 _ 59
        jnz     ?_3141                                  ; 1001A9E4 _ 75, 79
?_3133: cmp     dword [ebp+14H], 0                      ; 1001A9E6 _ 83. 7D, 14, 00
        jz      ?_3134                                  ; 1001A9EA _ 74, 0D
        mov     eax, ebx                                ; 1001A9EC _ 8B. C3
        xor     edx, edx                                ; 1001A9EE _ 33. D2
        div     dword [ebp+14H]                         ; 1001A9F0 _ F7. 75, 14
        mov     edi, ebx                                ; 1001A9F3 _ 8B. FB
        sub     edi, edx                                ; 1001A9F5 _ 2B. FA
        jmp     ?_3135                                  ; 1001A9F7 _ EB, 02

?_3134: mov     edi, ebx                                ; 1001A9F9 _ 8B. FB
?_3135: push    edi                                     ; 1001A9FB _ 57
        push    dword [ebp+8H]                          ; 1001A9FC _ FF. 75, 08
        push    dword [esi+10H]                         ; 1001A9FF _ FF. 76, 10
        call    ?_3888                                  ; 1001AA02 _ E8, 00003EAD
        add     esp, 12                                 ; 1001AA07 _ 83. C4, 0C
        cmp     eax, -1                                 ; 1001AA0A _ 83. F8, FF
        jz      ?_3140                                  ; 1001AA0D _ 74, 47
        add     dword [ebp+8H], eax                     ; 1001AA0F _ 01. 45, 08
        sub     ebx, eax                                ; 1001AA12 _ 2B. D8
        cmp     eax, edi                                ; 1001AA14 _ 3B. C7
        jc      ?_3140                                  ; 1001AA16 _ 72, 3E
?_3136: mov     edi, dword [ebp-4H]                     ; 1001AA18 _ 8B. 7D, FC
        jmp     ?_3138                                  ; 1001AA1B _ EB, 29

?_3137: mov     eax, dword [ebp+8H]                     ; 1001AA1D _ 8B. 45, 08
        push    esi                                     ; 1001AA20 _ 56
        movsx   eax, byte [eax]                         ; 1001AA21 _ 0F BE. 00
        push    eax                                     ; 1001AA24 _ 50
        call    ?_3427                                  ; 1001AA25 _ E8, 00001659
        pop     ecx                                     ; 1001AA2A _ 59
        cmp     eax, -1                                 ; 1001AA2B _ 83. F8, FF
        pop     ecx                                     ; 1001AA2E _ 59
        jz      ?_3141                                  ; 1001AA2F _ 74, 2E
        inc     dword [ebp+8H]                          ; 1001AA31 _ FF. 45, 08
        mov     eax, dword [esi+18H]                    ; 1001AA34 _ 8B. 46, 18
        dec     ebx                                     ; 1001AA37 _ 4B
        mov     dword [ebp+14H], eax                    ; 1001AA38 _ 89. 45, 14
        test    eax, eax                                ; 1001AA3B _ 85. C0
        jg      ?_3138                                  ; 1001AA3D _ 7F, 07
        mov     dword [ebp+14H], 1                      ; 1001AA3F _ C7. 45, 14, 00000001
?_3138: test    ebx, ebx                                ; 1001AA46 _ 85. DB
        jne     ?_3130                                  ; 1001AA48 _ 0F 85, FFFFFF50
        mov     eax, dword [ebp+10H]                    ; 1001AA4E _ 8B. 45, 10
?_3139: pop     edi                                     ; 1001AA51 _ 5F
        pop     esi                                     ; 1001AA52 _ 5E
        pop     ebx                                     ; 1001AA53 _ 5B
        leave                                           ; 1001AA54 _ C9
        ret                                             ; 1001AA55 _ C3

?_3140: or      dword [esi+0CH], 20H                    ; 1001AA56 _ 83. 4E, 0C, 20
        mov     eax, dword [ebp-4H]                     ; 1001AA5A _ 8B. 45, FC
        jmp     ?_3142                                  ; 1001AA5D _ EB, 02

?_3141: mov     eax, edi                                ; 1001AA5F _ 8B. C7
?_3142: sub     eax, ebx                                ; 1001AA61 _ 2B. C3
        xor     edx, edx                                ; 1001AA63 _ 33. D2
        div     dword [ebp+0CH]                         ; 1001AA65 _ F7. 75, 0C
        jmp     ?_3139                                  ; 1001AA68 _ EB, E7
