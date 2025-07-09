; ---- 10022F29 ----
?_4772: ; Local function
        push    ebx                                     ; 10022F29 _ 53
        mul     ecx                                     ; 10022F2A _ F7. E1
        mov     ebx, eax                                ; 10022F2C _ 8B. D8
        mov     eax, dword [esp+8H]                     ; 10022F2E _ 8B. 44 24, 08
        mul     dword [esp+14H]                         ; 10022F32 _ F7. 64 24, 14
        add     ebx, eax                                ; 10022F36 _ 03. D8
        mov     eax, dword [esp+8H]                     ; 10022F38 _ 8B. 44 24, 08
        mul     ecx                                     ; 10022F3C _ F7. E1
        add     edx, ebx                                ; 10022F3E _ 03. D3
        pop     ebx                                     ; 10022F40 _ 5B
        ret     16                                      ; 10022F41 _ C2, 0010
