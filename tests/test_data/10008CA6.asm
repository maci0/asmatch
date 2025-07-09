; ---- 10008CA6 ----
?_0901: ; Local function
        mov     eax, dword [esi+5CH]                    ; 10008CA6 _ 8B. 46, 5C
        test    eax, eax                                ; 10008CA9 _ 85. C0
        jnz     ?_0902                                  ; 10008CAB _ 75, 0F
        mov     eax, dword [esi+50H]                    ; 10008CAD _ 8B. 46, 50
        mov     ecx, dword [esi+54H]                    ; 10008CB0 _ 8B. 4E, 54
        cmp     eax, ecx                                ; 10008CB3 _ 3B. C1
        jz      ?_0902                                  ; 10008CB5 _ 74, 05
        mov     ebp, 4294967191                         ; 10008CB7 _ BD, FFFFFF97
?_0902: mov     eax, dword [esi]                        ; 10008CBC _ 8B. 06
        test    eax, eax                                ; 10008CBE _ 85. C0
        jz      ?_0903                                  ; 10008CC0 _ 74, 09
        push    eax                                     ; 10008CC2 _ 50
        call    ?_3158                                  ; 10008CC3 _ E8, 00011EB9
        add     esp, 4                                  ; 10008CC8 _ 83. C4, 04
?_0903: mov     eax, dword [esi+40H]                    ; 10008CCB _ 8B. 46, 40
        mov     dword [esi], 0                          ; 10008CCE _ C7. 06, 00000000
        test    eax, eax                                ; 10008CD4 _ 85. C0
        jz      ?_0904                                  ; 10008CD6 _ 74, 0C
        lea     ecx, [esi+4H]                           ; 10008CD8 _ 8D. 4E, 04
        push    ecx                                     ; 10008CDB _ 51
        call    ?_0527                                  ; 10008CDC _ E8, FFFFCA8F
        add     esp, 4                                  ; 10008CE1 _ 83. C4, 04
?_0904: push    esi                                     ; 10008CE4 _ 56
        mov     dword [esi+40H], 0                      ; 10008CE5 _ C7. 46, 40, 00000000
        call    ?_3158                                  ; 10008CEC _ E8, 00011E90
        add     esp, 4                                  ; 10008CF1 _ 83. C4, 04
        mov     dword [edi+7CH], 0                      ; 10008CF4 _ C7. 47, 7C, 00000000
        mov     eax, ebp                                ; 10008CFB _ 8B. C5
        pop     edi                                     ; 10008CFD _ 5F
        pop     esi                                     ; 10008CFE _ 5E
        pop     ebp                                     ; 10008CFF _ 5D
        ret                                             ; 10008D00 _ C3

        nop                                             ; 10008D01 _ 90
        nop                                             ; 10008D02 _ 90
        nop                                             ; 10008D03 _ 90
        nop                                             ; 10008D04 _ 90
        nop                                             ; 10008D05 _ 90
        nop                                             ; 10008D06 _ 90
        nop                                             ; 10008D07 _ 90
        nop                                             ; 10008D08 _ 90
        nop                                             ; 10008D09 _ 90
        nop                                             ; 10008D0A _ 90
        nop                                             ; 10008D0B _ 90
        nop                                             ; 10008D0C _ 90
        nop                                             ; 10008D0D _ 90
        nop                                             ; 10008D0E _ 90
        nop                                             ; 10008D0F _ 90
?_0905: push    ebp                                     ; 10008D10 _ 55
        push    esi                                     ; 10008D11 _ 56
        mov     esi, dword [esp+0CH]                    ; 10008D12 _ 8B. 74 24, 0C
        xor     ebp, ebp                                ; 10008D16 _ 33. ED
        test    esi, esi                                ; 10008D18 _ 85. F6
        je      ?_0915                                  ; 10008D1A _ 0F 84, 00000118
        mov     al, byte [esi+13CH]                     ; 10008D20 _ 8A. 86, 0000013C
        push    edi                                     ; 10008D26 _ 57
        test    al, 20H                                 ; 10008D27 _ A8, 20
        je      ?_0910                                  ; 10008D29 _ 0F 84, 000000AB
        test    al, 08H                                 ; 10008D2F _ A8, 08
        je      ?_0909                                  ; 10008D31 _ 0F 84, 00000092
        test    al, 01H                                 ; 10008D37 _ A8, 01
        jz      ?_0906                                  ; 10008D39 _ 74, 11
        lea     eax, [esi+100H]                         ; 10008D3B _ 8D. 86, 00000100
        push    eax                                     ; 10008D41 _ 50
        call    ?_0527                                  ; 10008D42 _ E8, FFFFCA29
        add     esp, 4                                  ; 10008D47 _ 83. C4, 04
        jmp     ?_0909                                  ; 10008D4A _ EB, 7D

?_0906: lea     edi, [esi+100H]                         ; 10008D4C _ 8D. BE, 00000100
        push    4                                       ; 10008D52 _ 6A, 04
        push    edi                                     ; 10008D54 _ 57
        call    ?_0030                                  ; 10008D55 _ E8, FFFF8856
        push    edi                                     ; 10008D5A _ 57
        call    ?_0058                                  ; 10008D5B _ E8, FFFF8BB0
        mov     eax, dword [esi+110H]                   ; 10008D60 _ 8B. 86, 00000110
        add     esp, 12                                 ; 10008D66 _ 83. C4, 0C
        cmp     eax, 8                                  ; 10008D69 _ 83. F8, 08
        jc      ?_0909                                  ; 10008D6C _ 72, 5B
        mov     eax, dword [esi+10CH]                   ; 10008D6E _ 8B. 86, 0000010C
        mov     ecx, dword [esi+138H]                   ; 10008D74 _ 8B. 8E, 00000138
        mov     edx, 4                                  ; 10008D7A _ BA, 00000004
?_0907: mov     byte [eax], cl                          ; 10008D7F _ 88. 08
        shr     ecx, 8                                  ; 10008D81 _ C1. E9, 08
        inc     eax                                     ; 10008D84 _ 40
        dec     edx                                     ; 10008D85 _ 4A
        jnz     ?_0907                                  ; 10008D86 _ 75, F7
        mov     ecx, dword [esi+108H]                   ; 10008D88 _ 8B. 8E, 00000108
        mov     edx, 4                                  ; 10008D8E _ BA, 00000004
?_0908: mov     byte [eax], cl                          ; 10008D93 _ 88. 08
        shr     ecx, 8                                  ; 10008D95 _ C1. E9, 08
        inc     eax                                     ; 10008D98 _ 40
        dec     edx                                     ; 10008D99 _ 4A
        jnz     ?_0908                                  ; 10008D9A _ 75, F7
        mov     edx, dword [esi+114H]                   ; 10008D9C _ 8B. 96, 00000114
        mov     ecx, dword [esi+10CH]                   ; 10008DA2 _ 8B. 8E, 0000010C
        mov     eax, dword [esi+110H]                   ; 10008DA8 _ 8B. 86, 00000110
        add     edx, 8                                  ; 10008DAE _ 83. C2, 08
        add     ecx, 8                                  ; 10008DB1 _ 83. C1, 08
        add     eax, -8                                 ; 10008DB4 _ 83. C0, F8
        mov     dword [esi+114H], edx                   ; 10008DB7 _ 89. 96, 00000114
        mov     dword [esi+10CH], ecx                   ; 10008DBD _ 89. 8E, 0000010C
        mov     dword [esi+110H], eax                   ; 10008DC3 _ 89. 86, 00000110
?_0909: test    byte [esi+13CH], 01H                    ; 10008DC9 _ F6. 86, 0000013C, 01
        jnz     ?_0914                                  ; 10008DD0 _ 75, 45
        mov     ebp, dword [esi+114H]                   ; 10008DD2 _ 8B. AE, 00000114
        jmp     ?_0914                                  ; 10008DD8 _ EB, 3D

?_0910: mov     ecx, dword [esi+100H]                   ; 10008DDA _ 8B. 8E, 00000100
        test    ecx, ecx                                ; 10008DE0 _ 85. C9
        jz      ?_0914                                  ; 10008DE2 _ 74, 33
        test    al, 01H                                 ; 10008DE4 _ A8, 01
        jz      ?_0911                                  ; 10008DE6 _ 74, 1B
        test    al, 10H                                 ; 10008DE8 _ A8, 10
        jz      ?_0911                                  ; 10008DEA _ 74, 17
        push    ecx                                     ; 10008DEC _ 51
        call    ?_0899                                  ; 10008DED _ E8, FFFFFE8E
        mov     ecx, dword [esi+100H]                   ; 10008DF2 _ 8B. 8E, 00000100
        push    ecx                                     ; 10008DF8 _ 51
        call    ?_0878                                  ; 10008DF9 _ E8, FFFFFC52
        add     esp, 8                                  ; 10008DFE _ 83. C4, 08
        jmp     ?_0914                                  ; 10008E01 _ EB, 14

?_0911: test    al, 08H                                 ; 10008E03 _ A8, 08
        push    ecx                                     ; 10008E05 _ 51
        jz      ?_0912                                  ; 10008E06 _ 74, 07
        call    ?_0331                                  ; 10008E08 _ E8, FFFFAE93
        jmp     ?_0913                                  ; 10008E0D _ EB, 05

?_0912: call    ?_3029                                  ; 10008E0F _ E8, 00011376
?_0913: add     esp, 4                                  ; 10008E14 _ 83. C4, 04
?_0914: mov     edi, dword [?_5524]                     ; 10008E17 _ 8B. 3D, 10034678(d)
        push    esi                                     ; 10008E1D _ 56
        dec     edi                                     ; 10008E1E _ 4F
        push    ?_5523                                  ; 10008E1F _ 68, 10034670(d)
        mov     dword [?_5524], edi                     ; 10008E24 _ 89. 3D, 10034678(d)
        call    ?_0706                                  ; 10008E2A _ E8, FFFFE001
        add     esp, 8                                  ; 10008E2F _ 83. C4, 08
        mov     eax, ebp                                ; 10008E32 _ 8B. C5
        pop     edi                                     ; 10008E34 _ 5F
        pop     esi                                     ; 10008E35 _ 5E
        pop     ebp                                     ; 10008E36 _ 5D
        ret                                             ; 10008E37 _ C3
