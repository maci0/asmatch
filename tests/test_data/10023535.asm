; ---- 10023535 ----
?_4844: ; Local function
        push    ebp                                     ; 10023535 _ 55
        mov     ebp, esp                                ; 10023536 _ 8B. EC
        push    ecx                                     ; 10023538 _ 51
        push    ecx                                     ; 10023539 _ 51
        push    ebx                                     ; 1002353A _ 53
        push    esi                                     ; 1002353B _ 56
        push    edi                                     ; 1002353C _ 57
        xor     edi, edi                                ; 1002353D _ 33. FF
        cmp     dword [ebp+8H], edi                     ; 1002353F _ 39. 7D, 08
        jz      ?_4846                                  ; 10023542 _ 74, 55
        push    61                                      ; 10023544 _ 6A, 3D
        push    dword [ebp+8H]                          ; 10023546 _ FF. 75, 08
        call    ?_4871                                  ; 10023549 _ E8, 0000022D
        mov     esi, eax                                ; 1002354E _ 8B. F0
        pop     ecx                                     ; 10023550 _ 59
        cmp     esi, edi                                ; 10023551 _ 3B. F7
        pop     ecx                                     ; 10023553 _ 59
        mov     dword [ebp-8H], esi                     ; 10023554 _ 89. 75, F8
        jz      ?_4846                                  ; 10023557 _ 74, 40
        cmp     dword [ebp+8H], esi                     ; 10023559 _ 39. 75, 08
        jz      ?_4846                                  ; 1002355C _ 74, 3B
        mov     eax, dword [?_5565]                     ; 1002355E _ A1, 100354D0(d)
        xor     ebx, ebx                                ; 10023563 _ 33. DB
        cmp     byte [esi+1H], bl                       ; 10023565 _ 38. 5E, 01
        sete    bl                                      ; 10023568 _ 0F 94. C3
        cmp     eax, dword [?_5566]                     ; 1002356B _ 3B. 05, 100354D4(d)
        jnz     ?_4845                                  ; 10023571 _ 75, 0C
        push    eax                                     ; 10023573 _ 50
        call    ?_4864                                  ; 10023574 _ E8, 0000019B
        pop     ecx                                     ; 10023579 _ 59
        mov     dword [?_5565], eax                     ; 1002357A _ A3, 100354D0(d)
?_4845: cmp     eax, edi                                ; 1002357F _ 3B. C7
        jnz     ?_4849                                  ; 10023581 _ 75, 54
        cmp     dword [ebp+0CH], edi                    ; 10023583 _ 39. 7D, 0C
        jz      ?_4848                                  ; 10023586 _ 74, 19
        cmp     dword [?_5567], edi                     ; 10023588 _ 39. 3D, 100354D8(d)
        jz      ?_4848                                  ; 1002358E _ 74, 11
        call    ?_4776                                  ; 10023590 _ E8, FFFFF9EE
        test    eax, eax                                ; 10023595 _ 85. C0
        jz      ?_4849                                  ; 10023597 _ 74, 3E
?_4846: or      eax, 0FFFFFFFFH                         ; 10023599 _ 83. C8, FF
?_4847: pop     edi                                     ; 1002359C _ 5F
        pop     esi                                     ; 1002359D _ 5E
        pop     ebx                                     ; 1002359E _ 5B
        leave                                           ; 1002359F _ C9
        ret                                             ; 100235A0 _ C3

?_4848: cmp     ebx, edi                                ; 100235A1 _ 3B. DF
        jne     ?_4857                                  ; 100235A3 _ 0F 85, 0000010C
        push    4                                       ; 100235A9 _ 6A, 04
        call    ?_3109                                  ; 100235AB _ E8, FFFF7247
        cmp     eax, edi                                ; 100235B0 _ 3B. C7
        pop     ecx                                     ; 100235B2 _ 59
        mov     dword [?_5565], eax                     ; 100235B3 _ A3, 100354D0(d)
        jz      ?_4846                                  ; 100235B8 _ 74, DF
        mov     dword [eax], edi                        ; 100235BA _ 89. 38
        cmp     dword [?_5567], edi                     ; 100235BC _ 39. 3D, 100354D8(d)
        jnz     ?_4849                                  ; 100235C2 _ 75, 13
        push    4                                       ; 100235C4 _ 6A, 04
        call    ?_3109                                  ; 100235C6 _ E8, FFFF722C
        cmp     eax, edi                                ; 100235CB _ 3B. C7
        pop     ecx                                     ; 100235CD _ 59
        mov     dword [?_5567], eax                     ; 100235CE _ A3, 100354D8(d)
        jz      ?_4846                                  ; 100235D3 _ 74, C4
        mov     dword [eax], edi                        ; 100235D5 _ 89. 38
?_4849: sub     esi, dword [ebp+8H]                     ; 100235D7 _ 2B. 75, 08
        mov     edi, dword [?_5565]                     ; 100235DA _ 8B. 3D, 100354D0(d)
        mov     dword [ebp-4H], edi                     ; 100235E0 _ 89. 7D, FC
        push    esi                                     ; 100235E3 _ 56
        push    dword [ebp+8H]                          ; 100235E4 _ FF. 75, 08
        call    ?_4858                                  ; 100235E7 _ E8, 000000D0
        mov     esi, eax                                ; 100235EC _ 8B. F0
        pop     ecx                                     ; 100235EE _ 59
        test    esi, esi                                ; 100235EF _ 85. F6
        pop     ecx                                     ; 100235F1 _ 59
        jl      ?_4853                                  ; 100235F2 _ 7C, 43
        cmp     dword [edi], 0                          ; 100235F4 _ 83. 3F, 00
        jz      ?_4853                                  ; 100235F7 _ 74, 3E
        test    ebx, ebx                                ; 100235F9 _ 85. DB
        jz      ?_4852                                  ; 100235FB _ 74, 32
        push    dword [edi+esi*4]                       ; 100235FD _ FF. 34 B7
        lea     edi, [edi+esi*4]                        ; 10023600 _ 8D. 3C B7
        call    ?_3158                                  ; 10023603 _ E8, FFFF7579
        pop     ecx                                     ; 10023608 _ 59
?_4850: cmp     dword [edi], 0                          ; 10023609 _ 83. 3F, 00
        jz      ?_4851                                  ; 1002360C _ 74, 0B
        mov     eax, dword [edi+4H]                     ; 1002360E _ 8B. 47, 04
        inc     esi                                     ; 10023611 _ 46
        mov     dword [edi], eax                        ; 10023612 _ 89. 07
        add     edi, 4                                  ; 10023614 _ 83. C7, 04
        jmp     ?_4850                                  ; 10023617 _ EB, F0

?_4851: mov     eax, esi                                ; 10023619 _ 8B. C6
        shl     eax, 2                                  ; 1002361B _ C1. E0, 02
        push    eax                                     ; 1002361E _ 50
        push    dword [ebp-4H]                          ; 1002361F _ FF. 75, FC
        call    ?_3300                                  ; 10023622 _ E8, FFFF7FA5
        pop     ecx                                     ; 10023627 _ 59
        test    eax, eax                                ; 10023628 _ 85. C0
        pop     ecx                                     ; 1002362A _ 59
        jz      ?_4856                                  ; 1002362B _ 74, 3C
        jmp     ?_4855                                  ; 1002362D _ EB, 35

?_4852: mov     eax, dword [ebp+8H]                     ; 1002362F _ 8B. 45, 08
        mov     dword [edi+esi*4], eax                  ; 10023632 _ 89. 04 B7
        jmp     ?_4856                                  ; 10023635 _ EB, 32

?_4853: test    ebx, ebx                                ; 10023637 _ 85. DB
        jnz     ?_4857                                  ; 10023639 _ 75, 7A
        test    esi, esi                                ; 1002363B _ 85. F6
        jge     ?_4854                                  ; 1002363D _ 7D, 02
        neg     esi                                     ; 1002363F _ F7. DE
?_4854: lea     eax, [esi*4+8H]                         ; 10023641 _ 8D. 04 B5, 00000008
        push    eax                                     ; 10023648 _ 50
        push    edi                                     ; 10023649 _ 57
        call    ?_3300                                  ; 1002364A _ E8, FFFF7F7D
        pop     ecx                                     ; 1002364F _ 59
        test    eax, eax                                ; 10023650 _ 85. C0
        pop     ecx                                     ; 10023652 _ 59
        je      ?_4846                                  ; 10023653 _ 0F 84, FFFFFF40
        mov     ecx, dword [ebp+8H]                     ; 10023659 _ 8B. 4D, 08
        mov     dword [eax+esi*4], ecx                  ; 1002365C _ 89. 0C B0
        and     dword [eax+esi*4+4H], 00H               ; 1002365F _ 83. 64 B0, 04, 00
?_4855: mov     dword [?_5565], eax                     ; 10023664 _ A3, 100354D0(d)
?_4856: cmp     dword [ebp+0CH], 0                      ; 10023669 _ 83. 7D, 0C, 00
        jz      ?_4857                                  ; 1002366D _ 74, 46
        push    dword [ebp+8H]                          ; 1002366F _ FF. 75, 08
        call    ?_3393                                  ; 10023672 _ E8, FFFF8759
        inc     eax                                     ; 10023677 _ 40
        inc     eax                                     ; 10023678 _ 40
        push    eax                                     ; 10023679 _ 50
        call    ?_3109                                  ; 1002367A _ E8, FFFF7178
        mov     esi, eax                                ; 1002367F _ 8B. F0
        pop     ecx                                     ; 10023681 _ 59
        test    esi, esi                                ; 10023682 _ 85. F6
        pop     ecx                                     ; 10023684 _ 59
        jz      ?_4857                                  ; 10023685 _ 74, 2E
        push    dword [ebp+8H]                          ; 10023687 _ FF. 75, 08
        push    esi                                     ; 1002368A _ 56
        call    ?_4074                                  ; 1002368B _ E8, FFFFC240
        mov     eax, esi                                ; 10023690 _ 8B. C6
        pop     ecx                                     ; 10023692 _ 59
        sub     eax, dword [ebp+8H]                     ; 10023693 _ 2B. 45, 08
        pop     ecx                                     ; 10023696 _ 59
        add     eax, dword [ebp-8H]                     ; 10023697 _ 03. 45, F8
        and     byte [eax], 00H                         ; 1002369A _ 80. 20, 00
        inc     eax                                     ; 1002369D _ 40
        neg     ebx                                     ; 1002369E _ F7. DB
        sbb     ebx, ebx                                ; 100236A0 _ 1B. DB
        not     ebx                                     ; 100236A2 _ F7. D3
        and     ebx, eax                                ; 100236A4 _ 23. D8
        push    ebx                                     ; 100236A6 _ 53
        push    esi                                     ; 100236A7 _ 56
        call    near [imp_SetEnvironmentVariableA]      ; 100236A8 _ FF. 15, 1002407C(d)
        push    esi                                     ; 100236AE _ 56
        call    ?_3158                                  ; 100236AF _ E8, FFFF74CD
        pop     ecx                                     ; 100236B4 _ 59
?_4857: xor     eax, eax                                ; 100236B5 _ 33. C0
        jmp     ?_4847                                  ; 100236B7 _ E9, FFFFFEE0

