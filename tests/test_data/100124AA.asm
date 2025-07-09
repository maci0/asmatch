; ---- 100124AA ----
?_2087: ; Local function
        mov     eax, dword [edi]                        ; 100124AA _ 8B. 07
        push    esi                                     ; 100124AC _ 56
        push    1                                       ; 100124AD _ 6A, 01
        lea     ecx, [edi+4H]                           ; 100124AF _ 8D. 4F, 04
        push    1                                       ; 100124B2 _ 6A, 01
        push    ecx                                     ; 100124B4 _ 51
        mov     dword [?_5338], eax                     ; 100124B5 _ A3, 1002D4EC(d)
        call    ?_2085                                  ; 100124BA _ E8, FFFFFF81
        add     esp, 16                                 ; 100124BF _ 83. C4, 10
        test    eax, eax                                ; 100124C2 _ 85. C0
        jnz     ?_2088                                  ; 100124C4 _ 75, 06
        pop     edi                                     ; 100124C6 _ 5F
        pop     esi                                     ; 100124C7 _ 5E
        pop     ebp                                     ; 100124C8 _ 5D
        pop     ebx                                     ; 100124C9 _ 5B
        pop     ecx                                     ; 100124CA _ 59
        ret                                             ; 100124CB _ C3
