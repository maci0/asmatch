; ---- 1000EAF4 ----
?_1648: ; Local function
        mov     eax, dword [esp+10H]                    ; 1000EAF4 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000EAF8 _ 85. C0
        jnz     ?_1649                                  ; 1000EAFA _ 75, 0C
        mov     eax, dword [esp+4H]                     ; 1000EAFC _ 8B. 44 24, 04
        test    eax, eax                                ; 1000EB00 _ 85. C0
        jnz     ?_1649                                  ; 1000EB02 _ 75, 04
        mov     eax, dword [esp+8H]                     ; 1000EB04 _ 8B. 44 24, 08
?_1649: mov     ecx, dword [esi+14H]                    ; 1000EB08 _ 8B. 4E, 14
        add     eax, ecx                                ; 1000EB0B _ 03. C1
        mov     ecx, dword [esi+18H]                    ; 1000EB0D _ 8B. 4E, 18
        dec     ecx                                     ; 1000EB10 _ 49
        jz      ?_1651                                  ; 1000EB11 _ 74, 37
        dec     ecx                                     ; 1000EB13 _ 49
        jz      ?_1650                                  ; 1000EB14 _ 74, 1B
        sub     ecx, 2                                  ; 1000EB16 _ 83. E9, 02
        jnz     ?_1652                                  ; 1000EB19 _ 75, 43
        mov     ecx, dword [esi+20H]                    ; 1000EB1B _ 8B. 4E, 20
        mov     edx, dword [eax]                        ; 1000EB1E _ 8B. 10
        not     ecx                                     ; 1000EB20 _ F7. D1
        and     edx, ecx                                ; 1000EB22 _ 23. D1
        mov     dword [eax], edx                        ; 1000EB24 _ 89. 10
        mov     ecx, edx                                ; 1000EB26 _ 8B. CA
        mov     edx, dword [esi+1CH]                    ; 1000EB28 _ 8B. 56, 1C
        or      edx, ecx                                ; 1000EB2B _ 0B. D1
        mov     dword [eax], edx                        ; 1000EB2D _ 89. 10
        jmp     ?_1652                                  ; 1000EB2F _ EB, 2D

?_1650: mov     cx, word [esi+20H]                      ; 1000EB31 _ 66: 8B. 4E, 20
        not     cx                                      ; 1000EB35 _ 66: F7. D1
        and     word [eax], cx                          ; 1000EB38 _ 66: 21. 08
        mov     cx, word [eax]                          ; 1000EB3B _ 66: 8B. 08
        mov     dx, word [esi+1CH]                      ; 1000EB3E _ 66: 8B. 56, 1C
        or      dx, cx                                  ; 1000EB42 _ 66: 0B. D1
        mov     word [eax], dx                          ; 1000EB45 _ 66: 89. 10
        jmp     ?_1652                                  ; 1000EB48 _ EB, 14

?_1651: mov     cl, byte [esi+20H]                      ; 1000EB4A _ 8A. 4E, 20
        mov     dl, byte [eax]                          ; 1000EB4D _ 8A. 10
        not     cl                                      ; 1000EB4F _ F6. D1
        and     dl, cl                                  ; 1000EB51 _ 22. D1
        mov     byte [eax], dl                          ; 1000EB53 _ 88. 10
        mov     cl, dl                                  ; 1000EB55 _ 8A. CA
        mov     dl, byte [esi+1CH]                      ; 1000EB57 _ 8A. 56, 1C
        or      dl, cl                                  ; 1000EB5A _ 0A. D1
        mov     byte [eax], dl                          ; 1000EB5C _ 88. 10
?_1652: mov     eax, dword [esp+14H]                    ; 1000EB5E _ 8B. 44 24, 14
        test    eax, eax                                ; 1000EB62 _ 85. C0
        jz      ?_1653                                  ; 1000EB64 _ 74, 03
        mov     byte [eax], 1                           ; 1000EB66 _ C6. 00, 01
?_1653: xor     eax, eax                                ; 1000EB69 _ 33. C0
        pop     esi                                     ; 1000EB6B _ 5E
        add     esp, 8                                  ; 1000EB6C _ 83. C4, 08
        ret                                             ; 1000EB6F _ C3

