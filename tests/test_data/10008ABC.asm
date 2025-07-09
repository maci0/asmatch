; ---- 10008ABC ----
?_0882: ; Local function
        mov     esi, dword [eax+7CH]                    ; 10008ABC _ 8B. 70, 7C
        test    esi, esi                                ; 10008ABF _ 85. F6
        jnz     ?_0883                                  ; 10008AC1 _ 75, 0D
        pop     edi                                     ; 10008AC3 _ 5F
        pop     esi                                     ; 10008AC4 _ 5E
        pop     ebp                                     ; 10008AC5 _ 5D
        mov     eax, 4294967194                         ; 10008AC6 _ B8, FFFFFF9A
        pop     ebx                                     ; 10008ACB _ 5B
        add     esp, 8                                  ; 10008ACC _ 83. C4, 08
        ret                                             ; 10008ACF _ C3
