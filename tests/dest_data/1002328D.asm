; ---- 1002328D ----
?_4812: ; Local function
        push    ebp                                     ; 1002328D _ 55
        mov     ebp, esp                                ; 1002328E _ 8B. EC
        push    -1                                      ; 10023290 _ 6A, FF
        push    ?_5046                                  ; 10023292 _ 68, 100265F0(d)
        push    ?_3881                                  ; 10023297 _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1002329C _ 64: A1, 00000000
        push    eax                                     ; 100232A2 _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 100232A3 _ 64: 89. 25, 00000000
        sub     esp, 48                                 ; 100232AA _ 83. EC, 30
        push    ebx                                     ; 100232AD _ 53
        push    esi                                     ; 100232AE _ 56
        push    edi                                     ; 100232AF _ 57
        mov     dword [ebp-18H], esp                    ; 100232B0 _ 89. 65, E8
        xor     ebx, ebx                                ; 100232B3 _ 33. DB
        cmp     dword [?_5627], ebx                     ; 100232B5 _ 39. 1D, 10035874(d)
        push    1                                       ; 100232BB _ 6A, 01
        pop     edi                                     ; 100232BD _ 5F
        jnz     ?_4814                                  ; 100232BE _ 75, 40
        push    edi                                     ; 100232C0 _ 57
        mov     eax, ?_4967                             ; 100232C1 _ B8, 100260F4(d)
        push    eax                                     ; 100232C6 _ 50
        push    edi                                     ; 100232C7 _ 57
        push    eax                                     ; 100232C8 _ 50
        push    ebx                                     ; 100232C9 _ 53
        push    ebx                                     ; 100232CA _ 53
        call    near [imp_CompareStringW]               ; 100232CB _ FF. 15, 10024080(d)
        test    eax, eax                                ; 100232D1 _ 85. C0
        jz      ?_4813                                  ; 100232D3 _ 74, 08
        mov     dword [?_5627], edi                     ; 100232D5 _ 89. 3D, 10035874(d)
        jmp     ?_4814                                  ; 100232DB _ EB, 23

?_4813: push    edi                                     ; 100232DD _ 57
        mov     eax, ?_4966                             ; 100232DE _ B8, 100260F0(d)
        push    eax                                     ; 100232E3 _ 50
        push    edi                                     ; 100232E4 _ 57
        push    eax                                     ; 100232E5 _ 50
        push    ebx                                     ; 100232E6 _ 53
        push    ebx                                     ; 100232E7 _ 53
        call    near [imp_CompareStringA]               ; 100232E8 _ FF. 15, 10024084(d)
        test    eax, eax                                ; 100232EE _ 85. C0
        je      ?_4838                                  ; 100232F0 _ 0F 84, 00000200
        mov     dword [?_5627], 2                       ; 100232F6 _ C7. 05, 10035874(d), 00000002
?_4814: mov     esi, dword [ebp+14H]                    ; 10023300 _ 8B. 75, 14
        cmp     esi, ebx                                ; 10023303 _ 3B. F3
        jle     ?_4815                                  ; 10023305 _ 7E, 10
        push    esi                                     ; 10023307 _ 56
        push    dword [ebp+10H]                         ; 10023308 _ FF. 75, 10
        call    ?_4840                                  ; 1002330B _ E8, 000001FA
        pop     ecx                                     ; 10023310 _ 59
        pop     ecx                                     ; 10023311 _ 59
        mov     esi, eax                                ; 10023312 _ 8B. F0
        mov     dword [ebp+14H], esi                    ; 10023314 _ 89. 75, 14
?_4815: cmp     dword [ebp+1CH], ebx                    ; 10023317 _ 39. 5D, 1C
        jle     ?_4816                                  ; 1002331A _ 7E, 10
        push    dword [ebp+1CH]                         ; 1002331C _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1002331F _ FF. 75, 18
        call    ?_4840                                  ; 10023322 _ E8, 000001E3
        pop     ecx                                     ; 10023327 _ 59
        pop     ecx                                     ; 10023328 _ 59
        mov     dword [ebp+1CH], eax                    ; 10023329 _ 89. 45, 1C
?_4816: mov     eax, dword [?_5627]                     ; 1002332C _ A1, 10035874(d)
        cmp     eax, 2                                  ; 10023331 _ 83. F8, 02
        jnz     ?_4817                                  ; 10023334 _ 75, 1B
        push    dword [ebp+1CH]                         ; 10023336 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 10023339 _ FF. 75, 18
        push    esi                                     ; 1002333C _ 56
        push    dword [ebp+10H]                         ; 1002333D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10023340 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10023343 _ FF. 75, 08
        call    near [imp_CompareStringA]               ; 10023346 _ FF. 15, 10024084(d)
        jmp     ?_4839                                  ; 1002334C _ E9, 000001A7

?_4817: cmp     eax, edi                                ; 10023351 _ 3B. C7
        jne     ?_4838                                  ; 10023353 _ 0F 85, 0000019D
        cmp     dword [ebp+20H], ebx                    ; 10023359 _ 39. 5D, 20
        jnz     ?_4818                                  ; 1002335C _ 75, 08
        mov     eax, dword [?_5590]                     ; 1002335E _ A1, 100355CC(d)
        mov     dword [ebp+20H], eax                    ; 10023363 _ 89. 45, 20
?_4818: cmp     esi, ebx                                ; 10023366 _ 3B. F3
        jz      ?_4819                                  ; 10023368 _ 74, 09
        cmp     dword [ebp+1CH], ebx                    ; 1002336A _ 39. 5D, 1C
        jne     ?_4831                                  ; 1002336D _ 0F 85, 00000098
?_4819: cmp     esi, dword [ebp+1CH]                    ; 10023373 _ 3B. 75, 1C
        jnz     ?_4822                                  ; 10023376 _ 75, 08
?_4820: push    2                                       ; 10023378 _ 6A, 02
?_4821: pop     eax                                     ; 1002337A _ 58
        jmp     ?_4839                                  ; 1002337B _ E9, 00000178

?_4822: cmp     dword [ebp+1CH], edi                    ; 10023380 _ 39. 7D, 1C
        jle     ?_4824                                  ; 10023383 _ 7E, 07
?_4823: mov     eax, edi                                ; 10023385 _ 8B. C7
        jmp     ?_4839                                  ; 10023387 _ E9, 0000016C

?_4824: cmp     esi, edi                                ; 1002338C _ 3B. F7
        jg      ?_4827                                  ; 1002338E _ 7F, 41
        lea     eax, [ebp-3CH]                          ; 10023390 _ 8D. 45, C4
        push    eax                                     ; 10023393 _ 50
        push    dword [ebp+20H]                         ; 10023394 _ FF. 75, 20
        call    near [imp_GetCPInfo]                    ; 10023397 _ FF. 15, 100240A0(d)
        test    eax, eax                                ; 1002339D _ 85. C0
        je      ?_4838                                  ; 1002339F _ 0F 84, 00000151
        cmp     esi, ebx                                ; 100233A5 _ 3B. F3
        jle     ?_4828                                  ; 100233A7 _ 7E, 2C
        cmp     dword [ebp-3CH], 2                      ; 100233A9 _ 83. 7D, C4, 02
        jc      ?_4827                                  ; 100233AD _ 72, 22
        lea     eax, [ebp-36H]                          ; 100233AF _ 8D. 45, CA
        cmp     byte [ebp-36H], bl                      ; 100233B2 _ 38. 5D, CA
        jz      ?_4827                                  ; 100233B5 _ 74, 1A
?_4825: mov     dl, byte [eax+1H]                       ; 100233B7 _ 8A. 50, 01
        cmp     dl, bl                                  ; 100233BA _ 3A. D3
        jz      ?_4827                                  ; 100233BC _ 74, 13
        mov     ecx, dword [ebp+10H]                    ; 100233BE _ 8B. 4D, 10
        mov     cl, byte [ecx]                          ; 100233C1 _ 8A. 09
        cmp     cl, byte [eax]                          ; 100233C3 _ 3A. 08
        jc      ?_4826                                  ; 100233C5 _ 72, 04
        cmp     cl, dl                                  ; 100233C7 _ 3A. CA
        jbe     ?_4820                                  ; 100233C9 _ 76, AD
?_4826: inc     eax                                     ; 100233CB _ 40
        inc     eax                                     ; 100233CC _ 40
        cmp     byte [eax], bl                          ; 100233CD _ 38. 18
        jnz     ?_4825                                  ; 100233CF _ 75, E6
?_4827: push    3                                       ; 100233D1 _ 6A, 03
        jmp     ?_4821                                  ; 100233D3 _ EB, A5

?_4828: cmp     dword [ebp+1CH], ebx                    ; 100233D5 _ 39. 5D, 1C
        jle     ?_4831                                  ; 100233D8 _ 7E, 31
        cmp     dword [ebp-3CH], 2                      ; 100233DA _ 83. 7D, C4, 02
        jc      ?_4823                                  ; 100233DE _ 72, A5
        lea     eax, [ebp-36H]                          ; 100233E0 _ 8D. 45, CA
        cmp     byte [ebp-36H], bl                      ; 100233E3 _ 38. 5D, CA
        jz      ?_4823                                  ; 100233E6 _ 74, 9D
?_4829: mov     dl, byte [eax+1H]                       ; 100233E8 _ 8A. 50, 01
        cmp     dl, bl                                  ; 100233EB _ 3A. D3
        jz      ?_4823                                  ; 100233ED _ 74, 96
        mov     ecx, dword [ebp+18H]                    ; 100233EF _ 8B. 4D, 18
        mov     cl, byte [ecx]                          ; 100233F2 _ 8A. 09
        cmp     cl, byte [eax]                          ; 100233F4 _ 3A. 08
        jc      ?_4830                                  ; 100233F6 _ 72, 08
        cmp     cl, dl                                  ; 100233F8 _ 3A. CA
        jbe     ?_4820                                  ; 100233FA _ 0F 86, FFFFFF78
?_4830: inc     eax                                     ; 10023400 _ 40
        inc     eax                                     ; 10023401 _ 40
        cmp     byte [eax], bl                          ; 10023402 _ 38. 18
        jnz     ?_4829                                  ; 10023404 _ 75, E2
        jmp     ?_4823                                  ; 10023406 _ E9, FFFFFF7A

?_4831: push    ebx                                     ; 1002340B _ 53
        push    ebx                                     ; 1002340C _ 53
        push    esi                                     ; 1002340D _ 56
        push    dword [ebp+10H]                         ; 1002340E _ FF. 75, 10
        push    9                                       ; 10023411 _ 6A, 09
        push    dword [ebp+20H]                         ; 10023413 _ FF. 75, 20
        call    near [imp_MultiByteToWideChar]          ; 10023416 _ FF. 15, 10024134(d)
        mov     dword [ebp-1CH], eax                    ; 1002341C _ 89. 45, E4
        cmp     eax, ebx                                ; 1002341F _ 3B. C3
        je      ?_4838                                  ; 10023421 _ 0F 84, 000000CF
        mov     dword [ebp-4H], ebx                     ; 10023427 _ 89. 5D, FC
        add     eax, eax                                ; 1002342A _ 03. C0
        add     eax, 3                                  ; 1002342C _ 83. C0, 03
        and     al, 0FFFFFFFCH                          ; 1002342F _ 24, FC
        call    ?_3168                                  ; 10023431 _ E8, FFFF783A
        mov     dword [ebp-18H], esp                    ; 10023436 _ 89. 65, E8
        mov     eax, esp                                ; 10023439 _ 8B. C4
        mov     dword [ebp-24H], eax                    ; 1002343B _ 89. 45, DC
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1002343E _ 83. 4D, FC, FF
        jmp     ?_4834                                  ; 10023442 _ EB, 16

?_4832: push    1                                       ; 10023444 _ 6A, 01
        pop     eax                                     ; 10023446 _ 58
        ret                                             ; 10023447 _ C3

?_4833: mov     esp, dword [ebp-18H]                    ; 10023448 _ 8B. 65, E8
        xor     ebx, ebx                                ; 1002344B _ 33. DB
        mov     dword [ebp-24H], ebx                    ; 1002344D _ 89. 5D, DC
        or      dword [ebp-4H], 0FFFFFFFFH              ; 10023450 _ 83. 4D, FC, FF
        mov     esi, dword [ebp+14H]                    ; 10023454 _ 8B. 75, 14
        push    1                                       ; 10023457 _ 6A, 01
        pop     edi                                     ; 10023459 _ 5F
?_4834: cmp     dword [ebp-24H], ebx                    ; 1002345A _ 39. 5D, DC
        je      ?_4838                                  ; 1002345D _ 0F 84, 00000093
        push    dword [ebp-1CH]                         ; 10023463 _ FF. 75, E4
        push    dword [ebp-24H]                         ; 10023466 _ FF. 75, DC
        push    esi                                     ; 10023469 _ 56
        push    dword [ebp+10H]                         ; 1002346A _ FF. 75, 10
        push    edi                                     ; 1002346D _ 57
        push    dword [ebp+20H]                         ; 1002346E _ FF. 75, 20
        mov     esi, dword [imp_MultiByteToWideChar]    ; 10023471 _ 8B. 35, 10024134(d)
        call    esi                                     ; 10023477 _ FF. D6
        test    eax, eax                                ; 10023479 _ 85. C0
        jz      ?_4838                                  ; 1002347B _ 74, 79
        push    ebx                                     ; 1002347D _ 53
        push    ebx                                     ; 1002347E _ 53
        push    dword [ebp+1CH]                         ; 1002347F _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 10023482 _ FF. 75, 18
        push    9                                       ; 10023485 _ 6A, 09
        push    dword [ebp+20H]                         ; 10023487 _ FF. 75, 20
        call    esi                                     ; 1002348A _ FF. D6
        mov     esi, eax                                ; 1002348C _ 8B. F0
        mov     dword [ebp-20H], esi                    ; 1002348E _ 89. 75, E0
        cmp     esi, ebx                                ; 10023491 _ 3B. F3
        jz      ?_4838                                  ; 10023493 _ 74, 61
        mov     dword [ebp-4H], edi                     ; 10023495 _ 89. 7D, FC
        lea     eax, [esi+esi]                          ; 10023498 _ 8D. 04 36
        add     eax, 3                                  ; 1002349B _ 83. C0, 03
        and     al, 0FFFFFFFCH                          ; 1002349E _ 24, FC
        call    ?_3168                                  ; 100234A0 _ E8, FFFF77CB
        mov     dword [ebp-18H], esp                    ; 100234A5 _ 89. 65, E8
        mov     edi, esp                                ; 100234A8 _ 8B. FC
        mov     dword [ebp-28H], edi                    ; 100234AA _ 89. 7D, D8
        or      dword [ebp-4H], 0FFFFFFFFH              ; 100234AD _ 83. 4D, FC, FF
        jmp     ?_4837                                  ; 100234B1 _ EB, 12

?_4835: push    1                                       ; 100234B3 _ 6A, 01
        pop     eax                                     ; 100234B5 _ 58
        ret                                             ; 100234B6 _ C3

?_4836: mov     esp, dword [ebp-18H]                    ; 100234B7 _ 8B. 65, E8
        xor     ebx, ebx                                ; 100234BA _ 33. DB
        xor     edi, edi                                ; 100234BC _ 33. FF
        or      dword [ebp-4H], 0FFFFFFFFH              ; 100234BE _ 83. 4D, FC, FF
        mov     esi, dword [ebp-20H]                    ; 100234C2 _ 8B. 75, E0
?_4837: cmp     edi, ebx                                ; 100234C5 _ 3B. FB
        jz      ?_4838                                  ; 100234C7 _ 74, 2D
        push    esi                                     ; 100234C9 _ 56
        push    edi                                     ; 100234CA _ 57
        push    dword [ebp+1CH]                         ; 100234CB _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 100234CE _ FF. 75, 18
        push    1                                       ; 100234D1 _ 6A, 01
        push    dword [ebp+20H]                         ; 100234D3 _ FF. 75, 20
        call    near [imp_MultiByteToWideChar]          ; 100234D6 _ FF. 15, 10024134(d)
        test    eax, eax                                ; 100234DC _ 85. C0
        jz      ?_4838                                  ; 100234DE _ 74, 16
        push    esi                                     ; 100234E0 _ 56
        push    edi                                     ; 100234E1 _ 57
        push    dword [ebp-1CH]                         ; 100234E2 _ FF. 75, E4
        push    dword [ebp-24H]                         ; 100234E5 _ FF. 75, DC
        push    dword [ebp+0CH]                         ; 100234E8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 100234EB _ FF. 75, 08
        call    near [imp_CompareStringW]               ; 100234EE _ FF. 15, 10024080(d)
        jmp     ?_4839                                  ; 100234F4 _ EB, 02

?_4838: xor     eax, eax                                ; 100234F6 _ 33. C0
?_4839: lea     esp, [ebp-4CH]                          ; 100234F8 _ 8D. 65, B4
        mov     ecx, dword [ebp-10H]                    ; 100234FB _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 100234FE _ 64: 89. 0D, 00000000
        pop     edi                                     ; 10023505 _ 5F
        pop     esi                                     ; 10023506 _ 5E
        pop     ebx                                     ; 10023507 _ 5B
        leave                                           ; 10023508 _ C9
        ret                                             ; 10023509 _ C3

