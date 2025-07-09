; ---- 10014A8F ----
?_2269: ; Local function
        mov     edi, dword [esp+10H]                    ; 10014A8F _ 8B. 7C 24, 10
        or      ah, 30H                                 ; 10014A93 _ 80. CC, 30
        mov     dword [esi], eax                        ; 10014A96 _ 89. 06
        mov     eax, dword [esi+4H]                     ; 10014A98 _ 8B. 46, 04
        mov     dword [edi+14H], eax                    ; 10014A9B _ 89. 47, 14
        mov     eax, dword [esi]                        ; 10014A9E _ 8B. 06
        test    ah, 04H                                 ; 10014AA0 _ F6. C4, 04
        jz      ?_2270                                  ; 10014AA3 _ 74, 09
        mov     dword [edi+18H], 1                      ; 10014AA5 _ C7. 47, 18, 00000001
        jmp     ?_2271                                  ; 10014AAC _ EB, 07

?_2270: mov     dword [edi+18H], 0                      ; 10014AAE _ C7. 47, 18, 00000000
?_2271: mov     esi, ?_5761                             ; 10014AB5 _ BE, 101DEB00(d)
?_2272: mov     eax, dword [esi]                        ; 10014ABA _ 8B. 06
        test    al, 01H                                 ; 10014ABC _ A8, 01
        jz      ?_2273                                  ; 10014ABE _ 74, 14
        test    ah, 02H                                 ; 10014AC0 _ F6. C4, 02
        jz      ?_2273                                  ; 10014AC3 _ 74, 0F
        push    edi                                     ; 10014AC5 _ 57
        push    esi                                     ; 10014AC6 _ 56
        call    ?_1110                                  ; 10014AC7 _ E8, FFFF5ED4
        add     esp, 8                                  ; 10014ACC _ 83. C4, 08
        cmp     eax, -1                                 ; 10014ACF _ 83. F8, FF
        jz      ?_2274                                  ; 10014AD2 _ 74, 13
?_2273: add     esi, 2507364                            ; 10014AD4 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10014ADA _ 81. FE, 114FFE20(d)
        jl      ?_2272                                  ; 10014AE0 _ 7C, D8
        pop     edi                                     ; 10014AE2 _ 5F
        xor     eax, eax                                ; 10014AE3 _ 33. C0
        pop     esi                                     ; 10014AE5 _ 5E
        ret                                             ; 10014AE6 _ C3
