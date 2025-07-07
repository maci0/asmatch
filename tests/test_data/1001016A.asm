; ---- 1001016A ----
?_1853: ; Local function
        mov     edx, dword [esi+14H]                    ; 1001016A _ 8B. 56, 14
        push    edx                                     ; 1001016D _ 52
        call    ?_2706                                  ; 1001016E _ E8, 000078FD
        mov     edi, eax                                ; 10010173 _ 8B. F8
        add     esp, 4                                  ; 10010175 _ 83. C4, 04
        test    edi, edi                                ; 10010178 _ 85. FF
        jnz     ?_1854                                  ; 1001017A _ 75, 09
        pop     edi                                     ; 1001017C _ 5F
        pop     esi                                     ; 1001017D _ 5E
        mov     eax, 1                                  ; 1001017E _ B8, 00000001
        pop     ebx                                     ; 10010183 _ 5B
        ret                                             ; 10010184 _ C3

