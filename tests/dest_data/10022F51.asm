; ---- 10022F51 ----
?_4774: ; Local function
        push    dword [?_5791]                          ; 10022F51 _ FF. 35, 11766208(d)
        push    dword [ebp+10H]                         ; 10022F57 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 10022F5A _ FF. 75, 0C
        push    dword [ebp+10H]                         ; 10022F5D _ FF. 75, 10
        push    dword [ebp+8H]                          ; 10022F60 _ FF. 75, 08
        push    1                                       ; 10022F63 _ 6A, 01
        push    dword [?_5797]                          ; 10022F65 _ FF. 35, 11766424(d)
        call    ?_4812                                  ; 10022F6B _ E8, 0000031D
        add     esp, 28                                 ; 10022F70 _ 83. C4, 1C
        test    eax, eax                                ; 10022F73 _ 85. C0
        jnz     ?_4775                                  ; 10022F75 _ 75, 07
        mov     eax, 2147483647                         ; 10022F77 _ B8, 7FFFFFFF
        pop     ebp                                     ; 10022F7C _ 5D
        ret                                             ; 10022F7D _ C3

