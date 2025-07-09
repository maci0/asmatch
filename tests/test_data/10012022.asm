; ---- 10012022 ----
?_2067: ; Local function
        mov     esi, dword [esp+18H]                    ; 10012022 _ 8B. 74 24, 18
        push    esi                                     ; 10012026 _ 56
        push    1                                       ; 10012027 _ 6A, 01
        push    4                                       ; 10012029 _ 6A, 04
        push    ebx                                     ; 1001202B _ 53
        call    ?_2085                                  ; 1001202C _ E8, 0000040F
        add     esp, 16                                 ; 10012031 _ 83. C4, 10
        test    eax, eax                                ; 10012034 _ 85. C0
        jnz     ?_2068                                  ; 10012036 _ 75, 06
        pop     edi                                     ; 10012038 _ 5F
        pop     esi                                     ; 10012039 _ 5E
        pop     ebp                                     ; 1001203A _ 5D
        pop     ebx                                     ; 1001203B _ 5B
        pop     ecx                                     ; 1001203C _ 59
        ret                                             ; 1001203D _ C3
