; ---- 10020423 ----
?_4224: ; Local function
        mov     eax, dword [esp+4H]                     ; 10020423 _ 8B. 44 24, 04
        cmp     eax, dword [?_5811]                     ; 10020427 _ 3B. 05, 11766560(d)
        jc      ?_4225                                  ; 1002042D _ 72, 03
        xor     eax, eax                                ; 1002042F _ 33. C0
        ret                                             ; 10020431 _ C3

