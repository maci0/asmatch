; ---- 1000E690 ----
?_1602: ; Local function
        push    esi                                     ; 1000E690 _ 56
        mov     esi, dword [esp+8H]                     ; 1000E691 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000E695 _ 8B. 46, 10
        push    eax                                     ; 1000E698 _ 50
        push    esi                                     ; 1000E699 _ 56
        call    ?_1389                                  ; 1000E69A _ E8, FFFFE3F1
        push    eax                                     ; 1000E69F _ 50
        lea     ecx, [esp+14H]                          ; 1000E6A0 _ 8D. 4C 24, 14
        push    0                                       ; 1000E6A4 _ 6A, 00
        push    ecx                                     ; 1000E6A6 _ 51
        push    0                                       ; 1000E6A7 _ 6A, 00
        mov     dword [esi+10H], eax                    ; 1000E6A9 _ 89. 46, 10
        call    ?_2425                                  ; 1000E6AC _ E8, 000077DF
        add     esp, 24                                 ; 1000E6B1 _ 83. C4, 18
        test    eax, eax                                ; 1000E6B4 _ 85. C0
        jnz     ?_1603                                  ; 1000E6B6 _ 75, 0E
        push    1                                       ; 1000E6B8 _ 6A, 01
        push    ?_5310                                  ; 1000E6BA _ 68, 1002D088(d)
        push    12619                                   ; 1000E6BF _ 68, 0000314B
        jmp     ?_1604                                  ; 1000E6C4 _ EB, 20

?_1603: mov     eax, dword [esp+8H]                     ; 1000E6C6 _ 8B. 44 24, 08
        mov     cx, word [eax]                          ; 1000E6CA _ 66: 8B. 08
        cmp     cx, 42                                  ; 1000E6CD _ 66: 83. F9, 2A
        jz      ?_1605                                  ; 1000E6D1 _ 74, 27
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, 278                                 ; 1000E6D3 _ 66: 81. F9, 0116
        jz      ?_1605                                  ; 1000E6D8 _ 74, 20
        push    1                                       ; 1000E6DA _ 6A, 01
        push    ?_5309                                  ; 1000E6DC _ 68, 1002D054(d)
        push    12629                                   ; 1000E6E1 _ 68, 00003155
?_1604: push    ?_5260                                  ; 1000E6E6 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E6EB _ E8, FFFF4F50
        add     esp, 16                                 ; 1000E6F0 _ 83. C4, 10
        mov     eax, 1                                  ; 1000E6F3 _ B8, 00000001
        pop     esi                                     ; 1000E6F8 _ 5E
        ret                                             ; 1000E6F9 _ C3

