; ---- 10019C6D ----
?_2974: ; Local function
        push    esi                                     ; 10019C6D _ 56
        xor     esi, esi                                ; 10019C6E _ 33. F6
        mov     ecx, ?_5633                             ; 10019C70 _ B9, 100358A2(d)
?_2975: mov     dl, byte [ecx+162H]                     ; 10019C75 _ 8A. 91, 00000162
        test    dl, dl                                  ; 10019C7B _ 84. D2
        jz      ?_2976                                  ; 10019C7D _ 74, 1E
        cmp     dword [ecx+16AH], edi                   ; 10019C7F _ 39. B9, 0000016A
        jnz     ?_2976                                  ; 10019C85 _ 75, 16
        mov     dl, byte [ecx]                          ; 10019C87 _ 8A. 11
        cmp     dl, 6                                   ; 10019C89 _ 80. FA, 06
        jz      ?_2977                                  ; 10019C8C _ 74, 21
        cmp     dl, 7                                   ; 10019C8E _ 80. FA, 07
        jz      ?_2977                                  ; 10019C91 _ 74, 1C
        cmp     dl, 1                                   ; 10019C93 _ 80. FA, 01
        jz      ?_2977                                  ; 10019C96 _ 74, 17
        cmp     dl, 2                                   ; 10019C98 _ 80. FA, 02
        jz      ?_2977                                  ; 10019C9B _ 74, 12
?_2976: add     ecx, 540                                ; 10019C9D _ 81. C1, 0000021C
        inc     esi                                     ; 10019CA3 _ 46
        cmp     ecx, ?_5657                             ; 10019CA4 _ 81. F9, 1009ACA2(d)
        jl      ?_2975                                  ; 10019CAA _ 7C, C9
        pop     esi                                     ; 10019CAC _ 5E
        pop     edi                                     ; 10019CAD _ 5F
        ret                                             ; 10019CAE _ C3

