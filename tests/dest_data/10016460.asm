; ---- 10016460 ----
?_2482: ; Local function
        mov     ecx, dword [?_5693]                     ; 10016460 _ 8B. 0D, 101DE450(d)
        xor     eax, eax                                ; 10016466 _ 33. C0
        cmp     ecx, eax                                ; 10016468 _ 3B. C8
        push    ebx                                     ; 1001646A _ 53
        jnz     ?_2483                                  ; 1001646B _ 75, 02
        pop     ebx                                     ; 1001646D _ 5B
        ret                                             ; 1001646E _ C3

