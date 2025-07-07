; ---- 10003C50 ----
?_0329: ; Local function
        push    esi                                     ; 10003C50 _ 56
        mov     esi, dword [esp+8H]                     ; 10003C51 _ 8B. 74 24, 08
        push    edi                                     ; 10003C55 _ 57
        push    esi                                     ; 10003C56 _ 56
        call    ?_0287                                  ; 10003C57 _ E8, FFFFFBC4
        push    esi                                     ; 10003C5C _ 56
        mov     edi, eax                                ; 10003C5D _ 8B. F8
        call    ?_0287                                  ; 10003C5F _ E8, FFFFFBBC
        shl     eax, 8                                  ; 10003C64 _ C1. E0, 08
        push    esi                                     ; 10003C67 _ 56
        add     edi, eax                                ; 10003C68 _ 03. F8
        call    ?_0287                                  ; 10003C6A _ E8, FFFFFBB1
        shl     eax, 16                                 ; 10003C6F _ C1. E0, 10
        push    esi                                     ; 10003C72 _ 56
        add     edi, eax                                ; 10003C73 _ 03. F8
        call    ?_0287                                  ; 10003C75 _ E8, FFFFFBA6
        add     esp, 16                                 ; 10003C7A _ 83. C4, 10
        cmp     eax, -1                                 ; 10003C7D _ 83. F8, FF
        jnz     ?_0330                                  ; 10003C80 _ 75, 07
        mov     dword [esi+38H], -3                     ; 10003C82 _ C7. 46, 38, FFFFFFFD
?_0330: shl     eax, 24                                 ; 10003C89 _ C1. E0, 18
        add     eax, edi                                ; 10003C8C _ 03. C7
        pop     edi                                     ; 10003C8E _ 5F
        pop     esi                                     ; 10003C8F _ 5E
        ret                                             ; 10003C90 _ C3

        nop                                             ; 10003C91 _ 90
        nop                                             ; 10003C92 _ 90
        nop                                             ; 10003C93 _ 90
        nop                                             ; 10003C94 _ 90
        nop                                             ; 10003C95 _ 90
        nop                                             ; 10003C96 _ 90
        nop                                             ; 10003C97 _ 90
        nop                                             ; 10003C98 _ 90
        nop                                             ; 10003C99 _ 90
        nop                                             ; 10003C9A _ 90
        nop                                             ; 10003C9B _ 90
        nop                                             ; 10003C9C _ 90
        nop                                             ; 10003C9D _ 90
        nop                                             ; 10003C9E _ 90
        nop                                             ; 10003C9F _ 90
?_0331: push    esi                                     ; 10003CA0 _ 56
        mov     esi, dword [esp+8H]                     ; 10003CA1 _ 8B. 74 24, 08
        test    esi, esi                                ; 10003CA5 _ 85. F6
        jnz     ?_0332                                  ; 10003CA7 _ 75, 07
        mov     eax, 4294967294                         ; 10003CA9 _ B8, FFFFFFFE
        pop     esi                                     ; 10003CAE _ 5E
        ret                                             ; 10003CAF _ C3

