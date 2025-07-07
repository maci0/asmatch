; ---- 100079F0 ----
?_0783: ; Local function
        mov     edx, dword [esp+0CH]                    ; 100079F0 _ 8B. 54 24, 0C
        sub     esp, 32                                 ; 100079F4 _ 83. EC, 20
        xor     eax, eax                                ; 100079F7 _ 33. C0
        lea     ecx, [esp+2H]                           ; 100079F9 _ 8D. 4C 24, 02
        push    esi                                     ; 100079FD _ 56
        lea     esi, [esp+6H]                           ; 100079FE _ 8D. 74 24, 06
        sub     edx, esi                                ; 10007A02 _ 2B. D6
        push    edi                                     ; 10007A04 _ 57
        mov     esi, 15                                 ; 10007A05 _ BE, 0000000F
?_0784: mov     di, word [edx+ecx]                      ; 10007A0A _ 66: 8B. 3C 0A
        add     ecx, 2                                  ; 10007A0E _ 83. C1, 02
        add     di, ax                                  ; 10007A11 _ 66: 03. F8
        shl     edi, 1                                  ; 10007A14 _ D1. E7
        mov     eax, edi                                ; 10007A16 _ 8B. C7
        dec     esi                                     ; 10007A18 _ 4E
        mov     word [ecx-2H], ax                       ; 10007A19 _ 66: 89. 41, FE
        jnz     ?_0784                                  ; 10007A1D _ 75, EB
        mov     eax, dword [esp+30H]                    ; 10007A1F _ 8B. 44 24, 30
        test    eax, eax                                ; 10007A23 _ 85. C0
        jl      ?_0787                                  ; 10007A25 _ 7C, 36
        mov     esi, dword [esp+2CH]                    ; 10007A27 _ 8B. 74 24, 2C
        lea     edi, [eax+1H]                           ; 10007A2B _ 8D. 78, 01
?_0785: xor     ecx, ecx                                ; 10007A2E _ 33. C9
        mov     cx, word [esi+2H]                       ; 10007A30 _ 66: 8B. 4E, 02
        test    ecx, ecx                                ; 10007A34 _ 85. C9
        jz      ?_0786                                  ; 10007A36 _ 74, 1F
        mov     dx, word [esp+ecx*2+8H]                 ; 10007A38 _ 66: 8B. 54 4C, 08
        push    ecx                                     ; 10007A3D _ 51
        mov     eax, edx                                ; 10007A3E _ 8B. C2
        and     eax, 0FFFFH                             ; 10007A40 _ 25, 0000FFFF
        inc     edx                                     ; 10007A45 _ 42
        push    eax                                     ; 10007A46 _ 50
        mov     word [esp+ecx*2+10H], dx                ; 10007A47 _ 66: 89. 54 4C, 10
        call    ?_0866                                  ; 10007A4C _ E8, 00000E2F
        add     esp, 8                                  ; 10007A51 _ 83. C4, 08
        mov     word [esi], ax                          ; 10007A54 _ 66: 89. 06
?_0786: add     esi, 4                                  ; 10007A57 _ 83. C6, 04
        dec     edi                                     ; 10007A5A _ 4F
        jnz     ?_0785                                  ; 10007A5B _ 75, D1
?_0787: pop     edi                                     ; 10007A5D _ 5F
        pop     esi                                     ; 10007A5E _ 5E
        add     esp, 32                                 ; 10007A5F _ 83. C4, 20
        ret                                             ; 10007A62 _ C3

        nop                                             ; 10007A63 _ 90
        nop                                             ; 10007A64 _ 90
        nop                                             ; 10007A65 _ 90
        nop                                             ; 10007A66 _ 90
        nop                                             ; 10007A67 _ 90
        nop                                             ; 10007A68 _ 90
        nop                                             ; 10007A69 _ 90
        nop                                             ; 10007A6A _ 90
        nop                                             ; 10007A6B _ 90
        nop                                             ; 10007A6C _ 90
        nop                                             ; 10007A6D _ 90
        nop                                             ; 10007A6E _ 90
        nop                                             ; 10007A6F _ 90

