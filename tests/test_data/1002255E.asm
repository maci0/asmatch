; ---- 1002255E ----
?_4626: ; Local function
        push    ebp                                     ; 1002255E _ 55
        mov     ebp, esp                                ; 1002255F _ 8B. EC
        sub     esp, 92                                 ; 10022561 _ 83. EC, 5C
        push    ebx                                     ; 10022564 _ 53
        push    esi                                     ; 10022565 _ 56
        push    edi                                     ; 10022566 _ 57
        mov     edi, dword [ebp+10H]                    ; 10022567 _ 8B. 7D, 10
        lea     eax, [ebp-5CH]                          ; 1002256A _ 8D. 45, A4
        push    1                                       ; 1002256D _ 6A, 01
        mov     dword [ebp-0CH], eax                    ; 1002256F _ 89. 45, F4
        xor     eax, eax                                ; 10022572 _ 33. C0
        pop     edx                                     ; 10022574 _ 5A
        mov     dword [ebp-28H], eax                    ; 10022575 _ 89. 45, D8
        mov     dword [ebp-18H], edx                    ; 10022578 _ 89. 55, E8
        mov     dword [ebp-4H], eax                     ; 1002257B _ 89. 45, FC
        mov     dword [ebp-10H], eax                    ; 1002257E _ 89. 45, F0
        mov     dword [ebp-24H], eax                    ; 10022581 _ 89. 45, DC
        mov     dword [ebp-20H], eax                    ; 10022584 _ 89. 45, E0
        mov     dword [ebp-2CH], eax                    ; 10022587 _ 89. 45, D4
        mov     dword [ebp-30H], eax                    ; 1002258A _ 89. 45, D0
        mov     dword [ebp-1CH], eax                    ; 1002258D _ 89. 45, E4
        mov     dword [ebp-8H], eax                     ; 10022590 _ 89. 45, F8
        mov     dword [ebp-14H], eax                    ; 10022593 _ 89. 45, EC
        mov     dword [ebp+10H], edi                    ; 10022596 _ 89. 7D, 10
?_4627: mov     cl, byte [edi]                          ; 10022599 _ 8A. 0F
        cmp     cl, 32                                  ; 1002259B _ 80. F9, 20
        jz      ?_4628                                  ; 1002259E _ 74, 0F
        cmp     cl, 9                                   ; 100225A0 _ 80. F9, 09
        jz      ?_4628                                  ; 100225A3 _ 74, 0A
        cmp     cl, 10                                  ; 100225A5 _ 80. F9, 0A
        jz      ?_4628                                  ; 100225A8 _ 74, 05
        cmp     cl, 13                                  ; 100225AA _ 80. F9, 0D
        jnz     ?_4629                                  ; 100225AD _ 75, 03
?_4628: inc     edi                                     ; 100225AF _ 47
        jmp     ?_4627                                  ; 100225B0 _ EB, E7

