; ---- 100218CA ----
?_4479: ; Local function
        push    ebp                                     ; 100218CA _ 55
        mov     ebp, esp                                ; 100218CB _ 8B. EC
        sub     esp, 12                                 ; 100218CD _ 83. EC, 0C
        xor     eax, eax                                ; 100218D0 _ 33. C0
        push    eax                                     ; 100218D2 _ 50
        push    eax                                     ; 100218D3 _ 50
        push    eax                                     ; 100218D4 _ 50
        push    eax                                     ; 100218D5 _ 50
        push    dword [ebp+0CH]                         ; 100218D6 _ FF. 75, 0C
        lea     eax, [ebp+0CH]                          ; 100218D9 _ 8D. 45, 0C
        push    eax                                     ; 100218DC _ 50
        lea     eax, [ebp-0CH]                          ; 100218DD _ 8D. 45, F4
        push    eax                                     ; 100218E0 _ 50
        call    ?_4626                                  ; 100218E1 _ E8, 00000C78
        push    dword [ebp+8H]                          ; 100218E6 _ FF. 75, 08
        lea     eax, [ebp-0CH]                          ; 100218E9 _ 8D. 45, F4
        push    eax                                     ; 100218EC _ 50
        call    ?_4477                                  ; 100218ED _ E8, FFFFFFAC
        add     esp, 36                                 ; 100218F2 _ 83. C4, 24
        leave                                           ; 100218F5 _ C9
        ret                                             ; 100218F6 _ C3
