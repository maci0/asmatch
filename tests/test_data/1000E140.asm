; ---- 1000E140 ----
?_1558: ; Local function
        sub     esp, 16                                 ; 1000E140 _ 83. EC, 10
        mov     eax, dword [?_5380]                     ; 1000E143 _ A1, 10030B6C(d)
        push    ebx                                     ; 1000E148 _ 53
        push    ebp                                     ; 1000E149 _ 55
        mov     ebp, dword [esp+1CH]                    ; 1000E14A _ 8B. 6C 24, 1C
        push    esi                                     ; 1000E14E _ 56
        push    edi                                     ; 1000E14F _ 57
        mov     ecx, dword [ebp+10H]                    ; 1000E150 _ 8B. 4D, 10
        mov     dword [ebp+1AH], eax                    ; 1000E153 _ 89. 45, 1A
        push    ecx                                     ; 1000E156 _ 51
        push    ebp                                     ; 1000E157 _ 55
        call    ?_1389                                  ; 1000E158 _ E8, FFFFE933
        push    eax                                     ; 1000E15D _ 50
        lea     edx, [esp+1CH]                          ; 1000E15E _ 8D. 54 24, 1C
        push    0                                       ; 1000E162 _ 6A, 00
        push    edx                                     ; 1000E164 _ 52
        push    0                                       ; 1000E165 _ 6A, 00
        mov     dword [ebp+10H], eax                    ; 1000E167 _ 89. 45, 10
        call    ?_2425                                  ; 1000E16A _ E8, 00007D21
        add     esp, 24                                 ; 1000E16F _ 83. C4, 18
        test    eax, eax                                ; 1000E172 _ 85. C0
        jnz     ?_1559                                  ; 1000E174 _ 75, 26
        push    1                                       ; 1000E176 _ 6A, 01
        push    ?_5305                                  ; 1000E178 _ 68, 1002CF9C(d)
        push    12091                                   ; 1000E17D _ 68, 00002F3B
        push    ?_5260                                  ; 1000E182 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E187 _ E8, FFFF54B4
        add     esp, 16                                 ; 1000E18C _ 83. C4, 10
        mov     eax, 1                                  ; 1000E18F _ B8, 00000001
        pop     edi                                     ; 1000E194 _ 5F
        pop     esi                                     ; 1000E195 _ 5E
        pop     ebp                                     ; 1000E196 _ 5D
        pop     ebx                                     ; 1000E197 _ 5B
        add     esp, 16                                 ; 1000E198 _ 83. C4, 10
        ret                                             ; 1000E19B _ C3

