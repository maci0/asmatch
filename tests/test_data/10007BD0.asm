; ---- 10007BD0 ----
?_0804: ; Local function
        push    ebx                                     ; 10007BD0 _ 53
        push    ebp                                     ; 10007BD1 _ 55
        mov     eax, dword [esp+10H]                    ; 10007BD2 _ 8B. 44 24, 10
        push    esi                                     ; 10007BD6 _ 56
        mov     esi, dword [esp+10H]                    ; 10007BD7 _ 8B. 74 24, 10
        push    edi                                     ; 10007BDB _ 57
        mov     ecx, dword [esi+16B4H]                  ; 10007BDC _ 8B. 8E, 000016B4
        cmp     ecx, 11                                 ; 10007BE2 _ 83. F9, 0B
        jle     ?_0805                                  ; 10007BE5 _ 7E, 5D
        add     eax, -257                               ; 10007BE7 _ 05, FFFFFEFF
        mov     edx, eax                                ; 10007BEC _ 8B. D0
        shl     edx, cl                                 ; 10007BEE _ D3. E2
        mov     ecx, dword [esi+14H]                    ; 10007BF0 _ 8B. 4E, 14
        or      word [esi+16B0H], dx                    ; 10007BF3 _ 66: 09. 96, 000016B0
        mov     edx, dword [esi+8H]                     ; 10007BFA _ 8B. 56, 08
        mov     bl, byte [esi+16B0H]                    ; 10007BFD _ 8A. 9E, 000016B0
        mov     byte [ecx+edx], bl                      ; 10007C03 _ 88. 1C 11
        mov     ecx, dword [esi+14H]                    ; 10007C06 _ 8B. 4E, 14
        mov     edi, dword [esi+8H]                     ; 10007C09 _ 8B. 7E, 08
        xor     edx, edx                                ; 10007C0C _ 33. D2
        mov     dl, byte [esi+16B1H]                    ; 10007C0E _ 8A. 96, 000016B1
        inc     ecx                                     ; 10007C14 _ 41
        mov     dword [esi+14H], ecx                    ; 10007C15 _ 89. 4E, 14
        mov     byte [ecx+edi], dl                      ; 10007C18 _ 88. 14 39
        mov     edx, dword [esi+16B4H]                  ; 10007C1B _ 8B. 96, 000016B4
        mov     ebp, dword [esi+14H]                    ; 10007C21 _ 8B. 6E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007C24 _ 66: B9, 0010
        sub     cx, dx                                  ; 10007C28 _ 66: 2B. CA
        inc     ebp                                     ; 10007C2B _ 45
        shr     ax, cl                                  ; 10007C2C _ 66: D3. E8
        add     edx, -11                                ; 10007C2F _ 83. C2, F5
        mov     dword [esi+14H], ebp                    ; 10007C32 _ 89. 6E, 14
        mov     dword [esi+16B4H], edx                  ; 10007C35 _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 10007C3B _ 66: 89. 86, 000016B0
        jmp     ?_0806                                  ; 10007C42 _ EB, 17

?_0805: add     eax, -257                               ; 10007C44 _ 05, FFFFFEFF
        shl     eax, cl                                 ; 10007C49 _ D3. E0
        or      word [esi+16B0H], ax                    ; 10007C4B _ 66: 09. 86, 000016B0
        add     ecx, 5                                  ; 10007C52 _ 83. C1, 05
        mov     dword [esi+16B4H], ecx                  ; 10007C55 _ 89. 8E, 000016B4
?_0806: mov     ecx, dword [esi+16B4H]                  ; 10007C5B _ 8B. 8E, 000016B4
        cmp     ecx, 11                                 ; 10007C61 _ 83. F9, 0B
        jle     ?_0807                                  ; 10007C64 _ 7E, 5F
        mov     edx, dword [esp+1CH]                    ; 10007C66 _ 8B. 54 24, 1C
        lea     eax, [edx-1H]                           ; 10007C6A _ 8D. 42, FF
        mov     edx, eax                                ; 10007C6D _ 8B. D0
        shl     edx, cl                                 ; 10007C6F _ D3. E2
        mov     ecx, dword [esi+14H]                    ; 10007C71 _ 8B. 4E, 14
        or      word [esi+16B0H], dx                    ; 10007C74 _ 66: 09. 96, 000016B0
        mov     edx, dword [esi+8H]                     ; 10007C7B _ 8B. 56, 08
        mov     bl, byte [esi+16B0H]                    ; 10007C7E _ 8A. 9E, 000016B0
        mov     byte [ecx+edx], bl                      ; 10007C84 _ 88. 1C 11
        mov     ecx, dword [esi+14H]                    ; 10007C87 _ 8B. 4E, 14
        mov     edi, dword [esi+8H]                     ; 10007C8A _ 8B. 7E, 08
        xor     edx, edx                                ; 10007C8D _ 33. D2
        mov     dl, byte [esi+16B1H]                    ; 10007C8F _ 8A. 96, 000016B1
        inc     ecx                                     ; 10007C95 _ 41
        mov     dword [esi+14H], ecx                    ; 10007C96 _ 89. 4E, 14
        mov     byte [ecx+edi], dl                      ; 10007C99 _ 88. 14 39
        mov     edx, dword [esi+16B4H]                  ; 10007C9C _ 8B. 96, 000016B4
        mov     ebp, dword [esi+14H]                    ; 10007CA2 _ 8B. 6E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007CA5 _ 66: B9, 0010
        sub     cx, dx                                  ; 10007CA9 _ 66: 2B. CA
        inc     ebp                                     ; 10007CAC _ 45
        shr     ax, cl                                  ; 10007CAD _ 66: D3. E8
        add     edx, -11                                ; 10007CB0 _ 83. C2, F5
        mov     dword [esi+14H], ebp                    ; 10007CB3 _ 89. 6E, 14
        mov     dword [esi+16B4H], edx                  ; 10007CB6 _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 10007CBC _ 66: 89. 86, 000016B0
        jmp     ?_0808                                  ; 10007CC3 _ EB, 17

?_0807: mov     eax, dword [esp+1CH]                    ; 10007CC5 _ 8B. 44 24, 1C
        dec     eax                                     ; 10007CC9 _ 48
        shl     eax, cl                                 ; 10007CCA _ D3. E0
        or      word [esi+16B0H], ax                    ; 10007CCC _ 66: 09. 86, 000016B0
        add     ecx, 5                                  ; 10007CD3 _ 83. C1, 05
        mov     dword [esi+16B4H], ecx                  ; 10007CD6 _ 89. 8E, 000016B4
?_0808: mov     ecx, dword [esi+16B4H]                  ; 10007CDC _ 8B. 8E, 000016B4
        mov     ebp, dword [esp+20H]                    ; 10007CE2 _ 8B. 6C 24, 20
        cmp     ecx, 12                                 ; 10007CE6 _ 83. F9, 0C
        lea     eax, [ebp-4H]                           ; 10007CE9 _ 8D. 45, FC
        jle     ?_0809                                  ; 10007CEC _ 7E, 5A
        mov     edx, eax                                ; 10007CEE _ 8B. D0
        shl     edx, cl                                 ; 10007CF0 _ D3. E2
        mov     ecx, dword [esi+14H]                    ; 10007CF2 _ 8B. 4E, 14
        or      word [esi+16B0H], dx                    ; 10007CF5 _ 66: 09. 96, 000016B0
        mov     edx, dword [esi+8H]                     ; 10007CFC _ 8B. 56, 08
        mov     bl, byte [esi+16B0H]                    ; 10007CFF _ 8A. 9E, 000016B0
        mov     byte [ecx+edx], bl                      ; 10007D05 _ 88. 1C 11
        mov     edx, dword [esi+14H]                    ; 10007D08 _ 8B. 56, 14
        mov     edi, dword [esi+8H]                     ; 10007D0B _ 8B. 7E, 08
        inc     edx                                     ; 10007D0E _ 42
        mov     dword [esi+14H], edx                    ; 10007D0F _ 89. 56, 14
        mov     ecx, edx                                ; 10007D12 _ 8B. CA
        xor     edx, edx                                ; 10007D14 _ 33. D2
        mov     dl, byte [esi+16B1H]                    ; 10007D16 _ 8A. 96, 000016B1
        mov     byte [ecx+edi], dl                      ; 10007D1C _ 88. 14 39
        mov     ecx, dword [esi+14H]                    ; 10007D1F _ 8B. 4E, 14
        mov     edx, dword [esi+16B4H]                  ; 10007D22 _ 8B. 96, 000016B4
        inc     ecx                                     ; 10007D28 _ 41
        mov     dword [esi+14H], ecx                    ; 10007D29 _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007D2C _ 66: B9, 0010
        sub     cx, dx                                  ; 10007D30 _ 66: 2B. CA
        shr     ax, cl                                  ; 10007D33 _ 66: D3. E8
        add     edx, -12                                ; 10007D36 _ 83. C2, F4
        mov     dword [esi+16B4H], edx                  ; 10007D39 _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 10007D3F _ 66: 89. 86, 000016B0
        jmp     ?_0810                                  ; 10007D46 _ EB, 12

?_0809: shl     eax, cl                                 ; 10007D48 _ D3. E0
        or      word [esi+16B0H], ax                    ; 10007D4A _ 66: 09. 86, 000016B0
        add     ecx, 4                                  ; 10007D51 _ 83. C1, 04
        mov     dword [esi+16B4H], ecx                  ; 10007D54 _ 89. 8E, 000016B4
?_0810: xor     edi, edi                                ; 10007D5A _ 33. FF
        test    ebp, ebp                                ; 10007D5C _ 85. ED
        jle     ?_0814                                  ; 10007D5E _ 0F 8E, 000000A3
?_0811: mov     ecx, dword [esi+16B4H]                  ; 10007D64 _ 8B. 8E, 000016B4
        cmp     ecx, 13                                 ; 10007D6A _ 83. F9, 0D
        jle     ?_0812                                  ; 10007D6D _ 7E, 6C
        xor     edx, edx                                ; 10007D6F _ 33. D2
        xor     eax, eax                                ; 10007D71 _ 33. C0
        mov     dl, byte [?_4896+edi]                   ; 10007D73 _ 8A. 97, 100249F0(d)
        mov     ax, word [esi+edx*4+0A76H]              ; 10007D79 _ 66: 8B. 84 96, 00000A76
        mov     edx, eax                                ; 10007D81 _ 8B. D0
        shl     edx, cl                                 ; 10007D83 _ D3. E2
        mov     ecx, dword [esi+14H]                    ; 10007D85 _ 8B. 4E, 14
        or      word [esi+16B0H], dx                    ; 10007D88 _ 66: 09. 96, 000016B0
        mov     edx, dword [esi+8H]                     ; 10007D8F _ 8B. 56, 08
        mov     bl, byte [esi+16B0H]                    ; 10007D92 _ 8A. 9E, 000016B0
        mov     byte [ecx+edx], bl                      ; 10007D98 _ 88. 1C 11
        mov     edx, dword [esi+14H]                    ; 10007D9B _ 8B. 56, 14
        mov     ebx, dword [esi+8H]                     ; 10007D9E _ 8B. 5E, 08
        inc     edx                                     ; 10007DA1 _ 42
        mov     dword [esi+14H], edx                    ; 10007DA2 _ 89. 56, 14
        mov     ecx, edx                                ; 10007DA5 _ 8B. CA
        xor     edx, edx                                ; 10007DA7 _ 33. D2
        mov     dl, byte [esi+16B1H]                    ; 10007DA9 _ 8A. 96, 000016B1
        mov     byte [ecx+ebx], dl                      ; 10007DAF _ 88. 14 19
        mov     ecx, dword [esi+14H]                    ; 10007DB2 _ 8B. 4E, 14
        mov     edx, dword [esi+16B4H]                  ; 10007DB5 _ 8B. 96, 000016B4
        inc     ecx                                     ; 10007DBB _ 41
        mov     dword [esi+14H], ecx                    ; 10007DBC _ 89. 4E, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007DBF _ 66: B9, 0010
        sub     cx, dx                                  ; 10007DC3 _ 66: 2B. CA
        shr     ax, cl                                  ; 10007DC6 _ 66: D3. E8
        add     edx, -13                                ; 10007DC9 _ 83. C2, F3
        mov     dword [esi+16B4H], edx                  ; 10007DCC _ 89. 96, 000016B4
        mov     word [esi+16B0H], ax                    ; 10007DD2 _ 66: 89. 86, 000016B0
        jmp     ?_0813                                  ; 10007DD9 _ EB, 23

?_0812: xor     eax, eax                                ; 10007DDB _ 33. C0
        mov     al, byte [?_4896+edi]                   ; 10007DDD _ 8A. 87, 100249F0(d)
        mov     dx, word [esi+eax*4+0A76H]              ; 10007DE3 _ 66: 8B. 94 86, 00000A76
        shl     dx, cl                                  ; 10007DEB _ 66: D3. E2
        or      word [esi+16B0H], dx                    ; 10007DEE _ 66: 09. 96, 000016B0
        add     ecx, 3                                  ; 10007DF5 _ 83. C1, 03
        mov     dword [esi+16B4H], ecx                  ; 10007DF8 _ 89. 8E, 000016B4
?_0813: inc     edi                                     ; 10007DFE _ 47
        cmp     edi, ebp                                ; 10007DFF _ 3B. FD
        jl      ?_0811                                  ; 10007E01 _ 0F 8C, FFFFFF5D
?_0814: mov     eax, dword [esp+18H]                    ; 10007E07 _ 8B. 44 24, 18
        lea     ecx, [esi+8CH]                          ; 10007E0B _ 8D. 8E, 0000008C
        dec     eax                                     ; 10007E11 _ 48
        push    eax                                     ; 10007E12 _ 50
        push    ecx                                     ; 10007E13 _ 51
        push    esi                                     ; 10007E14 _ 56
        call    ?_0815                                  ; 10007E15 _ E8, 00000026
        mov     edx, dword [esp+28H]                    ; 10007E1A _ 8B. 54 24, 28
        lea     eax, [esi+980H]                         ; 10007E1E _ 8D. 86, 00000980
        dec     edx                                     ; 10007E24 _ 4A
        push    edx                                     ; 10007E25 _ 52
        push    eax                                     ; 10007E26 _ 50
        push    esi                                     ; 10007E27 _ 56
        call    ?_0815                                  ; 10007E28 _ E8, 00000013
        add     esp, 24                                 ; 10007E2D _ 83. C4, 18
        pop     edi                                     ; 10007E30 _ 5F
        pop     esi                                     ; 10007E31 _ 5E
        pop     ebp                                     ; 10007E32 _ 5D
        pop     ebx                                     ; 10007E33 _ 5B
        ret                                             ; 10007E34 _ C3

        nop                                             ; 10007E35 _ 90
        nop                                             ; 10007E36 _ 90
        nop                                             ; 10007E37 _ 90
        nop                                             ; 10007E38 _ 90
        nop                                             ; 10007E39 _ 90
        nop                                             ; 10007E3A _ 90
        nop                                             ; 10007E3B _ 90
        nop                                             ; 10007E3C _ 90
        nop                                             ; 10007E3D _ 90
        nop                                             ; 10007E3E _ 90
        nop                                             ; 10007E3F _ 90
