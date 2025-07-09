; ---- 1002168A ----
?_4456: ; Local function
        mov     eax, dword [esp+4H]                     ; 1002168A _ 8B. 44 24, 04
        xor     ecx, ecx                                ; 1002168E _ 33. C9
?_4457: cmp     dword [eax], 0                          ; 10021690 _ 83. 38, 00
        jnz     ?_4458                                  ; 10021693 _ 75, 0D
        inc     ecx                                     ; 10021695 _ 41
        add     eax, 4                                  ; 10021696 _ 83. C0, 04
        cmp     ecx, 3                                  ; 10021699 _ 83. F9, 03
        jl      ?_4457                                  ; 1002169C _ 7C, F2
        push    1                                       ; 1002169E _ 6A, 01
        pop     eax                                     ; 100216A0 _ 58
        ret                                             ; 100216A1 _ C3
