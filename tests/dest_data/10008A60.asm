; ---- 10008A60 ----
?_0879: ; Local function
        mov     eax, dword [esi+7CH]                    ; 10008A60 _ 8B. 46, 7C
        test    eax, eax                                ; 10008A63 _ 85. C0
        jz      ?_0880                                  ; 10008A65 _ 74, 09
        push    esi                                     ; 10008A67 _ 56
        call    ?_0899                                  ; 10008A68 _ E8, 00000213
        add     esp, 4                                  ; 10008A6D _ 83. C4, 04
?_0880: mov     eax, dword [esi]                        ; 10008A70 _ 8B. 06
        push    eax                                     ; 10008A72 _ 50
        call    ?_3029                                  ; 10008A73 _ E8, 00011712
        push    esi                                     ; 10008A78 _ 56
        call    ?_3158                                  ; 10008A79 _ E8, 00012103
        add     esp, 8                                  ; 10008A7E _ 83. C4, 08
        xor     eax, eax                                ; 10008A81 _ 33. C0
        pop     esi                                     ; 10008A83 _ 5E
        ret                                             ; 10008A84 _ C3

        nop                                             ; 10008A85 _ 90
        nop                                             ; 10008A86 _ 90
        nop                                             ; 10008A87 _ 90
        nop                                             ; 10008A88 _ 90
        nop                                             ; 10008A89 _ 90
        nop                                             ; 10008A8A _ 90
        nop                                             ; 10008A8B _ 90
        nop                                             ; 10008A8C _ 90
        nop                                             ; 10008A8D _ 90
        nop                                             ; 10008A8E _ 90
        nop                                             ; 10008A8F _ 90
?_0881: sub     esp, 8                                  ; 10008A90 _ 83. EC, 08
        mov     eax, dword [esp+0CH]                    ; 10008A93 _ 8B. 44 24, 0C
        push    ebx                                     ; 10008A97 _ 53
        push    ebp                                     ; 10008A98 _ 55
        push    esi                                     ; 10008A99 _ 56
        test    eax, eax                                ; 10008A9A _ 85. C0
        push    edi                                     ; 10008A9C _ 57
        mov     dword [esp+14H], 0                      ; 10008A9D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 10008AA5 _ C7. 44 24, 10, 00000000
        jnz     ?_0882                                  ; 10008AAD _ 75, 0D
        pop     edi                                     ; 10008AAF _ 5F
        pop     esi                                     ; 10008AB0 _ 5E
        pop     ebp                                     ; 10008AB1 _ 5D
        mov     eax, 4294967194                         ; 10008AB2 _ B8, FFFFFF9A
        pop     ebx                                     ; 10008AB7 _ 5B
        add     esp, 8                                  ; 10008AB8 _ 83. C4, 08
        ret                                             ; 10008ABB _ C3

