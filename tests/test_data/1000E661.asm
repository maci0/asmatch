; ---- 1000E661 ----
?_1600: ; Local function
        mov     ecx, dword [esi+10H]                    ; 1000E661 _ 8B. 4E, 10
        mov     dword [eax+6H], ecx                     ; 1000E664 _ 89. 48, 06
        mov     eax, dword [esp+18H]                    ; 1000E667 _ 8B. 44 24, 18
        mov     edx, dword [edi]                        ; 1000E66B _ 8B. 17
        mov     dword [eax+3FH], edx                    ; 1000E66D _ 89. 50, 3F
        mov     eax, dword [esp+1CH]                    ; 1000E670 _ 8B. 44 24, 1C
        mov     ecx, dword [esp+18H]                    ; 1000E674 _ 8B. 4C 24, 18
        test    eax, eax                                ; 1000E678 _ 85. C0
        mov     dword [edi], ecx                        ; 1000E67A _ 89. 0F
        jz      ?_1601                                  ; 1000E67C _ 74, 03
        mov     byte [eax], 1                           ; 1000E67E _ C6. 00, 01
?_1601: pop     edi                                     ; 1000E681 _ 5F
        pop     esi                                     ; 1000E682 _ 5E
        xor     eax, eax                                ; 1000E683 _ 33. C0
        pop     ebx                                     ; 1000E685 _ 5B
        add     esp, 8                                  ; 1000E686 _ 83. C4, 08
        ret                                             ; 1000E689 _ C3

        nop                                             ; 1000E68A _ 90
        nop                                             ; 1000E68B _ 90
        nop                                             ; 1000E68C _ 90
        nop                                             ; 1000E68D _ 90
        nop                                             ; 1000E68E _ 90
        nop                                             ; 1000E68F _ 90

