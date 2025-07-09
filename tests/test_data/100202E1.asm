; ---- 100202E1 ----
?_4211: ; Local function
        mov     ecx, dword [esp+4H]                     ; 100202E1 _ 8B. 4C 24, 04
        push    esi                                     ; 100202E5 _ 56
        cmp     ecx, dword [?_5811]                     ; 100202E6 _ 3B. 0D, 11766560(d)
        push    edi                                     ; 100202EC _ 57
        jnc     ?_4216                                  ; 100202ED _ 73, 58
        mov     eax, ecx                                ; 100202EF _ 8B. C1
        sar     eax, 5                                  ; 100202F1 _ C1. F8, 05
        lea     edi, [?_5809+eax*4]                     ; 100202F4 _ 8D. 3C 85, 11766460(d)
        mov     eax, ecx                                ; 100202FB _ 8B. C1
        and     eax, 1FH                                ; 100202FD _ 83. E0, 1F
        lea     esi, [eax+eax*8]                        ; 10020300 _ 8D. 34 C0
        mov     eax, dword [edi]                        ; 10020303 _ 8B. 07
        shl     esi, 2                                  ; 10020305 _ C1. E6, 02
        add     eax, esi                                ; 10020308 _ 03. C6
        test    byte [eax+4H], 01H                      ; 1002030A _ F6. 40, 04, 01
        jz      ?_4216                                  ; 1002030E _ 74, 37
        cmp     dword [eax], -1                         ; 10020310 _ 83. 38, FF
        jz      ?_4216                                  ; 10020313 _ 74, 32
        cmp     dword [?_5576], 1                       ; 10020315 _ 83. 3D, 1003550C(d), 01
        jnz     ?_4215                                  ; 1002031C _ 75, 1F
        xor     eax, eax                                ; 1002031E _ 33. C0
        sub     ecx, eax                                ; 10020320 _ 2B. C8
        jz      ?_4213                                  ; 10020322 _ 74, 10
        dec     ecx                                     ; 10020324 _ 49
        jz      ?_4212                                  ; 10020325 _ 74, 08
        dec     ecx                                     ; 10020327 _ 49
        jnz     ?_4215                                  ; 10020328 _ 75, 13
        push    eax                                     ; 1002032A _ 50
        push    -12                                     ; 1002032B _ 6A, F4
        jmp     ?_4214                                  ; 1002032D _ EB, 08

?_4212: push    eax                                     ; 1002032F _ 50
        push    -11                                     ; 10020330 _ 6A, F5
        jmp     ?_4214                                  ; 10020332 _ EB, 03

?_4213: push    eax                                     ; 10020334 _ 50
        push    -10                                     ; 10020335 _ 6A, F6
?_4214: call    near [imp_SetStdHandle]                 ; 10020337 _ FF. 15, 100240A4(d)
?_4215: mov     eax, dword [edi]                        ; 1002033D _ 8B. 07
        or      dword [eax+esi], 0FFFFFFFFH             ; 1002033F _ 83. 0C 30, FF
        xor     eax, eax                                ; 10020343 _ 33. C0
        jmp     ?_4217                                  ; 10020345 _ EB, 16

?_4216: call    ?_3107                                  ; 10020347 _ E8, FFFFA499
        mov     dword [eax], 9                          ; 1002034C _ C7. 00, 00000009
        call    ?_3108                                  ; 10020352 _ E8, FFFFA497
        and     dword [eax], 00H                        ; 10020357 _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1002035A _ 83. C8, FF
?_4217: pop     edi                                     ; 1002035D _ 5F
        pop     esi                                     ; 1002035E _ 5E
        ret                                             ; 1002035F _ C3
