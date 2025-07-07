; ---- 1000B1FD ----
?_1164: ; Local function
        cmp     ecx, 30                                 ; 1000B1FD _ 83. F9, 1E
        jge     ?_1163                                  ; 1000B200 _ 7D, F6
        lea     eax, [ecx+ecx*2]                        ; 1000B202 _ 8D. 04 49
        shl     eax, 3                                  ; 1000B205 _ C1. E0, 03
        cmp     dword [?_5701+eax], -1                  ; 1000B208 _ 83. B8, 101DE5A4(d), FF
        jnz     ?_1163                                  ; 1000B20F _ 75, E7
        cmp     byte [?_5704+eax], 3                    ; 1000B211 _ 80. B8, 101DE5B0(d), 03
        jnz     ?_1163                                  ; 1000B218 _ 75, DE
        cmp     dword [?_5703+eax], 4                   ; 1000B21A _ 83. B8, 101DE5AC(d), 04
        jge     ?_1163                                  ; 1000B221 _ 7D, D5
        mov     bl, byte [?_5702+eax]                   ; 1000B223 _ 8A. 98, 101DE5A8(d)
        mov     al, byte [esi+6H]                       ; 1000B229 _ 8A. 46, 06
        cmp     al, bl                                  ; 1000B22C _ 3A. C3
        jnz     ?_1163                                  ; 1000B22E _ 75, C8
        mov     dl, byte [esi+5H]                       ; 1000B230 _ 8A. 56, 05
        cmp     dl, -1                                  ; 1000B233 _ 80. FA, FF
        jz      ?_1167                                  ; 1000B236 _ 74, 4D
        xor     ecx, ecx                                ; 1000B238 _ 33. C9
        mov     eax, ?_5700                             ; 1000B23A _ B8, 101DE5A0(d)
?_1165: cmp     byte [eax], dl                          ; 1000B23F _ 38. 10
        jz      ?_1166                                  ; 1000B241 _ 74, 10
        add     eax, 24                                 ; 1000B243 _ 83. C0, 18
        inc     ecx                                     ; 1000B246 _ 41
        cmp     eax, ?_5735                             ; 1000B247 _ 3D, 101DE870(d)
        jl      ?_1165                                  ; 1000B24C _ 7C, F1
        pop     esi                                     ; 1000B24E _ 5E
        xor     eax, eax                                ; 1000B24F _ 33. C0
        pop     ebx                                     ; 1000B251 _ 5B
        ret                                             ; 1000B252 _ C3

?_1166: cmp     ecx, 30                                 ; 1000B253 _ 83. F9, 1E
        jge     ?_1163                                  ; 1000B256 _ 7D, A0
        lea     eax, [ecx+ecx*2]                        ; 1000B258 _ 8D. 04 49
        shl     eax, 3                                  ; 1000B25B _ C1. E0, 03
        cmp     bl, byte [?_5702+eax]                   ; 1000B25E _ 3A. 98, 101DE5A8(d)
        jnz     ?_1163                                  ; 1000B264 _ 75, 92
        cmp     dword [?_5701+eax], -1                  ; 1000B266 _ 83. B8, 101DE5A4(d), FF
        jnz     ?_1163                                  ; 1000B26D _ 75, 89
        cmp     byte [?_5704+eax], 3                    ; 1000B26F _ 80. B8, 101DE5B0(d), 03
        jnz     ?_1163                                  ; 1000B276 _ 75, 80
        cmp     dword [?_5703+eax], 4                   ; 1000B278 _ 83. B8, 101DE5AC(d), 04
        jge     ?_1163                                  ; 1000B27F _ 0F 8D, FFFFFF73
?_1167: pop     esi                                     ; 1000B285 _ 5E
        mov     eax, 1                                  ; 1000B286 _ B8, 00000001
        pop     ebx                                     ; 1000B28B _ 5B
        ret                                             ; 1000B28C _ C3

        nop                                             ; 1000B28D _ 90
        nop                                             ; 1000B28E _ 90
        nop                                             ; 1000B28F _ 90
?_1168: sub     esp, 24                                 ; 1000B290 _ 83. EC, 18
        push    ebx                                     ; 1000B293 _ 53
        push    ebp                                     ; 1000B294 _ 55
        push    esi                                     ; 1000B295 _ 56
        mov     esi, dword [esp+28H]                    ; 1000B296 _ 8B. 74 24, 28
        push    edi                                     ; 1000B29A _ 57
        mov     eax, dword [esi]                        ; 1000B29B _ 8B. 06
        push    eax                                     ; 1000B29D _ 50
        call    ?_2817                                  ; 1000B29E _ E8, 0000D1FD
        mov     ebp, eax                                ; 1000B2A3 _ 8B. E8
        add     esp, 4                                  ; 1000B2A5 _ 83. C4, 04
        test    ebp, ebp                                ; 1000B2A8 _ 85. ED
        jz      ?_1170                                  ; 1000B2AA _ 74, 2C
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebp], -1                          ; 1000B2AC _ 66: 81. 7D, 00, FFFF
        jz      ?_1170                                  ; 1000B2B2 _ 74, 24
        mov     al, byte [ebp+168H]                     ; 1000B2B4 _ 8A. 85, 00000168
        test    al, al                                  ; 1000B2BA _ 84. C0
        jnz     ?_1170                                  ; 1000B2BC _ 75, 1A
        mov     al, byte [esi+4H]                       ; 1000B2BE _ 8A. 46, 04
        xor     edx, edx                                ; 1000B2C1 _ 33. D2
        mov     ecx, ?_5700                             ; 1000B2C3 _ B9, 101DE5A0(d)
?_1169: cmp     byte [ecx], al                          ; 1000B2C8 _ 38. 01
        jz      ?_1171                                  ; 1000B2CA _ 74, 16
        add     ecx, 24                                 ; 1000B2CC _ 83. C1, 18
        inc     edx                                     ; 1000B2CF _ 42
        cmp     ecx, ?_5735                             ; 1000B2D0 _ 81. F9, 101DE870(d)
        jl      ?_1169                                  ; 1000B2D6 _ 7C, F0
?_1170: pop     edi                                     ; 1000B2D8 _ 5F
        pop     esi                                     ; 1000B2D9 _ 5E
        pop     ebp                                     ; 1000B2DA _ 5D
        xor     eax, eax                                ; 1000B2DB _ 33. C0
        pop     ebx                                     ; 1000B2DD _ 5B
        add     esp, 24                                 ; 1000B2DE _ 83. C4, 18
        ret                                             ; 1000B2E1 _ C3

