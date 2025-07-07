; ---- 10001CF0 ----
?_0094: ; Local function
        mov     ecx, dword [esp+0CH]                    ; 10001CF0 _ 8B. 4C 24, 0C
        push    ebx                                     ; 10001CF4 _ 53
        push    ebp                                     ; 10001CF5 _ 55
        mov     ebp, dword [esp+0CH]                    ; 10001CF6 _ 8B. 6C 24, 0C
        mov     eax, dword [ebp+4H]                     ; 10001CFA _ 8B. 45, 04
        mov     ebx, eax                                ; 10001CFD _ 8B. D8
        cmp     ebx, ecx                                ; 10001CFF _ 3B. D9
        jbe     ?_0095                                  ; 10001D01 _ 76, 02
        mov     ebx, ecx                                ; 10001D03 _ 8B. D9
?_0095: test    ebx, ebx                                ; 10001D05 _ 85. DB
        jnz     ?_0096                                  ; 10001D07 _ 75, 05
        pop     ebp                                     ; 10001D09 _ 5D
        xor     eax, eax                                ; 10001D0A _ 33. C0
        pop     ebx                                     ; 10001D0C _ 5B
        ret                                             ; 10001D0D _ C3

