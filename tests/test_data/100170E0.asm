; ---- 100170E0 ----
?_2609: ; Local function
        mov     eax, dword [?_5668]                     ; 100170E0 _ A1, 100A8C30(d)
        xor     edx, edx                                ; 100170E5 _ 33. D2
        cmp     eax, edx                                ; 100170E7 _ 3B. C2
        jnz     ?_2610                                  ; 100170E9 _ 75, 03
        xor     eax, eax                                ; 100170EB _ 33. C0
        ret                                             ; 100170ED _ C3

