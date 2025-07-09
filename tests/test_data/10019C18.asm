; ---- 10019C18 ----
?_2970: ; Local function
        push    edi                                     ; 10019C18 _ 57
        push    eax                                     ; 10019C19 _ 50
        call    ?_2951                                  ; 10019C1A _ E8, FFFFFE01
        push    esi                                     ; 10019C1F _ 56
        push    3                                       ; 10019C20 _ 6A, 03
        push    1                                       ; 10019C22 _ 6A, 01
        mov     edi, eax                                ; 10019C24 _ 8B. F8
        call    ?_2609                                  ; 10019C26 _ E8, FFFFD4B5
        mov     esi, eax                                ; 10019C2B _ 8B. F0
        add     esp, 16                                 ; 10019C2D _ 83. C4, 10
        test    esi, esi                                ; 10019C30 _ 85. F6
        jz      ?_2972                                  ; 10019C32 _ 74, 23
?_2971: movsx   ecx, byte [esi+5CH]                     ; 10019C34 _ 0F BE. 4E, 5C
        push    ecx                                     ; 10019C38 _ 51
        push    esi                                     ; 10019C39 _ 56
        call    ?_2943                                  ; 10019C3A _ E8, FFFFFC71
        push    esi                                     ; 10019C3F _ 56
        add     edi, eax                                ; 10019C40 _ 03. F8
        call    ?_2954                                  ; 10019C42 _ E8, FFFFFE29
        add     esp, 12                                 ; 10019C47 _ 83. C4, 0C
        add     edi, eax                                ; 10019C4A _ 03. F8
        call    ?_2587                                  ; 10019C4C _ E8, FFFFD32F
        mov     esi, eax                                ; 10019C51 _ 8B. F0
        test    esi, esi                                ; 10019C53 _ 85. F6
        jnz     ?_2971                                  ; 10019C55 _ 75, DD
?_2972: mov     eax, edi                                ; 10019C57 _ 8B. C7
        pop     edi                                     ; 10019C59 _ 5F
        pop     esi                                     ; 10019C5A _ 5E
        ret                                             ; 10019C5B _ C3

        nop                                             ; 10019C5C _ 90
        nop                                             ; 10019C5D _ 90
        nop                                             ; 10019C5E _ 90
        nop                                             ; 10019C5F _ 90
