; ---- 10001BC0 ----
?_0081: ; Local function
        push    ebx                                     ; 10001BC0 _ 53
        mov     ebx, dword [esp+8H]                     ; 10001BC1 _ 8B. 5C 24, 08
        push    ebp                                     ; 10001BC5 _ 55
        push    esi                                     ; 10001BC6 _ 56
        mov     ebp, dword [ebx+24H]                    ; 10001BC7 _ 8B. 6B, 24
        push    edi                                     ; 10001BCA _ 57
?_0082: mov     eax, dword [ebx+64H]                    ; 10001BCB _ 8B. 43, 64
        mov     edx, dword [ebx+34H]                    ; 10001BCE _ 8B. 53, 34
        mov     ecx, dword [ebx+6CH]                    ; 10001BD1 _ 8B. 4B, 6C
        sub     edx, eax                                ; 10001BD4 _ 2B. D0
        sub     edx, ecx                                ; 10001BD6 _ 2B. D1
        jnz     ?_0083                                  ; 10001BD8 _ 75, 0F
        test    eax, eax                                ; 10001BDA _ 85. C0
        jnz     ?_0084                                  ; 10001BDC _ 75, 17
        test    ecx, ecx                                ; 10001BDE _ 85. C9
        jnz     ?_0084                                  ; 10001BE0 _ 75, 13
        mov     edx, ebp                                ; 10001BE2 _ 8B. D5
        jmp     ?_0091                                  ; 10001BE4 _ E9, 0000008B

?_0083: cmp     edx, -1                                 ; 10001BE9 _ 83. FA, FF
        jnz     ?_0084                                  ; 10001BEC _ 75, 07
        mov     edx, 4294967294                         ; 10001BEE _ BA, FFFFFFFE
        jmp     ?_0091                                  ; 10001BF3 _ EB, 7F

?_0084: mov     ecx, dword [ebx+24H]                    ; 10001BF5 _ 8B. 4B, 24
        lea     ecx, [ecx+ebp-106H]                     ; 10001BF8 _ 8D. 8C 29, FFFFFEFA
        cmp     eax, ecx                                ; 10001BFF _ 3B. C1
        jc      ?_0091                                  ; 10001C01 _ 72, 71
        mov     edi, dword [ebx+30H]                    ; 10001C03 _ 8B. 7B, 30
        mov     ecx, ebp                                ; 10001C06 _ 8B. CD
        mov     eax, ecx                                ; 10001C08 _ 8B. C1
        lea     esi, [edi+ebp]                          ; 10001C0A _ 8D. 34 2F
        shr     ecx, 2                                  ; 10001C0D _ C1. E9, 02
        rep movsd                                       ; 10001C10 _ F3: A5
        mov     ecx, eax                                ; 10001C12 _ 8B. C8
        and     ecx, 03H                                ; 10001C14 _ 83. E1, 03
        rep movsb                                       ; 10001C17 _ F3: A4
        mov     esi, dword [ebx+68H]                    ; 10001C19 _ 8B. 73, 68
        mov     ecx, dword [ebx+64H]                    ; 10001C1C _ 8B. 4B, 64
        mov     eax, dword [ebx+54H]                    ; 10001C1F _ 8B. 43, 54
        sub     esi, ebp                                ; 10001C22 _ 2B. F5
        sub     ecx, ebp                                ; 10001C24 _ 2B. CD
        mov     dword [ebx+68H], esi                    ; 10001C26 _ 89. 73, 68
        mov     esi, dword [ebx+44H]                    ; 10001C29 _ 8B. 73, 44
        mov     dword [ebx+64H], ecx                    ; 10001C2C _ 89. 4B, 64
        mov     ecx, dword [ebx+3CH]                    ; 10001C2F _ 8B. 4B, 3C
        sub     eax, ebp                                ; 10001C32 _ 2B. C5
        mov     dword [ebx+54H], eax                    ; 10001C34 _ 89. 43, 54
        lea     ecx, [ecx+esi*2]                        ; 10001C37 _ 8D. 0C 71
?_0085: sub     ecx, 2                                  ; 10001C3A _ 83. E9, 02
        xor     eax, eax                                ; 10001C3D _ 33. C0
        mov     ax, word [ecx]                          ; 10001C3F _ 66: 8B. 01
        cmp     eax, ebp                                ; 10001C42 _ 3B. C5
        jc      ?_0086                                  ; 10001C44 _ 72, 04
        sub     eax, ebp                                ; 10001C46 _ 2B. C5
        jmp     ?_0087                                  ; 10001C48 _ EB, 02

?_0086: xor     eax, eax                                ; 10001C4A _ 33. C0
?_0087: dec     esi                                     ; 10001C4C _ 4E
        mov     word [ecx], ax                          ; 10001C4D _ 66: 89. 01
        jnz     ?_0085                                  ; 10001C50 _ 75, E8
        mov     eax, dword [ebx+38H]                    ; 10001C52 _ 8B. 43, 38
        mov     esi, ebp                                ; 10001C55 _ 8B. F5
        lea     ecx, [eax+ebp*2]                        ; 10001C57 _ 8D. 0C 68
?_0088: sub     ecx, 2                                  ; 10001C5A _ 83. E9, 02
        xor     eax, eax                                ; 10001C5D _ 33. C0
        mov     ax, word [ecx]                          ; 10001C5F _ 66: 8B. 01
        cmp     eax, ebp                                ; 10001C62 _ 3B. C5
        jc      ?_0089                                  ; 10001C64 _ 72, 04
        sub     eax, ebp                                ; 10001C66 _ 2B. C5
        jmp     ?_0090                                  ; 10001C68 _ EB, 02

?_0089: xor     eax, eax                                ; 10001C6A _ 33. C0
?_0090: dec     esi                                     ; 10001C6C _ 4E
        mov     word [ecx], ax                          ; 10001C6D _ 66: 89. 01
        jnz     ?_0088                                  ; 10001C70 _ 75, E8
        add     edx, ebp                                ; 10001C72 _ 03. D5
?_0091: mov     eax, dword [ebx]                        ; 10001C74 _ 8B. 03
        mov     ecx, dword [eax+4H]                     ; 10001C76 _ 8B. 48, 04
        test    ecx, ecx                                ; 10001C79 _ 85. C9
        jz      ?_0093                                  ; 10001C7B _ 74, 60
        mov     ecx, dword [ebx+6CH]                    ; 10001C7D _ 8B. 4B, 6C
        mov     esi, dword [ebx+64H]                    ; 10001C80 _ 8B. 73, 64
        push    edx                                     ; 10001C83 _ 52
        mov     edx, dword [ebx+30H]                    ; 10001C84 _ 8B. 53, 30
        add     ecx, esi                                ; 10001C87 _ 03. CE
        add     ecx, edx                                ; 10001C89 _ 03. CA
        push    ecx                                     ; 10001C8B _ 51
        push    eax                                     ; 10001C8C _ 50
        call    ?_0094                                  ; 10001C8D _ E8, 0000005E
        mov     ecx, dword [ebx+6CH]                    ; 10001C92 _ 8B. 4B, 6C
        add     esp, 12                                 ; 10001C95 _ 83. C4, 0C
        add     ecx, eax                                ; 10001C98 _ 03. C8
        mov     esi, ecx                                ; 10001C9A _ 8B. F1
        mov     dword [ebx+6CH], ecx                    ; 10001C9C _ 89. 4B, 6C
        cmp     esi, 3                                  ; 10001C9F _ 83. FE, 03
        jc      ?_0092                                  ; 10001CA2 _ 72, 24
        mov     edx, dword [ebx+64H]                    ; 10001CA4 _ 8B. 53, 64
        mov     eax, dword [ebx+30H]                    ; 10001CA7 _ 8B. 43, 30
        mov     ecx, dword [ebx+50H]                    ; 10001CAA _ 8B. 4B, 50
        lea     edi, [edx+eax]                          ; 10001CAD _ 8D. 3C 02
        xor     eax, eax                                ; 10001CB0 _ 33. C0
        mov     al, byte [edi]                          ; 10001CB2 _ 8A. 07
        mov     dword [ebx+40H], eax                    ; 10001CB4 _ 89. 43, 40
        shl     eax, cl                                 ; 10001CB7 _ D3. E0
        xor     ecx, ecx                                ; 10001CB9 _ 33. C9
        mov     cl, byte [edi+1H]                       ; 10001CBB _ 8A. 4F, 01
        xor     eax, ecx                                ; 10001CBE _ 33. C1
        mov     ecx, dword [ebx+4CH]                    ; 10001CC0 _ 8B. 4B, 4C
        and     eax, ecx                                ; 10001CC3 _ 23. C1
        mov     dword [ebx+40H], eax                    ; 10001CC5 _ 89. 43, 40
?_0092: cmp     esi, 262                                ; 10001CC8 _ 81. FE, 00000106
        jnc     ?_0093                                  ; 10001CCE _ 73, 0D
        mov     edx, dword [ebx]                        ; 10001CD0 _ 8B. 13
        mov     eax, dword [edx+4H]                     ; 10001CD2 _ 8B. 42, 04
        test    eax, eax                                ; 10001CD5 _ 85. C0
        jne     ?_0082                                  ; 10001CD7 _ 0F 85, FFFFFEEE
?_0093: pop     edi                                     ; 10001CDD _ 5F
        pop     esi                                     ; 10001CDE _ 5E
        pop     ebp                                     ; 10001CDF _ 5D
        pop     ebx                                     ; 10001CE0 _ 5B
        ret                                             ; 10001CE1 _ C3

        nop                                             ; 10001CE2 _ 90
        nop                                             ; 10001CE3 _ 90
        nop                                             ; 10001CE4 _ 90
        nop                                             ; 10001CE5 _ 90
        nop                                             ; 10001CE6 _ 90
        nop                                             ; 10001CE7 _ 90
        nop                                             ; 10001CE8 _ 90
        nop                                             ; 10001CE9 _ 90
        nop                                             ; 10001CEA _ 90
        nop                                             ; 10001CEB _ 90
        nop                                             ; 10001CEC _ 90
        nop                                             ; 10001CED _ 90
        nop                                             ; 10001CEE _ 90
        nop                                             ; 10001CEF _ 90

