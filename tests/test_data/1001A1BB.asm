; ---- 1001A1BB ----
?_3032: ; Local function
        push    esi                                     ; 1001A1BB _ 56
        mov     esi, dword [esp+8H]                     ; 1001A1BC _ 8B. 74 24, 08
        push    edi                                     ; 1001A1C0 _ 57
        or      edi, 0FFFFFFFFH                         ; 1001A1C1 _ 83. CF, FF
        test    byte [esi+0CH], 0FFFFFF83H              ; 1001A1C4 _ F6. 46, 0C, 83
        jz      ?_3034                                  ; 1001A1C8 _ 74, 34
        push    esi                                     ; 1001A1CA _ 56
        call    ?_3174                                  ; 1001A1CB _ E8, 00000AFD
        push    esi                                     ; 1001A1D0 _ 56
        mov     edi, eax                                ; 1001A1D1 _ 8B. F8
        call    ?_3383                                  ; 1001A1D3 _ E8, 00001B0C
        push    dword [esi+10H]                         ; 1001A1D8 _ FF. 76, 10
        call    ?_3374                                  ; 1001A1DB _ E8, 00001A24
        add     esp, 12                                 ; 1001A1E0 _ 83. C4, 0C
        test    eax, eax                                ; 1001A1E3 _ 85. C0
        jge     ?_3033                                  ; 1001A1E5 _ 7D, 05
        or      edi, 0FFFFFFFFH                         ; 1001A1E7 _ 83. CF, FF
        jmp     ?_3034                                  ; 1001A1EA _ EB, 12

?_3033: mov     eax, dword [esi+1CH]                    ; 1001A1EC _ 8B. 46, 1C
        test    eax, eax                                ; 1001A1EF _ 85. C0
        jz      ?_3034                                  ; 1001A1F1 _ 74, 0B
        push    eax                                     ; 1001A1F3 _ 50
        call    ?_3158                                  ; 1001A1F4 _ E8, 00000988
        and     dword [esi+1CH], 00H                    ; 1001A1F9 _ 83. 66, 1C, 00
        pop     ecx                                     ; 1001A1FD _ 59
?_3034: and     dword [esi+0CH], 00H                    ; 1001A1FE _ 83. 66, 0C, 00
        mov     eax, edi                                ; 1001A202 _ 8B. C7
        pop     edi                                     ; 1001A204 _ 5F
        pop     esi                                     ; 1001A205 _ 5E
        ret                                             ; 1001A206 _ C3
