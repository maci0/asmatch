; ---- 1000E729 ----
?_1607: ; Local function
        mov     edx, dword [esp+8H]                     ; 1000E729 _ 8B. 54 24, 08
        xor     ecx, ecx                                ; 1000E72D _ 33. C9
        mov     cx, word [esi+14H]                      ; 1000E72F _ 66: 8B. 4E, 14
        add     edx, 20                                 ; 1000E733 _ 83. C2, 14
        push    ecx                                     ; 1000E736 _ 51
        push    edx                                     ; 1000E737 _ 52
        call    ?_2502                                  ; 1000E738 _ E8, 00007E93
        mov     eax, dword [esp+14H]                    ; 1000E73D _ 8B. 44 24, 14
        add     esp, 8                                  ; 1000E741 _ 83. C4, 08
        test    eax, eax                                ; 1000E744 _ 85. C0
        jz      ?_1608                                  ; 1000E746 _ 74, 03
        mov     byte [eax], 1                           ; 1000E748 _ C6. 00, 01
?_1608: xor     eax, eax                                ; 1000E74B _ 33. C0
        pop     esi                                     ; 1000E74D _ 5E
        ret                                             ; 1000E74E _ C3

        nop                                             ; 1000E74F _ 90

