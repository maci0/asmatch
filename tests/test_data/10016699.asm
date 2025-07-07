; ---- 10016699 ----
?_2513: ; Local function
        mov     eax, dword [esp+18H]                    ; 10016699 _ 8B. 44 24, 18
        xor     edi, edi                                ; 1001669D _ 33. FF
?_2514: cmp     dword [esi+2H], eax                     ; 1001669F _ 39. 46, 02
        jz      ?_2515                                  ; 100166A2 _ 74, 14
        mov     ebx, esi                                ; 100166A4 _ 8B. DE
        mov     esi, dword [esi+3FH]                    ; 100166A6 _ 8B. 76, 3F
        inc     edi                                     ; 100166A9 _ 47
        test    esi, esi                                ; 100166AA _ 85. F6
        jnz     ?_2514                                  ; 100166AC _ 75, F1
        pop     edi                                     ; 100166AE _ 5F
        pop     esi                                     ; 100166AF _ 5E
        pop     ebp                                     ; 100166B0 _ 5D
        mov     eax, 4294967294                         ; 100166B1 _ B8, FFFFFFFE
        pop     ebx                                     ; 100166B6 _ 5B
        ret                                             ; 100166B7 _ C3

