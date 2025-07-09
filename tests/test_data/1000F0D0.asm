; ---- 1000F0D0 ----
?_1708: ; Local function
        push    ecx                                     ; 1000F0D0 _ 51
        push    esi                                     ; 1000F0D1 _ 56
        push    edi                                     ; 1000F0D2 _ 57
        mov     edi, dword [esp+14H]                    ; 1000F0D3 _ 8B. 7C 24, 14
        test    edi, edi                                ; 1000F0D7 _ 85. FF
        jz      ?_1709                                  ; 1000F0D9 _ 74, 03
        mov     byte [edi], 2                           ; 1000F0DB _ C6. 07, 02
?_1709: mov     esi, dword [esp+10H]                    ; 1000F0DE _ 8B. 74 24, 10
        lea     ecx, [esp+8H]                           ; 1000F0E2 _ 8D. 4C 24, 08
        lea     edx, [esp+14H]                          ; 1000F0E6 _ 8D. 54 24, 14
        mov     eax, dword [esi+10H]                    ; 1000F0EA _ 8B. 46, 10
        push    eax                                     ; 1000F0ED _ 50
        push    ecx                                     ; 1000F0EE _ 51
        lea     eax, [esp+18H]                          ; 1000F0EF _ 8D. 44 24, 18
        push    edx                                     ; 1000F0F3 _ 52
        push    eax                                     ; 1000F0F4 _ 50
        call    ?_2425                                  ; 1000F0F5 _ E8, 00006D96
        mov     eax, dword [esp+20H]                    ; 1000F0FA _ 8B. 44 24, 20
        add     esp, 16                                 ; 1000F0FE _ 83. C4, 10
        test    eax, eax                                ; 1000F101 _ 85. C0
        jz      ?_1712                                  ; 1000F103 _ 74, 3E
        mov     ecx, dword [esi+14H]                    ; 1000F105 _ 8B. 4E, 14
        cmp     ecx, -1                                 ; 1000F108 _ 83. F9, FF
        jnz     ?_1710                                  ; 1000F10B _ 75, 09
        mov     ecx, dword [esi+18H]                    ; 1000F10D _ 8B. 4E, 18
        add     eax, 93                                 ; 1000F110 _ 83. C0, 5D
        push    ecx                                     ; 1000F113 _ 51
        jmp     ?_1713                                  ; 1000F114 _ EB, 3E

?_1710: mov     edx, dword [eax+5DH]                    ; 1000F116 _ 8B. 50, 5D
        push    ecx                                     ; 1000F119 _ 51
        push    1                                       ; 1000F11A _ 6A, 01
        push    6                                       ; 1000F11C _ 6A, 06
        push    2                                       ; 1000F11E _ 6A, 02
        push    edx                                     ; 1000F120 _ 52
        call    ?_2482                                  ; 1000F121 _ E8, 0000733A
        add     esp, 20                                 ; 1000F126 _ 83. C4, 14
        mov     dword [esp+14H], eax                    ; 1000F129 _ 89. 44 24, 14
        test    eax, eax                                ; 1000F12D _ 85. C0
        jz      ?_1711                                  ; 1000F12F _ 74, 09
        mov     ecx, dword [esi+18H]                    ; 1000F131 _ 8B. 4E, 18
        add     eax, 20                                 ; 1000F134 _ 83. C0, 14
        push    ecx                                     ; 1000F137 _ 51
        jmp     ?_1713                                  ; 1000F138 _ EB, 1A

?_1711: pop     edi                                     ; 1000F13A _ 5F
        mov     eax, 4294967294                         ; 1000F13B _ B8, FFFFFFFE
        pop     esi                                     ; 1000F140 _ 5E
        pop     ecx                                     ; 1000F141 _ 59
        ret                                             ; 1000F142 _ C3

?_1712: mov     eax, dword [esp+8H]                     ; 1000F143 _ 8B. 44 24, 08
        test    eax, eax                                ; 1000F147 _ 85. C0
        jz      ?_1714                                  ; 1000F149 _ 74, 1A
        mov     edx, dword [esi+18H]                    ; 1000F14B _ 8B. 56, 18
        add     eax, 376                                ; 1000F14E _ 05, 00000178
        push    edx                                     ; 1000F153 _ 52
?_1713: push    eax                                     ; 1000F154 _ 50
        call    ?_2512                                  ; 1000F155 _ E8, 00007526
        add     esp, 8                                  ; 1000F15A _ 83. C4, 08
        test    eax, eax                                ; 1000F15D _ 85. C0
        jz      ?_1715                                  ; 1000F15F _ 74, 20
        pop     edi                                     ; 1000F161 _ 5F
        pop     esi                                     ; 1000F162 _ 5E
        pop     ecx                                     ; 1000F163 _ 59
        ret                                             ; 1000F164 _ C3

?_1714: mov     eax, dword [esp+14H]                    ; 1000F165 _ 8B. 44 24, 14
        test    eax, eax                                ; 1000F169 _ 85. C0
        jz      ?_1717                                  ; 1000F16B _ 74, 21
        mov     ecx, dword [esi+18H]                    ; 1000F16D _ 8B. 4E, 18
        add     eax, 20                                 ; 1000F170 _ 83. C0, 14
        push    ecx                                     ; 1000F173 _ 51
        push    eax                                     ; 1000F174 _ 50
        call    ?_2512                                  ; 1000F175 _ E8, 00007506
        add     esp, 8                                  ; 1000F17A _ 83. C4, 08
        test    eax, eax                                ; 1000F17D _ 85. C0
        jnz     ?_1718                                  ; 1000F17F _ 75, 10
?_1715: test    edi, edi                                ; 1000F181 _ 85. FF
        jz      ?_1716                                  ; 1000F183 _ 74, 03
        mov     byte [edi], 1                           ; 1000F185 _ C6. 07, 01
?_1716: pop     edi                                     ; 1000F188 _ 5F
        xor     eax, eax                                ; 1000F189 _ 33. C0
        pop     esi                                     ; 1000F18B _ 5E
        pop     ecx                                     ; 1000F18C _ 59
        ret                                             ; 1000F18D _ C3

?_1717: or      eax, 0FFFFFFFFH                         ; 1000F18E _ 83. C8, FF
?_1718: pop     edi                                     ; 1000F191 _ 5F
        pop     esi                                     ; 1000F192 _ 5E
        pop     ecx                                     ; 1000F193 _ 59
        ret                                             ; 1000F194 _ C3

        nop                                             ; 1000F195 _ 90
        nop                                             ; 1000F196 _ 90
        nop                                             ; 1000F197 _ 90
        nop                                             ; 1000F198 _ 90
        nop                                             ; 1000F199 _ 90
        nop                                             ; 1000F19A _ 90
        nop                                             ; 1000F19B _ 90
        nop                                             ; 1000F19C _ 90
        nop                                             ; 1000F19D _ 90
        nop                                             ; 1000F19E _ 90
        nop                                             ; 1000F19F _ 90
