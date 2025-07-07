; ---- 10005E53 ----
?_0578: ; Local function
        mov     ebx, dword [esp+12CH]                   ; 10005E53 _ 8B. 9C 24, 0000012C
        mov     ecx, 1                                  ; 10005E5A _ B9, 00000001
        lea     eax, [esp+58H]                          ; 10005E5F _ 8D. 44 24, 58
        mov     ebp, dword [ebx]                        ; 10005E63 _ 8B. 2B
        mov     dword [esp+10H], ebp                    ; 10005E65 _ 89. 6C 24, 10
?_0579: cmp     dword [eax], edi                        ; 10005E69 _ 39. 38
        jnz     ?_0580                                  ; 10005E6B _ 75, 09
        inc     ecx                                     ; 10005E6D _ 41
        add     eax, 4                                  ; 10005E6E _ 83. C0, 04
        cmp     ecx, 15                                 ; 10005E71 _ 83. F9, 0F
        jbe     ?_0579                                  ; 10005E74 _ 76, F3
?_0580: mov     eax, ecx                                ; 10005E76 _ 8B. C1
        cmp     ebp, ecx                                ; 10005E78 _ 3B. E9
        mov     dword [esp+14H], eax                    ; 10005E7A _ 89. 44 24, 14
        jnc     ?_0581                                  ; 10005E7E _ 73, 06
        mov     dword [esp+10H], ecx                    ; 10005E80 _ 89. 4C 24, 10
        mov     ebp, ecx                                ; 10005E84 _ 8B. E9
?_0581: mov     edx, 15                                 ; 10005E86 _ BA, 0000000F
        lea     esi, [esp+90H]                          ; 10005E8B _ 8D. B4 24, 00000090
?_0582: cmp     dword [esi], edi                        ; 10005E92 _ 39. 3E
        jnz     ?_0583                                  ; 10005E94 _ 75, 08
        dec     edx                                     ; 10005E96 _ 4A
        sub     esi, 4                                  ; 10005E97 _ 83. EE, 04
        cmp     edx, edi                                ; 10005E9A _ 3B. D7
        jnz     ?_0582                                  ; 10005E9C _ 75, F4
?_0583: cmp     ebp, edx                                ; 10005E9E _ 3B. EA
        mov     dword [esp+2CH], edx                    ; 10005EA0 _ 89. 54 24, 2C
        jbe     ?_0584                                  ; 10005EA4 _ 76, 06
        mov     dword [esp+10H], edx                    ; 10005EA6 _ 89. 54 24, 10
        mov     ebp, edx                                ; 10005EAA _ 8B. EA
?_0584: mov     esi, 1                                  ; 10005EAC _ BE, 00000001
        mov     dword [ebx], ebp                        ; 10005EB1 _ 89. 2B
        shl     esi, cl                                 ; 10005EB3 _ D3. E6
        cmp     ecx, edx                                ; 10005EB5 _ 3B. CA
        jnc     ?_0586                                  ; 10005EB7 _ 73, 12
        lea     ebx, [esp+ecx*4+54H]                    ; 10005EB9 _ 8D. 5C 8C, 54
?_0585: sub     esi, dword [ebx]                        ; 10005EBD _ 2B. 33
        js      ?_0587                                  ; 10005EBF _ 78, 25
        inc     ecx                                     ; 10005EC1 _ 41
        add     ebx, 4                                  ; 10005EC2 _ 83. C3, 04
        shl     esi, 1                                  ; 10005EC5 _ D1. E6
        cmp     ecx, edx                                ; 10005EC7 _ 3B. CA
        jc      ?_0585                                  ; 10005EC9 _ 72, F2
?_0586: lea     ecx, [edx*4]                            ; 10005ECB _ 8D. 0C 95, 00000000
        mov     dword [esp+20H], ecx                    ; 10005ED2 _ 89. 4C 24, 20
        mov     ebx, dword [esp+ecx+54H]                ; 10005ED6 _ 8B. 5C 0C, 54
        lea     ecx, [esp+ecx+54H]                      ; 10005EDA _ 8D. 4C 0C, 54
        sub     esi, ebx                                ; 10005EDE _ 2B. F3
        mov     dword [esp+44H], esi                    ; 10005EE0 _ 89. 74 24, 44
        jns     ?_0588                                  ; 10005EE4 _ 79, 10
?_0587: pop     edi                                     ; 10005EE6 _ 5F
        pop     esi                                     ; 10005EE7 _ 5E
        pop     ebp                                     ; 10005EE8 _ 5D
        mov     eax, 4294967293                         ; 10005EE9 _ B8, FFFFFFFD
        pop     ebx                                     ; 10005EEE _ 5B
        add     esp, 256                                ; 10005EEF _ 81. C4, 00000100
        ret                                             ; 10005EF5 _ C3

