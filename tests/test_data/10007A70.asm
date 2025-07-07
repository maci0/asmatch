; ---- 10007A70 ----
?_0788: ; Local function
        push    esi                                     ; 10007A70 _ 56
        mov     esi, dword [esp+8H]                     ; 10007A71 _ 8B. 74 24, 08
        mov     eax, dword [esi+0B14H]                  ; 10007A75 _ 8B. 86, 00000B14
        lea     ecx, [esi+8CH]                          ; 10007A7B _ 8D. 8E, 0000008C
        push    eax                                     ; 10007A81 _ 50
        push    ecx                                     ; 10007A82 _ 51
        push    esi                                     ; 10007A83 _ 56
        call    ?_0791                                  ; 10007A84 _ E8, 00000057
        mov     edx, dword [esi+0B20H]                  ; 10007A89 _ 8B. 96, 00000B20
        lea     eax, [esi+980H]                         ; 10007A8F _ 8D. 86, 00000980
        push    edx                                     ; 10007A95 _ 52
        push    eax                                     ; 10007A96 _ 50
        push    esi                                     ; 10007A97 _ 56
        call    ?_0791                                  ; 10007A98 _ E8, 00000043
        lea     ecx, [esi+0B28H]                        ; 10007A9D _ 8D. 8E, 00000B28
        push    ecx                                     ; 10007AA3 _ 51
        push    esi                                     ; 10007AA4 _ 56
        call    ?_0744                                  ; 10007AA5 _ E8, FFFFF9F6
        add     esp, 32                                 ; 10007AAA _ 83. C4, 20
        mov     eax, 18                                 ; 10007AAD _ B8, 00000012
?_0789: xor     edx, edx                                ; 10007AB2 _ 33. D2
        mov     dl, byte [?_4896+eax]                   ; 10007AB4 _ 8A. 90, 100249F0(d)
        cmp     word [esi+edx*4+0A76H], 0               ; 10007ABA _ 66: 83. BC 96, 00000A76, 00
        jnz     ?_0790                                  ; 10007AC3 _ 75, 06
        dec     eax                                     ; 10007AC5 _ 48
        cmp     eax, 3                                  ; 10007AC6 _ 83. F8, 03
        jge     ?_0789                                  ; 10007AC9 _ 7D, E7
?_0790: mov     edx, dword [esi+16A0H]                  ; 10007ACB _ 8B. 96, 000016A0
        lea     ecx, [eax+eax*2+11H]                    ; 10007AD1 _ 8D. 4C 40, 11
        add     edx, ecx                                ; 10007AD5 _ 03. D1
        mov     dword [esi+16A0H], edx                  ; 10007AD7 _ 89. 96, 000016A0
        pop     esi                                     ; 10007ADD _ 5E
        ret                                             ; 10007ADE _ C3

        nop                                             ; 10007ADF _ 90

