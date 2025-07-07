; ---- 10016EE6 ----
?_2581: ; Local function
        mov     eax, dword [esp+8H]                     ; 10016EE6 _ 8B. 44 24, 08
        test    eax, eax                                ; 10016EEA _ 85. C0
        jz      ?_2582                                  ; 10016EEC _ 74, 05
        lea     edi, [eax+5DH]                          ; 10016EEE _ 8D. 78, 5D
        jmp     ?_2584                                  ; 10016EF1 _ EB, 1B

?_2582: mov     eax, dword [esp+14H]                    ; 10016EF3 _ 8B. 44 24, 14
        test    eax, eax                                ; 10016EF7 _ 85. C0
        jz      ?_2583                                  ; 10016EF9 _ 74, 05
        lea     edi, [eax+14H]                          ; 10016EFB _ 8D. 78, 14
        jmp     ?_2584                                  ; 10016EFE _ EB, 0E

?_2583: mov     eax, dword [esp+0CH]                    ; 10016F00 _ 8B. 44 24, 0C
        test    eax, eax                                ; 10016F04 _ 85. C0
        jz      ?_2580                                  ; 10016F06 _ 74, D6
        lea     edi, [eax+178H]                         ; 10016F08 _ 8D. B8, 00000178
?_2584: mov     eax, dword [edi]                        ; 10016F0E _ 8B. 07
        push    esi                                     ; 10016F10 _ 56
        mov     esi, dword [esp+1CH]                    ; 10016F11 _ 8B. 74 24, 1C
        push    esi                                     ; 10016F15 _ 56
        push    0                                       ; 10016F16 _ 6A, 00
        push    1                                       ; 10016F18 _ 6A, 01
        push    eax                                     ; 10016F1A _ 50
        call    ?_2482                                  ; 10016F1B _ E8, FFFFF540
        add     esp, 16                                 ; 10016F20 _ 83. C4, 10
        mov     dword [esp+18H], eax                    ; 10016F23 _ 89. 44 24, 18
        test    eax, eax                                ; 10016F27 _ 85. C0
        jnz     ?_2585                                  ; 10016F29 _ 75, 1B
        push    1                                       ; 10016F2B _ 6A, 01
        push    esi                                     ; 10016F2D _ 56
        push    ebx                                     ; 10016F2E _ 53
        call    ?_2524                                  ; 10016F2F _ E8, FFFFF82C
        mov     dword [esp+24H], eax                    ; 10016F34 _ 89. 44 24, 24
        mov     dword [eax+0EH], 0                      ; 10016F38 _ C7. 40, 0E, 00000000
        mov     eax, dword [esp+24H]                    ; 10016F3F _ 8B. 44 24, 24
        add     esp, 12                                 ; 10016F43 _ 83. C4, 0C
?_2585: mov     ecx, dword [esp+20H]                    ; 10016F46 _ 8B. 4C 24, 20
        mov     edx, dword [eax+0EH]                    ; 10016F4A _ 8B. 50, 0E
        sub     edx, ecx                                ; 10016F4D _ 2B. D1
        mov     dword [eax+0EH], edx                    ; 10016F4F _ 89. 50, 0E
        mov     edx, dword [esp+18H]                    ; 10016F52 _ 8B. 54 24, 18
        mov     eax, dword [edx+0EH]                    ; 10016F56 _ 8B. 42, 0E
        test    eax, eax                                ; 10016F59 _ 85. C0
        jnz     ?_2586                                  ; 10016F5B _ 75, 0A
        push    esi                                     ; 10016F5D _ 56
        push    edi                                     ; 10016F5E _ 57
        call    ?_2502                                  ; 10016F5F _ E8, FFFFF66C
        add     esp, 8                                  ; 10016F64 _ 83. C4, 08
?_2586: pop     esi                                     ; 10016F67 _ 5E
        pop     edi                                     ; 10016F68 _ 5F
        mov     eax, 1                                  ; 10016F69 _ B8, 00000001
        pop     ebx                                     ; 10016F6E _ 5B
        add     esp, 8                                  ; 10016F6F _ 83. C4, 08
        ret                                             ; 10016F72 _ C3

        nop                                             ; 10016F73 _ 90
        nop                                             ; 10016F74 _ 90
        nop                                             ; 10016F75 _ 90
        nop                                             ; 10016F76 _ 90
        nop                                             ; 10016F77 _ 90
        nop                                             ; 10016F78 _ 90
        nop                                             ; 10016F79 _ 90
        nop                                             ; 10016F7A _ 90
        nop                                             ; 10016F7B _ 90
        nop                                             ; 10016F7C _ 90
        nop                                             ; 10016F7D _ 90
        nop                                             ; 10016F7E _ 90
        nop                                             ; 10016F7F _ 90

