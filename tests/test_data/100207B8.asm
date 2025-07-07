; ---- 100207B8 ----
?_4270: ; Local function
        push    ebp                                     ; 100207B8 _ 55
        mov     ebp, esp                                ; 100207B9 _ 8B. EC
        mov     eax, dword [ebp+8H]                     ; 100207BB _ 8B. 45, 08
        test    eax, eax                                ; 100207BE _ 85. C0
        jnz     ?_4271                                  ; 100207C0 _ 75, 02
        pop     ebp                                     ; 100207C2 _ 5D
        ret                                             ; 100207C3 _ C3

