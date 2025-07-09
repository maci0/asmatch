; ---- 1000FF84 ----
?_1835: ; Local function
        push    esi                                     ; 1000FF84 _ 56
        push    edi                                     ; 1000FF85 _ 57
        lea     esi, [ebx+14H]                          ; 1000FF86 _ 8D. 73, 14
        mov     edi, 16                                 ; 1000FF89 _ BF, 00000010
?_1836: mov     eax, dword [esi]                        ; 1000FF8E _ 8B. 06
        push    eax                                     ; 1000FF90 _ 50
        call    ?_2817                                  ; 1000FF91 _ E8, 0000850A
        add     esp, 4                                  ; 1000FF96 _ 83. C4, 04
        test    eax, eax                                ; 1000FF99 _ 85. C0
        jz      ?_1837                                  ; 1000FF9B _ 74, 09
        mov     ecx, dword [ebx+10H]                    ; 1000FF9D _ 8B. 4B, 10
        mov     dword [eax+20CH], ecx                   ; 1000FFA0 _ 89. 88, 0000020C
?_1837: add     esi, 4                                  ; 1000FFA6 _ 83. C6, 04
        dec     edi                                     ; 1000FFA9 _ 4F
        jnz     ?_1836                                  ; 1000FFAA _ 75, E2
        pop     edi                                     ; 1000FFAC _ 5F
        pop     esi                                     ; 1000FFAD _ 5E
        xor     eax, eax                                ; 1000FFAE _ 33. C0
        pop     ebx                                     ; 1000FFB0 _ 5B
        ret                                             ; 1000FFB1 _ C3

        nop                                             ; 1000FFB2 _ 90
        nop                                             ; 1000FFB3 _ 90
        nop                                             ; 1000FFB4 _ 90
        nop                                             ; 1000FFB5 _ 90
        nop                                             ; 1000FFB6 _ 90
        nop                                             ; 1000FFB7 _ 90
        nop                                             ; 1000FFB8 _ 90
        nop                                             ; 1000FFB9 _ 90
        nop                                             ; 1000FFBA _ 90
        nop                                             ; 1000FFBB _ 90
        nop                                             ; 1000FFBC _ 90
        nop                                             ; 1000FFBD _ 90
        nop                                             ; 1000FFBE _ 90
        nop                                             ; 1000FFBF _ 90
