; ---- 1001AD32 ----
?_3178: ; Local function
        push    ebx                                     ; 1001AD32 _ 53
        push    esi                                     ; 1001AD33 _ 56
        push    edi                                     ; 1001AD34 _ 57
        push    2                                       ; 1001AD35 _ 6A, 02
        xor     ebx, ebx                                ; 1001AD37 _ 33. DB
        xor     edi, edi                                ; 1001AD39 _ 33. FF
        call    ?_3610                                  ; 1001AD3B _ E8, 000022F6
        xor     esi, esi                                ; 1001AD40 _ 33. F6
        pop     ecx                                     ; 1001AD42 _ 59
        cmp     dword [?_5814], esi                     ; 1001AD43 _ 39. 35, 11767580(d)
        jle     ?_3183                                  ; 1001AD49 _ 7E, 74
?_3179: mov     eax, dword [?_5812]                     ; 1001AD4B _ A1, 11766564(d)
        mov     eax, dword [eax+esi*4]                  ; 1001AD50 _ 8B. 04 B0
        test    eax, eax                                ; 1001AD53 _ 85. C0
        jz      ?_3182                                  ; 1001AD55 _ 74, 5F
        test    byte [eax+0CH], 0FFFFFF83H              ; 1001AD57 _ F6. 40, 0C, 83
        jz      ?_3182                                  ; 1001AD5B _ 74, 59
        push    eax                                     ; 1001AD5D _ 50
        push    esi                                     ; 1001AD5E _ 56
        call    ?_3368                                  ; 1001AD5F _ E8, 00000E2B
        mov     eax, dword [?_5812]                     ; 1001AD64 _ A1, 11766564(d)
        pop     ecx                                     ; 1001AD69 _ 59
        pop     ecx                                     ; 1001AD6A _ 59
        mov     eax, dword [eax+esi*4]                  ; 1001AD6B _ 8B. 04 B0
        mov     ecx, dword [eax+0CH]                    ; 1001AD6E _ 8B. 48, 0C
        test    cl, 0FFFFFF83H                          ; 1001AD71 _ F6. C1, 83
        jz      ?_3181                                  ; 1001AD74 _ 74, 30
        cmp     dword [esp+10H], 1                      ; 1001AD76 _ 83. 7C 24, 10, 01
        jnz     ?_3180                                  ; 1001AD7B _ 75, 0F
        push    eax                                     ; 1001AD7D _ 50
        call    ?_3171                                  ; 1001AD7E _ E8, FFFFFF1C
        cmp     eax, -1                                 ; 1001AD83 _ 83. F8, FF
        pop     ecx                                     ; 1001AD86 _ 59
        jz      ?_3181                                  ; 1001AD87 _ 74, 1D
        inc     ebx                                     ; 1001AD89 _ 43
        jmp     ?_3181                                  ; 1001AD8A _ EB, 1A

?_3180: cmp     dword [esp+10H], 0                      ; 1001AD8C _ 83. 7C 24, 10, 00
        jnz     ?_3181                                  ; 1001AD91 _ 75, 13
        test    cl, 02H                                 ; 1001AD93 _ F6. C1, 02
        jz      ?_3181                                  ; 1001AD96 _ 74, 0E
        push    eax                                     ; 1001AD98 _ 50
        call    ?_3171                                  ; 1001AD99 _ E8, FFFFFF01
        cmp     eax, -1                                 ; 1001AD9E _ 83. F8, FF
        pop     ecx                                     ; 1001ADA1 _ 59
        jnz     ?_3181                                  ; 1001ADA2 _ 75, 02
        or      edi, eax                                ; 1001ADA4 _ 0B. F8
?_3181: mov     eax, dword [?_5812]                     ; 1001ADA6 _ A1, 11766564(d)
        push    dword [eax+esi*4]                       ; 1001ADAB _ FF. 34 B0
        push    esi                                     ; 1001ADAE _ 56
        call    ?_3372                                  ; 1001ADAF _ E8, 00000E2D
        pop     ecx                                     ; 1001ADB4 _ 59
        pop     ecx                                     ; 1001ADB5 _ 59
?_3182: inc     esi                                     ; 1001ADB6 _ 46
        cmp     esi, dword [?_5814]                     ; 1001ADB7 _ 3B. 35, 11767580(d)
        jl      ?_3179                                  ; 1001ADBD _ 7C, 8C
?_3183: push    2                                       ; 1001ADBF _ 6A, 02
        call    ?_3615                                  ; 1001ADC1 _ E8, 000022D1
        cmp     dword [esp+14H], 1                      ; 1001ADC6 _ 83. 7C 24, 14, 01
        pop     ecx                                     ; 1001ADCB _ 59
        mov     eax, ebx                                ; 1001ADCC _ 8B. C3
        jz      ?_3184                                  ; 1001ADCE _ 74, 02
        mov     eax, edi                                ; 1001ADD0 _ 8B. C7
?_3184: pop     edi                                     ; 1001ADD2 _ 5F
        pop     esi                                     ; 1001ADD3 _ 5E
        pop     ebx                                     ; 1001ADD4 _ 5B
        ret                                             ; 1001ADD5 _ C3
