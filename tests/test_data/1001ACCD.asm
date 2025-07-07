; ---- 1001ACCD ----
?_3174: ; Local function
        push    ebx                                     ; 1001ACCD _ 53
        push    esi                                     ; 1001ACCE _ 56
        mov     esi, dword [esp+0CH]                    ; 1001ACCF _ 8B. 74 24, 0C
        xor     ebx, ebx                                ; 1001ACD3 _ 33. DB
        push    edi                                     ; 1001ACD5 _ 57
        mov     eax, dword [esi+0CH]                    ; 1001ACD6 _ 8B. 46, 0C
        mov     ecx, eax                                ; 1001ACD9 _ 8B. C8
        and     ecx, 03H                                ; 1001ACDB _ 83. E1, 03
        cmp     cl, 2                                   ; 1001ACDE _ 80. F9, 02
        jnz     ?_3176                                  ; 1001ACE1 _ 75, 37
; Note: Length-changing prefix causes delay on Intel processors
        test    ax, 108H                                ; 1001ACE3 _ 66: A9, 0108
        jz      ?_3176                                  ; 1001ACE7 _ 74, 31
        mov     eax, dword [esi+8H]                     ; 1001ACE9 _ 8B. 46, 08
        mov     edi, dword [esi]                        ; 1001ACEC _ 8B. 3E
        sub     edi, eax                                ; 1001ACEE _ 2B. F8
        test    edi, edi                                ; 1001ACF0 _ 85. FF
        jle     ?_3176                                  ; 1001ACF2 _ 7E, 26
        push    edi                                     ; 1001ACF4 _ 57
        push    eax                                     ; 1001ACF5 _ 50
        push    dword [esi+10H]                         ; 1001ACF6 _ FF. 76, 10
        call    ?_3888                                  ; 1001ACF9 _ E8, 00003BB6
        add     esp, 12                                 ; 1001ACFE _ 83. C4, 0C
        cmp     eax, edi                                ; 1001AD01 _ 3B. C7
        jnz     ?_3175                                  ; 1001AD03 _ 75, 0E
        mov     eax, dword [esi+0CH]                    ; 1001AD05 _ 8B. 46, 0C
        test    al, 0FFFFFF80H                          ; 1001AD08 _ A8, 80
        jz      ?_3176                                  ; 1001AD0A _ 74, 0E
        and     al, 0FFFFFFFDH                          ; 1001AD0C _ 24, FD
        mov     dword [esi+0CH], eax                    ; 1001AD0E _ 89. 46, 0C
        jmp     ?_3176                                  ; 1001AD11 _ EB, 07

?_3175: or      dword [esi+0CH], 20H                    ; 1001AD13 _ 83. 4E, 0C, 20
        or      ebx, 0FFFFFFFFH                         ; 1001AD17 _ 83. CB, FF
?_3176: mov     eax, dword [esi+8H]                     ; 1001AD1A _ 8B. 46, 08
        and     dword [esi+4H], 00H                     ; 1001AD1D _ 83. 66, 04, 00
        mov     dword [esi], eax                        ; 1001AD21 _ 89. 06
        pop     edi                                     ; 1001AD23 _ 5F
        mov     eax, ebx                                ; 1001AD24 _ 8B. C3
        pop     esi                                     ; 1001AD26 _ 5E
        pop     ebx                                     ; 1001AD27 _ 5B
        ret                                             ; 1001AD28 _ C3

