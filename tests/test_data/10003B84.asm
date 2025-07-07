; ---- 10003B84 ----
?_0319: ; Local function
        pop     edi                                     ; 10003B84 _ 5F
        pop     esi                                     ; 10003B85 _ 5E
        pop     ebp                                     ; 10003B86 _ 5D
        mov     eax, 4294967294                         ; 10003B87 _ B8, FFFFFFFE
        pop     ebx                                     ; 10003B8C _ 5B
        pop     ecx                                     ; 10003B8D _ 59
        ret                                             ; 10003B8E _ C3

        nop                                             ; 10003B8F _ 90
?_0320: push    ebx                                     ; 10003B90 _ 53
        push    esi                                     ; 10003B91 _ 56
        mov     esi, dword [esp+0CH]                    ; 10003B92 _ 8B. 74 24, 0C
        xor     ebx, ebx                                ; 10003B96 _ 33. DB
        test    esi, esi                                ; 10003B98 _ 85. F6
        push    edi                                     ; 10003B9A _ 57
        je      ?_0328                                  ; 10003B9B _ 0F 84, 0000009C
        cmp     byte [esi+5CH], 119                     ; 10003BA1 _ 80. 7E, 5C, 77
        jne     ?_0328                                  ; 10003BA5 _ 0F 85, 00000092
        mov     dword [esi+4H], ebx                     ; 10003BAB _ 89. 5E, 04
?_0321: mov     eax, dword [esi+10H]                    ; 10003BAE _ 8B. 46, 10
        mov     edi, 16384                              ; 10003BB1 _ BF, 00004000
        sub     edi, eax                                ; 10003BB6 _ 2B. F8
        jz      ?_0322                                  ; 10003BB8 _ 74, 24
        mov     eax, dword [esi+40H]                    ; 10003BBA _ 8B. 46, 40
        mov     ecx, dword [esi+48H]                    ; 10003BBD _ 8B. 4E, 48
        push    eax                                     ; 10003BC0 _ 50
        push    edi                                     ; 10003BC1 _ 57
        push    1                                       ; 10003BC2 _ 6A, 01
        push    ecx                                     ; 10003BC4 _ 51
        call    ?_3126                                  ; 10003BC5 _ E8, 00016D67
        add     esp, 16                                 ; 10003BCA _ 83. C4, 10
        cmp     eax, edi                                ; 10003BCD _ 3B. C7
        jnz     ?_0326                                  ; 10003BCF _ 75, 52
        mov     edx, dword [esi+48H]                    ; 10003BD1 _ 8B. 56, 48
        mov     dword [esi+10H], 16384                  ; 10003BD4 _ C7. 46, 10, 00004000
        mov     dword [esi+0CH], edx                    ; 10003BDB _ 89. 56, 0C
?_0322: test    ebx, ebx                                ; 10003BDE _ 85. DB
        jnz     ?_0327                                  ; 10003BE0 _ 75, 4B
        mov     eax, dword [esp+14H]                    ; 10003BE2 _ 8B. 44 24, 14
        push    eax                                     ; 10003BE6 _ 50
        push    esi                                     ; 10003BE7 _ 56
        call    ?_0030                                  ; 10003BE8 _ E8, FFFFD9C3
        add     esp, 8                                  ; 10003BED _ 83. C4, 08
        mov     dword [esi+38H], eax                    ; 10003BF0 _ 89. 46, 38
        test    edi, edi                                ; 10003BF3 _ 85. FF
        jnz     ?_0323                                  ; 10003BF5 _ 75, 08
        cmp     eax, -5                                 ; 10003BF7 _ 83. F8, FB
        jnz     ?_0323                                  ; 10003BFA _ 75, 03
        mov     dword [esi+38H], edi                    ; 10003BFC _ 89. 7E, 38
?_0323: mov     eax, dword [esi+10H]                    ; 10003BFF _ 8B. 46, 10
        test    eax, eax                                ; 10003C02 _ 85. C0
        jnz     ?_0324                                  ; 10003C04 _ 75, 0A
        cmp     dword [esi+38H], 1                      ; 10003C06 _ 83. 7E, 38, 01
        jz      ?_0324                                  ; 10003C0A _ 74, 04
        xor     ebx, ebx                                ; 10003C0C _ 33. DB
        jmp     ?_0325                                  ; 10003C0E _ EB, 05

?_0324: mov     ebx, 1                                  ; 10003C10 _ BB, 00000001
?_0325: mov     eax, dword [esi+38H]                    ; 10003C15 _ 8B. 46, 38
        test    eax, eax                                ; 10003C18 _ 85. C0
        jz      ?_0321                                  ; 10003C1A _ 74, 92
        cmp     eax, 1                                  ; 10003C1C _ 83. F8, 01
        jnz     ?_0327                                  ; 10003C1F _ 75, 0C
        jmp     ?_0321                                  ; 10003C21 _ EB, 8B

?_0326: or      eax, 0FFFFFFFFH                         ; 10003C23 _ 83. C8, FF
        pop     edi                                     ; 10003C26 _ 5F
        mov     dword [esi+38H], eax                    ; 10003C27 _ 89. 46, 38
        pop     esi                                     ; 10003C2A _ 5E
        pop     ebx                                     ; 10003C2B _ 5B
        ret                                             ; 10003C2C _ C3

?_0327: mov     esi, dword [esi+38H]                    ; 10003C2D _ 8B. 76, 38
        pop     edi                                     ; 10003C30 _ 5F
        mov     eax, esi                                ; 10003C31 _ 8B. C6
        dec     eax                                     ; 10003C33 _ 48
        neg     eax                                     ; 10003C34 _ F7. D8
        sbb     eax, eax                                ; 10003C36 _ 1B. C0
        and     eax, esi                                ; 10003C38 _ 23. C6
        pop     esi                                     ; 10003C3A _ 5E
        pop     ebx                                     ; 10003C3B _ 5B
        ret                                             ; 10003C3C _ C3

