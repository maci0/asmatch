; ---- 10010BD8 ----
?_1946: ; Local function
        cmp     edx, 2                                  ; 10010BD8 _ 83. FA, 02
        jne     ?_1950                                  ; 10010BDB _ 0F 85, 00000084
        lea     edx, [eax+0F0H]                         ; 10010BE1 _ 8D. 90, 000000F0
        mov     dword [esi+14H], ebx                    ; 10010BE7 _ 89. 5E, 14
        mov     dword [esi+0CH], edx                    ; 10010BEA _ 89. 56, 0C
        lea     edx, [eax+168H]                         ; 10010BED _ 8D. 90, 00000168
        mov     dword [esi+10H], edx                    ; 10010BF3 _ 89. 56, 10
        mov     ebp, 12                                 ; 10010BF6 _ BD, 0000000C
        mov     edx, 65535                              ; 10010BFB _ BA, 0000FFFF
?_1947: mov     dword [eax], ebx                        ; 10010C00 _ 89. 18
        mov     dword [eax+10H], ecx                    ; 10010C02 _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010C05 _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010C08 _ 66: 89. 50, 08
        add     ecx, 68                                 ; 10010C0C _ 83. C1, 44
        add     eax, 20                                 ; 10010C0F _ 83. C0, 14
        dec     ebp                                     ; 10010C12 _ 4D
        jnz     ?_1947                                  ; 10010C13 _ 75, EB
        mov     ebp, 6                                  ; 10010C15 _ BD, 00000006
?_1948: mov     dword [eax], 1                          ; 10010C1A _ C7. 00, 00000001
        mov     dword [eax+10H], ecx                    ; 10010C20 _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010C23 _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010C26 _ 66: 89. 50, 08
        add     ecx, 136                                ; 10010C2A _ 81. C1, 00000088
        add     eax, 20                                 ; 10010C30 _ 83. C0, 14
        dec     ebp                                     ; 10010C33 _ 4D
        jnz     ?_1948                                  ; 10010C34 _ 75, E4
        mov     ebp, 2                                  ; 10010C36 _ BD, 00000002
?_1949: mov     dword [eax], 2                          ; 10010C3B _ C7. 00, 00000002
        mov     dword [eax+10H], ecx                    ; 10010C41 _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010C44 _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010C47 _ 66: 89. 50, 08
        add     ecx, 272                                ; 10010C4B _ 81. C1, 00000110
        add     eax, 20                                 ; 10010C51 _ 83. C0, 14
        dec     ebp                                     ; 10010C54 _ 4D
        jnz     ?_1949                                  ; 10010C55 _ 75, E4
        mov     eax, dword [esp+14H]                    ; 10010C57 _ 8B. 44 24, 14
        pop     edi                                     ; 10010C5B _ 5F
        mov     dword [eax+65H], esi                    ; 10010C5C _ 89. 70, 65
        mov     eax, esi                                ; 10010C5F _ 8B. C6
        pop     esi                                     ; 10010C61 _ 5E
        pop     ebp                                     ; 10010C62 _ 5D
        pop     ebx                                     ; 10010C63 _ 5B
        ret                                             ; 10010C64 _ C3
