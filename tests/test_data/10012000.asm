; ---- 10012000 ----
?_2066: ; Local function
        push    ecx                                     ; 10012000 _ 51
        mov     eax, dword [esp+0CH]                    ; 10012001 _ 8B. 44 24, 0C
        push    ebx                                     ; 10012005 _ 53
        push    ebp                                     ; 10012006 _ 55
        push    esi                                     ; 10012007 _ 56
        push    edi                                     ; 10012008 _ 57
        push    eax                                     ; 10012009 _ 50
        call    ?_1936                                  ; 1001200A _ E8, FFFFE9C1
        mov     ebx, eax                                ; 1001200F _ 8B. D8
        add     esp, 4                                  ; 10012011 _ 83. C4, 04
        test    ebx, ebx                                ; 10012014 _ 85. DB
        mov     dword [esp+10H], ebx                    ; 10012016 _ 89. 5C 24, 10
        jnz     ?_2067                                  ; 1001201A _ 75, 06
        pop     edi                                     ; 1001201C _ 5F
        pop     esi                                     ; 1001201D _ 5E
        pop     ebp                                     ; 1001201E _ 5D
        pop     ebx                                     ; 1001201F _ 5B
        pop     ecx                                     ; 10012020 _ 59
        ret                                             ; 10012021 _ C3

