; ---- 1000FE63 ----
?_1824: ; Local function
        cmp     eax, 1668048242                         ; 1000FE63 _ 3D, 636C6572
        jne     ?_1817                                  ; 1000FE68 _ 0F 85, FFFFFF61
        mov     edx, dword [ebp+18H]                    ; 1000FE6E _ 8B. 55, 18
        push    edx                                     ; 1000FE71 _ 52
        push    1                                       ; 1000FE72 _ 6A, 01
        push    1                                       ; 1000FE74 _ 6A, 01
        call    ?_2609                                  ; 1000FE76 _ E8, 00007265
        add     esp, 12                                 ; 1000FE7B _ 83. C4, 0C
        test    eax, eax                                ; 1000FE7E _ 85. C0
        je      ?_1817                                  ; 1000FE80 _ 0F 84, FFFFFF49
        mov     cx, word [eax+27H]                      ; 1000FE86 _ 66: 8B. 48, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, -1                                  ; 1000FE8A _ 66: 81. F9, FFFF
        jz      ?_1825                                  ; 1000FE8F _ 74, 33
        and     ecx, 0FFFFH                             ; 1000FE91 _ 81. E1, 0000FFFF
        lea     ecx, [ecx+ecx*2]                        ; 1000FE97 _ 8D. 0C 49
        lea     ecx, [ecx+ecx*4]                        ; 1000FE9A _ 8D. 0C 89
        lea     ecx, [ecx+ecx*8]                        ; 1000FE9D _ 8D. 0C C9
        lea     ecx, [?_5632+ecx*4]                     ; 1000FEA0 _ 8D. 0C 8D, 100358A0(d)
        test    ecx, ecx                                ; 1000FEA7 _ 85. C9
        jz      ?_1825                                  ; 1000FEA9 _ 74, 19
        cmp     ecx, dword [?_5547]                     ; 1000FEAB _ 3B. 0D, 1003546C(d)
        jz      ?_1825                                  ; 1000FEB1 _ 74, 11
        mov     dl, byte [ecx+8H]                       ; 1000FEB3 _ 8A. 51, 08
        test    dl, dl                                  ; 1000FEB6 _ 84. D2
        jz      ?_1825                                  ; 1000FEB8 _ 74, 0A
        cmp     byte [ecx+2H], 15                       ; 1000FEBA _ 80. 79, 02, 0F
        jne     ?_1817                                  ; 1000FEBE _ 0F 85, FFFFFF0B
?_1825: mov     edx, dword [eax+5DH]                    ; 1000FEC4 _ 8B. 50, 5D
        push    301                                     ; 1000FEC7 _ 68, 0000012D
        push    0                                       ; 1000FECC _ 6A, 00
        push    6                                       ; 1000FECE _ 6A, 06
        push    2                                       ; 1000FED0 _ 6A, 02
        push    edx                                     ; 1000FED2 _ 52
        call    ?_2482                                  ; 1000FED3 _ E8, 00006588
        add     esp, 20                                 ; 1000FED8 _ 83. C4, 14
        test    eax, eax                                ; 1000FEDB _ 85. C0
        je      ?_1817                                  ; 1000FEDD _ 0F 84, FFFFFEEC
        test    edi, edi                                ; 1000FEE3 _ 85. FF
        jz      ?_1826                                  ; 1000FEE5 _ 74, 03
        mov     byte [edi], 1                           ; 1000FEE7 _ C6. 07, 01
?_1826: add     eax, 28                                 ; 1000FEEA _ 83. C0, 1C
        mov     ecx, 4                                  ; 1000FEED _ B9, 00000004
?_1827: mov     edx, dword [eax]                        ; 1000FEF2 _ 8B. 10
        mov     esi, dword [ebp+14H]                    ; 1000FEF4 _ 8B. 75, 14
        cmp     edx, esi                                ; 1000FEF7 _ 3B. D6
        jnz     ?_1828                                  ; 1000FEF9 _ 75, 06
        mov     dword [eax], -1                         ; 1000FEFB _ C7. 00, FFFFFFFF
?_1828: add     eax, 4                                  ; 1000FF01 _ 83. C0, 04
        dec     ecx                                     ; 1000FF04 _ 49
        jnz     ?_1827                                  ; 1000FF05 _ 75, EB
        pop     edi                                     ; 1000FF07 _ 5F
        pop     esi                                     ; 1000FF08 _ 5E
        xor     eax, eax                                ; 1000FF09 _ 33. C0
        pop     ebp                                     ; 1000FF0B _ 5D
        ret                                             ; 1000FF0C _ C3

        nop                                             ; 1000FF0D _ 90
        nop                                             ; 1000FF0E _ 90
        nop                                             ; 1000FF0F _ 90
