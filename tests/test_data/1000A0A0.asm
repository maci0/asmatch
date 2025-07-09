; ---- 1000A0A0 ----
?_1051: ; Local function
        xor     ebp, ebp                                ; 1000A0A0 _ 33. ED
        mov     eax, ?_5761                             ; 1000A0A2 _ B8, 101DEB00(d)
?_1052: cmp     dword [eax], 0                          ; 1000A0A7 _ 83. 38, 00
        jz      ?_1053                                  ; 1000A0AA _ 74, 0F
        add     eax, 2507364                            ; 1000A0AC _ 05, 00264264
        inc     ebp                                     ; 1000A0B1 _ 45
        cmp     eax, ?_5770                             ; 1000A0B2 _ 3D, 114FFE20(d)
        jge     ?_1054                                  ; 1000A0B7 _ 7D, 21
        jmp     ?_1052                                  ; 1000A0B9 _ EB, EC

?_1053: mov     eax, ebp                                ; 1000A0BB _ 8B. C5
        shl     eax, 4                                  ; 1000A0BD _ C1. E0, 04
        add     eax, ebp                                ; 1000A0C0 _ 03. C5
        shl     eax, 8                                  ; 1000A0C2 _ C1. E0, 08
        add     eax, ebp                                ; 1000A0C5 _ 03. C5
        shl     eax, 4                                  ; 1000A0C7 _ C1. E0, 04
        add     eax, ebp                                ; 1000A0CA _ 03. C5
        lea     eax, [eax+eax*8]                        ; 1000A0CC _ 8D. 04 C0
        lea     esi, [?_5761+eax*4]                     ; 1000A0CF _ 8D. 34 85, 101DEB00(d)
        test    esi, esi                                ; 1000A0D6 _ 85. F6
        jnz     ?_1055                                  ; 1000A0D8 _ 75, 27
?_1054: push    1                                       ; 1000A0DA _ 6A, 01
        push    ?_5223                                  ; 1000A0DC _ 68, 100299C8(d)
        push    1173                                    ; 1000A0E1 _ 68, 00000495
        push    ?_5209                                  ; 1000A0E6 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A0EB _ E8, FFFF9550
        mov     eax, dword [?_5770]                     ; 1000A0F0 _ A1, 114FFE20(d)
        add     esp, 16                                 ; 1000A0F5 _ 83. C4, 10
        test    eax, eax                                ; 1000A0F8 _ 85. C0
        jnz     ?_1056                                  ; 1000A0FA _ 75, 2A
        mov     esi, ?_5770                             ; 1000A0FC _ BE, 114FFE20(d)
?_1055: mov     eax, dword [?_5759]                     ; 1000A101 _ A1, 101DEAEC(d)
        lea     ecx, [esp+10H]                          ; 1000A106 _ 8D. 4C 24, 10
        lea     edx, [esp+14H]                          ; 1000A10A _ 8D. 54 24, 14
        push    ecx                                     ; 1000A10E _ 51
        push    edx                                     ; 1000A10F _ 52
        push    eax                                     ; 1000A110 _ 50
        mov     dword [esp+1CH], 16                     ; 1000A111 _ C7. 44 24, 1C, 00000010
        call    near [imp_WS2_32_Ordinal_1]             ; 1000A119 _ FF. 15, 1002415C(d)
        mov     ebx, eax                                ; 1000A11F _ 8B. D8
        cmp     ebx, -1                                 ; 1000A121 _ 83. FB, FF
        jnz     ?_1057                                  ; 1000A124 _ 75, 0D
?_1056: pop     esi                                     ; 1000A126 _ 5E
        pop     ebp                                     ; 1000A127 _ 5D
        or      eax, 0FFFFFFFFH                         ; 1000A128 _ 83. C8, FF
        pop     ebx                                     ; 1000A12B _ 5B
        add     esp, 280                                ; 1000A12C _ 81. C4, 00000118
        ret                                             ; 1000A132 _ C3
