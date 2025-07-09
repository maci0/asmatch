; ---- 1000E8D0 ----
?_1625: ; Local function
        sub     esp, 8                                  ; 1000E8D0 _ 83. EC, 08
        push    ebp                                     ; 1000E8D3 _ 55
        mov     ebp, dword [esp+10H]                    ; 1000E8D4 _ 8B. 6C 24, 10
        mov     eax, dword [ebp+10H]                    ; 1000E8D8 _ 8B. 45, 10
        push    eax                                     ; 1000E8DB _ 50
        push    ebp                                     ; 1000E8DC _ 55
        call    ?_1389                                  ; 1000E8DD _ E8, FFFFE1AE
        lea     ecx, [esp+10H]                          ; 1000E8E2 _ 8D. 4C 24, 10
        mov     dword [ebp+10H], eax                    ; 1000E8E6 _ 89. 45, 10
        push    eax                                     ; 1000E8E9 _ 50
        lea     edx, [esp+10H]                          ; 1000E8EA _ 8D. 54 24, 10
        push    ecx                                     ; 1000E8EE _ 51
        lea     eax, [esp+20H]                          ; 1000E8EF _ 8D. 44 24, 20
        push    edx                                     ; 1000E8F3 _ 52
        push    eax                                     ; 1000E8F4 _ 50
        call    ?_2425                                  ; 1000E8F5 _ E8, 00007596
        add     esp, 24                                 ; 1000E8FA _ 83. C4, 18
        test    eax, eax                                ; 1000E8FD _ 85. C0
        jnz     ?_1626                                  ; 1000E8FF _ 75, 23
        push    1                                       ; 1000E901 _ 6A, 01
        push    ?_5312                                  ; 1000E903 _ 68, 1002D0D4(d)
        push    13037                                   ; 1000E908 _ 68, 000032ED
        push    ?_5260                                  ; 1000E90D _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E912 _ E8, FFFF4D29
        add     esp, 16                                 ; 1000E917 _ 83. C4, 10
        mov     eax, 1                                  ; 1000E91A _ B8, 00000001
        pop     ebp                                     ; 1000E91F _ 5D
        add     esp, 8                                  ; 1000E920 _ 83. C4, 08
        ret                                             ; 1000E923 _ C3
