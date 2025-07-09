; ---- 10020FF8 ----
?_4354: ; Local function
        push    ebp                                     ; 10020FF8 _ 55
        mov     ebp, esp                                ; 10020FF9 _ 8B. EC
        sub     esp, 12                                 ; 10020FFB _ 83. EC, 0C
        push    ebx                                     ; 10020FFE _ 53
        and     dword [ebp-8H], 00H                     ; 10020FFF _ 83. 65, F8, 00
        push    esi                                     ; 10021003 _ 56
        push    edi                                     ; 10021004 _ 57
        mov     edi, dword [ebp+8H]                     ; 10021005 _ 8B. 7D, 08
        mov     bl, byte [edi]                          ; 10021008 _ 8A. 1F
        lea     esi, [edi+1H]                           ; 1002100A _ 8D. 77, 01
        mov     dword [ebp-4H], esi                     ; 1002100D _ 89. 75, FC
?_4355: cmp     dword [?_5477], 1                       ; 10021010 _ 83. 3D, 10033EE0(d), 01
        jle     ?_4356                                  ; 10021017 _ 7E, 0F
        movzx   eax, bl                                 ; 10021019 _ 0F B6. C3
        push    8                                       ; 1002101C _ 6A, 08
        push    eax                                     ; 1002101E _ 50
        call    ?_4068                                  ; 1002101F _ E8, FFFFE831
        pop     ecx                                     ; 10021024 _ 59
        pop     ecx                                     ; 10021025 _ 59
        jmp     ?_4357                                  ; 10021026 _ EB, 0F

?_4356: mov     ecx, dword [?_5475]                     ; 10021028 _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 1002102E _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 10021031 _ 8A. 04 41
        and     eax, 08H                                ; 10021034 _ 83. E0, 08
?_4357: test    eax, eax                                ; 10021037 _ 85. C0
        jz      ?_4358                                  ; 10021039 _ 74, 05
        mov     bl, byte [esi]                          ; 1002103B _ 8A. 1E
        inc     esi                                     ; 1002103D _ 46
        jmp     ?_4355                                  ; 1002103E _ EB, D0
