; ---- 1000D260 ----
?_1456: ; Local function
        push    ebx                                     ; 1000D260 _ 53
        mov     ebx, dword [esp+8H]                     ; 1000D261 _ 8B. 5C 24, 08
        push    esi                                     ; 1000D265 _ 56
        push    edi                                     ; 1000D266 _ 57
        cmp     dword [ebx+10H], -1                     ; 1000D267 _ 83. 7B, 10, FF
        jnz     ?_1457                                  ; 1000D26B _ 75, 09
        pop     edi                                     ; 1000D26D _ 5F
        pop     esi                                     ; 1000D26E _ 5E
        mov     eax, 1                                  ; 1000D26F _ B8, 00000001
        pop     ebx                                     ; 1000D274 _ 5B
        ret                                             ; 1000D275 _ C3
