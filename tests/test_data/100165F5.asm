; ---- 100165F5 ----
?_2504: ; Local function
        mov     eax, dword [esp+18H]                    ; 100165F5 _ 8B. 44 24, 18
        xor     edi, edi                                ; 100165F9 _ 33. FF
?_2505: xor     ecx, ecx                                ; 100165FB _ 33. C9
        mov     cx, word [esi]                          ; 100165FD _ 66: 8B. 0E
        cmp     ecx, eax                                ; 10016600 _ 3B. C8
        jz      ?_2506                                  ; 10016602 _ 74, 14
        mov     ebx, esi                                ; 10016604 _ 8B. DE
        mov     esi, dword [esi+3FH]                    ; 10016606 _ 8B. 76, 3F
        inc     edi                                     ; 10016609 _ 47
        test    esi, esi                                ; 1001660A _ 85. F6
        jnz     ?_2505                                  ; 1001660C _ 75, ED
        pop     edi                                     ; 1001660E _ 5F
        pop     esi                                     ; 1001660F _ 5E
        pop     ebp                                     ; 10016610 _ 5D
        mov     eax, 4294967294                         ; 10016611 _ B8, FFFFFFFE
        pop     ebx                                     ; 10016616 _ 5B
        ret                                             ; 10016617 _ C3

