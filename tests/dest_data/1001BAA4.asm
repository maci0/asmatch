; ---- 1001BAA4 ----
?_3355: ; Local function
        mov     eax, dword [?_5814]                     ; 1001BAA4 _ A1, 11767580(d)
        push    esi                                     ; 1001BAA9 _ 56
        push    20                                      ; 1001BAAA _ 6A, 14
        test    eax, eax                                ; 1001BAAC _ 85. C0
        pop     esi                                     ; 1001BAAE _ 5E
        jnz     ?_3356                                  ; 1001BAAF _ 75, 07
        mov     eax, 512                                ; 1001BAB1 _ B8, 00000200
        jmp     ?_3357                                  ; 1001BAB6 _ EB, 06

?_3356: cmp     eax, esi                                ; 1001BAB8 _ 3B. C6
        jge     ?_3358                                  ; 1001BABA _ 7D, 07
        mov     eax, esi                                ; 1001BABC _ 8B. C6
?_3357: mov     dword [?_5814], eax                     ; 1001BABE _ A3, 11767580(d)
?_3358: push    4                                       ; 1001BAC3 _ 6A, 04
        push    eax                                     ; 1001BAC5 _ 50
        call    ?_4172                                  ; 1001BAC6 _ E8, 000044B9
        pop     ecx                                     ; 1001BACB _ 59
        mov     dword [?_5812], eax                     ; 1001BACC _ A3, 11766564(d)
        test    eax, eax                                ; 1001BAD1 _ 85. C0
        pop     ecx                                     ; 1001BAD3 _ 59
        jnz     ?_3359                                  ; 1001BAD4 _ 75, 21
        push    4                                       ; 1001BAD6 _ 6A, 04
        push    esi                                     ; 1001BAD8 _ 56
        mov     dword [?_5814], esi                     ; 1001BAD9 _ 89. 35, 11767580(d)
        call    ?_4172                                  ; 1001BADF _ E8, 000044A0
        pop     ecx                                     ; 1001BAE4 _ 59
        mov     dword [?_5812], eax                     ; 1001BAE5 _ A3, 11766564(d)
        test    eax, eax                                ; 1001BAEA _ 85. C0
        pop     ecx                                     ; 1001BAEC _ 59
        jnz     ?_3359                                  ; 1001BAED _ 75, 08
        push    26                                      ; 1001BAEF _ 6A, 1A
        call    ?_3352                                  ; 1001BAF1 _ E8, FFFFFF7B
        pop     ecx                                     ; 1001BAF6 _ 59
?_3359: xor     ecx, ecx                                ; 1001BAF7 _ 33. C9
        mov     eax, ?_5446                             ; 1001BAF9 _ B8, 100317F8(d)
?_3360: mov     edx, dword [?_5812]                     ; 1001BAFE _ 8B. 15, 11766564(d)
        mov     dword [ecx+edx], eax                    ; 1001BB04 _ 89. 04 11
        add     eax, 32                                 ; 1001BB07 _ 83. C0, 20
        add     ecx, 4                                  ; 1001BB0A _ 83. C1, 04
        cmp     eax, ?_5452                             ; 1001BB0D _ 3D, 10031A78(d)
        jl      ?_3360                                  ; 1001BB12 _ 7C, EA
        xor     ecx, ecx                                ; 1001BB14 _ 33. C9
        mov     edx, ?_5447                             ; 1001BB16 _ BA, 10031808(d)
?_3361: mov     esi, ecx                                ; 1001BB1B _ 8B. F1
        mov     eax, ecx                                ; 1001BB1D _ 8B. C1
        sar     esi, 5                                  ; 1001BB1F _ C1. FE, 05
        and     eax, 1FH                                ; 1001BB22 _ 83. E0, 1F
        mov     esi, dword [?_5809+esi*4]               ; 1001BB25 _ 8B. 34 B5, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001BB2C _ 8D. 04 C0
        mov     eax, dword [esi+eax*4]                  ; 1001BB2F _ 8B. 04 86
        cmp     eax, -1                                 ; 1001BB32 _ 83. F8, FF
        jz      ?_3362                                  ; 1001BB35 _ 74, 04
        test    eax, eax                                ; 1001BB37 _ 85. C0
        jnz     ?_3363                                  ; 1001BB39 _ 75, 03
?_3362: or      dword [edx], 0FFFFFFFFH                 ; 1001BB3B _ 83. 0A, FF
?_3363: add     edx, 32                                 ; 1001BB3E _ 83. C2, 20
        inc     ecx                                     ; 1001BB41 _ 41
        cmp     edx, ?_5450                             ; 1001BB42 _ 81. FA, 10031868(d)
        jl      ?_3361                                  ; 1001BB48 _ 7C, D1
        pop     esi                                     ; 1001BB4A _ 5E
        ret                                             ; 1001BB4B _ C3

