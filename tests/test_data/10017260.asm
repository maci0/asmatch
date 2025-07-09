; ---- 10017260 ----
?_2629: ; Local function
        and     eax, 0FFH                               ; 10017260 _ 25, 000000FF
        add     eax, -30                                ; 10017265 _ 83. C0, E2
        cmp     eax, 47                                 ; 10017268 _ 83. F8, 2F
        ja      ?_2635                                  ; 1001726B _ 77, 41
        xor     ecx, ecx                                ; 1001726D _ 33. C9
        mov     cl, byte [?_2641+eax]                   ; 1001726F _ 8A. 88, 100172F8(d)
        jmp     near [?_2640+ecx*4]                     ; 10017275 _ FF. 24 8D, 100172E8(d)

?_2630: mov     eax, dword [esi+71H]                    ; 1001727C _ 8B. 46, 71
        cmp     eax, ebx                                ; 1001727F _ 3B. C3
        jz      ?_2631                                  ; 10017281 _ 74, 0C
        push    eax                                     ; 10017283 _ 50
        call    ?_0663                                  ; 10017284 _ E8, FFFEF597
        add     esp, 4                                  ; 10017289 _ 83. C4, 04
        mov     dword [esi+71H], ebx                    ; 1001728C _ 89. 5E, 71
?_2631: mov     dword [esi+71H], ebx                    ; 1001728F _ 89. 5E, 71
        jmp     ?_2635                                  ; 10017292 _ EB, 1A

?_2632: mov     edx, dword [esi+65H]                    ; 10017294 _ 8B. 56, 65
        push    edx                                     ; 10017297 _ 52
        call    ?_1966                                  ; 10017298 _ E8, FFFF9CB3
        jmp     ?_2634                                  ; 1001729D _ EB, 09

?_2633: mov     eax, dword [esi+65H]                    ; 1001729F _ 8B. 46, 65
        push    eax                                     ; 100172A2 _ 50
        call    ?_0663                                  ; 100172A3 _ E8, FFFEF578
?_2634: add     esp, 4                                  ; 100172A8 _ 83. C4, 04
        mov     dword [esi+65H], ebx                    ; 100172AB _ 89. 5E, 65
?_2635: mov     eax, ?_5648                             ; 100172AE _ B8, 10035A0C(d)
?_2636: cmp     dword [eax+4H], esi                     ; 100172B3 _ 39. 70, 04
        jnz     ?_2637                                  ; 100172B6 _ 75, 03
        mov     dword [eax+4H], ebx                     ; 100172B8 _ 89. 58, 04
?_2637: cmp     dword [eax], esi                        ; 100172BB _ 39. 30
        jnz     ?_2638                                  ; 100172BD _ 75, 02
        mov     dword [eax], ebx                        ; 100172BF _ 89. 18
?_2638: add     eax, 540                                ; 100172C1 _ 05, 0000021C
        cmp     eax, ?_5660                             ; 100172C6 _ 3D, 1009AE0C(d)
        jl      ?_2636                                  ; 100172CB _ 7C, E6
        mov     ecx, dword [esi+5DH]                    ; 100172CD _ 8B. 4E, 5D
        lea     eax, [esi+5DH]                          ; 100172D0 _ 8D. 46, 5D
        cmp     ecx, ebx                                ; 100172D3 _ 3B. CB
        jz      ?_2639                                  ; 100172D5 _ 74, 09
        push    eax                                     ; 100172D7 _ 50
        call    ?_2520                                  ; 100172D8 _ E8, FFFFF433
        add     esp, 4                                  ; 100172DD _ 83. C4, 04
?_2639: mov     byte [esi], bl                          ; 100172E0 _ 88. 1E
        pop     esi                                     ; 100172E2 _ 5E
        xor     eax, eax                                ; 100172E3 _ 33. C0
        pop     ebx                                     ; 100172E5 _ 5B
        ret                                             ; 100172E6 _ C3

        nop                                             ; 100172E7 _ 90

?_2640:                                                 ; switch/case jump table
        dd ?_2630                                       ; 100172E8 _ 1001727C (d)
        dd ?_2632                                       ; 100172EC _ 10017294 (d)
        dd ?_2633                                       ; 100172F0 _ 1001729F (d)
        dd ?_2635                                       ; 100172F4 _ 100172AE (d)

?_2641: db 00H, 03H, 03H, 03H, 03H, 03H, 03H, 03H       ; 100172F8 _ ........
        db 03H, 03H, 03H, 03H, 03H, 03H, 03H, 03H       ; 10017300 _ ........
        db 03H, 03H, 03H, 03H, 03H, 03H, 03H, 03H       ; 10017308 _ ........
        db 03H, 03H, 03H, 03H, 03H, 03H, 03H, 03H       ; 10017310 _ ........
        db 03H, 03H, 03H, 03H, 03H, 03H, 03H, 03H       ; 10017318 _ ........
        db 03H, 03H, 01H, 01H, 01H, 02H, 02H, 02H       ; 10017320 _ ........
        db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10017328 _ ........
?_2642: push    ecx                                     ; 10017330 _ 51
        push    ebx                                     ; 10017331 _ 53
        push    ebp                                     ; 10017332 _ 55
        mov     ebp, dword [esp+10H]                    ; 10017333 _ 8B. 6C 24, 10
        push    esi                                     ; 10017337 _ 56
        push    edi                                     ; 10017338 _ 57
        mov     edi, ?_5378                             ; 10017339 _ BF, 10030861(d)
        mov     dword [esp+10H], edi                    ; 1001733E _ 89. 7C 24, 10
?_2643: mov     al, byte [ebp]                          ; 10017342 _ 8A. 45, 00
        mov     cl, byte [edi-1H]                       ; 10017345 _ 8A. 4F, FF
        cmp     al, cl                                  ; 10017348 _ 3A. C1
        jne     ?_2648                                  ; 1001734A _ 0F 85, 00000096
        mov     ecx, dword [ebp+5DH]                    ; 10017350 _ 8B. 4D, 5D
        push    255                                     ; 10017353 _ 68, 000000FF
        push    0                                       ; 10017358 _ 6A, 00
        push    6                                       ; 1001735A _ 6A, 06
        push    2                                       ; 1001735C _ 6A, 02
        push    ecx                                     ; 1001735E _ 51
        call    ?_2482                                  ; 1001735F _ E8, FFFFF0FC
        mov     esi, eax                                ; 10017364 _ 8B. F0
        add     esp, 20                                 ; 10017366 _ 83. C4, 14
        test    esi, esi                                ; 10017369 _ 85. F6
        jnz     ?_2644                                  ; 1001736B _ 75, 19
        mov     edx, dword [ebp+1H]                     ; 1001736D _ 8B. 55, 01
        push    1                                       ; 10017370 _ 6A, 01
        push    255                                     ; 10017372 _ 68, 000000FF
        push    edx                                     ; 10017377 _ 52
        call    ?_2524                                  ; 10017378 _ E8, FFFFF3E3
        mov     esi, eax                                ; 1001737D _ 8B. F0
        add     esp, 12                                 ; 1001737F _ 83. C4, 0C
        test    esi, esi                                ; 10017382 _ 85. F6
        jz      ?_2647                                  ; 10017384 _ 74, 47
?_2644: mov     ebx, 10                                 ; 10017386 _ BB, 0000000A
?_2645: mov     ax, word [edi]                          ; 1001738B _ 66: 8B. 07
        test    ax, ax                                  ; 1001738E _ 66: 85. C0
        jz      ?_2646                                  ; 10017391 _ 74, 2E
        and     eax, 0FFFFH                             ; 10017393 _ 25, 0000FFFF
        push    eax                                     ; 10017398 _ 50
        mov     eax, dword [esi+14H]                    ; 10017399 _ 8B. 46, 14
        push    0                                       ; 1001739C _ 6A, 00
        push    1                                       ; 1001739E _ 6A, 01
        push    eax                                     ; 100173A0 _ 50
        call    ?_2482                                  ; 100173A1 _ E8, FFFFF0BA
        add     esp, 16                                 ; 100173A6 _ 83. C4, 10
        test    eax, eax                                ; 100173A9 _ 85. C0
        jnz     ?_2646                                  ; 100173AB _ 75, 14
        mov     edx, dword [esi+2H]                     ; 100173AD _ 8B. 56, 02
        xor     ecx, ecx                                ; 100173B0 _ 33. C9
        mov     cx, word [edi]                          ; 100173B2 _ 66: 8B. 0F
        push    2                                       ; 100173B5 _ 6A, 02
        push    ecx                                     ; 100173B7 _ 51
        push    edx                                     ; 100173B8 _ 52
        call    ?_2524                                  ; 100173B9 _ E8, FFFFF3A2
        add     esp, 12                                 ; 100173BE _ 83. C4, 0C
?_2646: add     edi, 2                                  ; 100173C1 _ 83. C7, 02
        dec     ebx                                     ; 100173C4 _ 4B
        jnz     ?_2645                                  ; 100173C5 _ 75, C4
        mov     edi, dword [esp+10H]                    ; 100173C7 _ 8B. 7C 24, 10
        jmp     ?_2648                                  ; 100173CB _ EB, 19

?_2647: push    1                                       ; 100173CD _ 6A, 01
        push    ?_5427                                  ; 100173CF _ 68, 100313FC(d)
        push    4223                                    ; 100173D4 _ 68, 0000107F
        push    ?_5397                                  ; 100173D9 _ 68, 10031004(d)
        call    ?_0267                                  ; 100173DE _ E8, FFFEC25D
        add     esp, 16                                 ; 100173E3 _ 83. C4, 10
?_2648: add     edi, 21                                 ; 100173E6 _ 83. C7, 15
        cmp     edi, ?_5379                             ; 100173E9 _ 81. FF, 10030B6A(d)
        mov     dword [esp+10H], edi                    ; 100173EF _ 89. 7C 24, 10
        jl      ?_2643                                  ; 100173F3 _ 0F 8C, FFFFFF49
        pop     edi                                     ; 100173F9 _ 5F
        pop     esi                                     ; 100173FA _ 5E
        pop     ebp                                     ; 100173FB _ 5D
        pop     ebx                                     ; 100173FC _ 5B
        pop     ecx                                     ; 100173FD _ 59
        ret                                             ; 100173FE _ C3

        nop                                             ; 100173FF _ 90
