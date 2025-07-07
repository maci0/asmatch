; ---- 1000E924 ----
?_1626: ; Local function
        mov     eax, dword [esp+10H]                    ; 1000E924 _ 8B. 44 24, 10
        push    ebx                                     ; 1000E928 _ 53
        test    eax, eax                                ; 1000E929 _ 85. C0
        push    edi                                     ; 1000E92B _ 57
        jz      ?_1627                                  ; 1000E92C _ 74, 04
        mov     edi, eax                                ; 1000E92E _ 8B. F8
        jmp     ?_1628                                  ; 1000E930 _ EB, 0E

?_1627: mov     eax, dword [esp+0CH]                    ; 1000E932 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000E936 _ 85. C0
        mov     edi, eax                                ; 1000E938 _ 8B. F8
        jnz     ?_1628                                  ; 1000E93A _ 75, 04
        mov     edi, dword [esp+10H]                    ; 1000E93C _ 8B. 7C 24, 10
?_1628: mov     cl, byte [ebp+14H]                      ; 1000E940 _ 8A. 4D, 14
        xor     ebx, ebx                                ; 1000E943 _ 33. DB
        test    cl, cl                                  ; 1000E945 _ 84. C9
        lea     eax, [ebp+15H]                          ; 1000E947 _ 8D. 45, 15
        jbe     ?_1636                                  ; 1000E94A _ 76, 5F
        push    esi                                     ; 1000E94C _ 56
?_1629: movsx   edx, byte [eax]                         ; 1000E94D _ 0F BE. 10
        movsx   esi, byte [eax+1H]                      ; 1000E950 _ 0F BE. 70, 01
        inc     eax                                     ; 1000E954 _ 40
        xor     ecx, ecx                                ; 1000E955 _ 33. C9
        inc     eax                                     ; 1000E957 _ 40
        mov     cx, word [eax]                          ; 1000E958 _ 66: 8B. 08
        add     eax, 2                                  ; 1000E95B _ 83. C0, 02
        add     ecx, edi                                ; 1000E95E _ 03. CF
        dec     edx                                     ; 1000E960 _ 4A
        jz      ?_1633                                  ; 1000E961 _ 74, 30
        dec     edx                                     ; 1000E963 _ 4A
        jz      ?_1631                                  ; 1000E964 _ 74, 18
        sub     edx, 2                                  ; 1000E966 _ 83. EA, 02
        jnz     ?_1635                                  ; 1000E969 _ 75, 35
        test    esi, esi                                ; 1000E96B _ 85. F6
        jbe     ?_1635                                  ; 1000E96D _ 76, 31
?_1630: mov     edx, dword [eax]                        ; 1000E96F _ 8B. 10
        add     eax, 4                                  ; 1000E971 _ 83. C0, 04
        mov     dword [ecx], edx                        ; 1000E974 _ 89. 11
        add     ecx, 4                                  ; 1000E976 _ 83. C1, 04
        dec     esi                                     ; 1000E979 _ 4E
        jnz     ?_1630                                  ; 1000E97A _ 75, F3
        jmp     ?_1635                                  ; 1000E97C _ EB, 22

?_1631: test    esi, esi                                ; 1000E97E _ 85. F6
        jbe     ?_1635                                  ; 1000E980 _ 76, 1E
?_1632: mov     dx, word [eax]                          ; 1000E982 _ 66: 8B. 10
        add     eax, 2                                  ; 1000E985 _ 83. C0, 02
        mov     word [ecx], dx                          ; 1000E988 _ 66: 89. 11
        add     ecx, 2                                  ; 1000E98B _ 83. C1, 02
        dec     esi                                     ; 1000E98E _ 4E
        jnz     ?_1632                                  ; 1000E98F _ 75, F1
        jmp     ?_1635                                  ; 1000E991 _ EB, 0D

?_1633: test    esi, esi                                ; 1000E993 _ 85. F6
        jbe     ?_1635                                  ; 1000E995 _ 76, 09
?_1634: mov     dl, byte [eax]                          ; 1000E997 _ 8A. 10
        mov     byte [ecx], dl                          ; 1000E999 _ 88. 11
        inc     ecx                                     ; 1000E99B _ 41
        inc     eax                                     ; 1000E99C _ 40
        dec     esi                                     ; 1000E99D _ 4E
        jnz     ?_1634                                  ; 1000E99E _ 75, F7
?_1635: xor     ecx, ecx                                ; 1000E9A0 _ 33. C9
        inc     ebx                                     ; 1000E9A2 _ 43
        mov     cl, byte [ebp+14H]                      ; 1000E9A3 _ 8A. 4D, 14
        cmp     ebx, ecx                                ; 1000E9A6 _ 3B. D9
        jc      ?_1629                                  ; 1000E9A8 _ 72, A3
        pop     esi                                     ; 1000E9AA _ 5E
?_1636: mov     eax, dword [esp+1CH]                    ; 1000E9AB _ 8B. 44 24, 1C
        pop     edi                                     ; 1000E9AF _ 5F
        test    eax, eax                                ; 1000E9B0 _ 85. C0
        pop     ebx                                     ; 1000E9B2 _ 5B
        jz      ?_1637                                  ; 1000E9B3 _ 74, 03
        mov     byte [eax], 1                           ; 1000E9B5 _ C6. 00, 01
?_1637: xor     eax, eax                                ; 1000E9B8 _ 33. C0
        pop     ebp                                     ; 1000E9BA _ 5D
        add     esp, 8                                  ; 1000E9BB _ 83. C4, 08
        ret                                             ; 1000E9BE _ C3

        nop                                             ; 1000E9BF _ 90

