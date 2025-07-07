; ---- 10007050 ----
?_0721: ; Local function
        push    ebx                                     ; 10007050 _ 53
        push    esi                                     ; 10007051 _ 56
        mov     esi, dword [esp+0CH]                    ; 10007052 _ 8B. 74 24, 0C
        push    edi                                     ; 10007056 _ 57
        mov     eax, 2                                  ; 10007057 _ B8, 00000002
        mov     ecx, dword [esi+16B4H]                  ; 1000705C _ 8B. 8E, 000016B4
        cmp     ecx, 13                                 ; 10007062 _ 83. F9, 0D
        jle     ?_0722                                  ; 10007065 _ 7E, 5D
        mov     edx, dword [esi+14H]                    ; 10007067 _ 8B. 56, 14
        shl     eax, cl                                 ; 1000706A _ D3. E0
        mov     ecx, dword [esi+8H]                     ; 1000706C _ 8B. 4E, 08
        or      word [esi+16B0H], ax                    ; 1000706F _ 66: 09. 86, 000016B0
        mov     al, byte [esi+16B0H]                    ; 10007076 _ 8A. 86, 000016B0
        mov     byte [ecx+edx], al                      ; 1000707C _ 88. 04 11
        mov     ecx, dword [esi+14H]                    ; 1000707F _ 8B. 4E, 14
        mov     edx, dword [esi+8H]                     ; 10007082 _ 8B. 56, 08
        inc     ecx                                     ; 10007085 _ 41
        mov     dword [esi+14H], ecx                    ; 10007086 _ 89. 4E, 14
        mov     eax, ecx                                ; 10007089 _ 8B. C1
        xor     ecx, ecx                                ; 1000708B _ 33. C9
        mov     cl, byte [esi+16B1H]                    ; 1000708D _ 8A. 8E, 000016B1
        mov     byte [edx+eax], cl                      ; 10007093 _ 88. 0C 02
        mov     eax, dword [esi+14H]                    ; 10007096 _ 8B. 46, 14
        inc     eax                                     ; 10007099 _ 40
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 1000709A _ 66: B9, 0010
        mov     dword [esi+14H], eax                    ; 1000709E _ 89. 46, 14
        mov     eax, dword [esi+16B4H]                  ; 100070A1 _ 8B. 86, 000016B4
        sub     cx, ax                                  ; 100070A7 _ 66: 2B. C8
        mov     edx, 2                                  ; 100070AA _ BA, 00000002
        shr     dx, cl                                  ; 100070AF _ 66: D3. EA
        add     eax, -13                                ; 100070B2 _ 83. C0, F3
        mov     dword [esi+16B4H], eax                  ; 100070B5 _ 89. 86, 000016B4
        mov     word [esi+16B0H], dx                    ; 100070BB _ 66: 89. 96, 000016B0
        jmp     ?_0723                                  ; 100070C2 _ EB, 12

?_0722: shl     eax, cl                                 ; 100070C4 _ D3. E0
        or      word [esi+16B0H], ax                    ; 100070C6 _ 66: 09. 86, 000016B0
        add     ecx, 3                                  ; 100070CD _ 83. C1, 03
        mov     dword [esi+16B4H], ecx                  ; 100070D0 _ 89. 8E, 000016B4
?_0723: mov     ecx, dword [esi+16B4H]                  ; 100070D6 _ 8B. 8E, 000016B4
        xor     edx, edx                                ; 100070DC _ 33. D2
        mov     dx, word [?_4899]                       ; 100070DE _ 66: 8B. 15, 10024E06(d)
        mov     eax, 16                                 ; 100070E5 _ B8, 00000010
        sub     eax, edx                                ; 100070EA _ 2B. C2
        cmp     ecx, eax                                ; 100070EC _ 3B. C8
        mov     eax, dword [?_4898]                     ; 100070EE _ A1, 10024E04(d)
        jle     ?_0724                                  ; 100070F3 _ 7E, 5E
        and     eax, 0FFFFH                             ; 100070F5 _ 25, 0000FFFF
        mov     edi, eax                                ; 100070FA _ 8B. F8
        shl     edi, cl                                 ; 100070FC _ D3. E7
        mov     ecx, dword [esi+8H]                     ; 100070FE _ 8B. 4E, 08
        or      word [esi+16B0H], di                    ; 10007101 _ 66: 09. BE, 000016B0
        mov     edi, dword [esi+14H]                    ; 10007108 _ 8B. 7E, 14
        mov     bl, byte [esi+16B0H]                    ; 1000710B _ 8A. 9E, 000016B0
        mov     byte [ecx+edi], bl                      ; 10007111 _ 88. 1C 39
        mov     edi, dword [esi+14H]                    ; 10007114 _ 8B. 7E, 14
        mov     ebx, dword [esi+8H]                     ; 10007117 _ 8B. 5E, 08
        xor     ecx, ecx                                ; 1000711A _ 33. C9
        mov     cl, byte [esi+16B1H]                    ; 1000711C _ 8A. 8E, 000016B1
        inc     edi                                     ; 10007122 _ 47
        mov     dword [esi+14H], edi                    ; 10007123 _ 89. 7E, 14
        mov     byte [ebx+edi], cl                      ; 10007126 _ 88. 0C 3B
        mov     ecx, dword [esi+14H]                    ; 10007129 _ 8B. 4E, 14
        mov     edi, dword [esi+16B4H]                  ; 1000712C _ 8B. BE, 000016B4
        inc     ecx                                     ; 10007132 _ 41
        mov     dword [esi+14H], ecx                    ; 10007133 _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007136 _ 66: B9, 0010
        sub     cx, di                                  ; 1000713A _ 66: 2B. CF
        lea     edx, [edi+edx-10H]                      ; 1000713D _ 8D. 54 17, F0
        shr     ax, cl                                  ; 10007141 _ 66: D3. E8
        mov     dword [esi+16B4H], edx                  ; 10007144 _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 1000714A _ 66: 89. 86, 000016B0
        jmp     ?_0725                                  ; 10007151 _ EB, 11

?_0724: shl     eax, cl                                 ; 10007153 _ D3. E0
        or      word [esi+16B0H], ax                    ; 10007155 _ 66: 09. 86, 000016B0
        add     ecx, edx                                ; 1000715C _ 03. CA
        mov     dword [esi+16B4H], ecx                  ; 1000715E _ 89. 8E, 000016B4
?_0725: push    esi                                     ; 10007164 _ 56
        call    ?_0868                                  ; 10007165 _ E8, 00001736
        mov     ecx, dword [esi+16B4H]                  ; 1000716A _ 8B. 8E, 000016B4
        mov     edx, dword [esi+16ACH]                  ; 10007170 _ 8B. 96, 000016AC
        sub     edx, ecx                                ; 10007176 _ 2B. D1
        add     esp, 4                                  ; 10007178 _ 83. C4, 04
        add     edx, 11                                 ; 1000717B _ 83. C2, 0B
        cmp     edx, 9                                  ; 1000717E _ 83. FA, 09
        jge     ?_0730                                  ; 10007181 _ 0F 8D, 00000110
        cmp     ecx, 13                                 ; 10007187 _ 83. F9, 0D
        mov     eax, 2                                  ; 1000718A _ B8, 00000002
        jle     ?_0726                                  ; 1000718F _ 7E, 5D
        mov     edx, dword [esi+14H]                    ; 10007191 _ 8B. 56, 14
        shl     eax, cl                                 ; 10007194 _ D3. E0
        mov     ecx, dword [esi+8H]                     ; 10007196 _ 8B. 4E, 08
        or      word [esi+16B0H], ax                    ; 10007199 _ 66: 09. 86, 000016B0
        mov     al, byte [esi+16B0H]                    ; 100071A0 _ 8A. 86, 000016B0
        mov     byte [ecx+edx], al                      ; 100071A6 _ 88. 04 11
        mov     ecx, dword [esi+14H]                    ; 100071A9 _ 8B. 4E, 14
        mov     edx, dword [esi+8H]                     ; 100071AC _ 8B. 56, 08
        inc     ecx                                     ; 100071AF _ 41
        mov     dword [esi+14H], ecx                    ; 100071B0 _ 89. 4E, 14
        mov     eax, ecx                                ; 100071B3 _ 8B. C1
        xor     ecx, ecx                                ; 100071B5 _ 33. C9
        mov     cl, byte [esi+16B1H]                    ; 100071B7 _ 8A. 8E, 000016B1
        mov     byte [edx+eax], cl                      ; 100071BD _ 88. 0C 02
        mov     eax, dword [esi+14H]                    ; 100071C0 _ 8B. 46, 14
        inc     eax                                     ; 100071C3 _ 40
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 100071C4 _ 66: B9, 0010
        mov     dword [esi+14H], eax                    ; 100071C8 _ 89. 46, 14
        mov     eax, dword [esi+16B4H]                  ; 100071CB _ 8B. 86, 000016B4
        sub     cx, ax                                  ; 100071D1 _ 66: 2B. C8
        mov     edx, 2                                  ; 100071D4 _ BA, 00000002
        shr     dx, cl                                  ; 100071D9 _ 66: D3. EA
        add     eax, -13                                ; 100071DC _ 83. C0, F3
        mov     dword [esi+16B4H], eax                  ; 100071DF _ 89. 86, 000016B4
        mov     word [esi+16B0H], dx                    ; 100071E5 _ 66: 89. 96, 000016B0
        jmp     ?_0727                                  ; 100071EC _ EB, 12

?_0726: shl     eax, cl                                 ; 100071EE _ D3. E0
        or      word [esi+16B0H], ax                    ; 100071F0 _ 66: 09. 86, 000016B0
        add     ecx, 3                                  ; 100071F7 _ 83. C1, 03
        mov     dword [esi+16B4H], ecx                  ; 100071FA _ 89. 8E, 000016B4
?_0727: mov     ecx, dword [esi+16B4H]                  ; 10007200 _ 8B. 8E, 000016B4
        xor     edx, edx                                ; 10007206 _ 33. D2
        mov     dx, word [?_4899]                       ; 10007208 _ 66: 8B. 15, 10024E06(d)
        mov     eax, 16                                 ; 1000720F _ B8, 00000010
        sub     eax, edx                                ; 10007214 _ 2B. C2
        cmp     ecx, eax                                ; 10007216 _ 3B. C8
        mov     eax, dword [?_4898]                     ; 10007218 _ A1, 10024E04(d)
        jle     ?_0728                                  ; 1000721D _ 7E, 5E
        and     eax, 0FFFFH                             ; 1000721F _ 25, 0000FFFF
        mov     edi, eax                                ; 10007224 _ 8B. F8
        shl     edi, cl                                 ; 10007226 _ D3. E7
        mov     ecx, dword [esi+8H]                     ; 10007228 _ 8B. 4E, 08
        or      word [esi+16B0H], di                    ; 1000722B _ 66: 09. BE, 000016B0
        mov     edi, dword [esi+14H]                    ; 10007232 _ 8B. 7E, 14
        mov     bl, byte [esi+16B0H]                    ; 10007235 _ 8A. 9E, 000016B0
        mov     byte [ecx+edi], bl                      ; 1000723B _ 88. 1C 39
        mov     edi, dword [esi+14H]                    ; 1000723E _ 8B. 7E, 14
        mov     ebx, dword [esi+8H]                     ; 10007241 _ 8B. 5E, 08
        xor     ecx, ecx                                ; 10007244 _ 33. C9
        mov     cl, byte [esi+16B1H]                    ; 10007246 _ 8A. 8E, 000016B1
        inc     edi                                     ; 1000724C _ 47
        mov     dword [esi+14H], edi                    ; 1000724D _ 89. 7E, 14
        mov     byte [ebx+edi], cl                      ; 10007250 _ 88. 0C 3B
        mov     ecx, dword [esi+14H]                    ; 10007253 _ 8B. 4E, 14
        mov     edi, dword [esi+16B4H]                  ; 10007256 _ 8B. BE, 000016B4
        inc     ecx                                     ; 1000725C _ 41
        mov     dword [esi+14H], ecx                    ; 1000725D _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007260 _ 66: B9, 0010
        sub     cx, di                                  ; 10007264 _ 66: 2B. CF
        lea     edx, [edi+edx-10H]                      ; 10007267 _ 8D. 54 17, F0
        shr     ax, cl                                  ; 1000726B _ 66: D3. E8
        mov     dword [esi+16B4H], edx                  ; 1000726E _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 10007274 _ 66: 89. 86, 000016B0
        jmp     ?_0729                                  ; 1000727B _ EB, 11

?_0728: shl     eax, cl                                 ; 1000727D _ D3. E0
        or      word [esi+16B0H], ax                    ; 1000727F _ 66: 09. 86, 000016B0
        add     ecx, edx                                ; 10007286 _ 03. CA
        mov     dword [esi+16B4H], ecx                  ; 10007288 _ 89. 8E, 000016B4
?_0729: push    esi                                     ; 1000728E _ 56
        call    ?_0868                                  ; 1000728F _ E8, 0000160C
        add     esp, 4                                  ; 10007294 _ 83. C4, 04
?_0730: mov     dword [esi+16ACH], 7                    ; 10007297 _ C7. 86, 000016AC, 00000007
        pop     edi                                     ; 100072A1 _ 5F
        pop     esi                                     ; 100072A2 _ 5E
        pop     ebx                                     ; 100072A3 _ 5B
        ret                                             ; 100072A4 _ C3

        nop                                             ; 100072A5 _ 90
        nop                                             ; 100072A6 _ 90
        nop                                             ; 100072A7 _ 90
        nop                                             ; 100072A8 _ 90
        nop                                             ; 100072A9 _ 90
        nop                                             ; 100072AA _ 90
        nop                                             ; 100072AB _ 90
        nop                                             ; 100072AC _ 90
        nop                                             ; 100072AD _ 90
        nop                                             ; 100072AE _ 90
        nop                                             ; 100072AF _ 90

