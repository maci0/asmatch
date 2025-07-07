; ---- 10023812 ----
?_4880: ; Local function
        push    esi                                     ; 10023812 _ 56
        mov     esi, dword [esp+8H]                     ; 10023813 _ 8B. 74 24, 08
        test    esi, esi                                ; 10023817 _ 85. F6
        jz      ?_4881                                  ; 10023819 _ 74, 1E
        push    esi                                     ; 1002381B _ 56
        call    ?_3393                                  ; 1002381C _ E8, FFFF85AF
        inc     eax                                     ; 10023821 _ 40
        push    eax                                     ; 10023822 _ 50
        call    ?_3109                                  ; 10023823 _ E8, FFFF6FCF
        pop     ecx                                     ; 10023828 _ 59
        test    eax, eax                                ; 10023829 _ 85. C0
        pop     ecx                                     ; 1002382B _ 59
        jz      ?_4881                                  ; 1002382C _ 74, 0B
        push    esi                                     ; 1002382E _ 56
        push    eax                                     ; 1002382F _ 50
        call    ?_4074                                  ; 10023830 _ E8, FFFFC09B
        pop     ecx                                     ; 10023835 _ 59
        pop     ecx                                     ; 10023836 _ 59
        pop     esi                                     ; 10023837 _ 5E
        ret                                             ; 10023838 _ C3

