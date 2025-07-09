; ---- 10019F3E ----
?_3003: ; Local function
        mov     edx, eax                                ; 10019F3E _ 8B. D0
        mov     eax, 8                                  ; 10019F40 _ B8, 00000008
        and     edx, 0FFH                               ; 10019F45 _ 81. E2, 000000FF
        lea     ecx, [esp+10H]                          ; 10019F4B _ 8D. 4C 24, 10
?_3004: cmp     eax, edx                                ; 10019F4F _ 3B. C2
        jz      ?_3005                                  ; 10019F51 _ 74, 0C
        mov     eax, dword [ecx+4H]                     ; 10019F53 _ 8B. 41, 04
        add     ecx, 4                                  ; 10019F56 _ 83. C1, 04
        cmp     eax, ebp                                ; 10019F59 _ 3B. C5
        jnz     ?_3004                                  ; 10019F5B _ 75, F2
        jmp     ?_3006                                  ; 10019F5D _ EB, 05

?_3005: mov     esi, 1                                  ; 10019F5F _ BE, 00000001
?_3006: mov     ebx, dword [esp+34H]                    ; 10019F64 _ 8B. 5C 24, 34
        mov     al, byte [ebx+2H]                       ; 10019F68 _ 8A. 43, 02
        cmp     al, 6                                   ; 10019F6B _ 3C, 06
        jz      ?_3007                                  ; 10019F6D _ 74, 04
        cmp     al, 7                                   ; 10019F6F _ 3C, 07
        jnz     ?_3008                                  ; 10019F71 _ 75, 11
?_3007: push    edi                                     ; 10019F73 _ 57
        call    ?_1326                                  ; 10019F74 _ E8, FFFF26F7
        add     esp, 4                                  ; 10019F79 _ 83. C4, 04
        test    eax, eax                                ; 10019F7C _ 85. C0
        jne     ?_3015                                  ; 10019F7E _ 0F 85, 000000CD
?_3008: cmp     edi, 377                                ; 10019F84 _ 81. FF, 00000179
        je      ?_3015                                  ; 10019F8A _ 0F 84, 000000C1
        cmp     edi, 378                                ; 10019F90 _ 81. FF, 0000017A
        je      ?_3015                                  ; 10019F96 _ 0F 84, 000000B5
        test    esi, esi                                ; 10019F9C _ 85. F6
        je      ?_3015                                  ; 10019F9E _ 0F 84, 000000AD
        mov     edx, dword [ebx+178H]                   ; 10019FA4 _ 8B. 93, 00000178
        push    edi                                     ; 10019FAA _ 57
        push    0                                       ; 10019FAB _ 6A, 00
        push    1                                       ; 10019FAD _ 6A, 01
        push    edx                                     ; 10019FAF _ 52
        call    ?_2482                                  ; 10019FB0 _ E8, FFFFC4AB
        mov     esi, eax                                ; 10019FB5 _ 8B. F0
        add     esp, 16                                 ; 10019FB7 _ 83. C4, 10
        test    esi, esi                                ; 10019FBA _ 85. F6
        jz      ?_3009                                  ; 10019FBC _ 74, 31
        push    edi                                     ; 10019FBE _ 57
        call    ?_1326                                  ; 10019FBF _ E8, FFFF26AC
        mov     esi, dword [esi+0EH]                    ; 10019FC4 _ 8B. 76, 0E
        mov     eax, dword [esp+40H]                    ; 10019FC7 _ 8B. 44 24, 40
        add     esp, 4                                  ; 10019FCB _ 83. C4, 04
        lea     ecx, [esi+eax]                          ; 10019FCE _ 8D. 0C 06
        cmp     ecx, 3                                  ; 10019FD1 _ 83. F9, 03
        jle     ?_3013                                  ; 10019FD4 _ 7E, 67
        mov     ebp, 3                                  ; 10019FD6 _ BD, 00000003
        xor     eax, eax                                ; 10019FDB _ 33. C0
        sub     ebp, esi                                ; 10019FDD _ 2B. EE
        pop     edi                                     ; 10019FDF _ 5F
        test    ebp, ebp                                ; 10019FE0 _ 85. ED
        setl    al                                      ; 10019FE2 _ 0F 9C. C0
        dec     eax                                     ; 10019FE5 _ 48
        pop     esi                                     ; 10019FE6 _ 5E
        and     eax, ebp                                ; 10019FE7 _ 23. C5
        pop     ebp                                     ; 10019FE9 _ 5D
        pop     ebx                                     ; 10019FEA _ 5B
        add     esp, 32                                 ; 10019FEB _ 83. C4, 20
        ret                                             ; 10019FEE _ C3

?_3009: mov     edx, dword [ebx+178H]                   ; 10019FEF _ 8B. 93, 00000178
        push    5                                       ; 10019FF5 _ 6A, 05
        push    1                                       ; 10019FF7 _ 6A, 01
        push    edx                                     ; 10019FF9 _ 52
        xor     esi, esi                                ; 10019FFA _ 33. F6
        call    ?_2482                                  ; 10019FFC _ E8, FFFFC45F
        add     esp, 12                                 ; 1001A001 _ 83. C4, 0C
        test    eax, eax                                ; 1001A004 _ 85. C0
        jz      ?_3012                                  ; 1001A006 _ 74, 27
?_3010: mov     edx, dword [?_5693]                     ; 1001A008 _ 8B. 15, 101DE450(d)
        xor     ecx, ecx                                ; 1001A00E _ 33. C9
        mov     cx, word [eax]                          ; 1001A010 _ 66: 8B. 08
        mov     eax, ecx                                ; 1001A013 _ 8B. C1
        shl     eax, 6                                  ; 1001A015 _ C1. E0, 06
        add     edx, eax                                ; 1001A018 _ 03. D0
        cmp     byte [ecx+edx], 9                       ; 1001A01A _ 80. 3C 11, 09
        jz      ?_3011                                  ; 1001A01E _ 74, 01
        inc     esi                                     ; 1001A020 _ 46
?_3011: call    ?_2461                                  ; 1001A021 _ E8, FFFFC26A
        test    eax, eax                                ; 1001A026 _ 85. C0
        jnz     ?_3010                                  ; 1001A028 _ 75, DE
        cmp     esi, 6                                  ; 1001A02A _ 83. FE, 06
        jge     ?_3014                                  ; 1001A02D _ 7D, 10
?_3012: mov     eax, dword [esp+3CH]                    ; 1001A02F _ 8B. 44 24, 3C
        mov     ebp, 3                                  ; 1001A033 _ BD, 00000003
        cmp     eax, 3                                  ; 1001A038 _ 83. F8, 03
        jg      ?_3014                                  ; 1001A03B _ 7F, 02
?_3013: mov     ebp, eax                                ; 1001A03D _ 8B. E8
?_3014: xor     eax, eax                                ; 1001A03F _ 33. C0
        pop     edi                                     ; 1001A041 _ 5F
        test    ebp, ebp                                ; 1001A042 _ 85. ED
        setl    al                                      ; 1001A044 _ 0F 9C. C0
        dec     eax                                     ; 1001A047 _ 48
        pop     esi                                     ; 1001A048 _ 5E
        and     eax, ebp                                ; 1001A049 _ 23. C5
        pop     ebp                                     ; 1001A04B _ 5D
        pop     ebx                                     ; 1001A04C _ 5B
        add     esp, 32                                 ; 1001A04D _ 83. C4, 20
        ret                                             ; 1001A050 _ C3
