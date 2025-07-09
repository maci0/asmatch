; ---- 10017400 ----
?_2649: ; Local function
        push    esi                                     ; 10017400 _ 56
        push    edi                                     ; 10017401 _ 57
        mov     edi, dword [esp+0CH]                    ; 10017402 _ 8B. 7C 24, 0C
        xor     ecx, ecx                                ; 10017406 _ 33. C9
        mov     edx, dword [?_5668]                     ; 10017408 _ 8B. 15, 100A8C30(d)
        push    6                                       ; 1001740E _ 6A, 06
        mov     cl, byte [edi]                          ; 10017410 _ 8A. 0F
        push    42                                      ; 10017412 _ 6A, 2A
        add     edx, ecx                                ; 10017414 _ 03. D1
        push    0                                       ; 10017416 _ 6A, 00
        lea     eax, [ecx+ecx*2]                        ; 10017418 _ 8D. 04 49
        push    2                                       ; 1001741B _ 6A, 02
        shl     eax, 4                                  ; 1001741D _ C1. E0, 04
        add     eax, ecx                                ; 10017420 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 10017422 _ 8D. 04 40
        lea     esi, [edx+eax*4]                        ; 10017425 _ 8D. 34 82
        mov     eax, dword [edi+5DH]                    ; 10017428 _ 8B. 47, 5D
        push    eax                                     ; 1001742B _ 50
        call    ?_2482                                  ; 1001742C _ E8, FFFFF02F
        add     esp, 20                                 ; 10017431 _ 83. C4, 14
        test    eax, eax                                ; 10017434 _ 85. C0
        jz      ?_2655                                  ; 10017436 _ 74, 53
        mov     cl, byte [esi+23DH]                     ; 10017438 _ 8A. 8E, 0000023D
        test    cl, cl                                  ; 1001743E _ 84. C9
        jnz     ?_2650                                  ; 10017440 _ 75, 19
        mov     dl, byte [esi+23EH]                     ; 10017442 _ 8A. 96, 0000023E
        test    dl, dl                                  ; 10017448 _ 84. D2
        jnz     ?_2650                                  ; 1001744A _ 75, 0F
        mov     dl, byte [esi+23FH]                     ; 1001744C _ 8A. 96, 0000023F
        test    dl, dl                                  ; 10017452 _ 84. D2
        jz      ?_2650                                  ; 10017454 _ 74, 05
        mov     byte [eax+1CH], dl                      ; 10017456 _ 88. 50, 1C
        jmp     ?_2655                                  ; 10017459 _ EB, 30

?_2650: cmp     cl, 2                                   ; 1001745B _ 80. F9, 02
        jnc     ?_2651                                  ; 1001745E _ 73, 07
        mov     ecx, 2                                  ; 10017460 _ B9, 00000002
        jmp     ?_2652                                  ; 10017465 _ EB, 06

?_2651: and     ecx, 0FFH                               ; 10017467 _ 81. E1, 000000FF
?_2652: mov     byte [eax+1CH], cl                      ; 1001746D _ 88. 48, 1C
        mov     cl, byte [esi+23EH]                     ; 10017470 _ 8A. 8E, 0000023E
        cmp     cl, 2                                   ; 10017476 _ 80. F9, 02
        jnc     ?_2653                                  ; 10017479 _ 73, 07
        mov     ecx, 2                                  ; 1001747B _ B9, 00000002
        jmp     ?_2654                                  ; 10017480 _ EB, 06

?_2653: and     ecx, 0FFH                               ; 10017482 _ 81. E1, 000000FF
?_2654: mov     byte [eax+1DH], cl                      ; 10017488 _ 88. 48, 1D
?_2655: mov     ecx, dword [edi+5DH]                    ; 1001748B _ 8B. 4F, 5D
        push    6                                       ; 1001748E _ 6A, 06
        push    278                                     ; 10017490 _ 68, 00000116
        push    0                                       ; 10017495 _ 6A, 00
        push    2                                       ; 10017497 _ 6A, 02
        push    ecx                                     ; 10017499 _ 51
        call    ?_2482                                  ; 1001749A _ E8, FFFFEFC1
        add     esp, 20                                 ; 1001749F _ 83. C4, 14
        test    eax, eax                                ; 100174A2 _ 85. C0
        jz      ?_2656                                  ; 100174A4 _ 74, 21
        mov     cl, byte [esi+23DH]                     ; 100174A6 _ 8A. 8E, 0000023D
        test    cl, cl                                  ; 100174AC _ 84. C9
        jnz     ?_2656                                  ; 100174AE _ 75, 17
        mov     cl, byte [esi+23EH]                     ; 100174B0 _ 8A. 8E, 0000023E
        test    cl, cl                                  ; 100174B6 _ 84. C9
        jnz     ?_2656                                  ; 100174B8 _ 75, 0D
        mov     cl, byte [esi+23FH]                     ; 100174BA _ 8A. 8E, 0000023F
        test    cl, cl                                  ; 100174C0 _ 84. C9
        jz      ?_2656                                  ; 100174C2 _ 74, 03
        mov     byte [eax+1CH], cl                      ; 100174C4 _ 88. 48, 1C
?_2656: pop     edi                                     ; 100174C7 _ 5F
        pop     esi                                     ; 100174C8 _ 5E
        ret                                             ; 100174C9 _ C3

        nop                                             ; 100174CA _ 90
        nop                                             ; 100174CB _ 90
        nop                                             ; 100174CC _ 90
        nop                                             ; 100174CD _ 90
        nop                                             ; 100174CE _ 90
        nop                                             ; 100174CF _ 90
