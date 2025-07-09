; ---- 1000EB70 ----
?_1654: ; Local function
        sub     esp, 8                                  ; 1000EB70 _ 83. EC, 08
        push    esi                                     ; 1000EB73 _ 56
        mov     esi, dword [esp+10H]                    ; 1000EB74 _ 8B. 74 24, 10
        mov     eax, dword [esi+10H]                    ; 1000EB78 _ 8B. 46, 10
        push    eax                                     ; 1000EB7B _ 50
        push    esi                                     ; 1000EB7C _ 56
        call    ?_1389                                  ; 1000EB7D _ E8, FFFFDF0E
        lea     ecx, [esp+18H]                          ; 1000EB82 _ 8D. 4C 24, 18
        mov     dword [esi+10H], eax                    ; 1000EB86 _ 89. 46, 10
        push    eax                                     ; 1000EB89 _ 50
        lea     edx, [esp+10H]                          ; 1000EB8A _ 8D. 54 24, 10
        push    ecx                                     ; 1000EB8E _ 51
        lea     eax, [esp+18H]                          ; 1000EB8F _ 8D. 44 24, 18
        push    edx                                     ; 1000EB93 _ 52
        push    eax                                     ; 1000EB94 _ 50
        call    ?_2425                                  ; 1000EB95 _ E8, 000072F6
        add     esp, 24                                 ; 1000EB9A _ 83. C4, 18
        test    eax, eax                                ; 1000EB9D _ 85. C0
        jnz     ?_1655                                  ; 1000EB9F _ 75, 23
        push    1                                       ; 1000EBA1 _ 6A, 01
        push    ?_5315                                  ; 1000EBA3 _ 68, 1002D134(d)
        push    13439                                   ; 1000EBA8 _ 68, 0000347F
        push    ?_5260                                  ; 1000EBAD _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000EBB2 _ E8, FFFF4A89
        add     esp, 16                                 ; 1000EBB7 _ 83. C4, 10
        mov     eax, 1                                  ; 1000EBBA _ B8, 00000001
        pop     esi                                     ; 1000EBBF _ 5E
        add     esp, 8                                  ; 1000EBC0 _ 83. C4, 08
        ret                                             ; 1000EBC3 _ C3
