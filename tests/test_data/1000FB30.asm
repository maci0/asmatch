; ---- 1000FB30 ----
?_1790: ; Local function
        push    esi                                     ; 1000FB30 _ 56
        mov     esi, dword [esp+8H]                     ; 1000FB31 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000FB35 _ 8B. 46, 10
        push    eax                                     ; 1000FB38 _ 50
        call    ?_2817                                  ; 1000FB39 _ E8, 00008962
        add     esp, 4                                  ; 1000FB3E _ 83. C4, 04
        test    eax, eax                                ; 1000FB41 _ 85. C0
        jnz     ?_1791                                  ; 1000FB43 _ 75, 0E
        push    1                                       ; 1000FB45 _ 6A, 01
        push    ?_5332                                  ; 1000FB47 _ 68, 1002D41C(d)
        push    21382                                   ; 1000FB4C _ 68, 00005386
        jmp     ?_1792                                  ; 1000FB51 _ EB, 29

?_1791: mov     ecx, dword [?_5380]                     ; 1000FB53 _ 8B. 0D, 10030B6C(d)
        mov     dword [esi+14H], ecx                    ; 1000FB59 _ 89. 4E, 14
        mov     dx, word [eax]                          ; 1000FB5C _ 66: 8B. 10
        mov     al, byte [esi+18H]                      ; 1000FB5F _ 8A. 46, 18
        push    edx                                     ; 1000FB62 _ 52
        push    eax                                     ; 1000FB63 _ 50
        call    ?_2657                                  ; 1000FB64 _ E8, 00007967
        add     esp, 8                                  ; 1000FB69 _ 83. C4, 08
        test    eax, eax                                ; 1000FB6C _ 85. C0
        jnz     ?_1793                                  ; 1000FB6E _ 75, 20
        push    1                                       ; 1000FB70 _ 6A, 01
        push    ?_5331                                  ; 1000FB72 _ 68, 1002D400(d)
        push    21406                                   ; 1000FB77 _ 68, 0000539E
?_1792: push    ?_5260                                  ; 1000FB7C _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000FB81 _ E8, FFFF3ABA
        add     esp, 16                                 ; 1000FB86 _ 83. C4, 10
        mov     eax, 1                                  ; 1000FB89 _ B8, 00000001
        pop     esi                                     ; 1000FB8E _ 5E
        ret                                             ; 1000FB8F _ C3
