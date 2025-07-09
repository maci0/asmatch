; ---- 10017AB0 ----
?_2710: ; Local function
        mov     eax, dword [esp+4H]                     ; 10017AB0 _ 8B. 44 24, 04
        test    eax, eax                                ; 10017AB4 _ 85. C0
        jnz     ?_2711                                  ; 10017AB6 _ 75, 01
        ret                                             ; 10017AB8 _ C3
