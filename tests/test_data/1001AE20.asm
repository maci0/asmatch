; ---- 1001AE20 ----
?_3188: ; Local function
        mov     ecx, dword [esp+0CH]                    ; 1001AE20 _ 8B. 4C 24, 0C
        push    edi                                     ; 1001AE24 _ 57
        test    ecx, ecx                                ; 1001AE25 _ 85. C9
        jz      ?_3198                                  ; 1001AE27 _ 74, 7A
        push    esi                                     ; 1001AE29 _ 56
        push    ebx                                     ; 1001AE2A _ 53
        mov     ebx, ecx                                ; 1001AE2B _ 8B. D9
        mov     esi, dword [esp+14H]                    ; 1001AE2D _ 8B. 74 24, 14
        test    esi, 3H                                 ; 1001AE31 _ F7. C6, 00000003
        mov     edi, dword [esp+10H]                    ; 1001AE37 _ 8B. 7C 24, 10
        jnz     ?_3189                                  ; 1001AE3B _ 75, 07
        shr     ecx, 2                                  ; 1001AE3D _ C1. E9, 02
        jnz     ?_3200                                  ; 1001AE40 _ 75, 6F
        jmp     ?_3191                                  ; 1001AE42 _ EB, 21

?_3189: mov     al, byte [esi]                          ; 1001AE44 _ 8A. 06
        inc     esi                                     ; 1001AE46 _ 46
        mov     byte [edi], al                          ; 1001AE47 _ 88. 07
        inc     edi                                     ; 1001AE49 _ 47
        dec     ecx                                     ; 1001AE4A _ 49
        jz      ?_3192                                  ; 1001AE4B _ 74, 25
        test    al, al                                  ; 1001AE4D _ 84. C0
        jz      ?_3193                                  ; 1001AE4F _ 74, 29
        test    esi, 3H                                 ; 1001AE51 _ F7. C6, 00000003
        jnz     ?_3189                                  ; 1001AE57 _ 75, EB
        mov     ebx, ecx                                ; 1001AE59 _ 8B. D9
        shr     ecx, 2                                  ; 1001AE5B _ C1. E9, 02
        jnz     ?_3200                                  ; 1001AE5E _ 75, 51
?_3190: and     ebx, 03H                                ; 1001AE60 _ 83. E3, 03
        jz      ?_3192                                  ; 1001AE63 _ 74, 0D
?_3191: mov     al, byte [esi]                          ; 1001AE65 _ 8A. 06
        inc     esi                                     ; 1001AE67 _ 46
        mov     byte [edi], al                          ; 1001AE68 _ 88. 07
        inc     edi                                     ; 1001AE6A _ 47
        test    al, al                                  ; 1001AE6B _ 84. C0
        jz      ?_3197                                  ; 1001AE6D _ 74, 2F
        dec     ebx                                     ; 1001AE6F _ 4B
        jnz     ?_3191                                  ; 1001AE70 _ 75, F3
?_3192: mov     eax, dword [esp+10H]                    ; 1001AE72 _ 8B. 44 24, 10
        pop     ebx                                     ; 1001AE76 _ 5B
        pop     esi                                     ; 1001AE77 _ 5E
        pop     edi                                     ; 1001AE78 _ 5F
        ret                                             ; 1001AE79 _ C3

?_3193: test    edi, 3H                                 ; 1001AE7A _ F7. C7, 00000003
        jz      ?_3195                                  ; 1001AE80 _ 74, 12
?_3194: mov     byte [edi], al                          ; 1001AE82 _ 88. 07
        inc     edi                                     ; 1001AE84 _ 47
        dec     ecx                                     ; 1001AE85 _ 49
        je      ?_3208                                  ; 1001AE86 _ 0F 84, 0000008A
        test    edi, 3H                                 ; 1001AE8C _ F7. C7, 00000003
        jnz     ?_3194                                  ; 1001AE92 _ 75, EE
?_3195: mov     ebx, ecx                                ; 1001AE94 _ 8B. D9
        shr     ecx, 2                                  ; 1001AE96 _ C1. E9, 02
        jnz     ?_3205                                  ; 1001AE99 _ 75, 6C
?_3196: mov     byte [edi], al                          ; 1001AE9B _ 88. 07
        inc     edi                                     ; 1001AE9D _ 47
?_3197: dec     ebx                                     ; 1001AE9E _ 4B
        jnz     ?_3196                                  ; 1001AE9F _ 75, FA
        pop     ebx                                     ; 1001AEA1 _ 5B
        pop     esi                                     ; 1001AEA2 _ 5E
?_3198: mov     eax, dword [esp+8H]                     ; 1001AEA3 _ 8B. 44 24, 08
        pop     edi                                     ; 1001AEA7 _ 5F
        ret                                             ; 1001AEA8 _ C3

?_3199: mov     dword [edi], edx                        ; 1001AEA9 _ 89. 17
        add     edi, 4                                  ; 1001AEAB _ 83. C7, 04
        dec     ecx                                     ; 1001AEAE _ 49
        jz      ?_3190                                  ; 1001AEAF _ 74, AF
?_3200: mov     edx, 2130640639                         ; 1001AEB1 _ BA, 7EFEFEFF
        mov     eax, dword [esi]                        ; 1001AEB6 _ 8B. 06
        add     edx, eax                                ; 1001AEB8 _ 03. D0
        xor     eax, 0FFFFFFFFH                         ; 1001AEBA _ 83. F0, FF
        xor     eax, edx                                ; 1001AEBD _ 33. C2
        mov     edx, dword [esi]                        ; 1001AEBF _ 8B. 16
        add     esi, 4                                  ; 1001AEC1 _ 83. C6, 04
        test    eax, 81010100H                          ; 1001AEC4 _ A9, 81010100
        jz      ?_3199                                  ; 1001AEC9 _ 74, DE
        test    dl, dl                                  ; 1001AECB _ 84. D2
        jz      ?_3203                                  ; 1001AECD _ 74, 2C
        test    dh, dh                                  ; 1001AECF _ 84. F6
        jz      ?_3202                                  ; 1001AED1 _ 74, 1E
        test    edx, 0FF0000H                           ; 1001AED3 _ F7. C2, 00FF0000
        jz      ?_3201                                  ; 1001AED9 _ 74, 0C
        test    edx, 0FF000000H                         ; 1001AEDB _ F7. C2, FF000000
        jnz     ?_3199                                  ; 1001AEE1 _ 75, C6
        mov     dword [edi], edx                        ; 1001AEE3 _ 89. 17
        jmp     ?_3204                                  ; 1001AEE5 _ EB, 18

?_3201: and     edx, 0FFFFH                             ; 1001AEE7 _ 81. E2, 0000FFFF
        mov     dword [edi], edx                        ; 1001AEED _ 89. 17
        jmp     ?_3204                                  ; 1001AEEF _ EB, 0E

?_3202: and     edx, 0FFH                               ; 1001AEF1 _ 81. E2, 000000FF
        mov     dword [edi], edx                        ; 1001AEF7 _ 89. 17
        jmp     ?_3204                                  ; 1001AEF9 _ EB, 04

?_3203: xor     edx, edx                                ; 1001AEFB _ 33. D2
        mov     dword [edi], edx                        ; 1001AEFD _ 89. 17
?_3204: add     edi, 4                                  ; 1001AEFF _ 83. C7, 04
        xor     eax, eax                                ; 1001AF02 _ 33. C0
        dec     ecx                                     ; 1001AF04 _ 49
        jz      ?_3207                                  ; 1001AF05 _ 74, 0A
?_3205: xor     eax, eax                                ; 1001AF07 _ 33. C0
?_3206: mov     dword [edi], eax                        ; 1001AF09 _ 89. 07
        add     edi, 4                                  ; 1001AF0B _ 83. C7, 04
        dec     ecx                                     ; 1001AF0E _ 49
        jnz     ?_3206                                  ; 1001AF0F _ 75, F8
?_3207: and     ebx, 03H                                ; 1001AF11 _ 83. E3, 03
        jnz     ?_3196                                  ; 1001AF14 _ 75, 85
?_3208: mov     eax, dword [esp+10H]                    ; 1001AF16 _ 8B. 44 24, 10
        pop     ebx                                     ; 1001AF1A _ 5B
        pop     esi                                     ; 1001AF1B _ 5E
        pop     edi                                     ; 1001AF1C _ 5F
        ret                                             ; 1001AF1D _ C3

        int 3    ; breakpoint or filler                 ; 1001AF1E _ CC
        int 3    ; breakpoint or filler                 ; 1001AF1F _ CC
?_3209: lea     eax, [edx-1H]                           ; 1001AF20 _ 8D. 42, FF
        pop     ebx                                     ; 1001AF23 _ 5B
        ret                                             ; 1001AF24 _ C3

; Filling space: 0BH
; Filler type: lea with same source and destination
;       db 8DH, 0A4H, 24H, 00H, 00H, 00H, 00H, 8DH
;       db 64H, 24H, 00H

ALIGN   16

