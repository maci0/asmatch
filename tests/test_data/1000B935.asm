; ---- 1000B935 ----
?_1235: ; Local function
        mov     edx, dword [esi+4H]                     ; 1000B935 _ 8B. 56, 04
        push    edx                                     ; 1000B938 _ 52
        call    ?_2817                                  ; 1000B939 _ E8, 0000CB62
        add     esp, 4                                  ; 1000B93E _ 83. C4, 04
        test    eax, eax                                ; 1000B941 _ 85. C0
        jnz     ?_1236                                  ; 1000B943 _ 75, 05
        pop     edi                                     ; 1000B945 _ 5F
        pop     esi                                     ; 1000B946 _ 5E
        pop     ebp                                     ; 1000B947 _ 5D
        pop     ebx                                     ; 1000B948 _ 5B
        ret                                             ; 1000B949 _ C3
