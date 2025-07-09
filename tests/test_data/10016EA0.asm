; ---- 10016EA0 ----
?_2579: ; Local function
        sub     esp, 8                                  ; 10016EA0 _ 83. EC, 08
        lea     eax, [esp+4H]                           ; 10016EA3 _ 8D. 44 24, 04
        lea     ecx, [esp+0CH]                          ; 10016EA7 _ 8D. 4C 24, 0C
; Note: Zero displacement could be omitted
        lea     edx, [esp]                              ; 10016EAB _ 8D. 54 24, 00
        push    ebx                                     ; 10016EAF _ 53
        mov     ebx, dword [esp+10H]                    ; 10016EB0 _ 8B. 5C 24, 10
        push    edi                                     ; 10016EB4 _ 57
        push    ebx                                     ; 10016EB5 _ 53
        push    eax                                     ; 10016EB6 _ 50
        push    ecx                                     ; 10016EB7 _ 51
        push    edx                                     ; 10016EB8 _ 52
        call    ?_2425                                  ; 10016EB9 _ E8, FFFFEFD2
        add     esp, 16                                 ; 10016EBE _ 83. C4, 10
        test    eax, eax                                ; 10016EC1 _ 85. C0
        jnz     ?_2581                                  ; 10016EC3 _ 75, 21
        push    1                                       ; 10016EC5 _ 6A, 01
        push    ?_5426                                  ; 10016EC7 _ 68, 100313D4(d)
        push    3676                                    ; 10016ECC _ 68, 00000E5C
        push    ?_5397                                  ; 10016ED1 _ 68, 10031004(d)
        call    ?_0267                                  ; 10016ED6 _ E8, FFFEC765
        add     esp, 16                                 ; 10016EDB _ 83. C4, 10
?_2580: pop     edi                                     ; 10016EDE _ 5F
        xor     eax, eax                                ; 10016EDF _ 33. C0
        pop     ebx                                     ; 10016EE1 _ 5B
        add     esp, 8                                  ; 10016EE2 _ 83. C4, 08
        ret                                             ; 10016EE5 _ C3
