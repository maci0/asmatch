; ---- 100150A0 ----
?_2331: ; Local function
        push    ebx                                     ; 100150A0 _ 53
        push    ebp                                     ; 100150A1 _ 55
        mov     ebp, dword [esp+18H]                    ; 100150A2 _ 8B. 6C 24, 18
        push    esi                                     ; 100150A6 _ 56
        push    edi                                     ; 100150A7 _ 57
        push    ebp                                     ; 100150A8 _ 55
        call    ?_2310                                  ; 100150A9 _ E8, FFFFFE32
        mov     edi, dword [esp+18H]                    ; 100150AE _ 8B. 7C 24, 18
        add     esp, 4                                  ; 100150B2 _ 83. C4, 04
        test    edi, edi                                ; 100150B5 _ 85. FF
        mov     dword [esp+20H], eax                    ; 100150B7 _ 89. 44 24, 20
        jnz     ?_2332                                  ; 100150BB _ 75, 20
        push    1                                       ; 100150BD _ 6A, 01
        push    ?_5371                                  ; 100150BF _ 68, 1002D9EC(d)
        push    131                                     ; 100150C4 _ 68, 00000083
        push    ?_5370                                  ; 100150C9 _ 68, 1002D9C0(d)
        call    ?_0267                                  ; 100150CE _ E8, FFFEE56D
        add     esp, 16                                 ; 100150D3 _ 83. C4, 10
        xor     eax, eax                                ; 100150D6 _ 33. C0
        pop     edi                                     ; 100150D8 _ 5F
        pop     esi                                     ; 100150D9 _ 5E
        pop     ebp                                     ; 100150DA _ 5D
        pop     ebx                                     ; 100150DB _ 5B
        ret                                             ; 100150DC _ C3
