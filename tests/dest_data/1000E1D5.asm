; ---- 1000E1D5 ----
?_1560: ; Local function
        push    ecx                                     ; 1000E1D5 _ 51
        call    ?_2957                                  ; 1000E1D6 _ E8, 0000B905
        add     esp, 4                                  ; 1000E1DB _ 83. C4, 04
        mov     dword [esp+1CH], eax                    ; 1000E1DE _ 89. 44 24, 1C
        test    eax, eax                                ; 1000E1E2 _ 85. C0
        jnz     ?_1561                                  ; 1000E1E4 _ 75, 26
        push    1                                       ; 1000E1E6 _ 6A, 01
        push    ?_5303                                  ; 1000E1E8 _ 68, 1002CF48(d)
        push    12141                                   ; 1000E1ED _ 68, 00002F6D
        push    ?_5260                                  ; 1000E1F2 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E1F7 _ E8, FFFF5444
        add     esp, 16                                 ; 1000E1FC _ 83. C4, 10
        mov     eax, 1                                  ; 1000E1FF _ B8, 00000001
        pop     edi                                     ; 1000E204 _ 5F
        pop     esi                                     ; 1000E205 _ 5E
        pop     ebp                                     ; 1000E206 _ 5D
        pop     ebx                                     ; 1000E207 _ 5B
        add     esp, 16                                 ; 1000E208 _ 83. C4, 10
        ret                                             ; 1000E20B _ C3

