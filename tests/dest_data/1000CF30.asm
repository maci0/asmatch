; ---- 1000CF30 ----
?_1432: ; Local function
        sub     esp, 8                                  ; 1000CF30 _ 83. EC, 08
        push    esi                                     ; 1000CF33 _ 56
        mov     esi, dword [esp+10H]                    ; 1000CF34 _ 8B. 74 24, 10
        mov     eax, dword [esi+10H]                    ; 1000CF38 _ 8B. 46, 10
        push    eax                                     ; 1000CF3B _ 50
        push    esi                                     ; 1000CF3C _ 56
        call    ?_1389                                  ; 1000CF3D _ E8, FFFFFB4E
        lea     ecx, [esp+0CH]                          ; 1000CF42 _ 8D. 4C 24, 0C
        mov     dword [esi+10H], eax                    ; 1000CF46 _ 89. 46, 10
        push    eax                                     ; 1000CF49 _ 50
        lea     edx, [esp+14H]                          ; 1000CF4A _ 8D. 54 24, 14
        push    ecx                                     ; 1000CF4E _ 51
        lea     eax, [esp+20H]                          ; 1000CF4F _ 8D. 44 24, 20
        push    edx                                     ; 1000CF53 _ 52
        push    eax                                     ; 1000CF54 _ 50
        call    ?_2425                                  ; 1000CF55 _ E8, 00008F36
        add     esp, 24                                 ; 1000CF5A _ 83. C4, 18
        test    eax, eax                                ; 1000CF5D _ 85. C0
        jnz     ?_1433                                  ; 1000CF5F _ 75, 0E
        push    1                                       ; 1000CF61 _ 6A, 01
        push    ?_5275                                  ; 1000CF63 _ 68, 1002CA54(d)
        push    9485                                    ; 1000CF68 _ 68, 0000250D
        jmp     ?_1435                                  ; 1000CF6D _ EB, 45

?_1433: mov     ecx, dword [esp+10H]                    ; 1000CF6F _ 8B. 4C 24, 10
        mov     eax, dword [esp+4H]                     ; 1000CF73 _ 8B. 44 24, 04
        test    ecx, ecx                                ; 1000CF77 _ 85. C9
        jnz     ?_1434                                  ; 1000CF79 _ 75, 0A
        mov     ecx, dword [esp+8H]                     ; 1000CF7B _ 8B. 4C 24, 08
        test    ecx, ecx                                ; 1000CF7F _ 85. C9
        jnz     ?_1434                                  ; 1000CF81 _ 75, 02
        mov     ecx, eax                                ; 1000CF83 _ 8B. C8
?_1434: test    eax, eax                                ; 1000CF85 _ 85. C0
        jz      ?_1436                                  ; 1000CF87 _ 74, 42
        mov     edx, dword [esi+14H]                    ; 1000CF89 _ 8B. 56, 14
        add     eax, 456                                ; 1000CF8C _ 05, 000001C8
        add     edx, ecx                                ; 1000CF91 _ 03. D1
        cmp     edx, eax                                ; 1000CF93 _ 3B. D0
        jnz     ?_1436                                  ; 1000CF95 _ 75, 34
        test    dword [esi+1CH], 800000H                ; 1000CF97 _ F7. 46, 1C, 00800000
        jz      ?_1436                                  ; 1000CF9E _ 74, 2B
        test    dword [eax], 800000H                    ; 1000CFA0 _ F7. 00, 00800000
        jz      ?_1436                                  ; 1000CFA6 _ 74, 23
        push    1                                       ; 1000CFA8 _ 6A, 01
        push    ?_5274                                  ; 1000CFAA _ 68, 1002CA04(d)
        push    9523                                    ; 1000CFAF _ 68, 00002533
?_1435: push    ?_5260                                  ; 1000CFB4 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000CFB9 _ E8, FFFF6682
        add     esp, 16                                 ; 1000CFBE _ 83. C4, 10
        mov     eax, 1                                  ; 1000CFC1 _ B8, 00000001
        pop     esi                                     ; 1000CFC6 _ 5E
        add     esp, 8                                  ; 1000CFC7 _ 83. C4, 08
        ret                                             ; 1000CFCA _ C3

