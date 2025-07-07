; ---- 10016DC4 ----
?_2571: ; Local function
        mov     edx, dword [esp+220H]                   ; 10016DC4 _ 8B. 94 24, 00000220
        mov     ecx, dword [eax+0EH]                    ; 10016DCB _ 8B. 48, 0E
        add     ecx, edx                                ; 10016DCE _ 03. CA
        pop     edi                                     ; 10016DD0 _ 5F
        mov     dword [eax+0EH], ecx                    ; 10016DD1 _ 89. 48, 0E
        mov     eax, dword [esp+4H]                     ; 10016DD4 _ 8B. 44 24, 04
        pop     esi                                     ; 10016DD8 _ 5E
        add     esp, 524                                ; 10016DD9 _ 81. C4, 0000020C
        ret                                             ; 10016DDF _ C3

