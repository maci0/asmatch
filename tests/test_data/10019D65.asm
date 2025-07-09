; ---- 10019D65 ----
?_2984: ; Local function
        xor     ecx, ecx                                ; 10019D65 _ 33. C9
        mov     cl, byte [eax]                          ; 10019D67 _ 8A. 08
        push    ecx                                     ; 10019D69 _ 51
        call    ?_2693                                  ; 10019D6A _ E8, FFFFDC41
        mov     esi, dword [esp+1CH]                    ; 10019D6F _ 8B. 74 24, 1C
        xor     ebx, ebx                                ; 10019D73 _ 33. DB
        cmp     eax, 2                                  ; 10019D75 _ 83. F8, 02
        push    esi                                     ; 10019D78 _ 56
        push    edi                                     ; 10019D79 _ 57
        sete    bl                                      ; 10019D7A _ 0F 94. C3
        call    ?_2980                                  ; 10019D7D _ E8, FFFFFF7E
        mov     edx, dword [edi+14H]                    ; 10019D82 _ 8B. 57, 14
        push    esi                                     ; 10019D85 _ 56
        push    0                                       ; 10019D86 _ 6A, 00
        mov     ebp, eax                                ; 10019D88 _ 8B. E8
        push    1                                       ; 10019D8A _ 6A, 01
        push    edx                                     ; 10019D8C _ 52
        mov     dword [esp+30H], ebp                    ; 10019D8D _ 89. 6C 24, 30
        call    ?_2482                                  ; 10019D91 _ E8, FFFFC6CA
        add     esp, 28                                 ; 10019D96 _ 83. C4, 1C
        test    eax, eax                                ; 10019D99 _ 85. C0
        jz      ?_2985                                  ; 10019D9B _ 74, 21
        push    eax                                     ; 10019D9D _ 50
        push    edi                                     ; 10019D9E _ 57
        call    ?_2978                                  ; 10019D9F _ E8, FFFFFF2C
        mov     ecx, ebp                                ; 10019DA4 _ 8B. CD
        add     esp, 8                                  ; 10019DA6 _ 83. C4, 08
        sub     ecx, eax                                ; 10019DA9 _ 2B. C8
        mov     eax, dword [esp+1CH]                    ; 10019DAB _ 8B. 44 24, 1C
        cmp     ecx, eax                                ; 10019DAF _ 3B. C8
        jg      ?_3001                                  ; 10019DB1 _ 0F 8F, 0000010B
        pop     edi                                     ; 10019DB7 _ 5F
        pop     esi                                     ; 10019DB8 _ 5E
        pop     ebp                                     ; 10019DB9 _ 5D
        mov     eax, ecx                                ; 10019DBA _ 8B. C1
        pop     ebx                                     ; 10019DBC _ 5B
        ret                                             ; 10019DBD _ C3

?_2985: mov     ecx, dword [?_5693]                     ; 10019DBE _ 8B. 0D, 101DE450(d)
        mov     eax, esi                                ; 10019DC4 _ 8B. C6
        shl     eax, 6                                  ; 10019DC6 _ C1. E0, 06
        add     ecx, eax                                ; 10019DC9 _ 03. C8
        add     esi, ecx                                ; 10019DCB _ 03. F1
        test    ebx, ebx                                ; 10019DCD _ 85. DB
        jz      ?_2986                                  ; 10019DCF _ 74, 0D
        mov     al, byte [esi]                          ; 10019DD1 _ 8A. 06
        xor     edx, edx                                ; 10019DD3 _ 33. D2
        cmp     al, 23                                  ; 10019DD5 _ 3C, 17
        sete    dl                                      ; 10019DD7 _ 0F 94. C2
        mov     ebp, edx                                ; 10019DDA _ 8B. EA
        jmp     ?_2988                                  ; 10019DDC _ EB, 13

?_2986: mov     al, byte [esi]                          ; 10019DDE _ 8A. 06
        cmp     al, 23                                  ; 10019DE0 _ 3C, 17
        jz      ?_2987                                  ; 10019DE2 _ 74, 08
        cmp     al, 37                                  ; 10019DE4 _ 3C, 25
        jz      ?_2987                                  ; 10019DE6 _ 74, 04
        xor     ebp, ebp                                ; 10019DE8 _ 33. ED
        jmp     ?_2988                                  ; 10019DEA _ EB, 05

?_2987: mov     ebp, 1                                  ; 10019DEC _ BD, 00000001
?_2988: cmp     word [edi], 42                          ; 10019DF1 _ 66: 83. 3F, 2A
        jne     ?_2997                                  ; 10019DF5 _ 0F 85, 00000089
        mov     eax, dword [edi+14H]                    ; 10019DFB _ 8B. 47, 14
        push    5                                       ; 10019DFE _ 6A, 05
        push    1                                       ; 10019E00 _ 6A, 01
        push    eax                                     ; 10019E02 _ 50
        xor     esi, esi                                ; 10019E03 _ 33. F6
        call    ?_2482                                  ; 10019E05 _ E8, FFFFC656
        add     esp, 12                                 ; 10019E0A _ 83. C4, 0C
        test    eax, eax                                ; 10019E0D _ 85. C0
        jz      ?_2995                                  ; 10019E0F _ 74, 4F
?_2989: xor     ecx, ecx                                ; 10019E11 _ 33. C9
        mov     cx, word [eax]                          ; 10019E13 _ 66: 8B. 08
        mov     eax, dword [?_5693]                     ; 10019E16 _ A1, 101DE450(d)
        mov     edx, ecx                                ; 10019E1B _ 8B. D1
        shl     edx, 6                                  ; 10019E1D _ C1. E2, 06
        add     eax, edx                                ; 10019E20 _ 03. C2
        add     ecx, eax                                ; 10019E22 _ 03. C8
        test    ebx, ebx                                ; 10019E24 _ 85. DB
        jz      ?_2991                                  ; 10019E26 _ 74, 12
        mov     al, byte [ecx]                          ; 10019E28 _ 8A. 01
        test    ebp, ebp                                ; 10019E2A _ 85. ED
        jz      ?_2990                                  ; 10019E2C _ 74, 06
        cmp     al, 23                                  ; 10019E2E _ 3C, 17
        jnz     ?_2994                                  ; 10019E30 _ 75, 25
        jmp     ?_2993                                  ; 10019E32 _ EB, 22

?_2990: cmp     al, 23                                  ; 10019E34 _ 3C, 17
        jz      ?_2994                                  ; 10019E36 _ 74, 1F
        jmp     ?_2993                                  ; 10019E38 _ EB, 1C

?_2991: mov     cl, byte [ecx]                          ; 10019E3A _ 8A. 09
        test    ebp, ebp                                ; 10019E3C _ 85. ED
        jz      ?_2992                                  ; 10019E3E _ 74, 0C
        cmp     cl, 23                                  ; 10019E40 _ 80. F9, 17
        jz      ?_2993                                  ; 10019E43 _ 74, 11
        cmp     cl, 37                                  ; 10019E45 _ 80. F9, 25
        jnz     ?_2994                                  ; 10019E48 _ 75, 0D
        jmp     ?_2993                                  ; 10019E4A _ EB, 0A

?_2992: cmp     cl, 23                                  ; 10019E4C _ 80. F9, 17
        jz      ?_2994                                  ; 10019E4F _ 74, 06
        cmp     cl, 37                                  ; 10019E51 _ 80. F9, 25
        jz      ?_2994                                  ; 10019E54 _ 74, 01
?_2993: inc     esi                                     ; 10019E56 _ 46
?_2994: call    ?_2461                                  ; 10019E57 _ E8, FFFFC434
        test    eax, eax                                ; 10019E5C _ 85. C0
        jnz     ?_2989                                  ; 10019E5E _ 75, B1
?_2995: test    ebp, ebp                                ; 10019E60 _ 85. ED
        jz      ?_2996                                  ; 10019E62 _ 74, 10
        xor     ecx, ecx                                ; 10019E64 _ 33. C9
        mov     cl, byte [edi+1CH]                      ; 10019E66 _ 8A. 4F, 1C
        cmp     esi, ecx                                ; 10019E69 _ 3B. F1
        jl      ?_3000                                  ; 10019E6B _ 7C, 47
        pop     edi                                     ; 10019E6D _ 5F
        pop     esi                                     ; 10019E6E _ 5E
        pop     ebp                                     ; 10019E6F _ 5D
        xor     eax, eax                                ; 10019E70 _ 33. C0
        pop     ebx                                     ; 10019E72 _ 5B
        ret                                             ; 10019E73 _ C3

?_2996: xor     edx, edx                                ; 10019E74 _ 33. D2
        mov     dl, byte [edi+1DH]                      ; 10019E76 _ 8A. 57, 1D
        cmp     esi, edx                                ; 10019E79 _ 3B. F2
        jl      ?_3000                                  ; 10019E7B _ 7C, 37
        pop     edi                                     ; 10019E7D _ 5F
        pop     esi                                     ; 10019E7E _ 5E
        pop     ebp                                     ; 10019E7F _ 5D
        xor     eax, eax                                ; 10019E80 _ 33. C0
        pop     ebx                                     ; 10019E82 _ 5B
        ret                                             ; 10019E83 _ C3

?_2997: mov     eax, dword [edi+14H]                    ; 10019E84 _ 8B. 47, 14
        push    5                                       ; 10019E87 _ 6A, 05
        push    1                                       ; 10019E89 _ 6A, 01
        push    eax                                     ; 10019E8B _ 50
        xor     esi, esi                                ; 10019E8C _ 33. F6
        call    ?_2482                                  ; 10019E8E _ E8, FFFFC5CD
        add     esp, 12                                 ; 10019E93 _ 83. C4, 0C
        test    eax, eax                                ; 10019E96 _ 85. C0
        jz      ?_2999                                  ; 10019E98 _ 74, 0A
?_2998: inc     esi                                     ; 10019E9A _ 46
        call    ?_2461                                  ; 10019E9B _ E8, FFFFC3F0
        test    eax, eax                                ; 10019EA0 _ 85. C0
        jnz     ?_2998                                  ; 10019EA2 _ 75, F6
?_2999: xor     ecx, ecx                                ; 10019EA4 _ 33. C9
        mov     cl, byte [edi+1CH]                      ; 10019EA6 _ 8A. 4F, 1C
        cmp     esi, ecx                                ; 10019EA9 _ 3B. F1
        jl      ?_3000                                  ; 10019EAB _ 7C, 07
        pop     edi                                     ; 10019EAD _ 5F
        pop     esi                                     ; 10019EAE _ 5E
        pop     ebp                                     ; 10019EAF _ 5D
        xor     eax, eax                                ; 10019EB0 _ 33. C0
        pop     ebx                                     ; 10019EB2 _ 5B
        ret                                             ; 10019EB3 _ C3

?_3000: mov     eax, dword [esp+1CH]                    ; 10019EB4 _ 8B. 44 24, 1C
        mov     ecx, dword [esp+14H]                    ; 10019EB8 _ 8B. 4C 24, 14
        cmp     ecx, eax                                ; 10019EBC _ 3B. C8
        jge     ?_3001                                  ; 10019EBE _ 7D, 02
        mov     eax, ecx                                ; 10019EC0 _ 8B. C1
?_3001: pop     edi                                     ; 10019EC2 _ 5F
        pop     esi                                     ; 10019EC3 _ 5E
        pop     ebp                                     ; 10019EC4 _ 5D
        pop     ebx                                     ; 10019EC5 _ 5B
        ret                                             ; 10019EC6 _ C3

        nop                                             ; 10019EC7 _ 90
        nop                                             ; 10019EC8 _ 90
        nop                                             ; 10019EC9 _ 90
        nop                                             ; 10019ECA _ 90
        nop                                             ; 10019ECB _ 90
        nop                                             ; 10019ECC _ 90
        nop                                             ; 10019ECD _ 90
        nop                                             ; 10019ECE _ 90
        nop                                             ; 10019ECF _ 90
