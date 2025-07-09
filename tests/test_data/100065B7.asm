; ---- 100065B7 ----
?_0641: ; Local function
        cmp     dword [ebp+8H], ebx                     ; 100065B7 _ 39. 5D, 08
        jnz     ?_0642                                  ; 100065BA _ 75, 09
        pop     edi                                     ; 100065BC _ 5F
        pop     esi                                     ; 100065BD _ 5E
        xor     eax, eax                                ; 100065BE _ 33. C0
        pop     ebx                                     ; 100065C0 _ 5B
        mov     esp, ebp                                ; 100065C1 _ 8B. E5
        pop     ebp                                     ; 100065C3 _ 5D
        ret                                             ; 100065C4 _ C3
