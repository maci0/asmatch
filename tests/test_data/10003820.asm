; ---- 10003820 ----
?_0287: ; Local function
        push    esi                                     ; 10003820 _ 56
        mov     esi, dword [esp+8H]                     ; 10003821 _ 8B. 74 24, 08
        mov     eax, dword [esi+3CH]                    ; 10003825 _ 8B. 46, 3C
        test    eax, eax                                ; 10003828 _ 85. C0
        jz      ?_0288                                  ; 1000382A _ 74, 05
        or      eax, 0FFFFFFFFH                         ; 1000382C _ 83. C8, FF
        pop     esi                                     ; 1000382F _ 5E
        ret                                             ; 10003830 _ C3
