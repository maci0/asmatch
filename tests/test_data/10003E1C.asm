; ---- 10003E1C ----
?_0345: ; Local function
        mov     ecx, dword [esp+14H]                    ; 10003E1C _ 8B. 4C 24, 14
        push    0                                       ; 10003E20 _ 6A, 00
        add     eax, ebx                                ; 10003E22 _ 03. C3
        push    edi                                     ; 10003E24 _ 57
        push    esi                                     ; 10003E25 _ 56
        mov     dword [esi+2CH], eax                    ; 10003E26 _ 89. 46, 2C
        mov     dword [esi+38H], ecx                    ; 10003E29 _ 89. 4E, 38
        mov     dword [esi], 0                          ; 10003E2C _ C7. 06, 00000000
        call    ?_0336                                  ; 10003E32 _ E8, FFFFFEE9
        add     esp, 12                                 ; 10003E37 _ 83. C4, 0C
        mov     eax, esi                                ; 10003E3A _ 8B. C6
        pop     edi                                     ; 10003E3C _ 5F
        pop     esi                                     ; 10003E3D _ 5E
        pop     ebx                                     ; 10003E3E _ 5B
        ret                                             ; 10003E3F _ C3
