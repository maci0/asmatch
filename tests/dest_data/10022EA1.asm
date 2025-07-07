; ---- 10022EA1 ----
?_4768: ; Local function
        mov     eax, dword [esp+4H]                     ; 10022EA1 _ 8B. 44 24, 04
        push    esi                                     ; 10022EA5 _ 56
        mov     ecx, eax                                ; 10022EA6 _ 8B. C8
        and     eax, 1FH                                ; 10022EA8 _ 83. E0, 1F
        sar     ecx, 5                                  ; 10022EAB _ C1. F9, 05
        lea     eax, [eax+eax*8]                        ; 10022EAE _ 8D. 04 C0
        mov     esi, 32768                              ; 10022EB1 _ BE, 00008000
        mov     ecx, dword [?_5809+ecx*4]               ; 10022EB6 _ 8B. 0C 8D, 11766460(d)
        lea     edx, [ecx+eax*4+4H]                     ; 10022EBD _ 8D. 54 81, 04
        mov     cl, byte [ecx+eax*4+4H]                 ; 10022EC1 _ 8A. 4C 81, 04
        mov     al, cl                                  ; 10022EC5 _ 8A. C1
        and     eax, 80H                                ; 10022EC7 _ 25, 00000080
        cmp     dword [esp+0CH], esi                    ; 10022ECC _ 39. 74 24, 0C
        jnz     ?_4769                                  ; 10022ED0 _ 75, 05
        and     cl, 7FH                                 ; 10022ED2 _ 80. E1, 7F
        jmp     ?_4770                                  ; 10022ED5 _ EB, 0D

?_4769: cmp     dword [esp+0CH], 16384                  ; 10022ED7 _ 81. 7C 24, 0C, 00004000
        jnz     ?_4771                                  ; 10022EDF _ 75, 11
        or      cl, 0FFFFFF80H                          ; 10022EE1 _ 80. C9, 80
?_4770: neg     eax                                     ; 10022EE4 _ F7. D8
        sbb     eax, eax                                ; 10022EE6 _ 1B. C0
        mov     byte [edx], cl                          ; 10022EE8 _ 88. 0A
; Note: Length-changing prefix causes delay on Intel processors
        and     ax, 0C000H                              ; 10022EEA _ 66: 25, C000
        add     eax, esi                                ; 10022EEE _ 03. C6
        pop     esi                                     ; 10022EF0 _ 5E
        ret                                             ; 10022EF1 _ C3

