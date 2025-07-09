; ---- 1000E750 ----
?_1609: ; Local function
        mov     eax, dword [?_5380]                     ; 1000E750 _ A1, 10030B6C(d)
        push    esi                                     ; 1000E755 _ 56
        mov     esi, dword [esp+8H]                     ; 1000E756 _ 8B. 74 24, 08
        mov     ecx, dword [esi+10H]                    ; 1000E75A _ 8B. 4E, 10
        mov     dword [esi+35H], eax                    ; 1000E75D _ 89. 46, 35
        push    ecx                                     ; 1000E760 _ 51
        push    esi                                     ; 1000E761 _ 56
        call    ?_1389                                  ; 1000E762 _ E8, FFFFE329
        xor     edx, edx                                ; 1000E767 _ 33. D2
        push    1                                       ; 1000E769 _ 6A, 01
        mov     dx, word [esi+14H]                      ; 1000E76B _ 66: 8B. 56, 14
        mov     dword [esi+10H], eax                    ; 1000E76F _ 89. 46, 10
        push    edx                                     ; 1000E772 _ 52
        push    eax                                     ; 1000E773 _ 50
        call    ?_2524                                  ; 1000E774 _ E8, 00007FE7
        add     esp, 20                                 ; 1000E779 _ 83. C4, 14
        test    eax, eax                                ; 1000E77C _ 85. C0
        jnz     ?_1610                                  ; 1000E77E _ 75, 07
        mov     eax, 1                                  ; 1000E780 _ B8, 00000001
        pop     esi                                     ; 1000E785 _ 5E
        ret                                             ; 1000E786 _ C3
