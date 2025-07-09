; ---- 100011FB ----
?_0012: ; Local function
        mov     eax, dword [esp+4H]                     ; 100011FB _ 8B. 44 24, 04
        push    ebx                                     ; 100011FF _ 53
        push    esi                                     ; 10001200 _ 56
        mov     esi, dword [esp+14H]                    ; 10001201 _ 8B. 74 24, 14
        cmp     esi, 8                                  ; 10001205 _ 83. FE, 08
        not     eax                                     ; 10001208 _ F7. D0
        jc      ?_0014                                  ; 1000120A _ 0F 82, 000000EE
        push    edi                                     ; 10001210 _ 57
        mov     edi, esi                                ; 10001211 _ 8B. FE
        shr     edi, 3                                  ; 10001213 _ C1. EF, 03
?_0013: mov     edx, eax                                ; 10001216 _ 8B. D0
        xor     ebx, ebx                                ; 10001218 _ 33. DB
        mov     bl, byte [ecx]                          ; 1000121A _ 8A. 19
        and     edx, 0FFH                               ; 1000121C _ 81. E2, 000000FF
        xor     edx, ebx                                ; 10001222 _ 33. D3
        mov     ebx, eax                                ; 10001224 _ 8B. D8
        shr     ebx, 8                                  ; 10001226 _ C1. EB, 08
        mov     eax, dword [?_4882+edx*4]               ; 10001229 _ 8B. 04 95, 100241A0(d)
        sub     esi, 8                                  ; 10001230 _ 83. EE, 08
        xor     eax, ebx                                ; 10001233 _ 33. C3
        inc     ecx                                     ; 10001235 _ 41
        mov     edx, eax                                ; 10001236 _ 8B. D0
        xor     ebx, ebx                                ; 10001238 _ 33. DB
        mov     bl, byte [ecx]                          ; 1000123A _ 8A. 19
        and     edx, 0FFH                               ; 1000123C _ 81. E2, 000000FF
        xor     edx, ebx                                ; 10001242 _ 33. D3
        xor     ebx, ebx                                ; 10001244 _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 10001246 _ 8A. 59, 01
        mov     edx, dword [?_4882+edx*4]               ; 10001249 _ 8B. 14 95, 100241A0(d)
        shr     eax, 8                                  ; 10001250 _ C1. E8, 08
        xor     edx, eax                                ; 10001253 _ 33. D0
        inc     ecx                                     ; 10001255 _ 41
        mov     eax, edx                                ; 10001256 _ 8B. C2
        and     eax, 0FFH                               ; 10001258 _ 25, 000000FF
        xor     eax, ebx                                ; 1000125D _ 33. C3
        xor     ebx, ebx                                ; 1000125F _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 10001261 _ 8A. 59, 01
        mov     eax, dword [?_4882+eax*4]               ; 10001264 _ 8B. 04 85, 100241A0(d)
        shr     edx, 8                                  ; 1000126B _ C1. EA, 08
        xor     eax, edx                                ; 1000126E _ 33. C2
        inc     ecx                                     ; 10001270 _ 41
        mov     edx, eax                                ; 10001271 _ 8B. D0
        and     edx, 0FFH                               ; 10001273 _ 81. E2, 000000FF
        xor     edx, ebx                                ; 10001279 _ 33. D3
        xor     ebx, ebx                                ; 1000127B _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 1000127D _ 8A. 59, 01
        mov     edx, dword [?_4882+edx*4]               ; 10001280 _ 8B. 14 95, 100241A0(d)
        shr     eax, 8                                  ; 10001287 _ C1. E8, 08
        xor     edx, eax                                ; 1000128A _ 33. D0
        inc     ecx                                     ; 1000128C _ 41
        mov     eax, edx                                ; 1000128D _ 8B. C2
        and     eax, 0FFH                               ; 1000128F _ 25, 000000FF
        xor     eax, ebx                                ; 10001294 _ 33. C3
        xor     ebx, ebx                                ; 10001296 _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 10001298 _ 8A. 59, 01
        mov     eax, dword [?_4882+eax*4]               ; 1000129B _ 8B. 04 85, 100241A0(d)
        shr     edx, 8                                  ; 100012A2 _ C1. EA, 08
        xor     eax, edx                                ; 100012A5 _ 33. C2
        inc     ecx                                     ; 100012A7 _ 41
        mov     edx, eax                                ; 100012A8 _ 8B. D0
        and     edx, 0FFH                               ; 100012AA _ 81. E2, 000000FF
        xor     edx, ebx                                ; 100012B0 _ 33. D3
        xor     ebx, ebx                                ; 100012B2 _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 100012B4 _ 8A. 59, 01
        mov     edx, dword [?_4882+edx*4]               ; 100012B7 _ 8B. 14 95, 100241A0(d)
        shr     eax, 8                                  ; 100012BE _ C1. E8, 08
        xor     edx, eax                                ; 100012C1 _ 33. D0
        inc     ecx                                     ; 100012C3 _ 41
        mov     eax, edx                                ; 100012C4 _ 8B. C2
        and     eax, 0FFH                               ; 100012C6 _ 25, 000000FF
        xor     eax, ebx                                ; 100012CB _ 33. C3
        xor     ebx, ebx                                ; 100012CD _ 33. DB
        mov     bl, byte [ecx+1H]                       ; 100012CF _ 8A. 59, 01
        mov     eax, dword [?_4882+eax*4]               ; 100012D2 _ 8B. 04 85, 100241A0(d)
        shr     edx, 8                                  ; 100012D9 _ C1. EA, 08
        xor     eax, edx                                ; 100012DC _ 33. C2
        inc     ecx                                     ; 100012DE _ 41
        mov     edx, eax                                ; 100012DF _ 8B. D0
        and     edx, 0FFH                               ; 100012E1 _ 81. E2, 000000FF
        xor     edx, ebx                                ; 100012E7 _ 33. D3
        shr     eax, 8                                  ; 100012E9 _ C1. E8, 08
        mov     edx, dword [?_4882+edx*4]               ; 100012EC _ 8B. 14 95, 100241A0(d)
        xor     eax, edx                                ; 100012F3 _ 33. C2
        inc     ecx                                     ; 100012F5 _ 41
        dec     edi                                     ; 100012F6 _ 4F
        jne     ?_0013                                  ; 100012F7 _ 0F 85, FFFFFF19
        pop     edi                                     ; 100012FD _ 5F
?_0014: test    esi, esi                                ; 100012FE _ 85. F6
        jz      ?_0016                                  ; 10001300 _ 74, 1E
?_0015: mov     edx, eax                                ; 10001302 _ 8B. D0
        xor     ebx, ebx                                ; 10001304 _ 33. DB
        mov     bl, byte [ecx]                          ; 10001306 _ 8A. 19
        and     edx, 0FFH                               ; 10001308 _ 81. E2, 000000FF
        xor     edx, ebx                                ; 1000130E _ 33. D3
        shr     eax, 8                                  ; 10001310 _ C1. E8, 08
        mov     edx, dword [?_4882+edx*4]               ; 10001313 _ 8B. 14 95, 100241A0(d)
        xor     eax, edx                                ; 1000131A _ 33. C2
        inc     ecx                                     ; 1000131C _ 41
        dec     esi                                     ; 1000131D _ 4E
        jnz     ?_0015                                  ; 1000131E _ 75, E2
?_0016: pop     esi                                     ; 10001320 _ 5E
        pop     ebx                                     ; 10001321 _ 5B
        not     eax                                     ; 10001322 _ F7. D0
        ret                                             ; 10001324 _ C3

        nop                                             ; 10001325 _ 90
        nop                                             ; 10001326 _ 90
        nop                                             ; 10001327 _ 90
        nop                                             ; 10001328 _ 90
        nop                                             ; 10001329 _ 90
        nop                                             ; 1000132A _ 90
        nop                                             ; 1000132B _ 90
        nop                                             ; 1000132C _ 90
        nop                                             ; 1000132D _ 90
        nop                                             ; 1000132E _ 90
        nop                                             ; 1000132F _ 90
?_0017: mov     eax, dword [esp+1CH]                    ; 10001330 _ 8B. 44 24, 1C
        push    ebx                                     ; 10001334 _ 53
        push    ebp                                     ; 10001335 _ 55
        xor     edx, edx                                ; 10001336 _ 33. D2
        xor     ebp, ebp                                ; 10001338 _ 33. ED
        push    esi                                     ; 1000133A _ 56
        cmp     eax, edx                                ; 1000133B _ 3B. C2
        push    edi                                     ; 1000133D _ 57
        je      ?_0026                                  ; 1000133E _ 0F 84, 000001DB
        mov     ecx, dword [?_5058]                     ; 10001344 _ 8B. 0D, 10027074(d)
        mov     al, byte [eax]                          ; 1000134A _ 8A. 00
        cmp     al, byte [ecx]                          ; 1000134C _ 3A. 01
        jne     ?_0026                                  ; 1000134E _ 0F 85, 000001CB
        cmp     dword [esp+30H], 56                     ; 10001354 _ 83. 7C 24, 30, 38
        jne     ?_0026                                  ; 10001359 _ 0F 85, 000001C0
        mov     edi, dword [esp+14H]                    ; 1000135F _ 8B. 7C 24, 14
        cmp     edi, edx                                ; 10001363 _ 3B. FA
        jnz     ?_0019                                  ; 10001365 _ 75, 0A
?_0018: pop     edi                                     ; 10001367 _ 5F
        pop     esi                                     ; 10001368 _ 5E
        pop     ebp                                     ; 10001369 _ 5D
        mov     eax, 4294967294                         ; 1000136A _ B8, FFFFFFFE
        pop     ebx                                     ; 1000136F _ 5B
        ret                                             ; 10001370 _ C3

?_0019: mov     eax, dword [edi+20H]                    ; 10001371 _ 8B. 47, 20
        mov     dword [edi+18H], edx                    ; 10001374 _ 89. 57, 18
        cmp     eax, edx                                ; 10001377 _ 3B. C2
        jnz     ?_0020                                  ; 10001379 _ 75, 0A
        mov     dword [edi+20H], ?_0950                 ; 1000137B _ C7. 47, 20, 100092E0(d)
        mov     dword [edi+28H], edx                    ; 10001382 _ 89. 57, 28
?_0020: cmp     dword [edi+24H], edx                    ; 10001385 _ 39. 57, 24
        jnz     ?_0021                                  ; 10001388 _ 75, 07
        mov     dword [edi+24H], ?_0951                 ; 1000138A _ C7. 47, 24, 10009300(d)
?_0021: mov     ecx, dword [esp+18H]                    ; 10001391 _ 8B. 4C 24, 18
        cmp     ecx, -1                                 ; 10001395 _ 83. F9, FF
        jnz     ?_0022                                  ; 10001398 _ 75, 0C
        mov     dword [esp+18H], 6                      ; 1000139A _ C7. 44 24, 18, 00000006
        mov     ecx, dword [esp+18H]                    ; 100013A2 _ 8B. 4C 24, 18
?_0022: mov     ebx, dword [esp+20H]                    ; 100013A6 _ 8B. 5C 24, 20
        cmp     ebx, edx                                ; 100013AA _ 3B. DA
        jge     ?_0023                                  ; 100013AC _ 7D, 07
        mov     ebp, 1                                  ; 100013AE _ BD, 00000001
        neg     ebx                                     ; 100013B3 _ F7. DB
?_0023: mov     eax, dword [esp+24H]                    ; 100013B5 _ 8B. 44 24, 24
        cmp     eax, 1                                  ; 100013B9 _ 83. F8, 01
        jl      ?_0018                                  ; 100013BC _ 7C, A9
        cmp     eax, 9                                  ; 100013BE _ 83. F8, 09
        jg      ?_0018                                  ; 100013C1 _ 7F, A4
        cmp     dword [esp+1CH], 8                      ; 100013C3 _ 83. 7C 24, 1C, 08
        jnz     ?_0018                                  ; 100013C8 _ 75, 9D
        cmp     ebx, 8                                  ; 100013CA _ 83. FB, 08
        jl      ?_0018                                  ; 100013CD _ 7C, 98
        cmp     ebx, 15                                 ; 100013CF _ 83. FB, 0F
        jg      ?_0018                                  ; 100013D2 _ 7F, 93
        cmp     ecx, edx                                ; 100013D4 _ 3B. CA
        jl      ?_0018                                  ; 100013D6 _ 7C, 8F
        cmp     ecx, 9                                  ; 100013D8 _ 83. F9, 09
        jg      ?_0018                                  ; 100013DB _ 7F, 8A
        mov     eax, dword [esp+28H]                    ; 100013DD _ 8B. 44 24, 28
        cmp     eax, edx                                ; 100013E1 _ 3B. C2
        jl      ?_0018                                  ; 100013E3 _ 7C, 82
        cmp     eax, 2                                  ; 100013E5 _ 83. F8, 02
        jg      ?_0018                                  ; 100013E8 _ 0F 8F, FFFFFF79
        mov     edx, dword [edi+28H]                    ; 100013EE _ 8B. 57, 28
        push    5816                                    ; 100013F1 _ 68, 000016B8
        push    1                                       ; 100013F6 _ 6A, 01
        push    edx                                     ; 100013F8 _ 52
        call    near [edi+20H]                          ; 100013F9 _ FF. 57, 20
        mov     esi, eax                                ; 100013FC _ 8B. F0
        add     esp, 12                                 ; 100013FE _ 83. C4, 0C
        test    esi, esi                                ; 10001401 _ 85. F6
        jnz     ?_0024                                  ; 10001403 _ 75, 0A
        pop     edi                                     ; 10001405 _ 5F
        pop     esi                                     ; 10001406 _ 5E
        pop     ebp                                     ; 10001407 _ 5D
        mov     eax, 4294967292                         ; 10001408 _ B8, FFFFFFFC
        pop     ebx                                     ; 1000140D _ 5B
        ret                                             ; 1000140E _ C3

?_0024: mov     dword [edi+1CH], esi                    ; 1000140F _ 89. 77, 1C
        mov     dword [esi+18H], ebp                    ; 10001412 _ 89. 6E, 18
        mov     ebp, 1                                  ; 10001415 _ BD, 00000001
        mov     ecx, ebx                                ; 1000141A _ 8B. CB
        shl     ebp, cl                                 ; 1000141C _ D3. E5
        mov     dword [esi+28H], ebx                    ; 1000141E _ 89. 5E, 28
        mov     ebx, dword [esp+24H]                    ; 10001421 _ 8B. 5C 24, 24
        mov     dword [esi], edi                        ; 10001425 _ 89. 3E
        push    2                                       ; 10001427 _ 6A, 02
        lea     ecx, [ebx+7H]                           ; 10001429 _ 8D. 4B, 07
        mov     dword [esi+48H], ecx                    ; 1000142C _ 89. 4E, 48
        mov     dword [esi+24H], ebp                    ; 1000142F _ 89. 6E, 24
        lea     eax, [ebp-1H]                           ; 10001432 _ 8D. 45, FF
        push    ebp                                     ; 10001435 _ 55
        mov     dword [esi+2CH], eax                    ; 10001436 _ 89. 46, 2C
        mov     eax, 1                                  ; 10001439 _ B8, 00000001
        shl     eax, cl                                 ; 1000143E _ D3. E0
        add     ecx, 2                                  ; 10001440 _ 83. C1, 02
        mov     dword [esi+44H], eax                    ; 10001443 _ 89. 46, 44
        dec     eax                                     ; 10001446 _ 48
        mov     dword [esi+4CH], eax                    ; 10001447 _ 89. 46, 4C
        mov     eax, 2863311531                         ; 1000144A _ B8, AAAAAAAB
        mul     ecx                                     ; 1000144F _ F7. E1
        shr     edx, 1                                  ; 10001451 _ D1. EA
        mov     dword [esi+50H], edx                    ; 10001453 _ 89. 56, 50
        mov     ecx, dword [edi+28H]                    ; 10001456 _ 8B. 4F, 28
        push    ecx                                     ; 10001459 _ 51
        call    near [edi+20H]                          ; 1000145A _ FF. 57, 20
        mov     edx, dword [esi+24H]                    ; 1000145D _ 8B. 56, 24
        mov     dword [esi+30H], eax                    ; 10001460 _ 89. 46, 30
        mov     eax, dword [edi+28H]                    ; 10001463 _ 8B. 47, 28
        push    2                                       ; 10001466 _ 6A, 02
        push    edx                                     ; 10001468 _ 52
        push    eax                                     ; 10001469 _ 50
        call    near [edi+20H]                          ; 1000146A _ FF. 57, 20
        mov     ecx, dword [esi+44H]                    ; 1000146D _ 8B. 4E, 44
        mov     dword [esi+38H], eax                    ; 10001470 _ 89. 46, 38
        mov     edx, dword [edi+28H]                    ; 10001473 _ 8B. 57, 28
        push    2                                       ; 10001476 _ 6A, 02
        push    ecx                                     ; 10001478 _ 51
        push    edx                                     ; 10001479 _ 52
        call    near [edi+20H]                          ; 1000147A _ FF. 57, 20
        mov     dword [esi+3CH], eax                    ; 1000147D _ 89. 46, 3C
        lea     ecx, [ebx+6H]                           ; 10001480 _ 8D. 4B, 06
        mov     eax, 1                                  ; 10001483 _ B8, 00000001
        push    4                                       ; 10001488 _ 6A, 04
        shl     eax, cl                                 ; 1000148A _ D3. E0
        mov     dword [esi+1694H], eax                  ; 1000148C _ 89. 86, 00001694
        push    eax                                     ; 10001492 _ 50
        mov     eax, dword [edi+28H]                    ; 10001493 _ 8B. 47, 28
        push    eax                                     ; 10001496 _ 50
        call    near [edi+20H]                          ; 10001497 _ FF. 57, 20
        mov     ecx, dword [esi+1694H]                  ; 1000149A _ 8B. 8E, 00001694
        add     esp, 48                                 ; 100014A0 _ 83. C4, 30
        mov     dword [esi+8H], eax                     ; 100014A3 _ 89. 46, 08
        lea     edx, [ecx*4]                            ; 100014A6 _ 8D. 14 8D, 00000000
        mov     dword [esi+0CH], edx                    ; 100014AD _ 89. 56, 0C
        mov     edx, dword [esi+30H]                    ; 100014B0 _ 8B. 56, 30
        test    edx, edx                                ; 100014B3 _ 85. D2
        jz      ?_0025                                  ; 100014B5 _ 74, 4D
        mov     edx, dword [esi+38H]                    ; 100014B7 _ 8B. 56, 38
        test    edx, edx                                ; 100014BA _ 85. D2
        jz      ?_0025                                  ; 100014BC _ 74, 46
        mov     edx, dword [esi+3CH]                    ; 100014BE _ 8B. 56, 3C
        test    edx, edx                                ; 100014C1 _ 85. D2
        jz      ?_0025                                  ; 100014C3 _ 74, 3F
        test    eax, eax                                ; 100014C5 _ 85. C0
        jz      ?_0025                                  ; 100014C7 _ 74, 3B
        mov     edx, ecx                                ; 100014C9 _ 8B. D1
        push    edi                                     ; 100014CB _ 57
        shr     edx, 1                                  ; 100014CC _ D1. EA
        mov     byte [esi+1DH], 8                       ; 100014CE _ C6. 46, 1D, 08
        lea     edx, [eax+edx*2]                        ; 100014D2 _ 8D. 14 50
        lea     eax, [eax+ecx*2]                        ; 100014D5 _ 8D. 04 48
        add     ecx, eax                                ; 100014D8 _ 03. C8
        mov     dword [esi+169CH], edx                  ; 100014DA _ 89. 96, 0000169C
        mov     edx, dword [esp+2CH]                    ; 100014E0 _ 8B. 54 24, 2C
        mov     dword [esi+1690H], ecx                  ; 100014E4 _ 89. 8E, 00001690
        mov     ecx, dword [esp+1CH]                    ; 100014EA _ 8B. 4C 24, 1C
        mov     dword [esi+80H], edx                    ; 100014EE _ 89. 96, 00000080
        mov     dword [esi+7CH], ecx                    ; 100014F4 _ 89. 4E, 7C
        call    ?_0027                                  ; 100014F7 _ E8, 00000034
        add     esp, 4                                  ; 100014FC _ 83. C4, 04
        pop     edi                                     ; 100014FF _ 5F
        pop     esi                                     ; 10001500 _ 5E
        pop     ebp                                     ; 10001501 _ 5D
        pop     ebx                                     ; 10001502 _ 5B
        ret                                             ; 10001503 _ C3

?_0025: mov     eax, dword [?_5189]                     ; 10001504 _ A1, 100294EC(d)
        push    edi                                     ; 10001509 _ 57
        mov     dword [edi+18H], eax                    ; 1000150A _ 89. 47, 18
        call    ?_0058                                  ; 1000150D _ E8, 000003FE
        add     esp, 4                                  ; 10001512 _ 83. C4, 04
        mov     eax, 4294967292                         ; 10001515 _ B8, FFFFFFFC
        pop     edi                                     ; 1000151A _ 5F
        pop     esi                                     ; 1000151B _ 5E
        pop     ebp                                     ; 1000151C _ 5D
        pop     ebx                                     ; 1000151D _ 5B
        ret                                             ; 1000151E _ C3
