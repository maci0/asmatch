; ---- 1000F415 ----
?_1734: ; Local function
        mov     edx, dword [esi+14H]                    ; 1000F415 _ 8B. 56, 14
        push    edx                                     ; 1000F418 _ 52
        call    ?_2817                                  ; 1000F419 _ E8, 00009082
        add     esp, 4                                  ; 1000F41E _ 83. C4, 04
        test    eax, eax                                ; 1000F421 _ 85. C0
        jnz     ?_1735                                  ; 1000F423 _ 75, 28
        cmp     dword [esi+14H], -1                     ; 1000F425 _ 83. 7E, 14, FF
        jz      ?_1735                                  ; 1000F429 _ 74, 22
        push    1                                       ; 1000F42B _ 6A, 01
        push    ?_5318                                  ; 1000F42D _ 68, 1002D1A8(d)
        push    18832                                   ; 1000F432 _ 68, 00004990
        push    ?_5260                                  ; 1000F437 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F43C _ E8, FFFF41FF
        add     esp, 16                                 ; 1000F441 _ 83. C4, 10
        mov     eax, 2                                  ; 1000F444 _ B8, 00000002
        pop     edi                                     ; 1000F449 _ 5F
        pop     esi                                     ; 1000F44A _ 5E
        pop     ebp                                     ; 1000F44B _ 5D
        ret                                             ; 1000F44C _ C3

