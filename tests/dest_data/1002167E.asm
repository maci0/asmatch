; ---- 1002167E ----
?_4455: ; Local function
        push    edi                                     ; 1002167E _ 57
        mov     edi, dword [esp+8H]                     ; 1002167F _ 8B. 7C 24, 08
        xor     eax, eax                                ; 10021683 _ 33. C0
        stosd                                           ; 10021685 _ AB
        stosd                                           ; 10021686 _ AB
        stosd                                           ; 10021687 _ AB
        pop     edi                                     ; 10021688 _ 5F
        ret                                             ; 10021689 _ C3

