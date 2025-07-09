; ---- 100166C6 ----
?_2516: ; Local function
        mov     ecx, dword [esi+14H]                    ; 100166C6 _ 8B. 4E, 14
        lea     eax, [esi+14H]                          ; 100166C9 _ 8D. 46, 14
        test    ecx, ecx                                ; 100166CC _ 85. C9
        jz      ?_2517                                  ; 100166CE _ 74, 09
        push    eax                                     ; 100166D0 _ 50
        call    ?_2520                                  ; 100166D1 _ E8, 0000003A
        add     esp, 4                                  ; 100166D6 _ 83. C4, 04
?_2517: push    esi                                     ; 100166D9 _ 56
        call    ?_2511                                  ; 100166DA _ E8, FFFFFF91
        add     esp, 4                                  ; 100166DF _ 83. C4, 04
        test    edi, edi                                ; 100166E2 _ 85. FF
        jnz     ?_2518                                  ; 100166E4 _ 75, 08
        mov     eax, dword [esi+3FH]                    ; 100166E6 _ 8B. 46, 3F
        mov     dword [ebp], eax                        ; 100166E9 _ 89. 45, 00
        jmp     ?_2519                                  ; 100166EC _ EB, 06

?_2518: mov     ecx, dword [esi+3FH]                    ; 100166EE _ 8B. 4E, 3F
        mov     dword [ebx+3FH], ecx                    ; 100166F1 _ 89. 4B, 3F
?_2519:
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi], 0                           ; 100166F4 _ 66: C7. 06, 0000
        mov     eax, dword [?_5539]                     ; 100166F9 _ A1, 10035450(d)
        dec     eax                                     ; 100166FE _ 48
        pop     edi                                     ; 100166FF _ 5F
        pop     esi                                     ; 10016700 _ 5E
        mov     dword [?_5539], eax                     ; 10016701 _ A3, 10035450(d)
        pop     ebp                                     ; 10016706 _ 5D
        xor     eax, eax                                ; 10016707 _ 33. C0
        pop     ebx                                     ; 10016709 _ 5B
        ret                                             ; 1001670A _ C3

        nop                                             ; 1001670B _ 90
        nop                                             ; 1001670C _ 90
        nop                                             ; 1001670D _ 90
        nop                                             ; 1001670E _ 90
        nop                                             ; 1001670F _ 90
