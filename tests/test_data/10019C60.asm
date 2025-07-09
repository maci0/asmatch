; ---- 10019C60 ----
?_2973: ; Local function
        push    edi                                     ; 10019C60 _ 57
        mov     edi, dword [esp+8H]                     ; 10019C61 _ 8B. 7C 24, 08
        xor     eax, eax                                ; 10019C65 _ 33. C0
        test    edi, edi                                ; 10019C67 _ 85. FF
        jnz     ?_2974                                  ; 10019C69 _ 75, 02
        pop     edi                                     ; 10019C6B _ 5F
        ret                                             ; 10019C6C _ C3
