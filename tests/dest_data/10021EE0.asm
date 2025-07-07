; ---- 10021EE0 ----
?_4550: ; Local function
        cmp     eax, -3                                 ; 10021EE0 _ 83. F8, FD
        jnz     ?_4551                                  ; 10021EE3 _ 75, 10
        mov     dword [?_5621], 1                       ; 10021EE5 _ C7. 05, 10035834(d), 00000001
        jmp     near [imp_GetACP]                       ; 10021EEF _ FF. 25, 10024094(d)

