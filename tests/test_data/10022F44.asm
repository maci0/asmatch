; ---- 10022F44 ----
?_4773: ; Local function
        push    ebp                                     ; 10022F44 _ 55
        mov     ebp, esp                                ; 10022F45 _ 8B. EC
        cmp     dword [ebp+10H], 0                      ; 10022F47 _ 83. 7D, 10, 00
        jnz     ?_4774                                  ; 10022F4B _ 75, 04
        xor     eax, eax                                ; 10022F4D _ 33. C0
        pop     ebp                                     ; 10022F4F _ 5D
        ret                                             ; 10022F50 _ C3
