; ---- 10008C80 ----
?_0899: ; Local function
        push    ebp                                     ; 10008C80 _ 55
        push    esi                                     ; 10008C81 _ 56
        push    edi                                     ; 10008C82 _ 57
        mov     edi, dword [esp+10H]                    ; 10008C83 _ 8B. 7C 24, 10
        xor     ebp, ebp                                ; 10008C87 _ 33. ED
        test    edi, edi                                ; 10008C89 _ 85. FF
        jnz     ?_0900                                  ; 10008C8B _ 75, 09
        pop     edi                                     ; 10008C8D _ 5F
        pop     esi                                     ; 10008C8E _ 5E
        mov     eax, 4294967194                         ; 10008C8F _ B8, FFFFFF9A
        pop     ebp                                     ; 10008C94 _ 5D
        ret                                             ; 10008C95 _ C3

