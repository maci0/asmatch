; ---- 1002044C ----
?_4226: ; Local function
        push    ebp                                     ; 1002044C _ 55
        mov     ebp, esp                                ; 1002044D _ 8B. EC
        sub     esp, 28                                 ; 1002044F _ 83. EC, 1C
        mov     ecx, dword [ebp+0CH]                    ; 10020452 _ 8B. 4D, 0C
        push    ebx                                     ; 10020455 _ 53
        xor     ebx, ebx                                ; 10020456 _ 33. DB
        push    esi                                     ; 10020458 _ 56
        test    cl, 0FFFFFF80H                          ; 10020459 _ F6. C1, 80
        push    edi                                     ; 1002045C _ 57
        mov     dword [ebp-1CH], 12                     ; 1002045D _ C7. 45, E4, 0000000C
        mov     dword [ebp-18H], ebx                    ; 10020464 _ 89. 5D, E8
        jz      ?_4227                                  ; 10020467 _ 74, 09
        mov     dword [ebp-14H], ebx                    ; 10020469 _ 89. 5D, EC
        mov     byte [ebp-1H], 16                       ; 1002046C _ C6. 45, FF, 10
        jmp     ?_4228                                  ; 10020470 _ EB, 0B

?_4227: and     byte [ebp-1H], 00H                      ; 10020472 _ 80. 65, FF, 00
        mov     dword [ebp-14H], 1                      ; 10020476 _ C7. 45, EC, 00000001
?_4228: mov     eax, 32768                              ; 1002047D _ B8, 00008000
        test    eax, ecx                                ; 10020482 _ 85. C8
        jnz     ?_4230                                  ; 10020484 _ 75, 11
        test    ch, 40H                                 ; 10020486 _ F6. C5, 40
        jnz     ?_4229                                  ; 10020489 _ 75, 08
        cmp     dword [?_5625], eax                     ; 1002048B _ 39. 05, 10035844(d)
        jz      ?_4230                                  ; 10020491 _ 74, 04
?_4229: or      byte [ebp-1H], 0FFFFFF80H               ; 10020493 _ 80. 4D, FF, 80
?_4230: push    3                                       ; 10020497 _ 6A, 03
        mov     eax, ecx                                ; 10020499 _ 8B. C1
        pop     esi                                     ; 1002049B _ 5E
        and     eax, esi                                ; 1002049C _ 23. C6
        sub     eax, ebx                                ; 1002049E _ 2B. C3
        jz      ?_4232                                  ; 100204A0 _ 74, 1C
        dec     eax                                     ; 100204A2 _ 48
        jz      ?_4231                                  ; 100204A3 _ 74, 10
        dec     eax                                     ; 100204A5 _ 48
        jne     ?_4241                                  ; 100204A6 _ 0F 85, 000000A4
        mov     dword [ebp-0CH], -1073741824            ; 100204AC _ C7. 45, F4, C0000000
        jmp     ?_4233                                  ; 100204B3 _ EB, 10

?_4231: mov     dword [ebp-0CH], 1073741824             ; 100204B5 _ C7. 45, F4, 40000000
        jmp     ?_4233                                  ; 100204BC _ EB, 07

?_4232: mov     dword [ebp-0CH], -2147483648            ; 100204BE _ C7. 45, F4, 80000000
?_4233: mov     eax, dword [ebp+10H]                    ; 100204C5 _ 8B. 45, 10
        cmp     eax, 16                                 ; 100204C8 _ 83. F8, 10
        jz      ?_4236                                  ; 100204CB _ 74, 26
        cmp     eax, 32                                 ; 100204CD _ 83. F8, 20
        jz      ?_4235                                  ; 100204D0 _ 74, 18
        cmp     eax, 48                                 ; 100204D2 _ 83. F8, 30
        jz      ?_4234                                  ; 100204D5 _ 74, 0A
        cmp     eax, 64                                 ; 100204D7 _ 83. F8, 40
        jnz     ?_4241                                  ; 100204DA _ 75, 74
        mov     dword [ebp-10H], esi                    ; 100204DC _ 89. 75, F0
        jmp     ?_4237                                  ; 100204DF _ EB, 15

?_4234: mov     dword [ebp-10H], 2                      ; 100204E1 _ C7. 45, F0, 00000002
        jmp     ?_4237                                  ; 100204E8 _ EB, 0C

?_4235: mov     dword [ebp-10H], 1                      ; 100204EA _ C7. 45, F0, 00000001
        jmp     ?_4237                                  ; 100204F1 _ EB, 03

?_4236: mov     dword [ebp-10H], ebx                    ; 100204F3 _ 89. 5D, F0
?_4237: mov     edx, 1792                               ; 100204F6 _ BA, 00000700
        mov     eax, 1024                               ; 100204FB _ B8, 00000400
        and     ecx, edx                                ; 10020500 _ 23. CA
        mov     edi, 256                                ; 10020502 _ BF, 00000100
        cmp     ecx, eax                                ; 10020507 _ 3B. C8
        jg      ?_4240                                  ; 10020509 _ 7F, 31
        jz      ?_4239                                  ; 1002050B _ 74, 2A
        cmp     ecx, ebx                                ; 1002050D _ 3B. CB
        jz      ?_4239                                  ; 1002050F _ 74, 26
        cmp     ecx, edi                                ; 10020511 _ 3B. CF
        jz      ?_4238                                  ; 10020513 _ 74, 19
        cmp     ecx, 512                                ; 10020515 _ 81. F9, 00000200
        jz      ?_4242                                  ; 1002051B _ 74, 4D
        cmp     ecx, 768                                ; 1002051D _ 81. F9, 00000300
        jnz     ?_4241                                  ; 10020523 _ 75, 2B
        mov     dword [ebp-8H], 2                       ; 10020525 _ C7. 45, F8, 00000002
        jmp     ?_4244                                  ; 1002052C _ EB, 4C

?_4238: mov     dword [ebp-8H], 4                       ; 1002052E _ C7. 45, F8, 00000004
        jmp     ?_4244                                  ; 10020535 _ EB, 43

?_4239: mov     dword [ebp-8H], esi                     ; 10020537 _ 89. 75, F8
        jmp     ?_4244                                  ; 1002053A _ EB, 3E

?_4240: cmp     ecx, 1280                               ; 1002053C _ 81. F9, 00000500
        jz      ?_4243                                  ; 10020542 _ 74, 2F
        cmp     ecx, 1536                               ; 10020544 _ 81. F9, 00000600
        jz      ?_4242                                  ; 1002054A _ 74, 1E
        cmp     ecx, edx                                ; 1002054C _ 3B. CA
        jz      ?_4243                                  ; 1002054E _ 74, 23
?_4241: call    ?_3107                                  ; 10020550 _ E8, FFFFA290
        mov     dword [eax], 22                         ; 10020555 _ C7. 00, 00000016
        call    ?_3108                                  ; 1002055B _ E8, FFFFA28E
        mov     dword [eax], ebx                        ; 10020560 _ 89. 18
        or      eax, 0FFFFFFFFH                         ; 10020562 _ 83. C8, FF
        jmp     ?_4262                                  ; 10020565 _ E9, 000001AC

?_4242: mov     dword [ebp-8H], 5                       ; 1002056A _ C7. 45, F8, 00000005
        jmp     ?_4244                                  ; 10020571 _ EB, 07

?_4243: mov     dword [ebp-8H], 1                       ; 10020573 _ C7. 45, F8, 00000001
?_4244: mov     eax, dword [ebp+0CH]                    ; 1002057A _ 8B. 45, 0C
        mov     esi, 128                                ; 1002057D _ BE, 00000080
        test    edi, eax                                ; 10020582 _ 85. C7
        jz      ?_4245                                  ; 10020584 _ 74, 13
        mov     ecx, dword [?_5557]                     ; 10020586 _ 8B. 0D, 100354B0(d)
        not     ecx                                     ; 1002058C _ F7. D1
        and     ecx, dword [ebp+14H]                    ; 1002058E _ 23. 4D, 14
        test    cl, 0FFFFFF80H                          ; 10020591 _ F6. C1, 80
        jnz     ?_4245                                  ; 10020594 _ 75, 03
        push    1                                       ; 10020596 _ 6A, 01
        pop     esi                                     ; 10020598 _ 5E
?_4245: test    al, 40H                                 ; 10020599 _ A8, 40
        jz      ?_4246                                  ; 1002059B _ 74, 0A
        or      esi, 4000000H                           ; 1002059D _ 81. CE, 04000000
        or      byte [ebp-0AH], 01H                     ; 100205A3 _ 80. 4D, F6, 01
?_4246: test    ah, 10H                                 ; 100205A7 _ F6. C4, 10
        jz      ?_4247                                  ; 100205AA _ 74, 02
        or      esi, edi                                ; 100205AC _ 0B. F7
?_4247: test    al, 20H                                 ; 100205AE _ A8, 20
        jz      ?_4248                                  ; 100205B0 _ 74, 08
        or      esi, 8000000H                           ; 100205B2 _ 81. CE, 08000000
        jmp     ?_4249                                  ; 100205B8 _ EB, 0A

?_4248: test    al, 10H                                 ; 100205BA _ A8, 10
        jz      ?_4249                                  ; 100205BC _ 74, 06
        or      esi, 10000000H                          ; 100205BE _ 81. CE, 10000000
?_4249: call    ?_4192                                  ; 100205C4 _ E8, FFFFFB79
        mov     ebx, eax                                ; 100205C9 _ 8B. D8
        or      edi, 0FFFFFFFFH                         ; 100205CB _ 83. CF, FF
        cmp     ebx, edi                                ; 100205CE _ 3B. DF
        jnz     ?_4250                                  ; 100205D0 _ 75, 1A
        call    ?_3107                                  ; 100205D2 _ E8, FFFFA20E
        mov     dword [eax], 24                         ; 100205D7 _ C7. 00, 00000018
        call    ?_3108                                  ; 100205DD _ E8, FFFFA20C
        and     dword [eax], 00H                        ; 100205E2 _ 83. 20, 00
        mov     eax, edi                                ; 100205E5 _ 8B. C7
        jmp     ?_4262                                  ; 100205E7 _ E9, 0000012A

?_4250: push    0                                       ; 100205EC _ 6A, 00
        push    esi                                     ; 100205EE _ 56
        push    dword [ebp-8H]                          ; 100205EF _ FF. 75, F8
        lea     eax, [ebp-1CH]                          ; 100205F2 _ 8D. 45, E4
        push    eax                                     ; 100205F5 _ 50
        push    dword [ebp-10H]                         ; 100205F6 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 100205F9 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 100205FC _ FF. 75, 08
        call    near [imp_CreateFileA]                  ; 100205FF _ FF. 15, 10024038(d)
        mov     esi, eax                                ; 10020605 _ 8B. F0
        cmp     esi, edi                                ; 10020607 _ 3B. F7
        jnz     ?_4252                                  ; 10020609 _ 75, 14
?_4251: call    near [imp_GetLastError]                 ; 1002060B _ FF. 15, 100240DC(d)
        push    eax                                     ; 10020611 _ 50
        call    ?_3102                                  ; 10020612 _ E8, FFFFA15B
        pop     ecx                                     ; 10020617 _ 59
        mov     esi, edi                                ; 10020618 _ 8B. F7
        jmp     ?_4261                                  ; 1002061A _ E9, 000000EE

?_4252: push    esi                                     ; 1002061F _ 56
        call    near [imp_GetFileType]                  ; 10020620 _ FF. 15, 100240FC(d)
        test    eax, eax                                ; 10020626 _ 85. C0
        jnz     ?_4253                                  ; 10020628 _ 75, 09
        push    esi                                     ; 1002062A _ 56
        call    near [imp_CloseHandle]                  ; 1002062B _ FF. 15, 10024010(d)
        jmp     ?_4251                                  ; 10020631 _ EB, D8

?_4253: cmp     eax, 2                                  ; 10020633 _ 83. F8, 02
        jnz     ?_4254                                  ; 10020636 _ 75, 06
        or      byte [ebp-1H], 40H                      ; 10020638 _ 80. 4D, FF, 40
        jmp     ?_4255                                  ; 1002063C _ EB, 09

?_4254: cmp     eax, 3                                  ; 1002063E _ 83. F8, 03
        jnz     ?_4255                                  ; 10020641 _ 75, 04
        or      byte [ebp-1H], 08H                      ; 10020643 _ 80. 4D, FF, 08
?_4255: push    esi                                     ; 10020647 _ 56
        push    ebx                                     ; 10020648 _ 53
        call    ?_4204                                  ; 10020649 _ E8, FFFFFC17
        mov     eax, ebx                                ; 1002064E _ 8B. C3
        pop     ecx                                     ; 10020650 _ 59
        sar     eax, 5                                  ; 10020651 _ C1. F8, 05
        pop     ecx                                     ; 10020654 _ 59
        mov     cl, byte [ebp-1H]                       ; 10020655 _ 8A. 4D, FF
        lea     edi, [?_5809+eax*4]                     ; 10020658 _ 8D. 3C 85, 11766460(d)
        mov     eax, ebx                                ; 1002065F _ 8B. C3
        or      cl, 01H                                 ; 10020661 _ 80. C9, 01
        and     eax, 1FH                                ; 10020664 _ 83. E0, 1F
        mov     byte [ebp+0BH], cl                      ; 10020667 _ 88. 4D, 0B
        lea     esi, [eax+eax*8]                        ; 1002066A _ 8D. 34 C0
        mov     eax, dword [edi]                        ; 1002066D _ 8B. 07
        shl     esi, 2                                  ; 1002066F _ C1. E6, 02
        and     byte [ebp+0BH], 48H                     ; 10020672 _ 80. 65, 0B, 48
        mov     byte [eax+esi+4H], cl                   ; 10020676 _ 88. 4C 30, 04
        jnz     ?_4259                                  ; 1002067A _ 75, 78
        test    cl, 0FFFFFF80H                          ; 1002067C _ F6. C1, 80
        jz      ?_4259                                  ; 1002067F _ 74, 73
        test    byte [ebp+0CH], 02H                     ; 10020681 _ F6. 45, 0C, 02
        jz      ?_4259                                  ; 10020685 _ 74, 6D
        push    2                                       ; 10020687 _ 6A, 02
        push    -1                                      ; 10020689 _ 6A, FF
        push    ebx                                     ; 1002068B _ 53
        call    ?_3577                                  ; 1002068C _ E8, FFFFC589
        add     esp, 12                                 ; 10020691 _ 83. C4, 0C
        cmp     eax, -1                                 ; 10020694 _ 83. F8, FF
        mov     dword [ebp-10H], eax                    ; 10020697 _ 89. 45, F0
        jnz     ?_4257                                  ; 1002069A _ 75, 19
        call    ?_3108                                  ; 1002069C _ E8, FFFFA14D
        cmp     dword [eax], 131                        ; 100206A1 _ 81. 38, 00000083
        jz      ?_4259                                  ; 100206A7 _ 74, 4B
?_4256: push    ebx                                     ; 100206A9 _ 53
        call    ?_3374                                  ; 100206AA _ E8, FFFFB555
        pop     ecx                                     ; 100206AF _ 59
        or      esi, 0FFFFFFFFH                         ; 100206B0 _ 83. CE, FF
        jmp     ?_4261                                  ; 100206B3 _ EB, 58

?_4257: and     byte [ebp+13H], 00H                     ; 100206B5 _ 80. 65, 13, 00
        lea     eax, [ebp+13H]                          ; 100206B9 _ 8D. 45, 13
        push    1                                       ; 100206BC _ 6A, 01
        push    eax                                     ; 100206BE _ 50
        push    ebx                                     ; 100206BF _ 53
        call    ?_3966                                  ; 100206C0 _ E8, FFFFE861
        add     esp, 12                                 ; 100206C5 _ 83. C4, 0C
        test    eax, eax                                ; 100206C8 _ 85. C0
        jnz     ?_4258                                  ; 100206CA _ 75, 16
        cmp     byte [ebp+13H], 26                      ; 100206CC _ 80. 7D, 13, 1A
        jnz     ?_4258                                  ; 100206D0 _ 75, 10
        push    dword [ebp-10H]                         ; 100206D2 _ FF. 75, F0
        push    ebx                                     ; 100206D5 _ 53
        call    ?_4583                                  ; 100206D6 _ E8, 00001AB5
        pop     ecx                                     ; 100206DB _ 59
        cmp     eax, -1                                 ; 100206DC _ 83. F8, FF
        pop     ecx                                     ; 100206DF _ 59
        jz      ?_4256                                  ; 100206E0 _ 74, C7
?_4258: push    0                                       ; 100206E2 _ 6A, 00
        push    0                                       ; 100206E4 _ 6A, 00
        push    ebx                                     ; 100206E6 _ 53
        call    ?_3577                                  ; 100206E7 _ E8, FFFFC52E
        add     esp, 12                                 ; 100206EC _ 83. C4, 0C
        cmp     eax, -1                                 ; 100206EF _ 83. F8, FF
        jz      ?_4256                                  ; 100206F2 _ 74, B5
?_4259: cmp     byte [ebp+0BH], 0                       ; 100206F4 _ 80. 7D, 0B, 00
        jnz     ?_4260                                  ; 100206F8 _ 75, 11
        test    byte [ebp+0CH], 08H                     ; 100206FA _ F6. 45, 0C, 08
        jz      ?_4260                                  ; 100206FE _ 74, 0B
        mov     eax, dword [edi]                        ; 10020700 _ 8B. 07
        or      byte [eax+esi+4H], 20H                  ; 10020702 _ 80. 4C 30, 04, 20
        lea     eax, [eax+esi+4H]                       ; 10020707 _ 8D. 44 30, 04
?_4260: mov     esi, ebx                                ; 1002070B _ 8B. F3
?_4261: push    ebx                                     ; 1002070D _ 53
        call    ?_4223                                  ; 1002070E _ E8, FFFFFCEE
        pop     ecx                                     ; 10020713 _ 59
        mov     eax, esi                                ; 10020714 _ 8B. C6
?_4262: pop     edi                                     ; 10020716 _ 5F
        pop     esi                                     ; 10020717 _ 5E
        pop     ebx                                     ; 10020718 _ 5B
        leave                                           ; 10020719 _ C9
        ret                                             ; 1002071A _ C3

