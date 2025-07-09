; ---- 10016FAB ----
?_2589: ; Local function
        mov     al, byte [?_5537]                       ; 10016FAB _ A0, 10035449(d)
        test    al, al                                  ; 10016FB0 _ 84. C0
        jz      ?_2591                                  ; 10016FB2 _ 74, 25
        mov     eax, dword [?_5545]                     ; 10016FB4 _ A1, 10035464(d)
        mov     byte [?_5537], 0                        ; 10016FB9 _ C6. 05, 10035449(d), 00
        cmp     eax, esi                                ; 10016FC0 _ 3B. C6
        jnc     ?_2594                                  ; 10016FC2 _ 73, 31
?_2590: cmp     byte [eax], 0                           ; 10016FC4 _ 80. 38, 00
        jnz     ?_2593                                  ; 10016FC7 _ 75, 28
        add     eax, 169                                ; 10016FC9 _ 05, 000000A9
        cmp     eax, esi                                ; 10016FCE _ 3B. C6
        mov     dword [?_5545], eax                     ; 10016FD0 _ A3, 10035464(d)
        jc      ?_2590                                  ; 10016FD5 _ 72, ED
        jmp     ?_2593                                  ; 10016FD7 _ EB, 18

?_2591: mov     eax, dword [?_5545]                     ; 10016FD9 _ A1, 10035464(d)
?_2592: add     eax, 169                                ; 10016FDE _ 05, 000000A9
        cmp     eax, esi                                ; 10016FE3 _ 3B. C6
        mov     dword [?_5545], eax                     ; 10016FE5 _ A3, 10035464(d)
        jnc     ?_2594                                  ; 10016FEA _ 73, 09
        cmp     byte [eax], 0                           ; 10016FEC _ 80. 38, 00
        jz      ?_2592                                  ; 10016FEF _ 74, ED
?_2593: cmp     eax, esi                                ; 10016FF1 _ 3B. C6
        jc      ?_2595                                  ; 10016FF3 _ 72, 04
?_2594: xor     eax, eax                                ; 10016FF5 _ 33. C0
        pop     esi                                     ; 10016FF7 _ 5E
        ret                                             ; 10016FF8 _ C3
