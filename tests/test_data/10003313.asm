; ---- 10003313 ----
?_0247: ; Local function
        xor     al, al                                  ; 10003313 _ 32. C0
        pop     ebx                                     ; 10003315 _ 5B
        ret                                             ; 10003316 _ C3

        nop                                             ; 10003317 _ 90
        nop                                             ; 10003318 _ 90
        nop                                             ; 10003319 _ 90
        nop                                             ; 1000331A _ 90
        nop                                             ; 1000331B _ 90
        nop                                             ; 1000331C _ 90
        nop                                             ; 1000331D _ 90
        nop                                             ; 1000331E _ 90
        nop                                             ; 1000331F _ 90
?_0248: sub     esp, 520                                ; 10003320 _ 81. EC, 00000208
        mov     eax, dword [esp+20CH]                   ; 10003326 _ 8B. 84 24, 0000020C
        mov     ecx, dword [esp+210H]                   ; 1000332D _ 8B. 8C 24, 00000210
        mov     dword [?_5510], eax                     ; 10003334 _ A3, 10034610(d)
        mov     eax, dword [esp+218H]                   ; 10003339 _ 8B. 84 24, 00000218
        mov     dword [?_5512], eax                     ; 10003340 _ A3, 10034618(d)
        push    esi                                     ; 10003345 _ 56
        mov     esi, dword [esp+218H]                   ; 10003346 _ 8B. B4 24, 00000218
        push    ?_0162                                  ; 1000334D _ 68, 10002770(d)
        shr     eax, 4                                  ; 10003352 _ C1. E8, 04
        and     al, 01H                                 ; 10003355 _ 24, 01
        mov     dword [?_5511], ecx                     ; 10003357 _ 89. 0D, 10034614(d)
        mov     dword [?_5788], esi                     ; 1000335D _ 89. 35, 117660E0(d)
        mov     byte [?_5513], al                       ; 10003363 _ A2, 1003461C(d)
        call    near [imp_SetUnhandledExceptionFilter]  ; 10003368 _ FF. 15, 10024040(d)
        push    0                                       ; 1000336E _ 6A, 00
        call    ?_3076                                  ; 10003370 _ E8, 000171F2
        add     esp, 4                                  ; 10003375 _ 83. C4, 04
        lea     edx, [esp+10CH]                         ; 10003378 _ 8D. 94 24, 0000010C
        mov     dword [esp+4H], eax                     ; 1000337F _ 89. 44 24, 04
        push    256                                     ; 10003383 _ 68, 00000100
        push    edx                                     ; 10003388 _ 52
        push    esi                                     ; 10003389 _ 56
        call    near [imp_GetWindowTextA]               ; 1000338A _ FF. 15, 1002414C(d)
        push    260                                     ; 10003390 _ 68, 00000104
        push    ?_5789                                  ; 10003395 _ 68, 11766100(d)
        push    0                                       ; 1000339A _ 6A, 00
        call    near [imp_GetModuleFileNameA]           ; 1000339C _ FF. 15, 1002403C(d)
        push    92                                      ; 100033A2 _ 6A, 5C
        push    ?_5789                                  ; 100033A4 _ 68, 11766100(d)
        call    ?_3073                                  ; 100033A9 _ E8, 00017192
        mov     byte [eax], 0                           ; 100033AE _ C6. 00, 00
        lea     eax, [esp+0CH]                          ; 100033B1 _ 8D. 44 24, 0C
        push    eax                                     ; 100033B5 _ 50
        call    ?_3071                                  ; 100033B6 _ E8, 0001716C
        lea     ecx, [esp+118H]                         ; 100033BB _ 8D. 8C 24, 00000118
        push    eax                                     ; 100033C2 _ 50
        push    ecx                                     ; 100033C3 _ 51
        push    ?_5104                                  ; 100033C4 _ 68, 1002735C(d)
        push    ?_5787                                  ; 100033C9 _ 68, 117640E0(d)
        call    ?_3039                                  ; 100033CE _ E8, 00016EC6
        mov     al, byte [?_5512]                       ; 100033D3 _ A0, 10034618(d)
        add     esp, 28                                 ; 100033D8 _ 83. C4, 1C
        test    al, 01H                                 ; 100033DB _ A8, 01
        je      ?_0252                                  ; 100033DD _ 0F 84, 00000087
        push    edi                                     ; 100033E3 _ 57
        mov     edi, ?_5060                             ; 100033E4 _ BF, 10027084(d)
?_0249: push    edi                                     ; 100033E9 _ 57
        push    ?_5789                                  ; 100033EA _ 68, 11766100(d)
        lea     edx, [esp+14H]                          ; 100033EF _ 8D. 54 24, 14
        push    ?_5064                                  ; 100033F3 _ 68, 100270FC(d)
        push    edx                                     ; 100033F8 _ 52
        call    ?_3039                                  ; 100033F9 _ E8, 00016E9B
        lea     eax, [esp+1CH]                          ; 100033FE _ 8D. 44 24, 1C
        push    ?_5063                                  ; 10003402 _ 68, 100270F8(d)
        push    eax                                     ; 10003407 _ 50
        call    ?_3038                                  ; 10003408 _ E8, 00016E79
        mov     esi, eax                                ; 1000340D _ 8B. F0
        add     esp, 24                                 ; 1000340F _ 83. C4, 18
        test    esi, esi                                ; 10003412 _ 85. F6
        jz      ?_0251                                  ; 10003414 _ 74, 48
        push    2                                       ; 10003416 _ 6A, 02
        push    0                                       ; 10003418 _ 6A, 00
        push    esi                                     ; 1000341A _ 56
        call    ?_3063                                  ; 1000341B _ E8, 0001704E
        push    esi                                     ; 10003420 _ 56
        call    ?_3042                                  ; 10003421 _ E8, 00016EC5
        add     esp, 16                                 ; 10003426 _ 83. C4, 10
        cmp     eax, 65536                              ; 10003429 _ 3D, 00010000
        jle     ?_0250                                  ; 1000342E _ 7E, 25
        push    esi                                     ; 10003430 _ 56
        call    ?_3029                                  ; 10003431 _ E8, 00016D54
        lea     ecx, [esp+10H]                          ; 10003436 _ 8D. 4C 24, 10
        push    ?_5103                                  ; 1000343A _ 68, 10027358(d)
        push    ecx                                     ; 1000343F _ 51
        call    ?_3038                                  ; 10003440 _ E8, 00016E41
        mov     esi, eax                                ; 10003445 _ 8B. F0
        push    esi                                     ; 10003447 _ 56
        push    ?_5102                                  ; 10003448 _ 68, 1002733C(d)
        call    ?_3035                                  ; 1000344D _ E8, 00016DB5
        add     esp, 20                                 ; 10003452 _ 83. C4, 14
?_0250: push    esi                                     ; 10003455 _ 56
        call    ?_3029                                  ; 10003456 _ E8, 00016D2F
        add     esp, 4                                  ; 1000345B _ 83. C4, 04
?_0251: add     edi, 32                                 ; 1000345E _ 83. C7, 20
        cmp     edi, ?_5061                             ; 10003461 _ 81. FF, 100270E4(d)
        jl      ?_0249                                  ; 10003467 _ 7C, 80
        pop     edi                                     ; 10003469 _ 5F
?_0252: test    byte [?_5512], 08H                      ; 1000346A _ F6. 05, 10034618(d), 08
        jz      ?_0253                                  ; 10003471 _ 74, 13
        call    near [imp_AllocConsole]                 ; 10003473 _ FF. 15, 10024048(d)
        push    -11                                     ; 10003479 _ 6A, F5
        call    near [imp_GetStdHandle]                 ; 1000347B _ FF. 15, 10024044(d)
        mov     dword [?_5790], eax                     ; 10003481 _ A3, 11766204(d)
?_0253: mov     esi, ?_5059                             ; 10003486 _ BE, 10027078(d)
?_0254: mov     edx, dword [esi]                        ; 1000348B _ 8B. 16
        mov     eax, dword [?_5512]                     ; 1000348D _ A1, 10034618(d)
        push    edx                                     ; 10003492 _ 52
        push    eax                                     ; 10003493 _ 50
        push    ?_5787                                  ; 10003494 _ 68, 117640E0(d)
        call    ?_0154                                  ; 10003499 _ E8, FFFFF1A2
        add     esi, 4                                  ; 1000349E _ 83. C6, 04
        add     esp, 12                                 ; 100034A1 _ 83. C4, 0C
        cmp     esi, ?_5060                             ; 100034A4 _ 81. FE, 10027084(d)
        jl      ?_0254                                  ; 100034AA _ 7C, DF
        pop     esi                                     ; 100034AC _ 5E
        add     esp, 520                                ; 100034AD _ 81. C4, 00000208
        ret                                             ; 100034B3 _ C3

        nop                                             ; 100034B4 _ 90
        nop                                             ; 100034B5 _ 90
        nop                                             ; 100034B6 _ 90
        nop                                             ; 100034B7 _ 90
        nop                                             ; 100034B8 _ 90
        nop                                             ; 100034B9 _ 90
        nop                                             ; 100034BA _ 90
        nop                                             ; 100034BB _ 90
        nop                                             ; 100034BC _ 90
        nop                                             ; 100034BD _ 90
        nop                                             ; 100034BE _ 90
        nop                                             ; 100034BF _ 90
?_0255: push    esi                                     ; 100034C0 _ 56
        mov     esi, ?_5059                             ; 100034C1 _ BE, 10027078(d)
?_0256: mov     eax, dword [esi]                        ; 100034C6 _ 8B. 06
        mov     ecx, dword [?_5512]                     ; 100034C8 _ 8B. 0D, 10034618(d)
        push    eax                                     ; 100034CE _ 50
        push    ecx                                     ; 100034CF _ 51
        push    ?_5105                                  ; 100034D0 _ 68, 100273AC(d)
        call    ?_0154                                  ; 100034D5 _ E8, FFFFF166
        add     esi, 4                                  ; 100034DA _ 83. C6, 04
        add     esp, 12                                 ; 100034DD _ 83. C4, 0C
        cmp     esi, ?_5060                             ; 100034E0 _ 81. FE, 10027084(d)
        jl      ?_0256                                  ; 100034E6 _ 7C, DE
        mov     al, byte [?_5512]                       ; 100034E8 _ A0, 10034618(d)
        xor     esi, esi                                ; 100034ED _ 33. F6
        test    al, 08H                                 ; 100034EF _ A8, 08
        jz      ?_0257                                  ; 100034F1 _ 74, 0C
        call    near [imp_FreeConsole]                  ; 100034F3 _ FF. 15, 1002404C(d)
        mov     dword [?_5790], esi                     ; 100034F9 _ 89. 35, 11766204(d)
?_0257: mov     dword [?_5510], esi                     ; 100034FF _ 89. 35, 10034610(d)
        mov     dword [?_5788], esi                     ; 10003505 _ 89. 35, 117660E0(d)
        mov     dword [?_5512], esi                     ; 1000350B _ 89. 35, 10034618(d)
        pop     esi                                     ; 10003511 _ 5E
        ret                                             ; 10003512 _ C3

        nop                                             ; 10003513 _ 90
        nop                                             ; 10003514 _ 90
        nop                                             ; 10003515 _ 90
        nop                                             ; 10003516 _ 90
        nop                                             ; 10003517 _ 90
        nop                                             ; 10003518 _ 90
        nop                                             ; 10003519 _ 90
        nop                                             ; 1000351A _ 90
        nop                                             ; 1000351B _ 90
        nop                                             ; 1000351C _ 90
        nop                                             ; 1000351D _ 90
        nop                                             ; 1000351E _ 90
        nop                                             ; 1000351F _ 90
?_0258: mov     eax, dword [?_5510]                     ; 10003520 _ A1, 10034610(d)
        test    eax, eax                                ; 10003525 _ 85. C0
        jnz     ?_0260                                  ; 10003527 _ 75, 15
        push    48                                      ; 10003529 _ 6A, 30
        push    ?_5109                                  ; 1000352B _ 68, 10027424(d)
        push    ?_5108                                  ; 10003530 _ 68, 100273FC(d)
        push    0                                       ; 10003535 _ 6A, 00
        call    near [imp_MessageBoxA]                  ; 10003537 _ FF. 15, 10024148(d)
?_0259: ret                                             ; 1000353D _ C3
