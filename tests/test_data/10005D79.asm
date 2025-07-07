; ---- 10005D79 ----
?_0572: ; Local function
        cmp     esi, -5                                 ; 10005D79 _ 83. FE, FB
        jz      ?_0573                                  ; 10005D7C _ 74, 06
        cmp     dword [ebp], 0                          ; 10005D7E _ 83. 7D, 00, 00
        jnz     ?_0574                                  ; 10005D82 _ 75, 0C
?_0573: mov     dword [edi+18H], ?_5130                 ; 10005D84 _ C7. 47, 18, 100286B0(d)
        mov     esi, 4294967293                         ; 10005D8B _ BE, FFFFFFFD
?_0574: mov     edx, dword [edi+28H]                    ; 10005D90 _ 8B. 57, 28
        push    ebx                                     ; 10005D93 _ 53
        push    edx                                     ; 10005D94 _ 52
        call    near [edi+24H]                          ; 10005D95 _ FF. 57, 24
        add     esp, 8                                  ; 10005D98 _ 83. C4, 08
        mov     eax, esi                                ; 10005D9B _ 8B. C6
        pop     esi                                     ; 10005D9D _ 5E
        pop     ebp                                     ; 10005D9E _ 5D
        pop     edi                                     ; 10005D9F _ 5F
        pop     ebx                                     ; 10005DA0 _ 5B
        pop     ecx                                     ; 10005DA1 _ 59
        ret                                             ; 10005DA2 _ C3

        nop                                             ; 10005DA3 _ 90
        nop                                             ; 10005DA4 _ 90
        nop                                             ; 10005DA5 _ 90
        nop                                             ; 10005DA6 _ 90
        nop                                             ; 10005DA7 _ 90
        nop                                             ; 10005DA8 _ 90
        nop                                             ; 10005DA9 _ 90
        nop                                             ; 10005DAA _ 90
        nop                                             ; 10005DAB _ 90
        nop                                             ; 10005DAC _ 90
        nop                                             ; 10005DAD _ 90
        nop                                             ; 10005DAE _ 90
        nop                                             ; 10005DAF _ 90

