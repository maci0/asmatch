; ---- 10008AE2 ----
?_0884: ; Local function
        mov     ecx, dword [esp+24H]                    ; 10008AE2 _ 8B. 4C 24, 24
        test    ecx, ecx                                ; 10008AE6 _ 85. C9
        jnz     ?_0886                                  ; 10008AE8 _ 75, 0A
?_0885: pop     edi                                     ; 10008AEA _ 5F
        pop     esi                                     ; 10008AEB _ 5E
        pop     ebp                                     ; 10008AEC _ 5D
        xor     eax, eax                                ; 10008AED _ 33. C0
        pop     ebx                                     ; 10008AEF _ 5B
        add     esp, 8                                  ; 10008AF0 _ 83. C4, 08
        ret                                             ; 10008AF3 _ C3
