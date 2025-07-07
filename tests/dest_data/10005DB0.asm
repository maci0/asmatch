; ---- 10005DB0 ----
?_0575: ; Local function
        sub     esp, 256                                ; 10005DB0 _ 81. EC, 00000100
        mov     ecx, dword [esp+104H]                   ; 10005DB6 _ 8B. 8C 24, 00000104
        push    ebx                                     ; 10005DBD _ 53
        push    ebp                                     ; 10005DBE _ 55
        push    esi                                     ; 10005DBF _ 56
        mov     esi, dword [esp+114H]                   ; 10005DC0 _ 8B. B4 24, 00000114
        push    edi                                     ; 10005DC7 _ 57
        xor     edi, edi                                ; 10005DC8 _ 33. FF
        mov     edx, esi                                ; 10005DCA _ 8B. D6
        mov     dword [esp+54H], edi                    ; 10005DCC _ 89. 7C 24, 54
        mov     dword [esp+58H], edi                    ; 10005DD0 _ 89. 7C 24, 58
        mov     dword [esp+5CH], edi                    ; 10005DD4 _ 89. 7C 24, 5C
        mov     dword [esp+60H], edi                    ; 10005DD8 _ 89. 7C 24, 60
        mov     dword [esp+64H], edi                    ; 10005DDC _ 89. 7C 24, 64
        mov     dword [esp+68H], edi                    ; 10005DE0 _ 89. 7C 24, 68
        mov     dword [esp+6CH], edi                    ; 10005DE4 _ 89. 7C 24, 6C
        mov     dword [esp+70H], edi                    ; 10005DE8 _ 89. 7C 24, 70
        mov     dword [esp+74H], edi                    ; 10005DEC _ 89. 7C 24, 74
        mov     dword [esp+78H], edi                    ; 10005DF0 _ 89. 7C 24, 78
        mov     dword [esp+7CH], edi                    ; 10005DF4 _ 89. 7C 24, 7C
        mov     dword [esp+80H], edi                    ; 10005DF8 _ 89. BC 24, 00000080
        mov     dword [esp+84H], edi                    ; 10005DFF _ 89. BC 24, 00000084
        mov     dword [esp+88H], edi                    ; 10005E06 _ 89. BC 24, 00000088
        mov     dword [esp+8CH], edi                    ; 10005E0D _ 89. BC 24, 0000008C
        mov     dword [esp+90H], edi                    ; 10005E14 _ 89. BC 24, 00000090
?_0576: mov     eax, dword [ecx]                        ; 10005E1B _ 8B. 01
        add     ecx, 4                                  ; 10005E1D _ 83. C1, 04
        mov     ebp, dword [esp+eax*4+54H]              ; 10005E20 _ 8B. 6C 84, 54
        lea     eax, [esp+eax*4+54H]                    ; 10005E24 _ 8D. 44 84, 54
        inc     ebp                                     ; 10005E28 _ 45
        dec     edx                                     ; 10005E29 _ 4A
        mov     dword [eax], ebp                        ; 10005E2A _ 89. 28
        jnz     ?_0576                                  ; 10005E2C _ 75, ED
        cmp     dword [esp+54H], esi                    ; 10005E2E _ 39. 74 24, 54
        jnz     ?_0578                                  ; 10005E32 _ 75, 1F
        mov     ecx, dword [esp+128H]                   ; 10005E34 _ 8B. 8C 24, 00000128
        mov     edx, dword [esp+12CH]                   ; 10005E3B _ 8B. 94 24, 0000012C
        mov     dword [ecx], edi                        ; 10005E42 _ 89. 39
        mov     dword [edx], edi                        ; 10005E44 _ 89. 3A
?_0577: pop     edi                                     ; 10005E46 _ 5F
        pop     esi                                     ; 10005E47 _ 5E
        pop     ebp                                     ; 10005E48 _ 5D
        xor     eax, eax                                ; 10005E49 _ 33. C0
        pop     ebx                                     ; 10005E4B _ 5B
        add     esp, 256                                ; 10005E4C _ 81. C4, 00000100
        ret                                             ; 10005E52 _ C3

