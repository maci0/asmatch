; ---- 10019D30 ----
?_2983: ; Local function
        push    ebx                                     ; 10019D30 _ 53
        push    ebp                                     ; 10019D31 _ 55
        push    esi                                     ; 10019D32 _ 56
        push    edi                                     ; 10019D33 _ 57
        mov     edi, dword [esp+14H]                    ; 10019D34 _ 8B. 7C 24, 14
        push    edi                                     ; 10019D38 _ 57
        call    ?_2963                                  ; 10019D39 _ E8, FFFFFE42
        add     esp, 4                                  ; 10019D3E _ 83. C4, 04
        test    eax, eax                                ; 10019D41 _ 85. C0
        jnz     ?_2984                                  ; 10019D43 _ 75, 20
        push    1                                       ; 10019D45 _ 6A, 01
        push    ?_5440                                  ; 10019D47 _ 68, 10031628(d)
        push    12766                                   ; 10019D4C _ 68, 000031DE
        push    ?_5397                                  ; 10019D51 _ 68, 10031004(d)
        call    ?_0267                                  ; 10019D56 _ E8, FFFE98E5
        add     esp, 16                                 ; 10019D5B _ 83. C4, 10
        xor     eax, eax                                ; 10019D5E _ 33. C0
        pop     edi                                     ; 10019D60 _ 5F
        pop     esi                                     ; 10019D61 _ 5E
        pop     ebp                                     ; 10019D62 _ 5D
        pop     ebx                                     ; 10019D63 _ 5B
        ret                                             ; 10019D64 _ C3
