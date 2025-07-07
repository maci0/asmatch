; ---- 100151B0 ----
?_2341: ; Local function
        mov     eax, dword [esp+4H]                     ; 100151B0 _ 8B. 44 24, 04
        cmp     eax, 88                                 ; 100151B4 _ 83. F8, 58
        jl      ?_2342                                  ; 100151B7 _ 7C, 03
        xor     eax, eax                                ; 100151B9 _ 33. C0
        ret                                             ; 100151BB _ C3

