; ---- 10022497 ----
?_4620: ; Local function
        push    ebp                                     ; 10022497 _ 55
        mov     ebp, esp                                ; 10022498 _ 8B. EC
        sub     esp, 16                                 ; 1002249A _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1002249D _ 8B. 45, 0C
        push    ebx                                     ; 100224A0 _ 53
        mov     ebx, dword [ebp+10H]                    ; 100224A1 _ 8B. 5D, 10
        xor     edx, edx                                ; 100224A4 _ 33. D2
        cmp     eax, edx                                ; 100224A6 _ 3B. C2
        push    esi                                     ; 100224A8 _ 56
        mov     dword [ebp-4H], 16462                   ; 100224A9 _ C7. 45, FC, 0000404E
        mov     dword [ebx], edx                        ; 100224B0 _ 89. 13
        mov     dword [ebx+4H], edx                     ; 100224B2 _ 89. 53, 04
        mov     dword [ebx+8H], edx                     ; 100224B5 _ 89. 53, 08
        jbe     ?_4622                                  ; 100224B8 _ 76, 51
        push    edi                                     ; 100224BA _ 57
        mov     dword [ebp+10H], eax                    ; 100224BB _ 89. 45, 10
?_4621: mov     esi, ebx                                ; 100224BE _ 8B. F3
        lea     edi, [ebp-10H]                          ; 100224C0 _ 8D. 7D, F0
        movsd                                           ; 100224C3 _ A5
        movsd                                           ; 100224C4 _ A5
        push    ebx                                     ; 100224C5 _ 53
        movsd                                           ; 100224C6 _ A5
        call    ?_4618                                  ; 100224C7 _ E8, FFFFFF70
        push    ebx                                     ; 100224CC _ 53
        call    ?_4618                                  ; 100224CD _ E8, FFFFFF6A
        lea     eax, [ebp-10H]                          ; 100224D2 _ 8D. 45, F0
        push    eax                                     ; 100224D5 _ 50
        push    ebx                                     ; 100224D6 _ 53
        call    ?_4615                                  ; 100224D7 _ E8, FFFFFF02
        push    ebx                                     ; 100224DC _ 53
        call    ?_4618                                  ; 100224DD _ E8, FFFFFF5A
        mov     eax, dword [ebp+8H]                     ; 100224E2 _ 8B. 45, 08
        and     dword [ebp-0CH], 00H                    ; 100224E5 _ 83. 65, F4, 00
        and     dword [ebp-8H], 00H                     ; 100224E9 _ 83. 65, F8, 00
        movsx   eax, byte [eax]                         ; 100224ED _ 0F BE. 00
        mov     dword [ebp-10H], eax                    ; 100224F0 _ 89. 45, F0
        lea     eax, [ebp-10H]                          ; 100224F3 _ 8D. 45, F0
        push    eax                                     ; 100224F6 _ 50
        push    ebx                                     ; 100224F7 _ 53
        call    ?_4615                                  ; 100224F8 _ E8, FFFFFEE1
        add     esp, 28                                 ; 100224FD _ 83. C4, 1C
        inc     dword [ebp+8H]                          ; 10022500 _ FF. 45, 08
        dec     dword [ebp+10H]                         ; 10022503 _ FF. 4D, 10
        jnz     ?_4621                                  ; 10022506 _ 75, B6
        xor     edx, edx                                ; 10022508 _ 33. D2
        pop     edi                                     ; 1002250A _ 5F
?_4622: cmp     dword [ebx+8H], edx                     ; 1002250B _ 39. 53, 08
        jnz     ?_4623                                  ; 1002250E _ 75, 28
        mov     ecx, dword [ebx+4H]                     ; 10022510 _ 8B. 4B, 04
        mov     eax, ecx                                ; 10022513 _ 8B. C1
        shr     eax, 16                                 ; 10022515 _ C1. E8, 10
        mov     dword [ebx+8H], eax                     ; 10022518 _ 89. 43, 08
        mov     eax, dword [ebx]                        ; 1002251B _ 8B. 03
        mov     esi, eax                                ; 1002251D _ 8B. F0
        shr     esi, 16                                 ; 1002251F _ C1. EE, 10
        shl     ecx, 16                                 ; 10022522 _ C1. E1, 10
        or      esi, ecx                                ; 10022525 _ 0B. F1
        shl     eax, 16                                 ; 10022527 _ C1. E0, 10
        add     dword [ebp-4H], 65520                   ; 1002252A _ 81. 45, FC, 0000FFF0
        mov     dword [ebx+4H], esi                     ; 10022531 _ 89. 73, 04
        mov     dword [ebx], eax                        ; 10022534 _ 89. 03
        jmp     ?_4622                                  ; 10022536 _ EB, D3

