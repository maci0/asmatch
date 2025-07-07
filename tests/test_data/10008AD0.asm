; ---- 10008AD0 ----
?_0883: ; Local function
        cmp     dword [esi], 0                          ; 10008AD0 _ 83. 3E, 00
        jnz     ?_0884                                  ; 10008AD3 _ 75, 0D
        pop     edi                                     ; 10008AD5 _ 5F
        pop     esi                                     ; 10008AD6 _ 5E
        pop     ebp                                     ; 10008AD7 _ 5D
        mov     eax, 4294967196                         ; 10008AD8 _ B8, FFFFFF9C
        pop     ebx                                     ; 10008ADD _ 5B
        add     esp, 8                                  ; 10008ADE _ 83. C4, 08
        ret                                             ; 10008AE1 _ C3

