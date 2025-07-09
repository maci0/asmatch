; ---- 10008C96 ----
?_0900: ; Local function
        mov     esi, dword [edi+7CH]                    ; 10008C96 _ 8B. 77, 7C
        test    esi, esi                                ; 10008C99 _ 85. F6
        jnz     ?_0901                                  ; 10008C9B _ 75, 09
        pop     edi                                     ; 10008C9D _ 5F
        pop     esi                                     ; 10008C9E _ 5E
        mov     eax, 4294967194                         ; 10008C9F _ B8, FFFFFF9A
        pop     ebp                                     ; 10008CA4 _ 5D
        ret                                             ; 10008CA5 _ C3
