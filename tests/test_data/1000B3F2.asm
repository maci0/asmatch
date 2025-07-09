; ---- 1000B3F2 ----
?_1174: ; Local function
        cmp     dword [?_5701+edx], -1                  ; 1000B3F2 _ 83. BA, 101DE5A4(d), FF
        jne     ?_1170                                  ; 1000B3F9 _ 0F 85, FFFFFED9
        cmp     byte [?_5704+edx], 3                    ; 1000B3FF _ 80. BA, 101DE5B0(d), 03
        jne     ?_1170                                  ; 1000B406 _ 0F 85, FFFFFECC
        cmp     dword [?_5703+edx], 4                   ; 1000B40C _ 83. BA, 101DE5AC(d), 04
        jge     ?_1170                                  ; 1000B413 _ 0F 8D, FFFFFEBF
        mov     byte [ebp+168H], cl                     ; 1000B419 _ 88. 8D, 00000168
        mov     eax, dword [?_5703+edx]                 ; 1000B41F _ 8B. 82, 101DE5AC(d)
        inc     eax                                     ; 1000B425 _ 40
        pop     edi                                     ; 1000B426 _ 5F
        pop     esi                                     ; 1000B427 _ 5E
        mov     dword [?_5703+edx], eax                 ; 1000B428 _ 89. 82, 101DE5AC(d)
        pop     ebp                                     ; 1000B42E _ 5D
        mov     eax, 1                                  ; 1000B42F _ B8, 00000001
        pop     ebx                                     ; 1000B434 _ 5B
        add     esp, 24                                 ; 1000B435 _ 83. C4, 18
        ret                                             ; 1000B438 _ C3

        nop                                             ; 1000B439 _ 90
        nop                                             ; 1000B43A _ 90
        nop                                             ; 1000B43B _ 90
        nop                                             ; 1000B43C _ 90
        nop                                             ; 1000B43D _ 90
        nop                                             ; 1000B43E _ 90
        nop                                             ; 1000B43F _ 90
?_1175: push    esi                                     ; 1000B440 _ 56
        mov     esi, dword [esp+8H]                     ; 1000B441 _ 8B. 74 24, 08
        cmp     byte [esi+6H], -1                       ; 1000B445 _ 80. 7E, 06, FF
        jz      ?_1182                                  ; 1000B449 _ 74, 73
        mov     dl, byte [esi]                          ; 1000B44B _ 8A. 16
        xor     ecx, ecx                                ; 1000B44D _ 33. C9
        mov     eax, ?_5700                             ; 1000B44F _ B8, 101DE5A0(d)
?_1176: cmp     byte [eax], dl                          ; 1000B454 _ 38. 10
        jz      ?_1177                                  ; 1000B456 _ 74, 0F
        add     eax, 24                                 ; 1000B458 _ 83. C0, 18
        inc     ecx                                     ; 1000B45B _ 41
        cmp     eax, ?_5750                             ; 1000B45C _ 3D, 101DE990(d)
        jl      ?_1176                                  ; 1000B461 _ 7C, F1
        pop     esi                                     ; 1000B463 _ 5E
        xor     eax, eax                                ; 1000B464 _ 33. C0
        ret                                             ; 1000B466 _ C3

?_1177: cmp     ecx, 42                                 ; 1000B467 _ 83. F9, 2A
        jl      ?_1178                                  ; 1000B46A _ 7C, 04
        pop     esi                                     ; 1000B46C _ 5E
        xor     eax, eax                                ; 1000B46D _ 33. C0
        ret                                             ; 1000B46F _ C3

?_1178: lea     eax, [ecx+ecx*2]                        ; 1000B470 _ 8D. 04 49
        shl     eax, 3                                  ; 1000B473 _ C1. E0, 03
        cmp     byte [?_5704+eax], 1                    ; 1000B476 _ 80. B8, 101DE5B0(d), 01
        jz      ?_1179                                  ; 1000B47D _ 74, 04
        pop     esi                                     ; 1000B47F _ 5E
        xor     eax, eax                                ; 1000B480 _ 33. C0
        ret                                             ; 1000B482 _ C3

?_1179: cmp     dword [?_5705+eax], -1                  ; 1000B483 _ 83. B8, 101DE5B4(d), FF
        jz      ?_1180                                  ; 1000B48A _ 74, 04
        pop     esi                                     ; 1000B48C _ 5E
        xor     eax, eax                                ; 1000B48D _ 33. C0
        ret                                             ; 1000B48F _ C3

?_1180: mov     eax, dword [esi+7H]                     ; 1000B490 _ 8B. 46, 07
        cmp     eax, -1                                 ; 1000B493 _ 83. F8, FF
        jz      ?_1181                                  ; 1000B496 _ 74, 0F
        push    eax                                     ; 1000B498 _ 50
        call    ?_2817                                  ; 1000B499 _ E8, 0000D002
        add     esp, 4                                  ; 1000B49E _ 83. C4, 04
        test    eax, eax                                ; 1000B4A1 _ 85. C0
        jnz     ?_1181                                  ; 1000B4A3 _ 75, 02
        pop     esi                                     ; 1000B4A5 _ 5E
        ret                                             ; 1000B4A6 _ C3

?_1181: mov     eax, dword [esi+1H]                     ; 1000B4A7 _ 8B. 46, 01
        cmp     eax, -1                                 ; 1000B4AA _ 83. F8, FF
        jz      ?_1182                                  ; 1000B4AD _ 74, 0F
        push    eax                                     ; 1000B4AF _ 50
        call    ?_2817                                  ; 1000B4B0 _ E8, 0000CFEB
        add     esp, 4                                  ; 1000B4B5 _ 83. C4, 04
        test    eax, eax                                ; 1000B4B8 _ 85. C0
        jnz     ?_1182                                  ; 1000B4BA _ 75, 02
        pop     esi                                     ; 1000B4BC _ 5E
        ret                                             ; 1000B4BD _ C3
