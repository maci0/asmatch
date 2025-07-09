; ---- 1000C58A ----
?_1319: ; Local function
        xor     ebx, ebx                                ; 1000C58A _ 33. DB
        lea     esi, [esp+1CH]                          ; 1000C58C _ 8D. 74 24, 1C
?_1320: push    edi                                     ; 1000C590 _ 57
        push    1                                       ; 1000C591 _ 6A, 01
        lea     eax, [esi-4H]                           ; 1000C593 _ 8D. 46, FC
        push    4                                       ; 1000C596 _ 6A, 04
        push    eax                                     ; 1000C598 _ 50
        call    ?_2085                                  ; 1000C599 _ E8, 00005EA2
        add     esp, 16                                 ; 1000C59E _ 83. C4, 10
        test    eax, eax                                ; 1000C5A1 _ 85. C0
        jz      ?_1318                                  ; 1000C5A3 _ 74, DC
        push    edi                                     ; 1000C5A5 _ 57
        push    1                                       ; 1000C5A6 _ 6A, 01
        push    4                                       ; 1000C5A8 _ 6A, 04
        push    esi                                     ; 1000C5AA _ 56
        call    ?_2085                                  ; 1000C5AB _ E8, 00005E90
        add     esp, 16                                 ; 1000C5B0 _ 83. C4, 10
        test    eax, eax                                ; 1000C5B3 _ 85. C0
        jz      ?_1318                                  ; 1000C5B5 _ 74, CA
        inc     ebx                                     ; 1000C5B7 _ 43
        add     esi, 8                                  ; 1000C5B8 _ 83. C6, 08
        cmp     ebx, 6                                  ; 1000C5BB _ 83. FB, 06
        jl      ?_1320                                  ; 1000C5BE _ 7C, D0
        mov     edi, dword [esp+50H]                    ; 1000C5C0 _ 8B. 7C 24, 50
        mov     eax, dword [edi+65H]                    ; 1000C5C4 _ 8B. 47, 65
        test    eax, eax                                ; 1000C5C7 _ 85. C0
        jnz     ?_1321                                  ; 1000C5C9 _ 75, 12
        push    ?_5246                                  ; 1000C5CB _ 68, 1002A0F8(d)
        push    60                                      ; 1000C5D0 _ 6A, 3C
        call    ?_0640                                  ; 1000C5D2 _ E8, FFFF9FA9
        add     esp, 8                                  ; 1000C5D7 _ 83. C4, 08
        mov     dword [edi+65H], eax                    ; 1000C5DA _ 89. 47, 65
?_1321: mov     edi, dword [edi+65H]                    ; 1000C5DD _ 8B. 7F, 65
        mov     ecx, 15                                 ; 1000C5E0 _ B9, 0000000F
        lea     esi, [esp+0CH]                          ; 1000C5E5 _ 8D. 74 24, 0C
        mov     eax, 1                                  ; 1000C5E9 _ B8, 00000001
        rep movsd                                       ; 1000C5EE _ F3: A5
        pop     edi                                     ; 1000C5F0 _ 5F
        pop     esi                                     ; 1000C5F1 _ 5E
        pop     ebx                                     ; 1000C5F2 _ 5B
        add     esp, 60                                 ; 1000C5F3 _ 83. C4, 3C
        ret                                             ; 1000C5F6 _ C3

        nop                                             ; 1000C5F7 _ 90
        nop                                             ; 1000C5F8 _ 90
        nop                                             ; 1000C5F9 _ 90
        nop                                             ; 1000C5FA _ 90
        nop                                             ; 1000C5FB _ 90
        nop                                             ; 1000C5FC _ 90
        nop                                             ; 1000C5FD _ 90
        nop                                             ; 1000C5FE _ 90
        nop                                             ; 1000C5FF _ 90
?_1322: push    ebx                                     ; 1000C600 _ 53
        push    32                                      ; 1000C601 _ 6A, 20
        call    ?_3022                                  ; 1000C603 _ E8, 0000DAC8
        add     esp, 4                                  ; 1000C608 _ 83. C4, 04
        and     eax, 0FFFFH                             ; 1000C60B _ 25, 0000FFFF
        mov     edx, 32                                 ; 1000C610 _ BA, 00000020
?_1323: lea     ecx, [eax+eax*2]                        ; 1000C615 _ 8D. 0C 40
        lea     ecx, [ecx+ecx*4]                        ; 1000C618 _ 8D. 0C 89
        lea     ecx, [eax+ecx*4]                        ; 1000C61B _ 8D. 0C 88
        mov     bl, byte [?_5253+ecx*4]                 ; 1000C61E _ 8A. 1C 8D, 1002A2C2(d)
        test    bl, bl                                  ; 1000C625 _ 84. DB
        jz      ?_1324                                  ; 1000C627 _ 74, 0D
        dec     edx                                     ; 1000C629 _ 4A
        inc     eax                                     ; 1000C62A _ 40
        and     eax, 1FH                                ; 1000C62B _ 83. E0, 1F
        test    edx, edx                                ; 1000C62E _ 85. D2
        jnz     ?_1323                                  ; 1000C630 _ 75, E3
        xor     eax, eax                                ; 1000C632 _ 33. C0
        pop     ebx                                     ; 1000C634 _ 5B
        ret                                             ; 1000C635 _ C3
