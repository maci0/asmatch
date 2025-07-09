; ---- 1001A30D ----
?_3043: ; Local function
        push    ebp                                     ; 1001A30D _ 55
        mov     ebp, esp                                ; 1001A30E _ 8B. EC
        sub     esp, 12                                 ; 1001A310 _ 83. EC, 0C
        push    ebx                                     ; 1001A313 _ 53
        push    esi                                     ; 1001A314 _ 56
        push    edi                                     ; 1001A315 _ 57
        mov     edi, dword [ebp+8H]                     ; 1001A316 _ 8B. 7D, 08
        xor     ebx, ebx                                ; 1001A319 _ 33. DB
        mov     esi, dword [edi+10H]                    ; 1001A31B _ 8B. 77, 10
        cmp     dword [edi+4H], ebx                     ; 1001A31E _ 39. 5F, 04
        mov     dword [ebp-0CH], esi                    ; 1001A321 _ 89. 75, F4
        jge     ?_3044                                  ; 1001A324 _ 7D, 03
        mov     dword [edi+4H], ebx                     ; 1001A326 _ 89. 5F, 04
?_3044: push    1                                       ; 1001A329 _ 6A, 01
        push    ebx                                     ; 1001A32B _ 53
        push    esi                                     ; 1001A32C _ 56
        call    ?_3575                                  ; 1001A32D _ E8, 00002883
        add     esp, 12                                 ; 1001A332 _ 83. C4, 0C
        cmp     eax, ebx                                ; 1001A335 _ 3B. C3
        mov     dword [ebp-4H], eax                     ; 1001A337 _ 89. 45, FC
        jl      ?_3049                                  ; 1001A33A _ 7C, 5F
        mov     ecx, dword [edi+0CH]                    ; 1001A33C _ 8B. 4F, 0C
; Note: Length-changing prefix causes delay on Intel processors
        test    cx, 108H                                ; 1001A33F _ 66: F7. C1, 0108
        jnz     ?_3045                                  ; 1001A344 _ 75, 08
        sub     eax, dword [edi+4H]                     ; 1001A346 _ 2B. 47, 04
        jmp     ?_3062                                  ; 1001A349 _ E9, 0000011B

?_3045: mov     eax, dword [edi]                        ; 1001A34E _ 8B. 07
        mov     edx, dword [edi+8H]                     ; 1001A350 _ 8B. 57, 08
        mov     ebx, eax                                ; 1001A353 _ 8B. D8
        sub     ebx, edx                                ; 1001A355 _ 2B. DA
        test    cl, 03H                                 ; 1001A357 _ F6. C1, 03
        mov     dword [ebp-8H], ebx                     ; 1001A35A _ 89. 5D, F8
        jz      ?_3048                                  ; 1001A35D _ 74, 2C
        mov     ebx, esi                                ; 1001A35F _ 8B. DE
        mov     ecx, esi                                ; 1001A361 _ 8B. CE
        sar     ebx, 5                                  ; 1001A363 _ C1. FB, 05
        and     ecx, 1FH                                ; 1001A366 _ 83. E1, 1F
        mov     ebx, dword [?_5809+ebx*4]               ; 1001A369 _ 8B. 1C 9D, 11766460(d)
        lea     ecx, [ecx+ecx*8]                        ; 1001A370 _ 8D. 0C C9
        test    byte [ebx+ecx*4+4H], 0FFFFFF80H         ; 1001A373 _ F6. 44 8B, 04, 80
        jz      ?_3050                                  ; 1001A378 _ 74, 29
        mov     ecx, edx                                ; 1001A37A _ 8B. CA
?_3046: cmp     ecx, eax                                ; 1001A37C _ 3B. C8
        jnc     ?_3050                                  ; 1001A37E _ 73, 23
        cmp     byte [ecx], 10                          ; 1001A380 _ 80. 39, 0A
        jnz     ?_3047                                  ; 1001A383 _ 75, 03
        inc     dword [ebp-8H]                          ; 1001A385 _ FF. 45, F8
?_3047: inc     ecx                                     ; 1001A388 _ 41
        jmp     ?_3046                                  ; 1001A389 _ EB, F1

?_3048: test    cl, 0FFFFFF80H                          ; 1001A38B _ F6. C1, 80
        jnz     ?_3050                                  ; 1001A38E _ 75, 13
        call    ?_3107                                  ; 1001A390 _ E8, 00000450
        mov     dword [eax], 22                         ; 1001A395 _ C7. 00, 00000016
?_3049: or      eax, 0FFFFFFFFH                         ; 1001A39B _ 83. C8, FF
        jmp     ?_3062                                  ; 1001A39E _ E9, 000000C6

?_3050: cmp     dword [ebp-4H], 0                       ; 1001A3A3 _ 83. 7D, FC, 00
        jnz     ?_3051                                  ; 1001A3A7 _ 75, 08
        mov     eax, dword [ebp-8H]                     ; 1001A3A9 _ 8B. 45, F8
        jmp     ?_3062                                  ; 1001A3AC _ E9, 000000B8

?_3051: test    byte [edi+0CH], 01H                     ; 1001A3B1 _ F6. 47, 0C, 01
        je      ?_3061                                  ; 1001A3B5 _ 0F 84, 000000A6
        mov     ecx, dword [edi+4H]                     ; 1001A3BB _ 8B. 4F, 04
        test    ecx, ecx                                ; 1001A3BE _ 85. C9
        jnz     ?_3052                                  ; 1001A3C0 _ 75, 08
        and     dword [ebp-8H], ecx                     ; 1001A3C2 _ 21. 4D, F8
        jmp     ?_3061                                  ; 1001A3C5 _ E9, 00000097

?_3052: sub     eax, edx                                ; 1001A3CA _ 2B. C2
        add     eax, ecx                                ; 1001A3CC _ 03. C1
        mov     dword [ebp+8H], eax                     ; 1001A3CE _ 89. 45, 08
        mov     eax, esi                                ; 1001A3D1 _ 8B. C6
        sar     eax, 5                                  ; 1001A3D3 _ C1. F8, 05
        lea     ebx, [?_5809+eax*4]                     ; 1001A3D6 _ 8D. 1C 85, 11766460(d)
        mov     eax, esi                                ; 1001A3DD _ 8B. C6
        and     eax, 1FH                                ; 1001A3DF _ 83. E0, 1F
        lea     esi, [eax+eax*8]                        ; 1001A3E2 _ 8D. 34 C0
        mov     eax, dword [ebx]                        ; 1001A3E5 _ 8B. 03
        shl     esi, 2                                  ; 1001A3E7 _ C1. E6, 02
        test    byte [esi+eax+4H], 0FFFFFF80H           ; 1001A3EA _ F6. 44 06, 04, 80
        jz      ?_3060                                  ; 1001A3EF _ 74, 6A
        push    2                                       ; 1001A3F1 _ 6A, 02
        push    0                                       ; 1001A3F3 _ 6A, 00
        push    dword [ebp-0CH]                         ; 1001A3F5 _ FF. 75, F4
        call    ?_3575                                  ; 1001A3F8 _ E8, 000027B8
        add     esp, 12                                 ; 1001A3FD _ 83. C4, 0C
        cmp     eax, dword [ebp-4H]                     ; 1001A400 _ 3B. 45, FC
        jnz     ?_3056                                  ; 1001A403 _ 75, 1D
        mov     eax, dword [edi+8H]                     ; 1001A405 _ 8B. 47, 08
        mov     ecx, dword [ebp+8H]                     ; 1001A408 _ 8B. 4D, 08
        add     ecx, eax                                ; 1001A40B _ 03. C8
?_3053: cmp     eax, ecx                                ; 1001A40D _ 3B. C1
        jnc     ?_3055                                  ; 1001A40F _ 73, 0B
        cmp     byte [eax], 10                          ; 1001A411 _ 80. 38, 0A
        jnz     ?_3054                                  ; 1001A414 _ 75, 03
        inc     dword [ebp+8H]                          ; 1001A416 _ FF. 45, 08
?_3054: inc     eax                                     ; 1001A419 _ 40
        jmp     ?_3053                                  ; 1001A41A _ EB, F1

?_3055: test    byte [edi+0DH], 20H                     ; 1001A41C _ F6. 47, 0D, 20
        jmp     ?_3059                                  ; 1001A420 _ EB, 34

?_3056: push    0                                       ; 1001A422 _ 6A, 00
        push    dword [ebp-4H]                          ; 1001A424 _ FF. 75, FC
        push    dword [ebp-0CH]                         ; 1001A427 _ FF. 75, F4
        call    ?_3575                                  ; 1001A42A _ E8, 00002786
        mov     eax, 512                                ; 1001A42F _ B8, 00000200
        add     esp, 12                                 ; 1001A434 _ 83. C4, 0C
        cmp     dword [ebp+8H], eax                     ; 1001A437 _ 39. 45, 08
        ja      ?_3057                                  ; 1001A43A _ 77, 0D
        mov     ecx, dword [edi+0CH]                    ; 1001A43C _ 8B. 4F, 0C
        test    cl, 08H                                 ; 1001A43F _ F6. C1, 08
        jz      ?_3057                                  ; 1001A442 _ 74, 05
        test    ch, 04H                                 ; 1001A444 _ F6. C5, 04
        jz      ?_3058                                  ; 1001A447 _ 74, 03
?_3057: mov     eax, dword [edi+18H]                    ; 1001A449 _ 8B. 47, 18
?_3058: mov     dword [ebp+8H], eax                     ; 1001A44C _ 89. 45, 08
        mov     eax, dword [ebx]                        ; 1001A44F _ 8B. 03
        test    byte [esi+eax+4H], 04H                  ; 1001A451 _ F6. 44 06, 04, 04
?_3059: jz      ?_3060                                  ; 1001A456 _ 74, 03
        inc     dword [ebp+8H]                          ; 1001A458 _ FF. 45, 08
?_3060: mov     eax, dword [ebp+8H]                     ; 1001A45B _ 8B. 45, 08
        sub     dword [ebp-4H], eax                     ; 1001A45E _ 29. 45, FC
?_3061: mov     eax, dword [ebp-8H]                     ; 1001A461 _ 8B. 45, F8
        mov     ecx, dword [ebp-4H]                     ; 1001A464 _ 8B. 4D, FC
        add     eax, ecx                                ; 1001A467 _ 03. C1
?_3062: pop     edi                                     ; 1001A469 _ 5F
        pop     esi                                     ; 1001A46A _ 5E
        pop     ebx                                     ; 1001A46B _ 5B
        leave                                           ; 1001A46C _ C9
        ret                                             ; 1001A46D _ C3
