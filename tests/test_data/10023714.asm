; ---- 10023714 ----
?_4864: ; Local function
        push    edi                                     ; 10023714 _ 57
        mov     edi, dword [esp+8H]                     ; 10023715 _ 8B. 7C 24, 08
        xor     ecx, ecx                                ; 10023719 _ 33. C9
        test    edi, edi                                ; 1002371B _ 85. FF
        jnz     ?_4865                                  ; 1002371D _ 75, 04
        xor     eax, eax                                ; 1002371F _ 33. C0
        pop     edi                                     ; 10023721 _ 5F
        ret                                             ; 10023722 _ C3

