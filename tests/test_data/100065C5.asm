; ---- 100065C5 ----
?_0642: ; Local function
        mov     ecx, dword [?_5520]                     ; 100065C5 _ 8B. 0D, 10034638(d)
        mov     edi, dword [ebp+0CH]                    ; 100065CB _ 8B. 7D, 0C
        inc     ecx                                     ; 100065CE _ 41
        cmp     edi, ebx                                ; 100065CF _ 3B. FB
        mov     dword [?_5520], ecx                     ; 100065D1 _ 89. 0D, 10034638(d)
        mov     esi, ?_5779                             ; 100065D7 _ BE, 117640A0(d)
        je      ?_0653                                  ; 100065DC _ 0F 84, 000000F5
        push    58                                      ; 100065E2 _ 6A, 3A
        push    edi                                     ; 100065E4 _ 57
        call    ?_3210                                  ; 100065E5 _ E8, 00014946
        add     esp, 8                                  ; 100065EA _ 83. C4, 08
        cmp     eax, ebx                                ; 100065ED _ 3B. C3
        je      ?_0653                                  ; 100065EF _ 0F 84, 000000E2
        sub     eax, edi                                ; 100065F5 _ 2B. C7
        inc     eax                                     ; 100065F7 _ 40
        mov     esi, eax                                ; 100065F8 _ 8B. F0
        cmp     esi, 16                                 ; 100065FA _ 83. FE, 10
        jl      ?_0643                                  ; 100065FD _ 7C, 21
        push    edi                                     ; 100065FF _ 57
        lea     eax, [ebp-118H]                         ; 10006600 _ 8D. 85, FFFFFEE8
        push    ?_5140                                  ; 10006606 _ 68, 10028858(d)
        push    eax                                     ; 1000660B _ 50
        call    ?_3039                                  ; 1000660C _ E8, 00013C88
        lea     ecx, [ebp-118H]                         ; 10006611 _ 8D. 8D, FFFFFEE8
        push    ecx                                     ; 10006617 _ 51
        call    ?_0263                                  ; 10006618 _ E8, FFFFCFA3
        add     esp, 16                                 ; 1000661D _ 83. C4, 10
?_0643: push    esi                                     ; 10006620 _ 56
        lea     edx, [ebp-18H]                          ; 10006621 _ 8D. 55, E8
        push    edi                                     ; 10006624 _ 57
        push    edx                                     ; 10006625 _ 52
        call    ?_3188                                  ; 10006626 _ E8, 000147F5
        mov     byte [ebp+esi-18H], bl                  ; 1000662B _ 88. 5C 35, E8
        mov     esi, ?_5779                             ; 1000662F _ BE, 117640A0(d)
        mov     eax, esi                                ; 10006634 _ 8B. C6
        add     esp, 12                                 ; 10006636 _ 83. C4, 0C
        test    eax, eax                                ; 10006639 _ 85. C0
        mov     dword [ebp-4H], esi                     ; 1000663B _ 89. 75, FC
        jz      ?_0651                                  ; 1000663E _ 74, 4A
        jmp     ?_0645                                  ; 10006640 _ EB, 03

?_0644: mov     esi, dword [ebp-4H]                     ; 10006642 _ 8B. 75, FC
?_0645: mov     edi, esi                                ; 10006645 _ 8B. FE
        lea     eax, [ebp-18H]                          ; 10006647 _ 8D. 45, E8
?_0646: mov     dl, byte [eax]                          ; 1000664A _ 8A. 10
        mov     cl, dl                                  ; 1000664C _ 8A. CA
        cmp     dl, byte [edi]                          ; 1000664E _ 3A. 17
        jnz     ?_0648                                  ; 10006650 _ 75, 1C
        cmp     cl, bl                                  ; 10006652 _ 3A. CB
        jz      ?_0647                                  ; 10006654 _ 74, 14
        mov     dl, byte [eax+1H]                       ; 10006656 _ 8A. 50, 01
        mov     cl, dl                                  ; 10006659 _ 8A. CA
        cmp     dl, byte [edi+1H]                       ; 1000665B _ 3A. 57, 01
        jnz     ?_0648                                  ; 1000665E _ 75, 0E
        add     eax, 2                                  ; 10006660 _ 83. C0, 02
        add     edi, 2                                  ; 10006663 _ 83. C7, 02
        cmp     cl, bl                                  ; 10006666 _ 3A. CB
        jnz     ?_0646                                  ; 10006668 _ 75, E0
?_0647: xor     eax, eax                                ; 1000666A _ 33. C0
        jmp     ?_0649                                  ; 1000666C _ EB, 05

?_0648: sbb     eax, eax                                ; 1000666E _ 1B. C0
        sbb     eax, -1                                 ; 10006670 _ 83. D8, FF
?_0649: cmp     eax, ebx                                ; 10006673 _ 3B. C3
        jz      ?_0650                                  ; 10006675 _ 74, 0F
        mov     eax, dword [esi+24H]                    ; 10006677 _ 8B. 46, 24
        mov     dword [ebp-8H], esi                     ; 1000667A _ 89. 75, F8
        cmp     eax, ebx                                ; 1000667D _ 3B. C3
        mov     dword [ebp-4H], eax                     ; 1000667F _ 89. 45, FC
        jnz     ?_0644                                  ; 10006682 _ 75, BE
        jmp     ?_0651                                  ; 10006684 _ EB, 04

?_0650: cmp     esi, ebx                                ; 10006686 _ 3B. F3
        jnz     ?_0652                                  ; 10006688 _ 75, 47
?_0651: push    40                                      ; 1000668A _ 6A, 28
        call    ?_3109                                  ; 1000668C _ E8, 00014166
        mov     edx, eax                                ; 10006691 _ 8B. D0
        lea     edi, [ebp-18H]                          ; 10006693 _ 8D. 7D, E8
        or      ecx, 0FFFFFFFFH                         ; 10006696 _ 83. C9, FF
        xor     eax, eax                                ; 10006699 _ 33. C0
        add     esp, 4                                  ; 1000669B _ 83. C4, 04
        mov     dword [ebp-4H], edx                     ; 1000669E _ 89. 55, FC
        repne scasb                                     ; 100066A1 _ F2: AE
        not     ecx                                     ; 100066A3 _ F7. D1
        sub     edi, ecx                                ; 100066A5 _ 2B. F9
        mov     eax, ecx                                ; 100066A7 _ 8B. C1
        mov     esi, edi                                ; 100066A9 _ 8B. F7
        mov     edi, edx                                ; 100066AB _ 8B. FA
        shr     ecx, 2                                  ; 100066AD _ C1. E9, 02
        rep movsd                                       ; 100066B0 _ F3: A5
        mov     ecx, eax                                ; 100066B2 _ 8B. C8
        and     ecx, 03H                                ; 100066B4 _ 83. E1, 03
        rep movsb                                       ; 100066B7 _ F3: A4
        mov     ecx, dword [ebp-8H]                     ; 100066B9 _ 8B. 4D, F8
        mov     dword [edx+14H], ebx                    ; 100066BC _ 89. 5A, 14
        mov     dword [edx+10H], ebx                    ; 100066BF _ 89. 5A, 10
        mov     dword [edx+1CH], ebx                    ; 100066C2 _ 89. 5A, 1C
        mov     dword [edx+18H], ebx                    ; 100066C5 _ 89. 5A, 18
        mov     dword [edx+20H], ebx                    ; 100066C8 _ 89. 5A, 20
        mov     dword [edx+24H], ebx                    ; 100066CB _ 89. 5A, 24
        mov     dword [ecx+24H], edx                    ; 100066CE _ 89. 51, 24
?_0652: mov     esi, dword [ebp-4H]                     ; 100066D1 _ 8B. 75, FC
        mov     edi, dword [ebp+0CH]                    ; 100066D4 _ 8B. 7D, 0C
?_0653: mov     eax, dword [esi+20H]                    ; 100066D7 _ 8B. 46, 20
        inc     eax                                     ; 100066DA _ 40
        mov     dword [esi+20H], eax                    ; 100066DB _ 89. 46, 20
        mov     eax, dword [ebp+8H]                     ; 100066DE _ 8B. 45, 08
        push    eax                                     ; 100066E1 _ 50
        mov     dword [ebp-8H], eax                     ; 100066E2 _ 89. 45, F8
        call    ?_3109                                  ; 100066E5 _ E8, 0001410D
        mov     edx, eax                                ; 100066EA _ 8B. D0
        add     esp, 4                                  ; 100066EC _ 83. C4, 04
        cmp     edx, ebx                                ; 100066EF _ 3B. D3
        mov     dword [ebp-4H], edx                     ; 100066F1 _ 89. 55, FC
        jnz     ?_0654                                  ; 100066F4 _ 75, 32
        mov     edx, dword [ebp+8H]                     ; 100066F6 _ 8B. 55, 08
        lea     eax, [ebp-18H]                          ; 100066F9 _ 8D. 45, E8
        push    edx                                     ; 100066FC _ 52
        push    edi                                     ; 100066FD _ 57
        push    ?_5139                                  ; 100066FE _ 68, 10028820(d)
        push    eax                                     ; 10006703 _ 50
        call    ?_3039                                  ; 10006704 _ E8, 00013B90
        lea     ecx, [ebp-18H]                          ; 10006709 _ 8D. 4D, E8
        push    ecx                                     ; 1000670C _ 51
        push    205                                     ; 1000670D _ 68, 000000CD
        push    ?_5141                                  ; 10006712 _ 68, 10028888(d)
        call    ?_0258                                  ; 10006717 _ E8, FFFFCE04
        add     esp, 28                                 ; 1000671C _ 83. C4, 1C
        xor     eax, eax                                ; 1000671F _ 33. C0
        pop     edi                                     ; 10006721 _ 5F
        pop     esi                                     ; 10006722 _ 5E
        pop     ebx                                     ; 10006723 _ 5B
        mov     esp, ebp                                ; 10006724 _ 8B. E5
        pop     ebp                                     ; 10006726 _ 5D
        ret                                             ; 10006727 _ C3

