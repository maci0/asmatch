; ---- 1000E7D0 ----
?_1612: ; Local function
        sub     esp, 8                                  ; 1000E7D0 _ 83. EC, 08
        push    ebp                                     ; 1000E7D3 _ 55
        mov     ebp, dword [esp+10H]                    ; 1000E7D4 _ 8B. 6C 24, 10
        push    esi                                     ; 1000E7D8 _ 56
        mov     eax, dword [ebp+10H]                    ; 1000E7D9 _ 8B. 45, 10
        push    eax                                     ; 1000E7DC _ 50
        push    ebp                                     ; 1000E7DD _ 55
        call    ?_1389                                  ; 1000E7DE _ E8, FFFFE2AD
        mov     esi, eax                                ; 1000E7E3 _ 8B. F0
        lea     ecx, [esp+14H]                          ; 1000E7E5 _ 8D. 4C 24, 14
        push    esi                                     ; 1000E7E9 _ 56
        lea     edx, [esp+14H]                          ; 1000E7EA _ 8D. 54 24, 14
        push    ecx                                     ; 1000E7EE _ 51
        lea     eax, [esp+24H]                          ; 1000E7EF _ 8D. 44 24, 24
        push    edx                                     ; 1000E7F3 _ 52
        push    eax                                     ; 1000E7F4 _ 50
        call    ?_2425                                  ; 1000E7F5 _ E8, 00007696
        add     esp, 24                                 ; 1000E7FA _ 83. C4, 18
        test    eax, eax                                ; 1000E7FD _ 85. C0
        jnz     ?_1613                                  ; 1000E7FF _ 75, 24
        push    1                                       ; 1000E801 _ 6A, 01
        push    ?_5311                                  ; 1000E803 _ 68, 1002D0B0(d)
        push    12791                                   ; 1000E808 _ 68, 000031F7
        push    ?_5260                                  ; 1000E80D _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E812 _ E8, FFFF4E29
        add     esp, 16                                 ; 1000E817 _ 83. C4, 10
        mov     eax, 1                                  ; 1000E81A _ B8, 00000001
        pop     esi                                     ; 1000E81F _ 5E
        pop     ebp                                     ; 1000E820 _ 5D
        add     esp, 8                                  ; 1000E821 _ 83. C4, 08
        ret                                             ; 1000E824 _ C3
