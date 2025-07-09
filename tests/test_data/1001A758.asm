; ---- 1001A758 ----
?_3098: ; Local function
        push    esi                                     ; 1001A758 _ 56
        mov     esi, dword [esp+8H]                     ; 1001A759 _ 8B. 74 24, 08
?_3099: cmp     esi, dword [esp+0CH]                    ; 1001A75D _ 3B. 74 24, 0C
        jnc     ?_3101                                  ; 1001A761 _ 73, 0D
        mov     eax, dword [esi]                        ; 1001A763 _ 8B. 06
        test    eax, eax                                ; 1001A765 _ 85. C0
        jz      ?_3100                                  ; 1001A767 _ 74, 02
        call    eax                                     ; 1001A769 _ FF. D0
?_3100: add     esi, 4                                  ; 1001A76B _ 83. C6, 04
        jmp     ?_3099                                  ; 1001A76E _ EB, ED
