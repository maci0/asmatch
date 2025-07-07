; ---- 10003DE8 ----
?_0344: ; Local function
        mov     ebx, dword [esp+18H]                    ; 10003DE8 _ 8B. 5C 24, 18
        mov     eax, dword [edi+28H]                    ; 10003DEC _ 8B. 47, 28
        push    ebx                                     ; 10003DEF _ 53
        push    1                                       ; 10003DF0 _ 6A, 01
        push    eax                                     ; 10003DF2 _ 50
        call    near [edi+20H]                          ; 10003DF3 _ FF. 57, 20
        add     esp, 12                                 ; 10003DF6 _ 83. C4, 0C
        mov     dword [esi+28H], eax                    ; 10003DF9 _ 89. 46, 28
        test    eax, eax                                ; 10003DFC _ 85. C0
        jnz     ?_0345                                  ; 10003DFE _ 75, 1C
        mov     ecx, dword [esi+24H]                    ; 10003E00 _ 8B. 4E, 24
        mov     edx, dword [edi+28H]                    ; 10003E03 _ 8B. 57, 28
        push    ecx                                     ; 10003E06 _ 51
        push    edx                                     ; 10003E07 _ 52
        call    near [edi+24H]                          ; 10003E08 _ FF. 57, 24
        mov     eax, dword [edi+28H]                    ; 10003E0B _ 8B. 47, 28
        push    esi                                     ; 10003E0E _ 56
        push    eax                                     ; 10003E0F _ 50
        call    near [edi+24H]                          ; 10003E10 _ FF. 57, 24
        add     esp, 16                                 ; 10003E13 _ 83. C4, 10
        xor     eax, eax                                ; 10003E16 _ 33. C0
        pop     edi                                     ; 10003E18 _ 5F
        pop     esi                                     ; 10003E19 _ 5E
        pop     ebx                                     ; 10003E1A _ 5B
        ret                                             ; 10003E1B _ C3

