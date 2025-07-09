; ---- 10021EF5 ----
?_4551: ; Local function
        cmp     eax, -4                                 ; 10021EF5 _ 83. F8, FC
        jnz     ?_4552                                  ; 10021EF8 _ 75, 0F
        mov     eax, dword [?_5590]                     ; 10021EFA _ A1, 100355CC(d)
        mov     dword [?_5621], 1                       ; 10021EFF _ C7. 05, 10035834(d), 00000001
?_4552: ret                                             ; 10021F09 _ C3
