; ---- 10021EC0 ----
?_4549: ; Local function
        mov     eax, dword [esp+4H]                     ; 10021EC0 _ 8B. 44 24, 04
        and     dword [?_5621], 00H                     ; 10021EC4 _ 83. 25, 10035834(d), 00
        cmp     eax, -2                                 ; 10021ECB _ 83. F8, FE
        jnz     ?_4550                                  ; 10021ECE _ 75, 10
        mov     dword [?_5621], 1                       ; 10021ED0 _ C7. 05, 10035834(d), 00000001
        jmp     near [imp_GetOEMCP]                     ; 10021EDA _ FF. 25, 10024090(d)

