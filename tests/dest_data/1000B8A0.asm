; ---- 1000B8A0 ----
?_1227: ; Local function
        mov     ecx, dword [eax+194H]                   ; 1000B8A0 _ 8B. 88, 00000194
        mov     eax, dword [ebx+6H]                     ; 1000B8A6 _ 8B. 43, 06
        cmp     ecx, eax                                ; 1000B8A9 _ 3B. C8
        jge     ?_1228                                  ; 1000B8AB _ 7D, 07
        pop     edi                                     ; 1000B8AD _ 5F
        pop     esi                                     ; 1000B8AE _ 5E
        pop     ebp                                     ; 1000B8AF _ 5D
        xor     eax, eax                                ; 1000B8B0 _ 33. C0
        pop     ebx                                     ; 1000B8B2 _ 5B
        ret                                             ; 1000B8B3 _ C3

