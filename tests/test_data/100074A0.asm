; ---- 100074A0 ----
?_0744: ; Local function
        sub     esp, 8                                  ; 100074A0 _ 83. EC, 08
        mov     eax, dword [esp+10H]                    ; 100074A3 _ 8B. 44 24, 10
        push    ebx                                     ; 100074A7 _ 53
        push    ebp                                     ; 100074A8 _ 55
        push    esi                                     ; 100074A9 _ 56
        mov     esi, dword [esp+18H]                    ; 100074AA _ 8B. 74 24, 18
        push    edi                                     ; 100074AE _ 57
        mov     edi, dword [eax]                        ; 100074AF _ 8B. 38
        mov     eax, dword [eax+8H]                     ; 100074B1 _ 8B. 40, 08
        or      ebp, 0FFFFFFFFH                         ; 100074B4 _ 83. CD, FF
        mov     ebx, dword [eax]                        ; 100074B7 _ 8B. 18
        mov     ecx, dword [eax+0CH]                    ; 100074B9 _ 8B. 48, 0C
        xor     eax, eax                                ; 100074BC _ 33. C0
        mov     dword [esp+14H], ecx                    ; 100074BE _ 89. 4C 24, 14
        cmp     ecx, eax                                ; 100074C2 _ 3B. C8
        mov     dword [esp+10H], ebp                    ; 100074C4 _ 89. 6C 24, 10
        mov     dword [esi+1448H], eax                  ; 100074C8 _ 89. 86, 00001448
        mov     dword [esi+144CH], 573                  ; 100074CE _ C7. 86, 0000144C, 0000023D
        jle     ?_0748                                  ; 100074D8 _ 7E, 3E
        mov     edx, edi                                ; 100074DA _ 8B. D7
?_0745: cmp     word [edx], 0                           ; 100074DC _ 66: 83. 3A, 00
        jz      ?_0746                                  ; 100074E0 _ 74, 24
        mov     ecx, dword [esi+1448H]                  ; 100074E2 _ 8B. 8E, 00001448
        mov     dword [esp+10H], eax                    ; 100074E8 _ 89. 44 24, 10
        inc     ecx                                     ; 100074EC _ 41
        mov     ebp, eax                                ; 100074ED _ 8B. E8
        mov     dword [esi+1448H], ecx                  ; 100074EF _ 89. 8E, 00001448
        mov     dword [esi+ecx*4+0B54H], eax            ; 100074F5 _ 89. 84 8E, 00000B54
        mov     byte [eax+esi+1450H], 0                 ; 100074FC _ C6. 84 30, 00001450, 00
        jmp     ?_0747                                  ; 10007504 _ EB, 06

?_0746:
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx+2H], 0                        ; 10007506 _ 66: C7. 42, 02, 0000
?_0747: mov     ecx, dword [esp+14H]                    ; 1000750C _ 8B. 4C 24, 14
        inc     eax                                     ; 10007510 _ 40
        add     edx, 4                                  ; 10007511 _ 83. C2, 04
        cmp     eax, ecx                                ; 10007514 _ 3B. C1
        jl      ?_0745                                  ; 10007516 _ 7C, C4
?_0748: mov     ecx, dword [esi+1448H]                  ; 10007518 _ 8B. 8E, 00001448
        cmp     ecx, 2                                  ; 1000751E _ 83. F9, 02
        jge     ?_0753                                  ; 10007521 _ 7D, 5D
?_0749: cmp     ebp, 2                                  ; 10007523 _ 83. FD, 02
        jge     ?_0750                                  ; 10007526 _ 7D, 05
        inc     ebp                                     ; 10007528 _ 45
        mov     eax, ebp                                ; 10007529 _ 8B. C5
        jmp     ?_0751                                  ; 1000752B _ EB, 02

?_0750: xor     eax, eax                                ; 1000752D _ 33. C0
?_0751: inc     ecx                                     ; 1000752F _ 41
        mov     dword [esi+1448H], ecx                  ; 10007530 _ 89. 8E, 00001448
        mov     dword [esi+ecx*4+0B54H], eax            ; 10007536 _ 89. 84 8E, 00000B54
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edi+eax*4], 1                     ; 1000753D _ 66: C7. 04 87, 0001
        mov     byte [esi+eax+1450H], 0                 ; 10007543 _ C6. 84 06, 00001450, 00
        mov     edx, dword [esi+16A0H]                  ; 1000754B _ 8B. 96, 000016A0
        dec     edx                                     ; 10007551 _ 4A
        test    ebx, ebx                                ; 10007552 _ 85. DB
        mov     dword [esi+16A0H], edx                  ; 10007554 _ 89. 96, 000016A0
        jz      ?_0752                                  ; 1000755A _ 74, 15
        xor     ecx, ecx                                ; 1000755C _ 33. C9
        mov     cx, word [ebx+eax*4+2H]                 ; 1000755E _ 66: 8B. 4C 83, 02
        mov     eax, dword [esi+16A4H]                  ; 10007563 _ 8B. 86, 000016A4
        sub     eax, ecx                                ; 10007569 _ 2B. C1
        mov     dword [esi+16A4H], eax                  ; 1000756B _ 89. 86, 000016A4
?_0752: mov     ecx, dword [esi+1448H]                  ; 10007571 _ 8B. 8E, 00001448
        cmp     ecx, 2                                  ; 10007577 _ 83. F9, 02
        jl      ?_0749                                  ; 1000757A _ 7C, A7
        mov     dword [esp+10H], ebp                    ; 1000757C _ 89. 6C 24, 10
?_0753: mov     edx, dword [esp+20H]                    ; 10007580 _ 8B. 54 24, 20
        mov     dword [edx+4H], ebp                     ; 10007584 _ 89. 6A, 04
        mov     eax, dword [esi+1448H]                  ; 10007587 _ 8B. 86, 00001448
        cdq                                             ; 1000758D _ 99
        sub     eax, edx                                ; 1000758E _ 2B. C2
        mov     ebx, eax                                ; 10007590 _ 8B. D8
        sar     ebx, 1                                  ; 10007592 _ D1. FB
        cmp     ebx, 1                                  ; 10007594 _ 83. FB, 01
        jl      ?_0755                                  ; 10007597 _ 7C, 11
?_0754: push    ebx                                     ; 10007599 _ 53
        push    edi                                     ; 1000759A _ 57
        push    esi                                     ; 1000759B _ 56
        call    ?_0759                                  ; 1000759C _ E8, 0000013F
        add     esp, 12                                 ; 100075A1 _ 83. C4, 0C
        dec     ebx                                     ; 100075A4 _ 4B
        cmp     ebx, 1                                  ; 100075A5 _ 83. FB, 01
        jge     ?_0754                                  ; 100075A8 _ 7D, EF
?_0755: mov     eax, dword [esp+14H]                    ; 100075AA _ 8B. 44 24, 14
        mov     dword [esp+14H], eax                    ; 100075AE _ 89. 44 24, 14
        lea     eax, [edi+eax*4]                        ; 100075B2 _ 8D. 04 87
        mov     dword [esp+1CH], eax                    ; 100075B5 _ 89. 44 24, 1C
?_0756: mov     eax, dword [esi+1448H]                  ; 100075B9 _ 8B. 86, 00001448
        mov     ebx, dword [esi+0B58H]                  ; 100075BF _ 8B. 9E, 00000B58
        push    1                                       ; 100075C5 _ 6A, 01
        push    edi                                     ; 100075C7 _ 57
        mov     ecx, dword [esi+eax*4+0B54H]            ; 100075C8 _ 8B. 8C 86, 00000B54
        dec     eax                                     ; 100075CF _ 48
        push    esi                                     ; 100075D0 _ 56
        mov     dword [esi+0B58H], ecx                  ; 100075D1 _ 89. 8E, 00000B58
        mov     dword [esi+1448H], eax                  ; 100075D7 _ 89. 86, 00001448
        call    ?_0759                                  ; 100075DD _ E8, 000000FE
        mov     edx, dword [esi+144CH]                  ; 100075E2 _ 8B. 96, 0000144C
        mov     ebp, dword [esi+0B58H]                  ; 100075E8 _ 8B. AE, 00000B58
        add     esp, 12                                 ; 100075EE _ 83. C4, 0C
        dec     edx                                     ; 100075F1 _ 4A
        mov     eax, edx                                ; 100075F2 _ 8B. C2
        mov     dword [esi+144CH], edx                  ; 100075F4 _ 89. 96, 0000144C
        mov     dword [esi+eax*4+0B54H], ebx            ; 100075FA _ 89. 9C 86, 00000B54
        mov     ecx, dword [esi+144CH]                  ; 10007601 _ 8B. 8E, 0000144C
        dec     ecx                                     ; 10007607 _ 49
        mov     eax, ecx                                ; 10007608 _ 8B. C1
        mov     dword [esi+144CH], ecx                  ; 1000760A _ 89. 8E, 0000144C
        mov     dword [esi+eax*4+0B54H], ebp            ; 10007610 _ 89. AC 86, 00000B54
        mov     dx, word [edi+ebp*4]                    ; 10007617 _ 66: 8B. 14 AF
        add     dx, word [edi+ebx*4]                    ; 1000761B _ 66: 03. 14 9F
        mov     eax, dword [esp+1CH]                    ; 1000761F _ 8B. 44 24, 1C
        mov     word [eax], dx                          ; 10007623 _ 66: 89. 10
        mov     al, byte [esi+ebx+1450H]                ; 10007626 _ 8A. 84 1E, 00001450
        mov     cl, byte [esi+ebp+1450H]                ; 1000762D _ 8A. 8C 2E, 00001450
        cmp     al, cl                                  ; 10007634 _ 3A. C1
        jc      ?_0757                                  ; 10007636 _ 72, 07
        and     eax, 0FFH                               ; 10007638 _ 25, 000000FF
        jmp     ?_0758                                  ; 1000763D _ EB, 08

?_0757: and     ecx, 0FFH                               ; 1000763F _ 81. E1, 000000FF
        mov     eax, ecx                                ; 10007645 _ 8B. C1
?_0758: mov     ecx, dword [esp+14H]                    ; 10007647 _ 8B. 4C 24, 14
        inc     al                                      ; 1000764B _ FE. C0
        push    1                                       ; 1000764D _ 6A, 01
        push    edi                                     ; 1000764F _ 57
        mov     byte [esi+ecx+1450H], al                ; 10007650 _ 88. 84 0E, 00001450
        mov     eax, dword [esp+24H]                    ; 10007657 _ 8B. 44 24, 24
        mov     word [edi+ebp*4+2H], cx                 ; 1000765B _ 66: 89. 4C AF, 02
        mov     word [edi+ebx*4+2H], cx                 ; 10007660 _ 66: 89. 4C 9F, 02
        mov     dword [esi+0B58H], ecx                  ; 10007665 _ 89. 8E, 00000B58
        inc     ecx                                     ; 1000766B _ 41
        add     eax, 4                                  ; 1000766C _ 83. C0, 04
        push    esi                                     ; 1000766F _ 56
        mov     dword [esp+20H], ecx                    ; 10007670 _ 89. 4C 24, 20
        mov     dword [esp+28H], eax                    ; 10007674 _ 89. 44 24, 28
        call    ?_0759                                  ; 10007678 _ E8, 00000063
        mov     eax, dword [esi+1448H]                  ; 1000767D _ 8B. 86, 00001448
        add     esp, 12                                 ; 10007683 _ 83. C4, 0C
        cmp     eax, 2                                  ; 10007686 _ 83. F8, 02
        jge     ?_0756                                  ; 10007689 _ 0F 8D, FFFFFF2A
        mov     edx, dword [esi+144CH]                  ; 1000768F _ 8B. 96, 0000144C
        mov     ecx, dword [esi+0B58H]                  ; 10007695 _ 8B. 8E, 00000B58
        dec     edx                                     ; 1000769B _ 4A
        mov     dword [esi+144CH], edx                  ; 1000769C _ 89. 96, 0000144C
        mov     eax, edx                                ; 100076A2 _ 8B. C2
        mov     edx, dword [esp+20H]                    ; 100076A4 _ 8B. 54 24, 20
        push    edx                                     ; 100076A8 _ 52
        push    esi                                     ; 100076A9 _ 56
        mov     dword [esi+eax*4+0B54H], ecx            ; 100076AA _ 89. 8C 86, 00000B54
        call    ?_0768                                  ; 100076B1 _ E8, 0000010A
        mov     eax, dword [esp+18H]                    ; 100076B6 _ 8B. 44 24, 18
        add     esi, 2868                               ; 100076BA _ 81. C6, 00000B34
        push    esi                                     ; 100076C0 _ 56
        push    eax                                     ; 100076C1 _ 50
        push    edi                                     ; 100076C2 _ 57
        call    ?_0783                                  ; 100076C3 _ E8, 00000328
        add     esp, 20                                 ; 100076C8 _ 83. C4, 14
        pop     edi                                     ; 100076CB _ 5F
        pop     esi                                     ; 100076CC _ 5E
        pop     ebp                                     ; 100076CD _ 5D
        pop     ebx                                     ; 100076CE _ 5B
        add     esp, 8                                  ; 100076CF _ 83. C4, 08
        ret                                             ; 100076D2 _ C3

        nop                                             ; 100076D3 _ 90
        nop                                             ; 100076D4 _ 90
        nop                                             ; 100076D5 _ 90
        nop                                             ; 100076D6 _ 90
        nop                                             ; 100076D7 _ 90
        nop                                             ; 100076D8 _ 90
        nop                                             ; 100076D9 _ 90
        nop                                             ; 100076DA _ 90
        nop                                             ; 100076DB _ 90
        nop                                             ; 100076DC _ 90
        nop                                             ; 100076DD _ 90
        nop                                             ; 100076DE _ 90
        nop                                             ; 100076DF _ 90

