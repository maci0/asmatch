; ---- 1000C68D ----
?_1328: ; Local function
        lea     eax, [ecx+ecx*2]                        ; 1000C68D _ 8D. 04 49
        shl     eax, 3                                  ; 1000C690 _ C1. E0, 03
        sub     eax, ecx                                ; 1000C693 _ 2B. C1
        lea     eax, [?_5254+eax*4]                     ; 1000C695 _ 8D. 04 85, 1002C050(d)
        ret                                             ; 1000C69C _ C3

        nop                                             ; 1000C69D _ 90
        nop                                             ; 1000C69E _ 90
        nop                                             ; 1000C69F _ 90
?_1329: mov     eax, dword [esp+4H]                     ; 1000C6A0 _ 8B. 44 24, 04
        push    esi                                     ; 1000C6A4 _ 56
        push    5                                       ; 1000C6A5 _ 6A, 05
        push    1                                       ; 1000C6A7 _ 6A, 01
        mov     ecx, dword [eax+178H]                   ; 1000C6A9 _ 8B. 88, 00000178
        push    ecx                                     ; 1000C6AF _ 51
        call    ?_2482                                  ; 1000C6B0 _ E8, 00009DAB
        mov     esi, eax                                ; 1000C6B5 _ 8B. F0
        add     esp, 12                                 ; 1000C6B7 _ 83. C4, 0C
        test    esi, esi                                ; 1000C6BA _ 85. F6
        jz      ?_1333                                  ; 1000C6BC _ 74, 3C
?_1330: xor     edx, edx                                ; 1000C6BE _ 33. D2
        mov     dx, word [esi]                          ; 1000C6C0 _ 66: 8B. 16
        push    edx                                     ; 1000C6C3 _ 52
        call    ?_1326                                  ; 1000C6C4 _ E8, FFFFFFA7
        add     esp, 4                                  ; 1000C6C9 _ 83. C4, 04
        test    eax, eax                                ; 1000C6CC _ 85. C0
        jnz     ?_1331                                  ; 1000C6CE _ 75, 16
        call    ?_2461                                  ; 1000C6D0 _ E8, 00009BBB
        mov     esi, eax                                ; 1000C6D5 _ 8B. F0
        test    esi, esi                                ; 1000C6D7 _ 85. F6
        jnz     ?_1330                                  ; 1000C6D9 _ 75, E3
        push    eax                                     ; 1000C6DB _ 50
        call    ?_1326                                  ; 1000C6DC _ E8, FFFFFF8F
        add     esp, 4                                  ; 1000C6E1 _ 83. C4, 04
        pop     esi                                     ; 1000C6E4 _ 5E
        ret                                             ; 1000C6E5 _ C3

?_1331: mov     ecx, dword [eax+58H]                    ; 1000C6E6 _ 8B. 48, 58
        cmp     ecx, 1                                  ; 1000C6E9 _ 83. F9, 01
        jz      ?_1332                                  ; 1000C6EC _ 74, 05
        cmp     ecx, 2                                  ; 1000C6EE _ 83. F9, 02
        jnz     ?_1334                                  ; 1000C6F1 _ 75, 11
?_1332: mov     ecx, dword [esi+20H]                    ; 1000C6F3 _ 8B. 4E, 20
        test    ecx, ecx                                ; 1000C6F6 _ 85. C9
        jg      ?_1334                                  ; 1000C6F8 _ 7F, 0A
?_1333: push    0                                       ; 1000C6FA _ 6A, 00
        call    ?_1326                                  ; 1000C6FC _ E8, FFFFFF6F
        add     esp, 4                                  ; 1000C701 _ 83. C4, 04
?_1334: pop     esi                                     ; 1000C704 _ 5E
        ret                                             ; 1000C705 _ C3

        nop                                             ; 1000C706 _ 90
        nop                                             ; 1000C707 _ 90
        nop                                             ; 1000C708 _ 90
        nop                                             ; 1000C709 _ 90
        nop                                             ; 1000C70A _ 90
        nop                                             ; 1000C70B _ 90
        nop                                             ; 1000C70C _ 90
        nop                                             ; 1000C70D _ 90
        nop                                             ; 1000C70E _ 90
        nop                                             ; 1000C70F _ 90
