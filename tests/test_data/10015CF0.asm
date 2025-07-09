; ---- 10015CF0 ----
?_2407: ; Local function
        sub     esp, 12                                 ; 10015CF0 _ 83. EC, 0C
        push    esi                                     ; 10015CF3 _ 56
        push    edi                                     ; 10015CF4 _ 57
        xor     esi, esi                                ; 10015CF5 _ 33. F6
?_2408: mov     eax, dword [?_5669]                     ; 10015CF7 _ A1, 100A8C34(d)
        cmp     word [esi+eax], 0                       ; 10015CFC _ 66: 83. 3C 06, 00
        je      ?_2413                                  ; 10015D01 _ 0F 84, 00000087
        mov     eax, dword [esi+eax+6H]                 ; 10015D07 _ 8B. 44 06, 06
        lea     ecx, [esp+10H]                          ; 10015D0B _ 8D. 4C 24, 10
        push    eax                                     ; 10015D0F _ 50
        lea     edx, [esp+10H]                          ; 10015D10 _ 8D. 54 24, 10
        push    ecx                                     ; 10015D14 _ 51
        lea     eax, [esp+10H]                          ; 10015D15 _ 8D. 44 24, 10
        push    edx                                     ; 10015D19 _ 52
        push    eax                                     ; 10015D1A _ 50
        call    ?_2425                                  ; 10015D1B _ E8, 00000170
        mov     eax, dword [esp+18H]                    ; 10015D20 _ 8B. 44 24, 18
        add     esp, 16                                 ; 10015D24 _ 83. C4, 10
        test    eax, eax                                ; 10015D27 _ 85. C0
        jz      ?_2409                                  ; 10015D29 _ 74, 05
        add     eax, 93                                 ; 10015D2B _ 83. C0, 5D
        jmp     ?_2411                                  ; 10015D2E _ EB, 1A

?_2409: mov     eax, dword [esp+0CH]                    ; 10015D30 _ 8B. 44 24, 0C
        test    eax, eax                                ; 10015D34 _ 85. C0
        jz      ?_2410                                  ; 10015D36 _ 74, 05
        add     eax, 20                                 ; 10015D38 _ 83. C0, 14
        jmp     ?_2411                                  ; 10015D3B _ EB, 0D

?_2410: mov     eax, dword [esp+10H]                    ; 10015D3D _ 8B. 44 24, 10
        test    eax, eax                                ; 10015D41 _ 85. C0
        jz      ?_2412                                  ; 10015D43 _ 74, 21
        add     eax, 376                                ; 10015D45 _ 05, 00000178
?_2411: test    eax, eax                                ; 10015D4A _ 85. C0
        jz      ?_2412                                  ; 10015D4C _ 74, 18
        mov     edx, dword [?_5669]                     ; 10015D4E _ 8B. 15, 100A8C34(d)
        xor     ecx, ecx                                ; 10015D54 _ 33. C9
        mov     cx, word [esi+edx]                      ; 10015D56 _ 66: 8B. 0C 16
        push    ecx                                     ; 10015D5A _ 51
        push    eax                                     ; 10015D5B _ 50
        call    ?_2502                                  ; 10015D5C _ E8, 0000086F
        add     esp, 8                                  ; 10015D61 _ 83. C4, 08
        jmp     ?_2413                                  ; 10015D64 _ EB, 28

?_2412: mov     eax, dword [?_5669]                     ; 10015D66 _ A1, 100A8C34(d)
        lea     ecx, [esi+eax]                          ; 10015D6B _ 8D. 0C 06
        push    ecx                                     ; 10015D6E _ 51
        call    ?_2511                                  ; 10015D6F _ E8, 000008FC
        mov     edx, dword [?_5669]                     ; 10015D74 _ 8B. 15, 100A8C34(d)
        add     esp, 4                                  ; 10015D7A _ 83. C4, 04
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+edx], 0                       ; 10015D7D _ 66: C7. 04 16, 0000
        mov     eax, dword [?_5539]                     ; 10015D83 _ A1, 10035450(d)
        dec     eax                                     ; 10015D88 _ 48
        mov     dword [?_5539], eax                     ; 10015D89 _ A3, 10035450(d)
?_2413: add     esi, 67                                 ; 10015D8E _ 83. C6, 43
        cmp     esi, 1372696                            ; 10015D91 _ 81. FE, 0014F218
        jl      ?_2408                                  ; 10015D97 _ 0F 8C, FFFFFF5A
        mov     edi, dword [?_5669]                     ; 10015D9D _ 8B. 3D, 100A8C34(d)
        mov     ecx, 343174                             ; 10015DA3 _ B9, 00053C86
        xor     eax, eax                                ; 10015DA8 _ 33. C0
        rep stosd                                       ; 10015DAA _ F3: AB
        pop     edi                                     ; 10015DAC _ 5F
        pop     esi                                     ; 10015DAD _ 5E
        add     esp, 12                                 ; 10015DAE _ 83. C4, 0C
        ret                                             ; 10015DB1 _ C3

        nop                                             ; 10015DB2 _ 90
        nop                                             ; 10015DB3 _ 90
        nop                                             ; 10015DB4 _ 90
        nop                                             ; 10015DB5 _ 90
        nop                                             ; 10015DB6 _ 90
        nop                                             ; 10015DB7 _ 90
        nop                                             ; 10015DB8 _ 90
        nop                                             ; 10015DB9 _ 90
        nop                                             ; 10015DBA _ 90
        nop                                             ; 10015DBB _ 90
        nop                                             ; 10015DBC _ 90
        nop                                             ; 10015DBD _ 90
        nop                                             ; 10015DBE _ 90
        nop                                             ; 10015DBF _ 90
