; ---- 1000BD28 ----
?_1264: ; Local function
        push    1                                       ; 1000BD28 _ 6A, 01
        push    ?_5237                                  ; 1000BD2A _ 68, 10029F78(d)
        push    3719                                    ; 1000BD2F _ 68, 00000E87
        push    ?_5244                                  ; 1000BD34 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BD39 _ E8, FFFF7902
        add     esp, 16                                 ; 1000BD3E _ 83. C4, 10
        xor     eax, eax                                ; 1000BD41 _ 33. C0
        pop     edi                                     ; 1000BD43 _ 5F
        pop     esi                                     ; 1000BD44 _ 5E
        pop     ebp                                     ; 1000BD45 _ 5D
        pop     ebx                                     ; 1000BD46 _ 5B
        add     esp, 260                                ; 1000BD47 _ 81. C4, 00000104
        ret                                             ; 1000BD4D _ C3

        nop                                             ; 1000BD4E _ 90
        nop                                             ; 1000BD4F _ 90
?_1265: mov     ecx, dword [esp+4H]                     ; 1000BD50 _ 8B. 4C 24, 04
        mov     al, byte [ecx+2H]                       ; 1000BD54 _ 8A. 41, 02
        cmp     al, 1                                   ; 1000BD57 _ 3C, 01
        jz      ?_1266                                  ; 1000BD59 _ 74, 04
        cmp     al, 2                                   ; 1000BD5B _ 3C, 02
        jnz     ?_1267                                  ; 1000BD5D _ 75, 32
?_1266: mov     al, byte [ecx+164H]                     ; 1000BD5F _ 8A. 81, 00000164
        test    al, al                                  ; 1000BD65 _ 84. C0
        jz      ?_1267                                  ; 1000BD67 _ 74, 28
        lea     eax, [ecx+1B4H]                         ; 1000BD69 _ 8D. 81, 000001B4
        push    esi                                     ; 1000BD6F _ 56
        mov     esi, eax                                ; 1000BD70 _ 8B. F0
        xor     edx, edx                                ; 1000BD72 _ 33. D2
        mov     dword [esi], edx                        ; 1000BD74 _ 89. 16
        mov     dword [esi+4H], edx                     ; 1000BD76 _ 89. 56, 04
        mov     dword [esi+8H], edx                     ; 1000BD79 _ 89. 56, 08
        mov     dword [esi+0CH], edx                    ; 1000BD7C _ 89. 56, 0C
        mov     dword [ecx+1C0H], -1                    ; 1000BD7F _ C7. 81, 000001C0, FFFFFFFF
        mov     ecx, dword [eax]                        ; 1000BD89 _ 8B. 08
        pop     esi                                     ; 1000BD8B _ 5E
        or      ecx, 01H                                ; 1000BD8C _ 83. C9, 01
        mov     dword [eax], ecx                        ; 1000BD8F _ 89. 08
?_1267: ret                                             ; 1000BD91 _ C3

        nop                                             ; 1000BD92 _ 90
        nop                                             ; 1000BD93 _ 90
        nop                                             ; 1000BD94 _ 90
        nop                                             ; 1000BD95 _ 90
        nop                                             ; 1000BD96 _ 90
        nop                                             ; 1000BD97 _ 90
        nop                                             ; 1000BD98 _ 90
        nop                                             ; 1000BD99 _ 90
        nop                                             ; 1000BD9A _ 90
        nop                                             ; 1000BD9B _ 90
        nop                                             ; 1000BD9C _ 90
        nop                                             ; 1000BD9D _ 90
        nop                                             ; 1000BD9E _ 90
        nop                                             ; 1000BD9F _ 90
?_1268: mov     eax, dword [esp+4H]                     ; 1000BDA0 _ 8B. 44 24, 04
        test    byte [eax+1CCH], 04H                    ; 1000BDA4 _ F6. 80, 000001CC, 04
        jz      ?_1269                                  ; 1000BDAB _ 74, 36
        mov     edx, dword [eax+16CH]                   ; 1000BDAD _ 8B. 90, 0000016C
        test    edx, edx                                ; 1000BDB3 _ 85. D2
        jz      ?_1269                                  ; 1000BDB5 _ 74, 2C
        xor     ecx, ecx                                ; 1000BDB7 _ 33. C9
        push    esi                                     ; 1000BDB9 _ 56
        mov     cl, byte [edx]                          ; 1000BDBA _ 8A. 0A
        mov     esi, dword [?_5668]                     ; 1000BDBC _ 8B. 35, 100A8C30(d)
        add     esi, ecx                                ; 1000BDC2 _ 03. F1
        lea     eax, [ecx+ecx*2]                        ; 1000BDC4 _ 8D. 04 49
        shl     eax, 4                                  ; 1000BDC7 _ C1. E0, 04
        add     eax, ecx                                ; 1000BDCA _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1000BDCC _ 8D. 04 40
        mov     cl, byte [esi+eax*4]                    ; 1000BDCF _ 8A. 0C 86
        pop     esi                                     ; 1000BDD2 _ 5E
        cmp     cl, 30                                  ; 1000BDD3 _ 80. F9, 1E
        jnz     ?_1269                                  ; 1000BDD6 _ 75, 0B
        mov     ecx, dword [edx+65H]                    ; 1000BDD8 _ 8B. 4A, 65
        xor     eax, eax                                ; 1000BDDB _ 33. C0
        test    ecx, ecx                                ; 1000BDDD _ 85. C9
        setne   al                                      ; 1000BDDF _ 0F 95. C0
        ret                                             ; 1000BDE2 _ C3

