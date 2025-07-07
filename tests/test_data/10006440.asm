; ---- 10006440 ----
?_0630: ; Local function
        push    ecx                                     ; 10006440 _ 51
        push    ebx                                     ; 10006441 _ 53
        mov     ebx, dword [esp+0CH]                    ; 10006442 _ 8B. 5C 24, 0C
        push    ebp                                     ; 10006446 _ 55
        push    esi                                     ; 10006447 _ 56
        mov     esi, dword [esp+18H]                    ; 10006448 _ 8B. 74 24, 18
        mov     ebp, dword [ebx+34H]                    ; 1000644C _ 8B. 6B, 34
        push    edi                                     ; 1000644F _ 57
        mov     edi, dword [ebx+30H]                    ; 10006450 _ 8B. 7B, 30
        mov     eax, dword [esi+0CH]                    ; 10006453 _ 8B. 46, 0C
        cmp     edi, ebp                                ; 10006456 _ 3B. FD
        mov     dword [esp+10H], eax                    ; 10006458 _ 89. 44 24, 10
        mov     dword [esp+18H], edi                    ; 1000645C _ 89. 7C 24, 18
        jbe     ?_0631                                  ; 10006460 _ 76, 03
        mov     ebp, dword [ebx+2CH]                    ; 10006462 _ 8B. 6B, 2C
?_0631: mov     eax, dword [esi+10H]                    ; 10006465 _ 8B. 46, 10
        sub     ebp, edi                                ; 10006468 _ 2B. EF
        cmp     ebp, eax                                ; 1000646A _ 3B. E8
        jbe     ?_0632                                  ; 1000646C _ 76, 02
        mov     ebp, eax                                ; 1000646E _ 8B. E8
?_0632: test    ebp, ebp                                ; 10006470 _ 85. ED
        jz      ?_0633                                  ; 10006472 _ 74, 0F
        cmp     dword [esp+20H], -5                     ; 10006474 _ 83. 7C 24, 20, FB
        jnz     ?_0633                                  ; 10006479 _ 75, 08
        mov     dword [esp+20H], 0                      ; 1000647B _ C7. 44 24, 20, 00000000
?_0633: mov     edx, dword [esi+14H]                    ; 10006483 _ 8B. 56, 14
        sub     eax, ebp                                ; 10006486 _ 2B. C5
        add     edx, ebp                                ; 10006488 _ 03. D5
        mov     dword [esi+10H], eax                    ; 1000648A _ 89. 46, 10
        mov     dword [esi+14H], edx                    ; 1000648D _ 89. 56, 14
        mov     eax, dword [ebx+38H]                    ; 10006490 _ 8B. 43, 38
        test    eax, eax                                ; 10006493 _ 85. C0
        jz      ?_0634                                  ; 10006495 _ 74, 11
        mov     ecx, dword [ebx+3CH]                    ; 10006497 _ 8B. 4B, 3C
        push    ebp                                     ; 1000649A _ 55
        push    edi                                     ; 1000649B _ 57
        push    ecx                                     ; 1000649C _ 51
        call    eax                                     ; 1000649D _ FF. D0
        mov     dword [ebx+3CH], eax                    ; 1000649F _ 89. 43, 3C
        add     esp, 12                                 ; 100064A2 _ 83. C4, 0C
        mov     dword [esi+30H], eax                    ; 100064A5 _ 89. 46, 30
?_0634: mov     ecx, ebp                                ; 100064A8 _ 8B. CD
        mov     esi, edi                                ; 100064AA _ 8B. F7
        mov     edi, dword [esp+10H]                    ; 100064AC _ 8B. 7C 24, 10
        mov     edx, ecx                                ; 100064B0 _ 8B. D1
        shr     ecx, 2                                  ; 100064B2 _ C1. E9, 02
        rep movsd                                       ; 100064B5 _ F3: A5
        mov     eax, dword [esp+18H]                    ; 100064B7 _ 8B. 44 24, 18
        mov     ecx, edx                                ; 100064BB _ 8B. CA
        and     ecx, 03H                                ; 100064BD _ 83. E1, 03
        add     eax, ebp                                ; 100064C0 _ 03. C5
        rep movsb                                       ; 100064C2 _ F3: A4
        mov     edi, dword [esp+10H]                    ; 100064C4 _ 8B. 7C 24, 10
        mov     ecx, dword [ebx+2CH]                    ; 100064C8 _ 8B. 4B, 2C
        add     edi, ebp                                ; 100064CB _ 03. FD
        cmp     eax, ecx                                ; 100064CD _ 3B. C1
        mov     dword [esp+10H], edi                    ; 100064CF _ 89. 7C 24, 10
        jne     ?_0639                                  ; 100064D3 _ 0F 85, 00000081
        mov     eax, dword [ebx+34H]                    ; 100064D9 _ 8B. 43, 34
        mov     esi, dword [ebx+28H]                    ; 100064DC _ 8B. 73, 28
        cmp     eax, ecx                                ; 100064DF _ 3B. C1
        mov     dword [esp+18H], esi                    ; 100064E1 _ 89. 74 24, 18
        jnz     ?_0635                                  ; 100064E5 _ 75, 03
        mov     dword [ebx+34H], esi                    ; 100064E7 _ 89. 73, 34
?_0635: mov     edi, dword [esp+1CH]                    ; 100064EA _ 8B. 7C 24, 1C
        mov     ebp, dword [ebx+34H]                    ; 100064EE _ 8B. 6B, 34
        sub     ebp, esi                                ; 100064F1 _ 2B. EE
        mov     eax, dword [edi+10H]                    ; 100064F3 _ 8B. 47, 10
        cmp     ebp, eax                                ; 100064F6 _ 3B. E8
        jbe     ?_0636                                  ; 100064F8 _ 76, 02
        mov     ebp, eax                                ; 100064FA _ 8B. E8
?_0636: test    ebp, ebp                                ; 100064FC _ 85. ED
        jz      ?_0637                                  ; 100064FE _ 74, 0F
        cmp     dword [esp+20H], -5                     ; 10006500 _ 83. 7C 24, 20, FB
        jnz     ?_0637                                  ; 10006505 _ 75, 08
        mov     dword [esp+20H], 0                      ; 10006507 _ C7. 44 24, 20, 00000000
?_0637: mov     edx, dword [edi+14H]                    ; 1000650F _ 8B. 57, 14
        sub     eax, ebp                                ; 10006512 _ 2B. C5
        add     edx, ebp                                ; 10006514 _ 03. D5
        mov     dword [edi+10H], eax                    ; 10006516 _ 89. 47, 10
        mov     dword [edi+14H], edx                    ; 10006519 _ 89. 57, 14
        mov     eax, dword [ebx+38H]                    ; 1000651C _ 8B. 43, 38
        test    eax, eax                                ; 1000651F _ 85. C0
        jz      ?_0638                                  ; 10006521 _ 74, 11
        mov     ecx, dword [ebx+3CH]                    ; 10006523 _ 8B. 4B, 3C
        push    ebp                                     ; 10006526 _ 55
        push    esi                                     ; 10006527 _ 56
        push    ecx                                     ; 10006528 _ 51
        call    eax                                     ; 10006529 _ FF. D0
        mov     dword [ebx+3CH], eax                    ; 1000652B _ 89. 43, 3C
        add     esp, 12                                 ; 1000652E _ 83. C4, 0C
        mov     dword [edi+30H], eax                    ; 10006531 _ 89. 47, 30
?_0638: mov     eax, dword [esp+10H]                    ; 10006534 _ 8B. 44 24, 10
        mov     ecx, ebp                                ; 10006538 _ 8B. CD
        mov     edx, ecx                                ; 1000653A _ 8B. D1
        mov     edi, eax                                ; 1000653C _ 8B. F8
        shr     ecx, 2                                  ; 1000653E _ C1. E9, 02
        rep movsd                                       ; 10006541 _ F3: A5
        add     eax, ebp                                ; 10006543 _ 03. C5
        mov     ecx, edx                                ; 10006545 _ 8B. CA
        mov     dword [esp+10H], eax                    ; 10006547 _ 89. 44 24, 10
        mov     eax, dword [esp+18H]                    ; 1000654B _ 8B. 44 24, 18
        and     ecx, 03H                                ; 1000654F _ 83. E1, 03
        add     eax, ebp                                ; 10006552 _ 03. C5
        rep movsb                                       ; 10006554 _ F3: A4
        mov     dword [esp+18H], eax                    ; 10006556 _ 89. 44 24, 18
?_0639: mov     ecx, dword [esp+1CH]                    ; 1000655A _ 8B. 4C 24, 1C
        mov     edx, dword [esp+10H]                    ; 1000655E _ 8B. 54 24, 10
        pop     edi                                     ; 10006562 _ 5F
        pop     esi                                     ; 10006563 _ 5E
        mov     dword [ecx+0CH], edx                    ; 10006564 _ 89. 51, 0C
        mov     dword [ebx+30H], eax                    ; 10006567 _ 89. 43, 30
        mov     eax, dword [esp+18H]                    ; 1000656A _ 8B. 44 24, 18
        pop     ebp                                     ; 1000656E _ 5D
        pop     ebx                                     ; 1000656F _ 5B
        pop     ecx                                     ; 10006570 _ 59
        ret                                             ; 10006571 _ C3

        nop                                             ; 10006572 _ 90
        nop                                             ; 10006573 _ 90
        nop                                             ; 10006574 _ 90
        nop                                             ; 10006575 _ 90
        nop                                             ; 10006576 _ 90
        nop                                             ; 10006577 _ 90
        nop                                             ; 10006578 _ 90
        nop                                             ; 10006579 _ 90
        nop                                             ; 1000657A _ 90
        nop                                             ; 1000657B _ 90
        nop                                             ; 1000657C _ 90
        nop                                             ; 1000657D _ 90
        nop                                             ; 1000657E _ 90
        nop                                             ; 1000657F _ 90
?_0640: push    ebp                                     ; 10006580 _ 55
        mov     ebp, esp                                ; 10006581 _ 8B. EC
        sub     esp, 280                                ; 10006583 _ 81. EC, 00000118
        mov     eax, dword [?_5522]                     ; 10006589 _ A1, 10034640(d)
        push    ebx                                     ; 1000658E _ 53
        xor     ebx, ebx                                ; 1000658F _ 33. DB
        push    esi                                     ; 10006591 _ 56
        cmp     eax, ebx                                ; 10006592 _ 3B. C3
        push    edi                                     ; 10006594 _ 57
        jnz     ?_0641                                  ; 10006595 _ 75, 20
        push    ?_5142                                  ; 10006597 _ 68, 100288AC(d)
        push    147                                     ; 1000659C _ 68, 00000093
        push    ?_5141                                  ; 100065A1 _ 68, 10028888(d)
        call    ?_0258                                  ; 100065A6 _ E8, FFFFCF75
        add     esp, 12                                 ; 100065AB _ 83. C4, 0C
        xor     eax, eax                                ; 100065AE _ 33. C0
        pop     edi                                     ; 100065B0 _ 5F
        pop     esi                                     ; 100065B1 _ 5E
        pop     ebx                                     ; 100065B2 _ 5B
        mov     esp, ebp                                ; 100065B3 _ 8B. E5
        pop     ebp                                     ; 100065B5 _ 5D
        ret                                             ; 100065B6 _ C3

