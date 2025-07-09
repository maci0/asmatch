; ---- 10011BF0 ----
?_2043: ; Local function
        sub     esp, 16                                 ; 10011BF0 _ 83. EC, 10
        push    ebx                                     ; 10011BF3 _ 53
        push    ebp                                     ; 10011BF4 _ 55
        push    esi                                     ; 10011BF5 _ 56
        mov     esi, dword [esp+20H]                    ; 10011BF6 _ 8B. 74 24, 20
        push    edi                                     ; 10011BFA _ 57
        mov     eax, dword [esi+15H]                    ; 10011BFB _ 8B. 46, 15
        cmp     eax, 27                                 ; 10011BFE _ 83. F8, 1B
        jz      ?_2044                                  ; 10011C01 _ 74, 12
        cmp     eax, 28                                 ; 10011C03 _ 83. F8, 1C
        jz      ?_2044                                  ; 10011C06 _ 74, 0D
        pop     edi                                     ; 10011C08 _ 5F
        pop     esi                                     ; 10011C09 _ 5E
        pop     ebp                                     ; 10011C0A _ 5D
        mov     eax, 4294967290                         ; 10011C0B _ B8, FFFFFFFA
        pop     ebx                                     ; 10011C10 _ 5B
        add     esp, 16                                 ; 10011C11 _ 83. C4, 10
        ret                                             ; 10011C14 _ C3
