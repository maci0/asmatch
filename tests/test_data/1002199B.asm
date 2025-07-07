; ---- 1002199B ----
?_4491: ; Local function
        push    ebp                                     ; 1002199B _ 55
        mov     ebp, esp                                ; 1002199C _ 8B. EC
        sub     esp, 40                                 ; 1002199E _ 83. EC, 28
        push    esi                                     ; 100219A1 _ 56
        lea     eax, [ebp+8H]                           ; 100219A2 _ 8D. 45, 08
        push    edi                                     ; 100219A5 _ 57
        push    eax                                     ; 100219A6 _ 50
        lea     eax, [ebp-0CH]                          ; 100219A7 _ 8D. 45, F4
        push    eax                                     ; 100219AA _ 50
        call    ?_4492                                  ; 100219AB _ E8, 00000047
        pop     ecx                                     ; 100219B0 _ 59
        lea     eax, [ebp-28H]                          ; 100219B1 _ 8D. 45, D8
        pop     ecx                                     ; 100219B4 _ 59
        lea     esi, [ebp-0CH]                          ; 100219B5 _ 8D. 75, F4
        push    eax                                     ; 100219B8 _ 50
        push    0                                       ; 100219B9 _ 6A, 00
        push    17                                      ; 100219BB _ 6A, 11
        sub     esp, 12                                 ; 100219BD _ 83. EC, 0C
        mov     edi, esp                                ; 100219C0 _ 8B. FC
        movsd                                           ; 100219C2 _ A5
        movsd                                           ; 100219C3 _ A5
        movsw                                           ; 100219C4 _ 66: A5
        call    ?_4711                                  ; 100219C6 _ E8, 00001064
        mov     esi, dword [ebp+10H]                    ; 100219CB _ 8B. 75, 10
        mov     edi, dword [ebp+14H]                    ; 100219CE _ 8B. 7D, 14
        mov     dword [esi+8H], eax                     ; 100219D1 _ 89. 46, 08
        movsx   eax, byte [ebp-26H]                     ; 100219D4 _ 0F BE. 45, DA
        mov     dword [esi], eax                        ; 100219D8 _ 89. 06
        movsx   eax, word [ebp-28H]                     ; 100219DA _ 0F BF. 45, D8
        mov     dword [esi+4H], eax                     ; 100219DE _ 89. 46, 04
        lea     eax, [ebp-24H]                          ; 100219E1 _ 8D. 45, DC
        push    eax                                     ; 100219E4 _ 50
        push    edi                                     ; 100219E5 _ 57
        call    ?_4074                                  ; 100219E6 _ E8, FFFFDEE5
        add     esp, 32                                 ; 100219EB _ 83. C4, 20
        mov     dword [esi+0CH], edi                    ; 100219EE _ 89. 7E, 0C
        mov     eax, esi                                ; 100219F1 _ 8B. C6
        pop     edi                                     ; 100219F3 _ 5F
        pop     esi                                     ; 100219F4 _ 5E
        leave                                           ; 100219F5 _ C9
        ret                                             ; 100219F6 _ C3

