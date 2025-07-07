; ---- 1000F480 ----
?_1737: ; Local function
        sub     esp, 8                                  ; 1000F480 _ 83. EC, 08
        push    ebp                                     ; 1000F483 _ 55
        push    esi                                     ; 1000F484 _ 56
        push    edi                                     ; 1000F485 _ 57
        mov     edi, dword [esp+18H]                    ; 1000F486 _ 8B. 7C 24, 18
        mov     eax, dword [edi+10H]                    ; 1000F48A _ 8B. 47, 10
        push    eax                                     ; 1000F48D _ 50
        push    1                                       ; 1000F48E _ 6A, 01
        push    1                                       ; 1000F490 _ 6A, 01
        call    ?_2609                                  ; 1000F492 _ E8, 00007C49
        mov     esi, eax                                ; 1000F497 _ 8B. F0
        add     esp, 12                                 ; 1000F499 _ 83. C4, 0C
        test    esi, esi                                ; 1000F49C _ 85. F6
        jnz     ?_1738                                  ; 1000F49E _ 75, 0E
        push    1                                       ; 1000F4A0 _ 6A, 01
        push    ?_5323                                  ; 1000F4A2 _ 68, 1002D298(d)
        push    18910                                   ; 1000F4A7 _ 68, 000049DE
        jmp     ?_1740                                  ; 1000F4AC _ EB, 6B

?_1738: mov     ecx, dword [edi+14H]                    ; 1000F4AE _ 8B. 4F, 14
        push    ecx                                     ; 1000F4B1 _ 51
        call    ?_2817                                  ; 1000F4B2 _ E8, 00008FE9
        mov     ebp, eax                                ; 1000F4B7 _ 8B. E8
        add     esp, 4                                  ; 1000F4B9 _ 83. C4, 04
        test    ebp, ebp                                ; 1000F4BC _ 85. ED
        jnz     ?_1739                                  ; 1000F4BE _ 75, 14
        cmp     dword [edi+14H], -1                     ; 1000F4C0 _ 83. 7F, 14, FF
        jz      ?_1739                                  ; 1000F4C4 _ 74, 0E
        push    1                                       ; 1000F4C6 _ 6A, 01
        push    ?_5322                                  ; 1000F4C8 _ 68, 1002D268(d)
        push    18924                                   ; 1000F4CD _ 68, 000049EC
        jmp     ?_1740                                  ; 1000F4D2 _ EB, 45

?_1739: xor     ecx, ecx                                ; 1000F4D4 _ 33. C9
        mov     cl, byte [esi]                          ; 1000F4D6 _ 8A. 0E
        lea     eax, [ecx+ecx*2]                        ; 1000F4D8 _ 8D. 04 49
        shl     eax, 4                                  ; 1000F4DB _ C1. E0, 04
        add     eax, ecx                                ; 1000F4DE _ 03. C1
        lea     edx, [eax+eax*2]                        ; 1000F4E0 _ 8D. 14 40
        mov     eax, dword [?_5668]                     ; 1000F4E3 _ A1, 100A8C30(d)
        add     eax, ecx                                ; 1000F4E8 _ 03. C1
        cmp     byte [eax+edx*4], 1                     ; 1000F4EA _ 80. 3C 90, 01
        jnz     ?_1742                                  ; 1000F4EE _ 75, 47
        lea     edx, [esp+0CH]                          ; 1000F4F0 _ 8D. 54 24, 0C
        push    edx                                     ; 1000F4F4 _ 52
        push    ecx                                     ; 1000F4F5 _ 51
        call    ?_2341                                  ; 1000F4F6 _ E8, 00005CB5
        mov     al, byte [esi+65H]                      ; 1000F4FB _ 8A. 46, 65
        xor     cx, cx                                  ; 1000F4FE _ 66: 33. C9
        mov     cl, al                                  ; 1000F501 _ 8A. C8
        add     esp, 8                                  ; 1000F503 _ 83. C4, 08
        cmp     cx, word [esp+0CH]                      ; 1000F506 _ 66: 3B. 4C 24, 0C
        jc      ?_1741                                  ; 1000F50B _ 72, 25
        push    1                                       ; 1000F50D _ 6A, 01
        push    ?_5321                                  ; 1000F50F _ 68, 1002D240(d)
        push    18952                                   ; 1000F514 _ 68, 00004A08
?_1740: push    ?_5260                                  ; 1000F519 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F51E _ E8, FFFF411D
        add     esp, 16                                 ; 1000F523 _ 83. C4, 10
        mov     eax, 1                                  ; 1000F526 _ B8, 00000001
        pop     edi                                     ; 1000F52B _ 5F
        pop     esi                                     ; 1000F52C _ 5E
        pop     ebp                                     ; 1000F52D _ 5D
        add     esp, 8                                  ; 1000F52E _ 83. C4, 08
        ret                                             ; 1000F531 _ C3

?_1741: inc     al                                      ; 1000F532 _ FE. C0
        mov     byte [esi+65H], al                      ; 1000F534 _ 88. 46, 65
?_1742: mov     edx, dword [ebp+170H]                   ; 1000F537 _ 8B. 95, 00000170
        test    edx, edx                                ; 1000F53D _ 85. D2
        jz      ?_1743                                  ; 1000F53F _ 74, 29
        xor     ecx, ecx                                ; 1000F541 _ 33. C9
        mov     edi, dword [?_5668]                     ; 1000F543 _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 1000F549 _ 8A. 0A
        add     edi, ecx                                ; 1000F54B _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 1000F54D _ 8D. 04 49
        shl     eax, 4                                  ; 1000F550 _ C1. E0, 04
        add     eax, ecx                                ; 1000F553 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1000F555 _ 8D. 04 40
        cmp     byte [edi+eax*4], 1                     ; 1000F558 _ 80. 3C 87, 01
        jnz     ?_1743                                  ; 1000F55C _ 75, 0C
        mov     al, byte [edx+65H]                      ; 1000F55E _ 8A. 42, 65
        test    al, al                                  ; 1000F561 _ 84. C0
        jbe     ?_1743                                  ; 1000F563 _ 76, 05
        dec     al                                      ; 1000F565 _ FE. C8
        mov     byte [edx+65H], al                      ; 1000F567 _ 88. 42, 65
?_1743: mov     eax, dword [esp+1CH]                    ; 1000F56A _ 8B. 44 24, 1C
        mov     dword [ebp+170H], esi                   ; 1000F56E _ 89. B5, 00000170
        test    eax, eax                                ; 1000F574 _ 85. C0
        jz      ?_1744                                  ; 1000F576 _ 74, 0E
        mov     byte [eax], 1                           ; 1000F578 _ C6. 00, 01
        mov     byte [eax+1H], 0                        ; 1000F57B _ C6. 40, 01, 00
        mov     dword [eax+6H], 0                       ; 1000F57F _ C7. 40, 06, 00000000
?_1744: pop     edi                                     ; 1000F586 _ 5F
        pop     esi                                     ; 1000F587 _ 5E
        xor     eax, eax                                ; 1000F588 _ 33. C0
        pop     ebp                                     ; 1000F58A _ 5D
        add     esp, 8                                  ; 1000F58B _ 83. C4, 08
        ret                                             ; 1000F58E _ C3

        nop                                             ; 1000F58F _ 90

