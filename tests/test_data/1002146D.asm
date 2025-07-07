; ---- 1002146D ----
?_4432: ; Local function
        push    ebp                                     ; 1002146D _ 55
        mov     ebp, esp                                ; 1002146E _ 8B. EC
        push    ecx                                     ; 10021470 _ 51
        cmp     dword [?_5589], 0                       ; 10021471 _ 83. 3D, 100355BC(d), 00
        push    ebx                                     ; 10021478 _ 53
        push    esi                                     ; 10021479 _ 56
        push    edi                                     ; 1002147A _ 57
        jnz     ?_4433                                  ; 1002147B _ 75, 1D
        mov     eax, dword [ebp+8H]                     ; 1002147D _ 8B. 45, 08
        cmp     eax, 65                                 ; 10021480 _ 83. F8, 41
        jl      ?_4441                                  ; 10021483 _ 0F 8C, 000000AA
        cmp     eax, 90                                 ; 10021489 _ 83. F8, 5A
        jg      ?_4441                                  ; 1002148C _ 0F 8F, 000000A1
        add     eax, 32                                 ; 10021492 _ 83. C0, 20
        jmp     ?_4441                                  ; 10021495 _ E9, 00000099

?_4433: mov     ebx, dword [ebp+8H]                     ; 1002149A _ 8B. 5D, 08
        mov     edi, 256                                ; 1002149D _ BF, 00000100
        push    1                                       ; 100214A2 _ 6A, 01
        cmp     ebx, edi                                ; 100214A4 _ 3B. DF
        pop     esi                                     ; 100214A6 _ 5E
        jge     ?_4437                                  ; 100214A7 _ 7D, 25
        cmp     dword [?_5477], esi                     ; 100214A9 _ 39. 35, 10033EE0(d)
        jle     ?_4434                                  ; 100214AF _ 7E, 0B
        push    esi                                     ; 100214B1 _ 56
        push    ebx                                     ; 100214B2 _ 53
        call    ?_4068                                  ; 100214B3 _ E8, FFFFE39D
        pop     ecx                                     ; 100214B8 _ 59
        pop     ecx                                     ; 100214B9 _ 59
        jmp     ?_4435                                  ; 100214BA _ EB, 0A

?_4434: mov     eax, dword [?_5475]                     ; 100214BC _ A1, 10033CD4(d)
        mov     al, byte [eax+ebx*2]                    ; 100214C1 _ 8A. 04 58
        and     eax, esi                                ; 100214C4 _ 23. C6
?_4435: test    eax, eax                                ; 100214C6 _ 85. C0
        jnz     ?_4437                                  ; 100214C8 _ 75, 04
?_4436: mov     eax, ebx                                ; 100214CA _ 8B. C3
        jmp     ?_4441                                  ; 100214CC _ EB, 65

?_4437: mov     edx, dword [?_5475]                     ; 100214CE _ 8B. 15, 10033CD4(d)
        mov     eax, ebx                                ; 100214D4 _ 8B. C3
        sar     eax, 8                                  ; 100214D6 _ C1. F8, 08
        movzx   ecx, al                                 ; 100214D9 _ 0F B6. C8
        test    byte [edx+ecx*2+1H], 0FFFFFF80H         ; 100214DC _ F6. 44 4A, 01, 80
        jz      ?_4438                                  ; 100214E1 _ 74, 0F
        and     byte [ebp+0AH], 00H                     ; 100214E3 _ 80. 65, 0A, 00
        push    2                                       ; 100214E7 _ 6A, 02
        mov     byte [ebp+8H], al                       ; 100214E9 _ 88. 45, 08
        mov     byte [ebp+9H], bl                       ; 100214EC _ 88. 5D, 09
        pop     eax                                     ; 100214EF _ 58
        jmp     ?_4439                                  ; 100214F0 _ EB, 09

?_4438: and     byte [ebp+9H], 00H                      ; 100214F2 _ 80. 65, 09, 00
        mov     byte [ebp+8H], bl                       ; 100214F6 _ 88. 5D, 08
        mov     eax, esi                                ; 100214F9 _ 8B. C6
?_4439: push    esi                                     ; 100214FB _ 56
        push    0                                       ; 100214FC _ 6A, 00
        lea     ecx, [ebp-4H]                           ; 100214FE _ 8D. 4D, FC
        push    3                                       ; 10021501 _ 6A, 03
        push    ecx                                     ; 10021503 _ 51
        push    eax                                     ; 10021504 _ 50
        lea     eax, [ebp+8H]                           ; 10021505 _ 8D. 45, 08
        push    eax                                     ; 10021508 _ 50
        push    edi                                     ; 10021509 _ 57
        push    dword [?_5589]                          ; 1002150A _ FF. 35, 100355BC(d)
        call    ?_4050                                  ; 10021510 _ E8, FFFFE11C
        add     esp, 32                                 ; 10021515 _ 83. C4, 20
        test    eax, eax                                ; 10021518 _ 85. C0
        jz      ?_4436                                  ; 1002151A _ 74, AE
        cmp     eax, esi                                ; 1002151C _ 3B. C6
        jnz     ?_4440                                  ; 1002151E _ 75, 06
        movzx   eax, byte [ebp-4H]                      ; 10021520 _ 0F B6. 45, FC
        jmp     ?_4441                                  ; 10021524 _ EB, 0D

?_4440: movzx   eax, byte [ebp-3H]                      ; 10021526 _ 0F B6. 45, FD
        movzx   ecx, byte [ebp-4H]                      ; 1002152A _ 0F B6. 4D, FC
        shl     eax, 8                                  ; 1002152E _ C1. E0, 08
        or      eax, ecx                                ; 10021531 _ 0B. C1
?_4441: pop     edi                                     ; 10021533 _ 5F
        pop     esi                                     ; 10021534 _ 5E
        pop     ebx                                     ; 10021535 _ 5B
        leave                                           ; 10021536 _ C9
        ret                                             ; 10021537 _ C3

