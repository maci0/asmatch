; ---- 1001A567 ----
?_3076: ; Local function
        push    ebp                                     ; 1001A567 _ 55
        mov     ebp, esp                                ; 1001A568 _ 8B. EC
        sub     esp, 204                                ; 1001A56A _ 81. EC, 000000CC
        lea     eax, [ebp-10H]                          ; 1001A570 _ 8D. 45, F0
        push    eax                                     ; 1001A573 _ 50
        call    near [imp_GetLocalTime]                 ; 1001A574 _ FF. 15, 10024000(d)
        lea     eax, [ebp-20H]                          ; 1001A57A _ 8D. 45, E0
        push    eax                                     ; 1001A57D _ 50
        call    near [imp_GetSystemTime]                ; 1001A57E _ FF. 15, 100240BC(d)
        mov     ax, word [ebp-16H]                      ; 1001A584 _ 66: 8B. 45, EA
        cmp     ax, word [?_5556]                       ; 1001A588 _ 66: 3B. 05, 100354AA(d)
        jnz     ?_3077                                  ; 1001A58F _ 75, 3B
        mov     ax, word [ebp-18H]                      ; 1001A591 _ 66: 8B. 45, E8
        cmp     ax, word [?_5555]                       ; 1001A595 _ 66: 3B. 05, 100354A8(d)
        jnz     ?_3077                                  ; 1001A59C _ 75, 2E
        mov     ax, word [ebp-1AH]                      ; 1001A59E _ 66: 8B. 45, E6
        cmp     ax, word [?_5554]                       ; 1001A5A2 _ 66: 3B. 05, 100354A6(d)
        jnz     ?_3077                                  ; 1001A5A9 _ 75, 21
        mov     ax, word [ebp-1EH]                      ; 1001A5AB _ 66: 8B. 45, E2
        cmp     ax, word [?_5553]                       ; 1001A5AF _ 66: 3B. 05, 100354A2(d)
        jnz     ?_3077                                  ; 1001A5B6 _ 75, 14
        mov     ax, word [ebp-20H]                      ; 1001A5B8 _ 66: 8B. 45, E0
        cmp     ax, word [?_5552]                       ; 1001A5BC _ 66: 3B. 05, 100354A0(d)
        jnz     ?_3077                                  ; 1001A5C3 _ 75, 07
        mov     eax, dword [?_5551]                     ; 1001A5C5 _ A1, 10035498(d)
        jmp     ?_3081                                  ; 1001A5CA _ EB, 45

?_3077: lea     eax, [ebp-0CCH]                         ; 1001A5CC _ 8D. 85, FFFFFF34
        push    eax                                     ; 1001A5D2 _ 50
        call    near [imp_GetTimeZoneInformation]       ; 1001A5D3 _ FF. 15, 100240B8(d)
        cmp     eax, -1                                 ; 1001A5D9 _ 83. F8, FF
        jz      ?_3079                                  ; 1001A5DC _ 74, 1B
        cmp     eax, 2                                  ; 1001A5DE _ 83. F8, 02
        jnz     ?_3078                                  ; 1001A5E1 _ 75, 12
        cmp     word [ebp-32H], 0                       ; 1001A5E3 _ 66: 83. 7D, CE, 00
        jz      ?_3078                                  ; 1001A5E8 _ 74, 0B
        cmp     dword [ebp-24H], 0                      ; 1001A5EA _ 83. 7D, DC, 00
        jz      ?_3078                                  ; 1001A5EE _ 74, 05
        push    1                                       ; 1001A5F0 _ 6A, 01
        pop     eax                                     ; 1001A5F2 _ 58
        jmp     ?_3080                                  ; 1001A5F3 _ EB, 07

?_3078: xor     eax, eax                                ; 1001A5F5 _ 33. C0
        jmp     ?_3080                                  ; 1001A5F7 _ EB, 03

?_3079: or      eax, 0FFFFFFFFH                         ; 1001A5F9 _ 83. C8, FF
?_3080: push    esi                                     ; 1001A5FC _ 56
        push    edi                                     ; 1001A5FD _ 57
        lea     esi, [ebp-20H]                          ; 1001A5FE _ 8D. 75, E0
        mov     edi, ?_5552                             ; 1001A601 _ BF, 100354A0(d)
        movsd                                           ; 1001A606 _ A5
        movsd                                           ; 1001A607 _ A5
        movsd                                           ; 1001A608 _ A5
        movsd                                           ; 1001A609 _ A5
        pop     edi                                     ; 1001A60A _ 5F
        mov     dword [?_5551], eax                     ; 1001A60B _ A3, 10035498(d)
        pop     esi                                     ; 1001A610 _ 5E
?_3081: push    eax                                     ; 1001A611 _ 50
        movzx   eax, word [ebp-4H]                      ; 1001A612 _ 0F B7. 45, FC
        push    eax                                     ; 1001A616 _ 50
        movzx   eax, word [ebp-6H]                      ; 1001A617 _ 0F B7. 45, FA
        push    eax                                     ; 1001A61B _ 50
        movzx   eax, word [ebp-8H]                      ; 1001A61C _ 0F B7. 45, F8
        push    eax                                     ; 1001A620 _ 50
        movzx   eax, word [ebp-0AH]                     ; 1001A621 _ 0F B7. 45, F6
        push    eax                                     ; 1001A625 _ 50
        movzx   eax, word [ebp-0EH]                     ; 1001A626 _ 0F B7. 45, F2
        push    eax                                     ; 1001A62A _ 50
        movzx   eax, word [ebp-10H]                     ; 1001A62B _ 0F B7. 45, F0
        push    eax                                     ; 1001A62F _ 50
        call    ?_3600                                  ; 1001A630 _ E8, 000028AA
        mov     ecx, dword [ebp+8H]                     ; 1001A635 _ 8B. 4D, 08
        add     esp, 28                                 ; 1001A638 _ 83. C4, 1C
        test    ecx, ecx                                ; 1001A63B _ 85. C9
        jz      ?_3082                                  ; 1001A63D _ 74, 02
        mov     dword [ecx], eax                        ; 1001A63F _ 89. 01
?_3082: leave                                           ; 1001A641 _ C9
        ret                                             ; 1001A642 _ C3

