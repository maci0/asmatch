; ---- 100203A2 ----
?_4220: ; Local function
        mov     eax, dword [esp+4H]                     ; 100203A2 _ 8B. 44 24, 04
        push    ebx                                     ; 100203A6 _ 53
        mov     ecx, eax                                ; 100203A7 _ 8B. C8
        and     eax, 1FH                                ; 100203A9 _ 83. E0, 1F
        sar     ecx, 5                                  ; 100203AC _ C1. F9, 05
        push    esi                                     ; 100203AF _ 56
        push    edi                                     ; 100203B0 _ 57
        mov     esi, dword [?_5809+ecx*4]               ; 100203B1 _ 8B. 34 8D, 11766460(d)
        lea     ebx, [?_5809+ecx*4]                     ; 100203B8 _ 8D. 1C 8D, 11766460(d)
        lea     edi, [eax+eax*8]                        ; 100203BF _ 8D. 3C C0
        shl     edi, 2                                  ; 100203C2 _ C1. E7, 02
        add     esi, edi                                ; 100203C5 _ 03. F7
        cmp     dword [esi+8H], 0                       ; 100203C7 _ 83. 7E, 08, 00
        jnz     ?_4222                                  ; 100203CB _ 75, 23
        push    17                                      ; 100203CD _ 6A, 11
        call    ?_3610                                  ; 100203CF _ E8, FFFFCC62
        cmp     dword [esi+8H], 0                       ; 100203D4 _ 83. 7E, 08, 00
        pop     ecx                                     ; 100203D8 _ 59
        jnz     ?_4221                                  ; 100203D9 _ 75, 0D
        lea     eax, [esi+0CH]                          ; 100203DB _ 8D. 46, 0C
        push    eax                                     ; 100203DE _ 50
        call    near [imp_InitializeCriticalSection]    ; 100203DF _ FF. 15, 100240F4(d)
        inc     dword [esi+8H]                          ; 100203E5 _ FF. 46, 08
?_4221: push    17                                      ; 100203E8 _ 6A, 11
        call    ?_3615                                  ; 100203EA _ E8, FFFFCCA8
        pop     ecx                                     ; 100203EF _ 59
?_4222: mov     eax, dword [ebx]                        ; 100203F0 _ 8B. 03
        lea     eax, [eax+edi+0CH]                      ; 100203F2 _ 8D. 44 38, 0C
        push    eax                                     ; 100203F6 _ 50
        call    near [imp_EnterCriticalSection]         ; 100203F7 _ FF. 15, 100240EC(d)
        pop     edi                                     ; 100203FD _ 5F
        pop     esi                                     ; 100203FE _ 5E
        pop     ebx                                     ; 100203FF _ 5B
        ret                                             ; 10020400 _ C3
