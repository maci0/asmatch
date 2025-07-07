; ---- 10014691 ----
?_2238: ; Local function
        push    1                                       ; 10014691 _ 6A, 01
        push    ?_5357                                  ; 10014693 _ 68, 1002D6F8(d)
        push    600                                     ; 10014698 _ 68, 00000258
        push    ?_5358                                  ; 1001469D _ 68, 1002D70C(d)
        call    ?_0267                                  ; 100146A2 _ E8, FFFEEF99
        add     esp, 16                                 ; 100146A7 _ 83. C4, 10
        xor     eax, eax                                ; 100146AA _ 33. C0
        pop     ebx                                     ; 100146AC _ 5B
        add     esp, 36                                 ; 100146AD _ 83. C4, 24
        ret                                             ; 100146B0 _ C3

        nop                                             ; 100146B1 _ 90
        nop                                             ; 100146B2 _ 90
        nop                                             ; 100146B3 _ 90
        nop                                             ; 100146B4 _ 90
        nop                                             ; 100146B5 _ 90
        nop                                             ; 100146B6 _ 90
        nop                                             ; 100146B7 _ 90
        nop                                             ; 100146B8 _ 90
        nop                                             ; 100146B9 _ 90
        nop                                             ; 100146BA _ 90
        nop                                             ; 100146BB _ 90
        nop                                             ; 100146BC _ 90
        nop                                             ; 100146BD _ 90
        nop                                             ; 100146BE _ 90
        nop                                             ; 100146BF _ 90
?_2239: push    esi                                     ; 100146C0 _ 56
        mov     esi, dword [esp+8H]                     ; 100146C1 _ 8B. 74 24, 08
        push    edi                                     ; 100146C5 _ 57
        mov     eax, dword [esi]                        ; 100146C6 _ 8B. 06
        test    ah, 60H                                 ; 100146C8 _ F6. C4, 60
        jz      ?_2240                                  ; 100146CB _ 74, 20
        push    1                                       ; 100146CD _ 6A, 01
        push    ?_5359                                  ; 100146CF _ 68, 1002D740(d)
        push    612                                     ; 100146D4 _ 68, 00000264
        push    ?_5358                                  ; 100146D9 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 100146DE _ E8, FFFEEF5D
        mov     eax, dword [esp+20H]                    ; 100146E3 _ 8B. 44 24, 20
        push    eax                                     ; 100146E7 _ 50
        mov     byte [eax], 2                           ; 100146E8 _ C6. 00, 02
        jmp     ?_2242                                  ; 100146EB _ EB, 46

?_2240: mov     edi, dword [esp+10H]                    ; 100146ED _ 8B. 7C 24, 10
        mov     ecx, dword [esi+4H]                     ; 100146F1 _ 8B. 4E, 04
        cmp     ecx, dword [edi+14H]                    ; 100146F4 _ 3B. 4F, 14
        jz      ?_2241                                  ; 100146F7 _ 74, 18
        push    edi                                     ; 100146F9 _ 57
        push    esi                                     ; 100146FA _ 56
        mov     byte [edi], 2                           ; 100146FB _ C6. 07, 02
        call    ?_1110                                  ; 100146FE _ E8, FFFF629D
        add     esp, 8                                  ; 10014703 _ 83. C4, 08
        inc     eax                                     ; 10014706 _ 40
        neg     eax                                     ; 10014707 _ F7. D8
        sbb     eax, eax                                ; 10014709 _ 1B. C0
        pop     edi                                     ; 1001470B _ 5F
        neg     eax                                     ; 1001470C _ F7. D8
        dec     eax                                     ; 1001470E _ 48
        pop     esi                                     ; 1001470F _ 5E
        ret                                             ; 10014710 _ C3

?_2241: mov     ecx, dword [edi+18H]                    ; 10014711 _ 8B. 4F, 18
        cmp     ecx, 1                                  ; 10014714 _ 83. F9, 01
        jbe     ?_2243                                  ; 10014717 _ 76, 2E
        push    1                                       ; 10014719 _ 6A, 01
        push    ?_5361                                  ; 1001471B _ 68, 1002D774(d)
        push    633                                     ; 10014720 _ 68, 00000279
        push    ?_5358                                  ; 10014725 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 1001472A _ E8, FFFEEF11
        mov     byte [edi], 2                           ; 1001472F _ C6. 07, 02
        push    edi                                     ; 10014732 _ 57
?_2242: push    esi                                     ; 10014733 _ 56
        call    ?_1110                                  ; 10014734 _ E8, FFFF6267
        add     esp, 24                                 ; 10014739 _ 83. C4, 18
        inc     eax                                     ; 1001473C _ 40
        neg     eax                                     ; 1001473D _ F7. D8
        sbb     eax, eax                                ; 1001473F _ 1B. C0
        pop     edi                                     ; 10014741 _ 5F
        neg     eax                                     ; 10014742 _ F7. D8
        dec     eax                                     ; 10014744 _ 48
        pop     esi                                     ; 10014745 _ 5E
        ret                                             ; 10014746 _ C3

