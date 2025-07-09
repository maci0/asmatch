; ---- 1000EFB0 ----
?_1699: ; Local function
        mov     edx, dword [esp+4H]                     ; 1000EFB0 _ 8B. 54 24, 04
        cmp     byte [edx+10H], 1                       ; 1000EFB4 _ 80. 7A, 10, 01
        jnz     ?_1700                                  ; 1000EFB8 _ 75, 21
        xor     ecx, ecx                                ; 1000EFBA _ 33. C9
        mov     cl, byte [edx+3H]                       ; 1000EFBC _ 8A. 4A, 03
        mov     eax, ecx                                ; 1000EFBF _ 8B. C1
        shl     eax, 4                                  ; 1000EFC1 _ C1. E0, 04
        add     eax, ecx                                ; 1000EFC4 _ 03. C1
        shl     eax, 8                                  ; 1000EFC6 _ C1. E0, 08
        add     eax, ecx                                ; 1000EFC9 _ 03. C1
        shl     eax, 4                                  ; 1000EFCB _ C1. E0, 04
        add     eax, ecx                                ; 1000EFCE _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000EFD0 _ 8D. 04 C0
        or      dword [?_5761+eax*4], 20H               ; 1000EFD3 _ 83. 0C 85, 101DEB00(d), 20
?_1700: cmp     byte [edx+10H], 14                      ; 1000EFDB _ 80. 7A, 10, 0E
        jnz     ?_1701                                  ; 1000EFDF _ 75, 21
        xor     ecx, ecx                                ; 1000EFE1 _ 33. C9
        mov     cl, byte [edx+3H]                       ; 1000EFE3 _ 8A. 4A, 03
        mov     eax, ecx                                ; 1000EFE6 _ 8B. C1
        shl     eax, 4                                  ; 1000EFE8 _ C1. E0, 04
        add     eax, ecx                                ; 1000EFEB _ 03. C1
        shl     eax, 8                                  ; 1000EFED _ C1. E0, 08
        add     eax, ecx                                ; 1000EFF0 _ 03. C1
        shl     eax, 4                                  ; 1000EFF2 _ C1. E0, 04
        add     eax, ecx                                ; 1000EFF5 _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000EFF7 _ 8D. 04 C0
        or      dword [?_5761+eax*4], 40H               ; 1000EFFA _ 83. 0C 85, 101DEB00(d), 40
?_1701: cmp     byte [edx+10H], 18                      ; 1000F002 _ 80. 7A, 10, 12
        jnz     ?_1703                                  ; 1000F006 _ 75, 1F
        mov     edx, dword [edx+11H]                    ; 1000F008 _ 8B. 52, 11
        cmp     edx, 4                                  ; 1000F00B _ 83. FA, 04
        jl      ?_1702                                  ; 1000F00E _ 7C, 05
        mov     edx, 4                                  ; 1000F010 _ BA, 00000004
?_1702: mov     eax, dword [?_4924+edx*4]               ; 1000F015 _ 8B. 04 95, 10025718(d)
        mov     dword [?_5257], edx                     ; 1000F01C _ 89. 15, 1002C3F4(d)
        mov     dword [?_5256], eax                     ; 1000F022 _ A3, 1002C3F0(d)
?_1703: xor     eax, eax                                ; 1000F027 _ 33. C0
        ret                                             ; 1000F029 _ C3

        nop                                             ; 1000F02A _ 90
        nop                                             ; 1000F02B _ 90
        nop                                             ; 1000F02C _ 90
        nop                                             ; 1000F02D _ 90
        nop                                             ; 1000F02E _ 90
        nop                                             ; 1000F02F _ 90
