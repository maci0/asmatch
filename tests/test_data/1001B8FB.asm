; ---- 1001B8FB ----
?_3333: ; Local function
        mov     eax, dword [esp+8H]                     ; 1001B8FB _ 8B. 44 24, 08
        cmp     eax, 1                                  ; 1001B8FF _ 83. F8, 01
        jne     ?_3336                                  ; 1001B902 _ 0F 85, 00000088
        call    near [imp_GetVersion]                   ; 1001B908 _ FF. 15, 100240E8(d)
        push    1                                       ; 1001B90E _ 6A, 01
        mov     dword [?_5558], eax                     ; 1001B910 _ A3, 100354B4(d)
        call    ?_3655                                  ; 1001B915 _ E8, 00001AAE
        test    eax, eax                                ; 1001B91A _ 85. C0
        pop     ecx                                     ; 1001B91C _ 59
        jz      ?_3334                                  ; 1001B91D _ 74, 3C
        mov     eax, dword [?_5558]                     ; 1001B91F _ A1, 100354B4(d)
        xor     ecx, ecx                                ; 1001B924 _ 33. C9
        mov     cl, byte [?_5559]                       ; 1001B926 _ 8A. 0D, 100354B5(d)
        and     eax, 0FFH                               ; 1001B92C _ 25, 000000FF
        shr     dword [?_5558], 16                      ; 1001B931 _ C1. 2D, 100354B4(d), 10
        mov     dword [?_5561], eax                     ; 1001B938 _ A3, 100354BC(d)
        mov     dword [?_5562], ecx                     ; 1001B93D _ 89. 0D, 100354C0(d)
        shl     eax, 8                                  ; 1001B943 _ C1. E0, 08
        add     eax, ecx                                ; 1001B946 _ 03. C1
        mov     dword [?_5560], eax                     ; 1001B948 _ A3, 100354B8(d)
        call    ?_3616                                  ; 1001B94D _ E8, 0000175A
        test    eax, eax                                ; 1001B952 _ 85. C0
        jnz     ?_3335                                  ; 1001B954 _ 75, 09
        call    ?_3660                                  ; 1001B956 _ E8, 00001ACA
?_3334: xor     eax, eax                                ; 1001B95B _ 33. C0
        jmp     ?_3340                                  ; 1001B95D _ EB, 72

?_3335: call    near [imp_GetCommandLineA]              ; 1001B95F _ FF. 15, 100240E4(d)
        mov     dword [?_5815], eax                     ; 1001B965 _ A3, 11767584(d)
        call    ?_4142                                  ; 1001B96A _ E8, 00004357
        mov     dword [?_5574], eax                     ; 1001B96F _ A3, 10035500(d)
        call    ?_3548                                  ; 1001B974 _ E8, 0000102C
        call    ?_4100                                  ; 1001B979 _ E8, 000040FB
        call    ?_4090                                  ; 1001B97E _ E8, 0000403D
        call    ?_3083                                  ; 1001B983 _ E8, FFFFECBB
        inc     dword [?_5573]                          ; 1001B988 _ FF. 05, 100354FC(d)
        jmp     ?_3339                                  ; 1001B98E _ EB, 3E

?_3336: xor     ecx, ecx                                ; 1001B990 _ 33. C9
        cmp     eax, ecx                                ; 1001B992 _ 3B. C1
        jnz     ?_3338                                  ; 1001B994 _ 75, 2C
        cmp     dword [?_5573], ecx                     ; 1001B996 _ 39. 0D, 100354FC(d)
        jle     ?_3334                                  ; 1001B99C _ 7E, BD
        dec     dword [?_5573]                          ; 1001B99E _ FF. 0D, 100354FC(d)
        cmp     dword [?_5570], ecx                     ; 1001B9A4 _ 39. 0D, 100354EC(d)
        jnz     ?_3337                                  ; 1001B9AA _ 75, 05
        call    ?_3087                                  ; 1001B9AC _ E8, FFFFECE1
?_3337: call    ?_3569                                  ; 1001B9B1 _ E8, 000011AB
        call    ?_3618                                  ; 1001B9B6 _ E8, 00001745
        call    ?_3660                                  ; 1001B9BB _ E8, 00001A65
        jmp     ?_3339                                  ; 1001B9C0 _ EB, 0C

?_3338: cmp     eax, 3                                  ; 1001B9C2 _ 83. F8, 03
        jnz     ?_3339                                  ; 1001B9C5 _ 75, 07
        push    ecx                                     ; 1001B9C7 _ 51
        call    ?_3624                                  ; 1001B9C8 _ E8, 000017CB
        pop     ecx                                     ; 1001B9CD _ 59
?_3339: push    1                                       ; 1001B9CE _ 6A, 01
        pop     eax                                     ; 1001B9D0 _ 58
?_3340: ret     12                                      ; 1001B9D1 _ C2, 000C

entry@12:
        push    ebp                                     ; 1001B9D4 _ 55
        mov     ebp, esp                                ; 1001B9D5 _ 8B. EC
        push    ebx                                     ; 1001B9D7 _ 53
        mov     ebx, dword [ebp+8H]                     ; 1001B9D8 _ 8B. 5D, 08
        push    esi                                     ; 1001B9DB _ 56
        mov     esi, dword [ebp+0CH]                    ; 1001B9DC _ 8B. 75, 0C
        push    edi                                     ; 1001B9DF _ 57
        mov     edi, dword [ebp+10H]                    ; 1001B9E0 _ 8B. 7D, 10
        test    esi, esi                                ; 1001B9E3 _ 85. F6
        jnz     ?_3341                                  ; 1001B9E5 _ 75, 09
        cmp     dword [?_5573], 0                       ; 1001B9E7 _ 83. 3D, 100354FC(d), 00
        jmp     ?_3344                                  ; 1001B9EE _ EB, 26

?_3341: cmp     esi, 1                                  ; 1001B9F0 _ 83. FE, 01
        jz      ?_3342                                  ; 1001B9F3 _ 74, 05
        cmp     esi, 2                                  ; 1001B9F5 _ 83. FE, 02
        jnz     ?_3346                                  ; 1001B9F8 _ 75, 22
?_3342: mov     eax, dword [?_5816]                     ; 1001B9FA _ A1, 11767588(d)
        test    eax, eax                                ; 1001B9FF _ 85. C0
        jz      ?_3343                                  ; 1001BA01 _ 74, 09
        push    edi                                     ; 1001BA03 _ 57
        push    esi                                     ; 1001BA04 _ 56
        push    ebx                                     ; 1001BA05 _ 53
        call    eax                                     ; 1001BA06 _ FF. D0
        test    eax, eax                                ; 1001BA08 _ 85. C0
        jz      ?_3345                                  ; 1001BA0A _ 74, 0C
?_3343: push    edi                                     ; 1001BA0C _ 57
        push    esi                                     ; 1001BA0D _ 56
        push    ebx                                     ; 1001BA0E _ 53
        call    ?_3333                                  ; 1001BA0F _ E8, FFFFFEE7
        test    eax, eax                                ; 1001BA14 _ 85. C0
?_3344: jnz     ?_3346                                  ; 1001BA16 _ 75, 04
?_3345: xor     eax, eax                                ; 1001BA18 _ 33. C0
        jmp     ?_3351                                  ; 1001BA1A _ EB, 4E

?_3346: push    edi                                     ; 1001BA1C _ 57
        push    esi                                     ; 1001BA1D _ 56
        push    ebx                                     ; 1001BA1E _ 53
        call    ?_0952                                  ; 1001BA1F _ E8, FFFED8EC
        cmp     esi, 1                                  ; 1001BA24 _ 83. FE, 01
        mov     dword [ebp+0CH], eax                    ; 1001BA27 _ 89. 45, 0C
        jnz     ?_3347                                  ; 1001BA2A _ 75, 0C
        test    eax, eax                                ; 1001BA2C _ 85. C0
        jnz     ?_3350                                  ; 1001BA2E _ 75, 37
        push    edi                                     ; 1001BA30 _ 57
        push    eax                                     ; 1001BA31 _ 50
        push    ebx                                     ; 1001BA32 _ 53
        call    ?_3333                                  ; 1001BA33 _ E8, FFFFFEC3
?_3347: test    esi, esi                                ; 1001BA38 _ 85. F6
        jz      ?_3348                                  ; 1001BA3A _ 74, 05
        cmp     esi, 3                                  ; 1001BA3C _ 83. FE, 03
        jnz     ?_3350                                  ; 1001BA3F _ 75, 26
?_3348: push    edi                                     ; 1001BA41 _ 57
        push    esi                                     ; 1001BA42 _ 56
        push    ebx                                     ; 1001BA43 _ 53
        call    ?_3333                                  ; 1001BA44 _ E8, FFFFFEB2
        test    eax, eax                                ; 1001BA49 _ 85. C0
        jnz     ?_3349                                  ; 1001BA4B _ 75, 03
        and     dword [ebp+0CH], eax                    ; 1001BA4D _ 21. 45, 0C
?_3349: cmp     dword [ebp+0CH], 0                      ; 1001BA50 _ 83. 7D, 0C, 00
        jz      ?_3350                                  ; 1001BA54 _ 74, 11
        mov     eax, dword [?_5816]                     ; 1001BA56 _ A1, 11767588(d)
        test    eax, eax                                ; 1001BA5B _ 85. C0
        jz      ?_3350                                  ; 1001BA5D _ 74, 08
        push    edi                                     ; 1001BA5F _ 57
        push    esi                                     ; 1001BA60 _ 56
        push    ebx                                     ; 1001BA61 _ 53
        call    eax                                     ; 1001BA62 _ FF. D0
        mov     dword [ebp+0CH], eax                    ; 1001BA64 _ 89. 45, 0C
?_3350: mov     eax, dword [ebp+0CH]                    ; 1001BA67 _ 8B. 45, 0C
?_3351: pop     edi                                     ; 1001BA6A _ 5F
        pop     esi                                     ; 1001BA6B _ 5E
        pop     ebx                                     ; 1001BA6C _ 5B
        pop     ebp                                     ; 1001BA6D _ 5D
        ret     12                                      ; 1001BA6E _ C2, 000C
; Entry_point End of function

