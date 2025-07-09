; ---- 10019B80 ----
?_2963: ; Local function
        mov     eax, dword [esp+4H]                     ; 10019B80 _ 8B. 44 24, 04
        sub     esp, 8                                  ; 10019B84 _ 83. EC, 08
        push    esi                                     ; 10019B87 _ 56
        mov     esi, dword [eax+6H]                     ; 10019B88 _ 8B. 70, 06
        cmp     esi, -1                                 ; 10019B8B _ 83. FE, FF
        jz      ?_2966                                  ; 10019B8E _ 74, 3C
?_2964: lea     ecx, [esp+4H]                           ; 10019B90 _ 8D. 4C 24, 04
        push    esi                                     ; 10019B94 _ 56
        lea     edx, [esp+0CH]                          ; 10019B95 _ 8D. 54 24, 0C
        push    ecx                                     ; 10019B99 _ 51
        lea     eax, [esp+18H]                          ; 10019B9A _ 8D. 44 24, 18
        push    edx                                     ; 10019B9E _ 52
        push    eax                                     ; 10019B9F _ 50
        call    ?_2425                                  ; 10019BA0 _ E8, FFFFC2EB
        add     esp, 16                                 ; 10019BA5 _ 83. C4, 10
        test    eax, eax                                ; 10019BA8 _ 85. C0
        jz      ?_2966                                  ; 10019BAA _ 74, 20
        mov     eax, dword [esp+10H]                    ; 10019BAC _ 8B. 44 24, 10
        test    eax, eax                                ; 10019BB0 _ 85. C0
        jnz     ?_2967                                  ; 10019BB2 _ 75, 1A
        mov     eax, dword [esp+4H]                     ; 10019BB4 _ 8B. 44 24, 04
        test    eax, eax                                ; 10019BB8 _ 85. C0
        jnz     ?_2966                                  ; 10019BBA _ 75, 10
        mov     eax, dword [esp+8H]                     ; 10019BBC _ 8B. 44 24, 08
        test    eax, eax                                ; 10019BC0 _ 85. C0
        jz      ?_2965                                  ; 10019BC2 _ 74, 03
        mov     esi, dword [eax+6H]                     ; 10019BC4 _ 8B. 70, 06
?_2965: cmp     esi, -1                                 ; 10019BC7 _ 83. FE, FF
        jnz     ?_2964                                  ; 10019BCA _ 75, C4
?_2966: xor     eax, eax                                ; 10019BCC _ 33. C0
?_2967: pop     esi                                     ; 10019BCE _ 5E
        add     esp, 8                                  ; 10019BCF _ 83. C4, 08
        ret                                             ; 10019BD2 _ C3

        nop                                             ; 10019BD3 _ 90
        nop                                             ; 10019BD4 _ 90
        nop                                             ; 10019BD5 _ 90
        nop                                             ; 10019BD6 _ 90
        nop                                             ; 10019BD7 _ 90
        nop                                             ; 10019BD8 _ 90
        nop                                             ; 10019BD9 _ 90
        nop                                             ; 10019BDA _ 90
        nop                                             ; 10019BDB _ 90
        nop                                             ; 10019BDC _ 90
        nop                                             ; 10019BDD _ 90
        nop                                             ; 10019BDE _ 90
        nop                                             ; 10019BDF _ 90
