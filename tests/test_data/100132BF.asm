; ---- 100132BF ----
?_2158: ; Local function
        cmp     dword [?_5338], 65559                   ; 100132BF _ 81. 3D, 1002D4EC(d), 00010017
        jl      ?_2160                                  ; 100132C9 _ 7C, 22
        mov     esi, ?_5550                             ; 100132CB _ BE, 10035478(d)
?_2159: push    edi                                     ; 100132D0 _ 57
        push    1                                       ; 100132D1 _ 6A, 01
        push    4                                       ; 100132D3 _ 6A, 04
        push    esi                                     ; 100132D5 _ 56
        call    ?_2085                                  ; 100132D6 _ E8, FFFFF165
        add     esp, 16                                 ; 100132DB _ 83. C4, 10
        test    eax, eax                                ; 100132DE _ 85. C0
        jz      ?_2157                                  ; 100132E0 _ 74, D3
        add     esi, 4                                  ; 100132E2 _ 83. C6, 04
        cmp     esi, ?_5551                             ; 100132E5 _ 81. FE, 10035498(d)
        jl      ?_2159                                  ; 100132EB _ 7C, E3
?_2160: mov     eax, dword [esp+20H]                    ; 100132ED _ 8B. 44 24, 20
        mov     dword [esp+14H], 0                      ; 100132F1 _ C7. 44 24, 14, 00000000
        test    eax, eax                                ; 100132F9 _ 85. C0
        jle     ?_2176                                  ; 100132FB _ 0F 8E, 000007FE
        mov     ebp, 65598                              ; 10013301 _ BD, 0001003E
?_2161: push    edi                                     ; 10013306 _ 57
        push    1                                       ; 10013307 _ 6A, 01
        lea     eax, [esp+18H]                          ; 10013309 _ 8D. 44 24, 18
        push    2                                       ; 1001330D _ 6A, 02
        push    eax                                     ; 1001330F _ 50
        call    ?_2085                                  ; 10013310 _ E8, FFFFF12B
        add     esp, 16                                 ; 10013315 _ 83. C4, 10
        test    eax, eax                                ; 10013318 _ 85. C0
        jz      ?_2157                                  ; 1001331A _ 74, 99
        mov     ecx, dword [esp+10H]                    ; 1001331C _ 8B. 4C 24, 10
        mov     eax, ecx                                ; 10013320 _ 8B. C1
        and     eax, 0FFFFH                             ; 10013322 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10013327 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1001332A _ 8D. 04 80
        lea     edx, [eax+eax*8]                        ; 1001332D _ 8D. 14 C0
        lea     esi, [?_5632+edx*4]                     ; 10013330 _ 8D. 34 95, 100358A0(d)
        mov     word [esi], cx                          ; 10013337 _ 66: 89. 0E
        mov     eax, dword [?_5338]                     ; 1001333A _ A1, 1002D4EC(d)
        cmp     eax, ebp                                ; 1001333F _ 3B. C5
        jl      ?_2162                                  ; 10013341 _ 7C, 1E
        push    edi                                     ; 10013343 _ 57
        push    1                                       ; 10013344 _ 6A, 01
        lea     eax, [esi+20CH]                         ; 10013346 _ 8D. 86, 0000020C
        push    4                                       ; 1001334C _ 6A, 04
        push    eax                                     ; 1001334E _ 50
        call    ?_2085                                  ; 1001334F _ E8, FFFFF0EC
        add     esp, 16                                 ; 10013354 _ 83. C4, 10
        test    eax, eax                                ; 10013357 _ 85. C0
        je      ?_2157                                  ; 10013359 _ 0F 84, FFFFFF56
        jmp     ?_2163                                  ; 1001335F _ EB, 0A

?_2162: mov     dword [esi+20CH], -1                    ; 10013361 _ C7. 86, 0000020C, FFFFFFFF
?_2163: push    edi                                     ; 1001336B _ 57
        push    1                                       ; 1001336C _ 6A, 01
        lea     ecx, [esi+2H]                           ; 1001336E _ 8D. 4E, 02
        push    1                                       ; 10013371 _ 6A, 01
        push    ecx                                     ; 10013373 _ 51
        call    ?_2085                                  ; 10013374 _ E8, FFFFF0C7
        add     esp, 16                                 ; 10013379 _ 83. C4, 10
        test    eax, eax                                ; 1001337C _ 85. C0
        je      ?_2157                                  ; 1001337E _ 0F 84, FFFFFF31
        push    edi                                     ; 10013384 _ 57
        push    1                                       ; 10013385 _ 6A, 01
        lea     edx, [esi+4H]                           ; 10013387 _ 8D. 56, 04
        push    4                                       ; 1001338A _ 6A, 04
        push    edx                                     ; 1001338C _ 52
        call    ?_2085                                  ; 1001338D _ E8, FFFFF0AE
        add     esp, 16                                 ; 10013392 _ 83. C4, 10
        test    eax, eax                                ; 10013395 _ 85. C0
        je      ?_2157                                  ; 10013397 _ 0F 84, FFFFFF18
        push    edi                                     ; 1001339D _ 57
        push    1                                       ; 1001339E _ 6A, 01
        lea     eax, [esi+8H]                           ; 100133A0 _ 8D. 46, 08
        push    1                                       ; 100133A3 _ 6A, 01
        push    eax                                     ; 100133A5 _ 50
        call    ?_2085                                  ; 100133A6 _ E8, FFFFF095
        add     esp, 16                                 ; 100133AB _ 83. C4, 10
        test    eax, eax                                ; 100133AE _ 85. C0
        je      ?_2157                                  ; 100133B0 _ 0F 84, FFFFFEFF
        push    edi                                     ; 100133B6 _ 57
        push    1                                       ; 100133B7 _ 6A, 01
        lea     ecx, [esi+9H]                           ; 100133B9 _ 8D. 4E, 09
        push    1                                       ; 100133BC _ 6A, 01
        push    ecx                                     ; 100133BE _ 51
        call    ?_2085                                  ; 100133BF _ E8, FFFFF07C
        add     esp, 16                                 ; 100133C4 _ 83. C4, 10
        test    eax, eax                                ; 100133C7 _ 85. C0
        je      ?_2157                                  ; 100133C9 _ 0F 84, FFFFFEE6
        push    edi                                     ; 100133CF _ 57
        push    1                                       ; 100133D0 _ 6A, 01
        lea     edx, [esi+0AH]                          ; 100133D2 _ 8D. 56, 0A
        push    2                                       ; 100133D5 _ 6A, 02
        push    edx                                     ; 100133D7 _ 52
        call    ?_2085                                  ; 100133D8 _ E8, FFFFF063
        add     esp, 16                                 ; 100133DD _ 83. C4, 10
        test    eax, eax                                ; 100133E0 _ 85. C0
        je      ?_2157                                  ; 100133E2 _ 0F 84, FFFFFECD
        push    edi                                     ; 100133E8 _ 57
        push    1                                       ; 100133E9 _ 6A, 01
        lea     eax, [esi+0CH]                          ; 100133EB _ 8D. 46, 0C
        push    1                                       ; 100133EE _ 6A, 01
        push    eax                                     ; 100133F0 _ 50
        call    ?_2085                                  ; 100133F1 _ E8, FFFFF04A
        add     esp, 16                                 ; 100133F6 _ 83. C4, 10
        test    eax, eax                                ; 100133F9 _ 85. C0
        je      ?_2157                                  ; 100133FB _ 0F 84, FFFFFEB4
        push    edi                                     ; 10013401 _ 57
        push    1                                       ; 10013402 _ 6A, 01
        lea     ecx, [esi+0DH]                          ; 10013404 _ 8D. 4E, 0D
        push    1                                       ; 10013407 _ 6A, 01
        push    ecx                                     ; 10013409 _ 51
        call    ?_2085                                  ; 1001340A _ E8, FFFFF031
        add     esp, 16                                 ; 1001340F _ 83. C4, 10
        test    eax, eax                                ; 10013412 _ 85. C0
        je      ?_2157                                  ; 10013414 _ 0F 84, FFFFFE9B
        push    edi                                     ; 1001341A _ 57
        push    1                                       ; 1001341B _ 6A, 01
        lea     edx, [esi+10H]                          ; 1001341D _ 8D. 56, 10
        push    4                                       ; 10013420 _ 6A, 04
        push    edx                                     ; 10013422 _ 52
        call    ?_2085                                  ; 10013423 _ E8, FFFFF018
        add     esp, 16                                 ; 10013428 _ 83. C4, 10
        test    eax, eax                                ; 1001342B _ 85. C0
        je      ?_2157                                  ; 1001342D _ 0F 84, FFFFFE82
        push    edi                                     ; 10013433 _ 57
        push    1                                       ; 10013434 _ 6A, 01
        lea     eax, [esi+14H]                          ; 10013436 _ 8D. 46, 14
        push    4                                       ; 10013439 _ 6A, 04
        push    eax                                     ; 1001343B _ 50
        call    ?_2085                                  ; 1001343C _ E8, FFFFEFFF
        add     esp, 16                                 ; 10013441 _ 83. C4, 10
        test    eax, eax                                ; 10013444 _ 85. C0
        je      ?_2157                                  ; 10013446 _ 0F 84, FFFFFE69
        push    edi                                     ; 1001344C _ 57
        push    1                                       ; 1001344D _ 6A, 01
        lea     ecx, [esi+18H]                          ; 1001344F _ 8D. 4E, 18
        push    4                                       ; 10013452 _ 6A, 04
        push    ecx                                     ; 10013454 _ 51
        call    ?_2085                                  ; 10013455 _ E8, FFFFEFE6
        add     esp, 16                                 ; 1001345A _ 83. C4, 10
        test    eax, eax                                ; 1001345D _ 85. C0
        je      ?_2157                                  ; 1001345F _ 0F 84, FFFFFE50
        push    edi                                     ; 10013465 _ 57
        push    1                                       ; 10013466 _ 6A, 01
        lea     edx, [esi+1CH]                          ; 10013468 _ 8D. 56, 1C
        push    4                                       ; 1001346B _ 6A, 04
        push    edx                                     ; 1001346D _ 52
        call    ?_2085                                  ; 1001346E _ E8, FFFFEFCD
        add     esp, 16                                 ; 10013473 _ 83. C4, 10
        test    eax, eax                                ; 10013476 _ 85. C0
        je      ?_2157                                  ; 10013478 _ 0F 84, FFFFFE37
        push    edi                                     ; 1001347E _ 57
        push    1                                       ; 1001347F _ 6A, 01
        lea     eax, [esi+20H]                          ; 10013481 _ 8D. 46, 20
        push    4                                       ; 10013484 _ 6A, 04
        push    eax                                     ; 10013486 _ 50
        call    ?_2085                                  ; 10013487 _ E8, FFFFEFB4
        add     esp, 16                                 ; 1001348C _ 83. C4, 10
        test    eax, eax                                ; 1001348F _ 85. C0
        je      ?_2157                                  ; 10013491 _ 0F 84, FFFFFE1E
        push    edi                                     ; 10013497 _ 57
        push    1                                       ; 10013498 _ 6A, 01
        lea     ecx, [esi+24H]                          ; 1001349A _ 8D. 4E, 24
        push    4                                       ; 1001349D _ 6A, 04
        push    ecx                                     ; 1001349F _ 51
        call    ?_2085                                  ; 100134A0 _ E8, FFFFEF9B
        add     esp, 16                                 ; 100134A5 _ 83. C4, 10
        test    eax, eax                                ; 100134A8 _ 85. C0
        je      ?_2157                                  ; 100134AA _ 0F 84, FFFFFE05
        cmp     dword [?_5338], 65595                   ; 100134B0 _ 81. 3D, 1002D4EC(d), 0001003B
        jl      ?_2164                                  ; 100134BA _ 7C, 32
        push    edi                                     ; 100134BC _ 57
        push    1                                       ; 100134BD _ 6A, 01
        lea     edx, [esi+28H]                          ; 100134BF _ 8D. 56, 28
        push    2                                       ; 100134C2 _ 6A, 02
        push    edx                                     ; 100134C4 _ 52
        call    ?_2085                                  ; 100134C5 _ E8, FFFFEF76
        add     esp, 16                                 ; 100134CA _ 83. C4, 10
        test    eax, eax                                ; 100134CD _ 85. C0
        je      ?_2157                                  ; 100134CF _ 0F 84, FFFFFDE0
        push    edi                                     ; 100134D5 _ 57
        push    1                                       ; 100134D6 _ 6A, 01
        lea     eax, [esi+2CH]                          ; 100134D8 _ 8D. 46, 2C
        push    4                                       ; 100134DB _ 6A, 04
        push    eax                                     ; 100134DD _ 50
        call    ?_2085                                  ; 100134DE _ E8, FFFFEF5D
        add     esp, 16                                 ; 100134E3 _ 83. C4, 10
        test    eax, eax                                ; 100134E6 _ 85. C0
        je      ?_2157                                  ; 100134E8 _ 0F 84, FFFFFDC7
?_2164: push    edi                                     ; 100134EE _ 57
        push    1                                       ; 100134EF _ 6A, 01
        lea     ecx, [esi+30H]                          ; 100134F1 _ 8D. 4E, 30
        push    16                                      ; 100134F4 _ 6A, 10
        push    ecx                                     ; 100134F6 _ 51
        call    ?_2085                                  ; 100134F7 _ E8, FFFFEF44
        add     esp, 16                                 ; 100134FC _ 83. C4, 10
        test    eax, eax                                ; 100134FF _ 85. C0
        je      ?_2157                                  ; 10013501 _ 0F 84, FFFFFDAE
        cmp     dword [?_5338], 65585                   ; 10013507 _ 81. 3D, 1002D4EC(d), 00010031
        jl      ?_2165                                  ; 10013511 _ 7C, 19
        push    edi                                     ; 10013513 _ 57
        push    1                                       ; 10013514 _ 6A, 01
        lea     edx, [esi+40H]                          ; 10013516 _ 8D. 56, 40
        push    16                                      ; 10013519 _ 6A, 10
        push    edx                                     ; 1001351B _ 52
        call    ?_2085                                  ; 1001351C _ E8, FFFFEF1F
        add     esp, 16                                 ; 10013521 _ 83. C4, 10
        test    eax, eax                                ; 10013524 _ 85. C0
        je      ?_2157                                  ; 10013526 _ 0F 84, FFFFFD89
?_2165: push    edi                                     ; 1001352C _ 57
        push    1                                       ; 1001352D _ 6A, 01
        lea     eax, [esi+50H]                          ; 1001352F _ 8D. 46, 50
        push    2                                       ; 10013532 _ 6A, 02
        push    eax                                     ; 10013534 _ 50
        call    ?_2085                                  ; 10013535 _ E8, FFFFEF06
        add     esp, 16                                 ; 1001353A _ 83. C4, 10
        test    eax, eax                                ; 1001353D _ 85. C0
        je      ?_2157                                  ; 1001353F _ 0F 84, FFFFFD70
        push    edi                                     ; 10013545 _ 57
        push    1                                       ; 10013546 _ 6A, 01
        lea     ecx, [esi+54H]                          ; 10013548 _ 8D. 4E, 54
        push    4                                       ; 1001354B _ 6A, 04
        push    ecx                                     ; 1001354D _ 51
        call    ?_2085                                  ; 1001354E _ E8, FFFFEEED
        add     esp, 16                                 ; 10013553 _ 83. C4, 10
        test    eax, eax                                ; 10013556 _ 85. C0
        je      ?_2157                                  ; 10013558 _ 0F 84, FFFFFD57
        push    edi                                     ; 1001355E _ 57
        push    1                                       ; 1001355F _ 6A, 01
        lea     edx, [esi+58H]                          ; 10013561 _ 8D. 56, 58
        push    1                                       ; 10013564 _ 6A, 01
        push    edx                                     ; 10013566 _ 52
        call    ?_2085                                  ; 10013567 _ E8, FFFFEED4
        add     esp, 16                                 ; 1001356C _ 83. C4, 10
        test    eax, eax                                ; 1001356F _ 85. C0
        je      ?_2157                                  ; 10013571 _ 0F 84, FFFFFD3E
        push    edi                                     ; 10013577 _ 57
        push    1                                       ; 10013578 _ 6A, 01
        lea     eax, [esi+5CH]                          ; 1001357A _ 8D. 46, 5C
        push    32                                      ; 1001357D _ 6A, 20
        push    eax                                     ; 1001357F _ 50
        call    ?_2085                                  ; 10013580 _ E8, FFFFEEBB
        add     esp, 16                                 ; 10013585 _ 83. C4, 10
        test    eax, eax                                ; 10013588 _ 85. C0
        je      ?_2157                                  ; 1001358A _ 0F 84, FFFFFD25
        cmp     dword [?_5338], 65572                   ; 10013590 _ 81. 3D, 1002D4EC(d), 00010024
        jl      ?_2166                                  ; 1001359A _ 7C, 19
        push    edi                                     ; 1001359C _ 57
        push    1                                       ; 1001359D _ 6A, 01
        lea     ecx, [esi+7CH]                          ; 1001359F _ 8D. 4E, 7C
        push    4                                       ; 100135A2 _ 6A, 04
        push    ecx                                     ; 100135A4 _ 51
        call    ?_2085                                  ; 100135A5 _ E8, FFFFEE96
        add     esp, 16                                 ; 100135AA _ 83. C4, 10
        test    eax, eax                                ; 100135AD _ 85. C0
        je      ?_2157                                  ; 100135AF _ 0F 84, FFFFFD00
?_2166: push    edi                                     ; 100135B5 _ 57
        push    1                                       ; 100135B6 _ 6A, 01
        lea     edx, [esi+80H]                          ; 100135B8 _ 8D. 96, 00000080
        push    5                                       ; 100135BE _ 6A, 05
        push    edx                                     ; 100135C0 _ 52
        call    ?_2085                                  ; 100135C1 _ E8, FFFFEE7A
        add     esp, 16                                 ; 100135C6 _ 83. C4, 10
        test    eax, eax                                ; 100135C9 _ 85. C0
        je      ?_2157                                  ; 100135CB _ 0F 84, FFFFFCE4
        push    edi                                     ; 100135D1 _ 57
        push    1                                       ; 100135D2 _ 6A, 01
        lea     eax, [esi+88H]                          ; 100135D4 _ 8D. 86, 00000088
        push    168                                     ; 100135DA _ 68, 000000A8
        push    eax                                     ; 100135DF _ 50
        call    ?_2085                                  ; 100135E0 _ E8, FFFFEE5B
        add     esp, 16                                 ; 100135E5 _ 83. C4, 10
        test    eax, eax                                ; 100135E8 _ 85. C0
        je      ?_2157                                  ; 100135EA _ 0F 84, FFFFFCC5
        push    edi                                     ; 100135F0 _ 57
        push    1                                       ; 100135F1 _ 6A, 01
        lea     ecx, [esi+164H]                         ; 100135F3 _ 8D. 8E, 00000164
        push    1                                       ; 100135F9 _ 6A, 01
        push    ecx                                     ; 100135FB _ 51
        call    ?_2085                                  ; 100135FC _ E8, FFFFEE3F
        add     esp, 16                                 ; 10013601 _ 83. C4, 10
        test    eax, eax                                ; 10013604 _ 85. C0
        je      ?_2157                                  ; 10013606 _ 0F 84, FFFFFCA9
        push    edi                                     ; 1001360C _ 57
        push    1                                       ; 1001360D _ 6A, 01
        lea     edx, [esi+165H]                         ; 1001360F _ 8D. 96, 00000165
        push    1                                       ; 10013615 _ 6A, 01
        push    edx                                     ; 10013617 _ 52
        call    ?_2085                                  ; 10013618 _ E8, FFFFEE23
        add     esp, 16                                 ; 1001361D _ 83. C4, 10
        test    eax, eax                                ; 10013620 _ 85. C0
        je      ?_2157                                  ; 10013622 _ 0F 84, FFFFFC8D
        push    edi                                     ; 10013628 _ 57
        push    1                                       ; 10013629 _ 6A, 01
        lea     eax, [esi+166H]                         ; 1001362B _ 8D. 86, 00000166
        push    1                                       ; 10013631 _ 6A, 01
        push    eax                                     ; 10013633 _ 50
        call    ?_2085                                  ; 10013634 _ E8, FFFFEE07
        add     esp, 16                                 ; 10013639 _ 83. C4, 10
        test    eax, eax                                ; 1001363C _ 85. C0
        je      ?_2157                                  ; 1001363E _ 0F 84, FFFFFC71
        push    edi                                     ; 10013644 _ 57
        push    1                                       ; 10013645 _ 6A, 01
        lea     ecx, [esi+167H]                         ; 10013647 _ 8D. 8E, 00000167
        push    1                                       ; 1001364D _ 6A, 01
        push    ecx                                     ; 1001364F _ 51
        call    ?_2085                                  ; 10013650 _ E8, FFFFEDEB
        add     esp, 16                                 ; 10013655 _ 83. C4, 10
        test    eax, eax                                ; 10013658 _ 85. C0
        je      ?_2157                                  ; 1001365A _ 0F 84, FFFFFC55
        push    edi                                     ; 10013660 _ 57
        push    1                                       ; 10013661 _ 6A, 01
        lea     edx, [esi+168H]                         ; 10013663 _ 8D. 96, 00000168
        push    1                                       ; 10013669 _ 6A, 01
        push    edx                                     ; 1001366B _ 52
        call    ?_2085                                  ; 1001366C _ E8, FFFFEDCF
        add     esp, 16                                 ; 10013671 _ 83. C4, 10
        test    eax, eax                                ; 10013674 _ 85. C0
        je      ?_2157                                  ; 10013676 _ 0F 84, FFFFFC39
        push    edi                                     ; 1001367C _ 57
        push    1                                       ; 1001367D _ 6A, 01
        lea     eax, [esi+169H]                         ; 1001367F _ 8D. 86, 00000169
        push    1                                       ; 10013685 _ 6A, 01
        push    eax                                     ; 10013687 _ 50
        call    ?_2085                                  ; 10013688 _ E8, FFFFEDB3
        add     esp, 16                                 ; 1001368D _ 83. C4, 10
        test    eax, eax                                ; 10013690 _ 85. C0
        je      ?_2157                                  ; 10013692 _ 0F 84, FFFFFC1D
        push    edi                                     ; 10013698 _ 57
        lea     eax, [esi+16CH]                         ; 10013699 _ 8D. 86, 0000016C
        push    1                                       ; 1001369F _ 6A, 01
        push    4                                       ; 100136A1 _ 6A, 04
        push    eax                                     ; 100136A3 _ 50
        mov     dword [eax], 0                          ; 100136A4 _ C7. 00, 00000000
        call    ?_2085                                  ; 100136AA _ E8, FFFFED91
        add     esp, 16                                 ; 100136AF _ 83. C4, 10
        test    eax, eax                                ; 100136B2 _ 85. C0
        je      ?_2157                                  ; 100136B4 _ 0F 84, FFFFFBFB
        push    edi                                     ; 100136BA _ 57
        lea     eax, [esi+170H]                         ; 100136BB _ 8D. 86, 00000170
        push    1                                       ; 100136C1 _ 6A, 01
        push    4                                       ; 100136C3 _ 6A, 04
        push    eax                                     ; 100136C5 _ 50
        mov     dword [eax], 0                          ; 100136C6 _ C7. 00, 00000000
        call    ?_2085                                  ; 100136CC _ E8, FFFFED6F
        add     esp, 16                                 ; 100136D1 _ 83. C4, 10
        test    eax, eax                                ; 100136D4 _ 85. C0
        je      ?_2157                                  ; 100136D6 _ 0F 84, FFFFFBD9
        mov     eax, dword [?_5338]                     ; 100136DC _ A1, 1002D4EC(d)
        push    edi                                     ; 100136E1 _ 57
        cmp     eax, 65568                              ; 100136E2 _ 3D, 00010020
        push    1                                       ; 100136E7 _ 6A, 01
        jl      ?_2167                                  ; 100136E9 _ 7C, 1B
        lea     ecx, [esi+174H]                         ; 100136EB _ 8D. 8E, 00000174
        push    4                                       ; 100136F1 _ 6A, 04
        push    ecx                                     ; 100136F3 _ 51
        call    ?_2085                                  ; 100136F4 _ E8, FFFFED47
        add     esp, 16                                 ; 100136F9 _ 83. C4, 10
        test    eax, eax                                ; 100136FC _ 85. C0
        je      ?_2157                                  ; 100136FE _ 0F 84, FFFFFBB1
        jmp     ?_2168                                  ; 10013704 _ EB, 19

?_2167: lea     edx, [esi+174H]                         ; 10013706 _ 8D. 96, 00000174
        push    2                                       ; 1001370C _ 6A, 02
        push    edx                                     ; 1001370E _ 52
        call    ?_2085                                  ; 1001370F _ E8, FFFFED2C
        add     esp, 16                                 ; 10013714 _ 83. C4, 10
        test    eax, eax                                ; 10013717 _ 85. C0
        je      ?_2157                                  ; 10013719 _ 0F 84, FFFFFB96
?_2168: push    edi                                     ; 1001371F _ 57
        lea     eax, [esi+17CH]                         ; 10013720 _ 8D. 86, 0000017C
        push    1                                       ; 10013726 _ 6A, 01
        push    4                                       ; 10013728 _ 6A, 04
        push    eax                                     ; 1001372A _ 50
        mov     dword [eax], 0                          ; 1001372B _ C7. 00, 00000000
        call    ?_2085                                  ; 10013731 _ E8, FFFFED0A
        add     esp, 16                                 ; 10013736 _ 83. C4, 10
        test    eax, eax                                ; 10013739 _ 85. C0
        je      ?_2157                                  ; 1001373B _ 0F 84, FFFFFB74
        push    edi                                     ; 10013741 _ 57
        push    1                                       ; 10013742 _ 6A, 01
        lea     eax, [esi+180H]                         ; 10013744 _ 8D. 86, 00000180
        push    1                                       ; 1001374A _ 6A, 01
        push    eax                                     ; 1001374C _ 50
        call    ?_2085                                  ; 1001374D _ E8, FFFFECEE
        add     esp, 16                                 ; 10013752 _ 83. C4, 10
        test    eax, eax                                ; 10013755 _ 85. C0
        je      ?_2157                                  ; 10013757 _ 0F 84, FFFFFB58
        push    edi                                     ; 1001375D _ 57
        push    1                                       ; 1001375E _ 6A, 01
        lea     ecx, [esi+18CH]                         ; 10013760 _ 8D. 8E, 0000018C
        push    4                                       ; 10013766 _ 6A, 04
        push    ecx                                     ; 10013768 _ 51
        call    ?_2085                                  ; 10013769 _ E8, FFFFECD2
        add     esp, 16                                 ; 1001376E _ 83. C4, 10
        test    eax, eax                                ; 10013771 _ 85. C0
        je      ?_2157                                  ; 10013773 _ 0F 84, FFFFFB3C
        push    edi                                     ; 10013779 _ 57
        lea     ebx, [esi+190H]                         ; 1001377A _ 8D. 9E, 00000190
        push    1                                       ; 10013780 _ 6A, 01
        push    4                                       ; 10013782 _ 6A, 04
        push    ebx                                     ; 10013784 _ 53
        call    ?_2085                                  ; 10013785 _ E8, FFFFECB6
        add     esp, 16                                 ; 1001378A _ 83. C4, 10
        test    eax, eax                                ; 1001378D _ 85. C0
        je      ?_2157                                  ; 1001378F _ 0F 84, FFFFFB20
        cmp     dword [?_5338], ebp                     ; 10013795 _ 39. 2D, 1002D4EC(d)
        jge     ?_2169                                  ; 1001379B _ 7D, 06
        mov     dword [ebx], 4                          ; 1001379D _ C7. 03, 00000004
?_2169: push    edi                                     ; 100137A3 _ 57
        push    1                                       ; 100137A4 _ 6A, 01
        lea     edx, [esi+194H]                         ; 100137A6 _ 8D. 96, 00000194
        push    4                                       ; 100137AC _ 6A, 04
        push    edx                                     ; 100137AE _ 52
        call    ?_2085                                  ; 100137AF _ E8, FFFFEC8C
        add     esp, 16                                 ; 100137B4 _ 83. C4, 10
        test    eax, eax                                ; 100137B7 _ 85. C0
        je      ?_2157                                  ; 100137B9 _ 0F 84, FFFFFAF6
        push    edi                                     ; 100137BF _ 57
        push    1                                       ; 100137C0 _ 6A, 01
        lea     eax, [esi+198H]                         ; 100137C2 _ 8D. 86, 00000198
        push    4                                       ; 100137C8 _ 6A, 04
        push    eax                                     ; 100137CA _ 50
        call    ?_2085                                  ; 100137CB _ E8, FFFFEC70
        add     esp, 16                                 ; 100137D0 _ 83. C4, 10
        test    eax, eax                                ; 100137D3 _ 85. C0
        je      ?_2157                                  ; 100137D5 _ 0F 84, FFFFFADA
        push    edi                                     ; 100137DB _ 57
        push    1                                       ; 100137DC _ 6A, 01
        lea     ecx, [esi+19CH]                         ; 100137DE _ 8D. 8E, 0000019C
        push    4                                       ; 100137E4 _ 6A, 04
        push    ecx                                     ; 100137E6 _ 51
        call    ?_2085                                  ; 100137E7 _ E8, FFFFEC54
        add     esp, 16                                 ; 100137EC _ 83. C4, 10
        test    eax, eax                                ; 100137EF _ 85. C0
        je      ?_2157                                  ; 100137F1 _ 0F 84, FFFFFABE
        push    edi                                     ; 100137F7 _ 57
        push    1                                       ; 100137F8 _ 6A, 01
        lea     edx, [esi+1A0H]                         ; 100137FA _ 8D. 96, 000001A0
        push    4                                       ; 10013800 _ 6A, 04
        push    edx                                     ; 10013802 _ 52
        call    ?_2085                                  ; 10013803 _ E8, FFFFEC38
        add     esp, 16                                 ; 10013808 _ 83. C4, 10
        test    eax, eax                                ; 1001380B _ 85. C0
        je      ?_2157                                  ; 1001380D _ 0F 84, FFFFFAA2
        push    edi                                     ; 10013813 _ 57
        push    1                                       ; 10013814 _ 6A, 01
        lea     eax, [esi+1A4H]                         ; 10013816 _ 8D. 86, 000001A4
        push    4                                       ; 1001381C _ 6A, 04
        push    eax                                     ; 1001381E _ 50
        call    ?_2085                                  ; 1001381F _ E8, FFFFEC1C
        add     esp, 16                                 ; 10013824 _ 83. C4, 10
        test    eax, eax                                ; 10013827 _ 85. C0
        je      ?_2157                                  ; 10013829 _ 0F 84, FFFFFA86
        push    edi                                     ; 1001382F _ 57
        push    1                                       ; 10013830 _ 6A, 01
        lea     ecx, [esi+1A8H]                         ; 10013832 _ 8D. 8E, 000001A8
        push    4                                       ; 10013838 _ 6A, 04
        push    ecx                                     ; 1001383A _ 51
        call    ?_2085                                  ; 1001383B _ E8, FFFFEC00
        add     esp, 16                                 ; 10013840 _ 83. C4, 10
        test    eax, eax                                ; 10013843 _ 85. C0
        je      ?_2157                                  ; 10013845 _ 0F 84, FFFFFA6A
        push    edi                                     ; 1001384B _ 57
        push    1                                       ; 1001384C _ 6A, 01
        lea     edx, [esi+1ACH]                         ; 1001384E _ 8D. 96, 000001AC
        push    4                                       ; 10013854 _ 6A, 04
        push    edx                                     ; 10013856 _ 52
        call    ?_2085                                  ; 10013857 _ E8, FFFFEBE4
        add     esp, 16                                 ; 1001385C _ 83. C4, 10
        test    eax, eax                                ; 1001385F _ 85. C0
        je      ?_2157                                  ; 10013861 _ 0F 84, FFFFFA4E
        push    edi                                     ; 10013867 _ 57
        push    1                                       ; 10013868 _ 6A, 01
        lea     eax, [esi+1B0H]                         ; 1001386A _ 8D. 86, 000001B0
        push    1                                       ; 10013870 _ 6A, 01
        push    eax                                     ; 10013872 _ 50
        call    ?_2085                                  ; 10013873 _ E8, FFFFEBC8
        add     esp, 16                                 ; 10013878 _ 83. C4, 10
        test    eax, eax                                ; 1001387B _ 85. C0
        je      ?_2157                                  ; 1001387D _ 0F 84, FFFFFA32
        push    edi                                     ; 10013883 _ 57
        push    1                                       ; 10013884 _ 6A, 01
        lea     ecx, [esi+1B1H]                         ; 10013886 _ 8D. 8E, 000001B1
        push    1                                       ; 1001388C _ 6A, 01
        push    ecx                                     ; 1001388E _ 51
        call    ?_2085                                  ; 1001388F _ E8, FFFFEBAC
        add     esp, 16                                 ; 10013894 _ 83. C4, 10
        test    eax, eax                                ; 10013897 _ 85. C0
        je      ?_2157                                  ; 10013899 _ 0F 84, FFFFFA16
        push    edi                                     ; 1001389F _ 57
        push    1                                       ; 100138A0 _ 6A, 01
        lea     edx, [esi+1B4H]                         ; 100138A2 _ 8D. 96, 000001B4
        push    16                                      ; 100138A8 _ 6A, 10
        push    edx                                     ; 100138AA _ 52
        call    ?_2085                                  ; 100138AB _ E8, FFFFEB90
        add     esp, 16                                 ; 100138B0 _ 83. C4, 10
        test    eax, eax                                ; 100138B3 _ 85. C0
        je      ?_2157                                  ; 100138B5 _ 0F 84, FFFFF9FA
        push    edi                                     ; 100138BB _ 57
        push    1                                       ; 100138BC _ 6A, 01
        lea     eax, [esi+1C8H]                         ; 100138BE _ 8D. 86, 000001C8
        push    4                                       ; 100138C4 _ 6A, 04
        push    eax                                     ; 100138C6 _ 50
        call    ?_2085                                  ; 100138C7 _ E8, FFFFEB74
        add     esp, 16                                 ; 100138CC _ 83. C4, 10
        test    eax, eax                                ; 100138CF _ 85. C0
        je      ?_2157                                  ; 100138D1 _ 0F 84, FFFFF9DE
        cmp     dword [?_5338], 65609                   ; 100138D7 _ 81. 3D, 1002D4EC(d), 00010049
        jl      ?_2170                                  ; 100138E1 _ 7C, 1E
        push    edi                                     ; 100138E3 _ 57
        push    1                                       ; 100138E4 _ 6A, 01
        lea     ecx, [esi+1CCH]                         ; 100138E6 _ 8D. 8E, 000001CC
        push    4                                       ; 100138EC _ 6A, 04
        push    ecx                                     ; 100138EE _ 51
        call    ?_2085                                  ; 100138EF _ E8, FFFFEB4C
        add     esp, 16                                 ; 100138F4 _ 83. C4, 10
        test    eax, eax                                ; 100138F7 _ 85. C0
        je      ?_2157                                  ; 100138F9 _ 0F 84, FFFFF9B6
        jmp     ?_2171                                  ; 100138FF _ EB, 0A

?_2170: mov     dword [esi+1CCH], 0                     ; 10013901 _ C7. 86, 000001CC, 00000000
?_2171: push    edi                                     ; 1001390B _ 57
        push    1                                       ; 1001390C _ 6A, 01
        lea     edx, [esi+1D0H]                         ; 1001390E _ 8D. 96, 000001D0
        push    4                                       ; 10013914 _ 6A, 04
        push    edx                                     ; 10013916 _ 52
        call    ?_2085                                  ; 10013917 _ E8, FFFFEB24
        add     esp, 16                                 ; 1001391C _ 83. C4, 10
        test    eax, eax                                ; 1001391F _ 85. C0
        je      ?_2157                                  ; 10013921 _ 0F 84, FFFFF98E
        push    edi                                     ; 10013927 _ 57
        push    1                                       ; 10013928 _ 6A, 01
        lea     eax, [esi+1D4H]                         ; 1001392A _ 8D. 86, 000001D4
        push    16                                      ; 10013930 _ 6A, 10
        push    eax                                     ; 10013932 _ 50
        call    ?_2085                                  ; 10013933 _ E8, FFFFEB08
        add     esp, 16                                 ; 10013938 _ 83. C4, 10
        test    eax, eax                                ; 1001393B _ 85. C0
        je      ?_2157                                  ; 1001393D _ 0F 84, FFFFF972
        push    edi                                     ; 10013943 _ 57
        push    1                                       ; 10013944 _ 6A, 01
        lea     ecx, [esi+1E4H]                         ; 10013946 _ 8D. 8E, 000001E4
        push    4                                       ; 1001394C _ 6A, 04
        push    ecx                                     ; 1001394E _ 51
        call    ?_2085                                  ; 1001394F _ E8, FFFFEAEC
        add     esp, 16                                 ; 10013954 _ 83. C4, 10
        test    eax, eax                                ; 10013957 _ 85. C0
        je      ?_2157                                  ; 10013959 _ 0F 84, FFFFF956
        push    edi                                     ; 1001395F _ 57
        push    1                                       ; 10013960 _ 6A, 01
        lea     edx, [esi+1E8H]                         ; 10013962 _ 8D. 96, 000001E8
        push    4                                       ; 10013968 _ 6A, 04
        push    edx                                     ; 1001396A _ 52
        call    ?_2085                                  ; 1001396B _ E8, FFFFEAD0
        add     esp, 16                                 ; 10013970 _ 83. C4, 10
        test    eax, eax                                ; 10013973 _ 85. C0
        je      ?_2157                                  ; 10013975 _ 0F 84, FFFFF93A
        push    edi                                     ; 1001397B _ 57
        push    1                                       ; 1001397C _ 6A, 01
        lea     eax, [esi+1ECH]                         ; 1001397E _ 8D. 86, 000001EC
        push    4                                       ; 10013984 _ 6A, 04
        push    eax                                     ; 10013986 _ 50
        call    ?_2085                                  ; 10013987 _ E8, FFFFEAB4
        add     esp, 16                                 ; 1001398C _ 83. C4, 10
        test    eax, eax                                ; 1001398F _ 85. C0
        je      ?_2157                                  ; 10013991 _ 0F 84, FFFFF91E
        cmp     dword [?_5338], 65578                   ; 10013997 _ 81. 3D, 1002D4EC(d), 0001002A
        jl      ?_2172                                  ; 100139A1 _ 7C, 1C
        push    edi                                     ; 100139A3 _ 57
        push    1                                       ; 100139A4 _ 6A, 01
        lea     ecx, [esi+1F0H]                         ; 100139A6 _ 8D. 8E, 000001F0
        push    4                                       ; 100139AC _ 6A, 04
        push    ecx                                     ; 100139AE _ 51
        call    ?_2085                                  ; 100139AF _ E8, FFFFEA8C
        add     esp, 16                                 ; 100139B4 _ 83. C4, 10
        test    eax, eax                                ; 100139B7 _ 85. C0
        je      ?_2157                                  ; 100139B9 _ 0F 84, FFFFF8F6
?_2172: mov     eax, dword [?_5338]                     ; 100139BF _ A1, 1002D4EC(d)
        mov     ebx, 65569                              ; 100139C4 _ BB, 00010021
        cmp     eax, ebx                                ; 100139C9 _ 3B. C3
        jl      ?_2173                                  ; 100139CB _ 7C, 1C
        push    edi                                     ; 100139CD _ 57
        push    1                                       ; 100139CE _ 6A, 01
        lea     edx, [esi+1C5H]                         ; 100139D0 _ 8D. 96, 000001C5
        push    1                                       ; 100139D6 _ 6A, 01
        push    edx                                     ; 100139D8 _ 52
        call    ?_2085                                  ; 100139D9 _ E8, FFFFEA62
        add     esp, 16                                 ; 100139DE _ 83. C4, 10
        test    eax, eax                                ; 100139E1 _ 85. C0
        je      ?_2157                                  ; 100139E3 _ 0F 84, FFFFF8CC
?_2173: push    edi                                     ; 100139E9 _ 57
        push    1                                       ; 100139EA _ 6A, 01
        lea     eax, [esp+20H]                          ; 100139EC _ 8D. 44 24, 20
        push    4                                       ; 100139F0 _ 6A, 04
        push    eax                                     ; 100139F2 _ 50
        call    ?_2085                                  ; 100139F3 _ E8, FFFFEA48
        add     esp, 16                                 ; 100139F8 _ 83. C4, 10
        test    eax, eax                                ; 100139FB _ 85. C0
        je      ?_2157                                  ; 100139FD _ 0F 84, FFFFF8B2
        mov     ecx, dword [esp+18H]                    ; 10013A03 _ 8B. 4C 24, 18
        mov     dword [esi+184H], ecx                   ; 10013A07 _ 89. 8E, 00000184
        mov     eax, dword [?_5338]                     ; 10013A0D _ A1, 1002D4EC(d)
        cmp     eax, ebx                                ; 10013A12 _ 3B. C3
        jl      ?_2174                                  ; 10013A14 _ 7C, 1C
        push    edi                                     ; 10013A16 _ 57
        push    1                                       ; 10013A17 _ 6A, 01
        lea     edx, [esi+1F4H]                         ; 10013A19 _ 8D. 96, 000001F4
        push    24                                      ; 10013A1F _ 6A, 18
        push    edx                                     ; 10013A21 _ 52
        call    ?_2085                                  ; 10013A22 _ E8, FFFFEA19
        add     esp, 16                                 ; 10013A27 _ 83. C4, 10
        test    eax, eax                                ; 10013A2A _ 85. C0
        je      ?_2157                                  ; 10013A2C _ 0F 84, FFFFF883
?_2174: cmp     dword [?_5338], 65590                   ; 10013A32 _ 81. 3D, 1002D4EC(d), 00010036
        jl      ?_2175                                  ; 10013A3C _ 0F 8C, 000000A8
        push    edi                                     ; 10013A42 _ 57
        push    1                                       ; 10013A43 _ 6A, 01
        lea     eax, [esi+210H]                         ; 10013A45 _ 8D. 86, 00000210
        push    4                                       ; 10013A4B _ 6A, 04
        push    eax                                     ; 10013A4D _ 50
        call    ?_2085                                  ; 10013A4E _ E8, FFFFE9ED
        add     esp, 16                                 ; 10013A53 _ 83. C4, 10
        test    eax, eax                                ; 10013A56 _ 85. C0
        je      ?_2157                                  ; 10013A58 _ 0F 84, FFFFF857
        push    edi                                     ; 10013A5E _ 57
        push    1                                       ; 10013A5F _ 6A, 01
        lea     ecx, [esi+214H]                         ; 10013A61 _ 8D. 8E, 00000214
        push    1                                       ; 10013A67 _ 6A, 01
        push    ecx                                     ; 10013A69 _ 51
        call    ?_2085                                  ; 10013A6A _ E8, FFFFE9D1
        add     esp, 16                                 ; 10013A6F _ 83. C4, 10
        test    eax, eax                                ; 10013A72 _ 85. C0
        je      ?_2157                                  ; 10013A74 _ 0F 84, FFFFF83B
        push    edi                                     ; 10013A7A _ 57
        push    1                                       ; 10013A7B _ 6A, 01
        lea     edx, [esi+215H]                         ; 10013A7D _ 8D. 96, 00000215
        push    1                                       ; 10013A83 _ 6A, 01
        push    edx                                     ; 10013A85 _ 52
        call    ?_2085                                  ; 10013A86 _ E8, FFFFE9B5
        add     esp, 16                                 ; 10013A8B _ 83. C4, 10
        test    eax, eax                                ; 10013A8E _ 85. C0
        je      ?_2157                                  ; 10013A90 _ 0F 84, FFFFF81F
        push    edi                                     ; 10013A96 _ 57
        push    1                                       ; 10013A97 _ 6A, 01
        lea     eax, [esi+216H]                         ; 10013A99 _ 8D. 86, 00000216
        push    1                                       ; 10013A9F _ 6A, 01
        push    eax                                     ; 10013AA1 _ 50
        call    ?_2085                                  ; 10013AA2 _ E8, FFFFE999
        add     esp, 16                                 ; 10013AA7 _ 83. C4, 10
        test    eax, eax                                ; 10013AAA _ 85. C0
        je      ?_2157                                  ; 10013AAC _ 0F 84, FFFFF803
        push    edi                                     ; 10013AB2 _ 57
        push    1                                       ; 10013AB3 _ 6A, 01
        lea     ecx, [esi+217H]                         ; 10013AB5 _ 8D. 8E, 00000217
        push    1                                       ; 10013ABB _ 6A, 01
        push    ecx                                     ; 10013ABD _ 51
        call    ?_2085                                  ; 10013ABE _ E8, FFFFE97D
        add     esp, 16                                 ; 10013AC3 _ 83. C4, 10
        test    eax, eax                                ; 10013AC6 _ 85. C0
        je      ?_2157                                  ; 10013AC8 _ 0F 84, FFFFF7E7
        push    edi                                     ; 10013ACE _ 57
        push    1                                       ; 10013ACF _ 6A, 01
        add     esi, 536                                ; 10013AD1 _ 81. C6, 00000218
        push    1                                       ; 10013AD7 _ 6A, 01
        push    esi                                     ; 10013AD9 _ 56
        call    ?_2085                                  ; 10013ADA _ E8, FFFFE961
        add     esp, 16                                 ; 10013ADF _ 83. C4, 10
        test    eax, eax                                ; 10013AE2 _ 85. C0
        je      ?_2157                                  ; 10013AE4 _ 0F 84, FFFFF7CB
?_2175: mov     eax, dword [esp+14H]                    ; 10013AEA _ 8B. 44 24, 14
        mov     ecx, dword [esp+20H]                    ; 10013AEE _ 8B. 4C 24, 20
        inc     eax                                     ; 10013AF2 _ 40
        cmp     eax, ecx                                ; 10013AF3 _ 3B. C1
        mov     dword [esp+14H], eax                    ; 10013AF5 _ 89. 44 24, 14
        jl      ?_2161                                  ; 10013AF9 _ 0F 8C, FFFFF807
?_2176: pop     edi                                     ; 10013AFF _ 5F
        pop     esi                                     ; 10013B00 _ 5E
        pop     ebp                                     ; 10013B01 _ 5D
        mov     eax, 1                                  ; 10013B02 _ B8, 00000001
        pop     ebx                                     ; 10013B07 _ 5B
        add     esp, 12                                 ; 10013B08 _ 83. C4, 0C
        ret                                             ; 10013B0B _ C3

        nop                                             ; 10013B0C _ 90
        nop                                             ; 10013B0D _ 90
        nop                                             ; 10013B0E _ 90
        nop                                             ; 10013B0F _ 90
?_2177: push    ecx                                     ; 10013B10 _ 51
        mov     eax, dword [?_5338]                     ; 10013B11 _ A1, 1002D4EC(d)
        push    ebx                                     ; 10013B16 _ 53
        push    ebp                                     ; 10013B17 _ 55
        push    esi                                     ; 10013B18 _ 56
        mov     esi, dword [esp+14H]                    ; 10013B19 _ 8B. 74 24, 14
        cmp     eax, 65608                              ; 10013B1D _ 3D, 00010048
        push    edi                                     ; 10013B22 _ 57
        mov     dword [esp+10H], 62                     ; 10013B23 _ C7. 44 24, 10, 0000003E
        jl      ?_2179                                  ; 10013B2B _ 7C, 1E
        push    esi                                     ; 10013B2D _ 56
        push    1                                       ; 10013B2E _ 6A, 01
        lea     eax, [esp+18H]                          ; 10013B30 _ 8D. 44 24, 18
        push    4                                       ; 10013B34 _ 6A, 04
        push    eax                                     ; 10013B36 _ 50
        call    ?_2085                                  ; 10013B37 _ E8, FFFFE904
        add     esp, 16                                 ; 10013B3C _ 83. C4, 10
        test    eax, eax                                ; 10013B3F _ 85. C0
        jnz     ?_2179                                  ; 10013B41 _ 75, 08
?_2178: pop     edi                                     ; 10013B43 _ 5F
        pop     esi                                     ; 10013B44 _ 5E
        pop     ebp                                     ; 10013B45 _ 5D
        xor     eax, eax                                ; 10013B46 _ 33. C0
        pop     ebx                                     ; 10013B48 _ 5B
        pop     ecx                                     ; 10013B49 _ 59
        ret                                             ; 10013B4A _ C3
