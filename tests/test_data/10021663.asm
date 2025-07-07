; ---- 10021663 ----
?_4453: ; Local function
        mov     eax, dword [esp+8H]                     ; 10021663 _ 8B. 44 24, 08
        mov     ecx, dword [esp+4H]                     ; 10021667 _ 8B. 4C 24, 04
        push    esi                                     ; 1002166B _ 56
        push    3                                       ; 1002166C _ 6A, 03
        sub     ecx, eax                                ; 1002166E _ 2B. C8
        pop     edx                                     ; 10021670 _ 5A
?_4454: mov     esi, dword [eax]                        ; 10021671 _ 8B. 30
        mov     dword [ecx+eax], esi                    ; 10021673 _ 89. 34 01
        add     eax, 4                                  ; 10021676 _ 83. C0, 04
        dec     edx                                     ; 10021679 _ 4A
        jnz     ?_4454                                  ; 1002167A _ 75, F5
        pop     esi                                     ; 1002167C _ 5E
        ret                                             ; 1002167D _ C3

