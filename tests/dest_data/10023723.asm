; ---- 10023723 ----
?_4865: ; Local function
        cmp     dword [edi], 0                          ; 10023723 _ 83. 3F, 00
        lea     eax, [edi+4H]                           ; 10023726 _ 8D. 47, 04
        jz      ?_4867                                  ; 10023729 _ 74, 0A
?_4866: mov     edx, dword [eax]                        ; 1002372B _ 8B. 10
        inc     ecx                                     ; 1002372D _ 41
        add     eax, 4                                  ; 1002372E _ 83. C0, 04
        test    edx, edx                                ; 10023731 _ 85. D2
        jnz     ?_4866                                  ; 10023733 _ 75, F6
?_4867: push    ebx                                     ; 10023735 _ 53
        push    ebp                                     ; 10023736 _ 55
        lea     eax, [ecx*4+4H]                         ; 10023737 _ 8D. 04 8D, 00000004
        push    esi                                     ; 1002373E _ 56
        push    eax                                     ; 1002373F _ 50
        call    ?_3109                                  ; 10023740 _ E8, FFFF70B2
        mov     esi, eax                                ; 10023745 _ 8B. F0
        pop     ecx                                     ; 10023747 _ 59
        test    esi, esi                                ; 10023748 _ 85. F6
        mov     ebp, esi                                ; 1002374A _ 8B. EE
        jnz     ?_4868                                  ; 1002374C _ 75, 08
        push    9                                       ; 1002374E _ 6A, 09
        call    ?_3352                                  ; 10023750 _ E8, FFFF831C
        pop     ecx                                     ; 10023755 _ 59
?_4868: mov     eax, dword [edi]                        ; 10023756 _ 8B. 07
        mov     ebx, edi                                ; 10023758 _ 8B. DF
?_4869: test    eax, eax                                ; 1002375A _ 85. C0
        jz      ?_4870                                  ; 1002375C _ 74, 13
        push    eax                                     ; 1002375E _ 50
        add     ebx, 4                                  ; 1002375F _ 83. C3, 04
        call    ?_4880                                  ; 10023762 _ E8, 000000AB
        mov     dword [esi], eax                        ; 10023767 _ 89. 06
        mov     eax, dword [ebx]                        ; 10023769 _ 8B. 03
        pop     ecx                                     ; 1002376B _ 59
        add     esi, 4                                  ; 1002376C _ 83. C6, 04
        jmp     ?_4869                                  ; 1002376F _ EB, E9

