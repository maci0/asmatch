; ---- 10011940 ----
?_2029: ; Local function
        sub     esp, 20                                 ; 10011940 _ 83. EC, 14
        lea     ecx, [esp+18H]                          ; 10011943 _ 8D. 4C 24, 18
        push    ebx                                     ; 10011947 _ 53
        push    ebp                                     ; 10011948 _ 55
        mov     ebp, dword [esp+20H]                    ; 10011949 _ 8B. 6C 24, 20
        push    esi                                     ; 1001194D _ 56
        mov     eax, dword [ebp]                        ; 1001194E _ 8B. 45, 00
        push    eax                                     ; 10011951 _ 50
        push    ecx                                     ; 10011952 _ 51
        push    0                                       ; 10011953 _ 6A, 00
        push    0                                       ; 10011955 _ 6A, 00
        call    ?_2425                                  ; 10011957 _ E8, 00004534
        mov     eax, dword [esp+34H]                    ; 1001195C _ 8B. 44 24, 34
        add     esp, 16                                 ; 10011960 _ 83. C4, 10
        test    eax, eax                                ; 10011963 _ 85. C0
        jnz     ?_2030                                  ; 10011965 _ 75, 0C
        pop     esi                                     ; 10011967 _ 5E
        pop     ebp                                     ; 10011968 _ 5D
        mov     eax, 4294967290                         ; 10011969 _ B8, FFFFFFFA
        pop     ebx                                     ; 1001196E _ 5B
        add     esp, 20                                 ; 1001196F _ 83. C4, 14
        ret                                             ; 10011972 _ C3

