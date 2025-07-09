; ---- 1000F680 ----
?_1750: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000F680 _ 8B. 44 24, 04
        push    esi                                     ; 1000F684 _ 56
        mov     ecx, dword [eax+10H]                    ; 1000F685 _ 8B. 48, 10
        push    ecx                                     ; 1000F688 _ 51
        push    1                                       ; 1000F689 _ 6A, 01
        push    1                                       ; 1000F68B _ 6A, 01
        call    ?_2609                                  ; 1000F68D _ E8, 00007A4E
        mov     esi, eax                                ; 1000F692 _ 8B. F0
        add     esp, 12                                 ; 1000F694 _ 83. C4, 0C
        test    esi, esi                                ; 1000F697 _ 85. F6
        jnz     ?_1751                                  ; 1000F699 _ 75, 20
        push    1                                       ; 1000F69B _ 6A, 01
        push    ?_5325                                  ; 1000F69D _ 68, 1002D2EC(d)
        push    19506                                   ; 1000F6A2 _ 68, 00004C32
        push    ?_5260                                  ; 1000F6A7 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F6AC _ E8, FFFF3F8F
        add     esp, 16                                 ; 1000F6B1 _ 83. C4, 10
        mov     eax, 1                                  ; 1000F6B4 _ B8, 00000001
        pop     esi                                     ; 1000F6B9 _ 5E
        ret                                             ; 1000F6BA _ C3
