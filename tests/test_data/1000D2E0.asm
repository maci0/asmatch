; ---- 1000D2E0 ----
?_1462: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000D2E0 _ 8B. 44 24, 04
        mov     al, byte [eax]                          ; 1000D2E4 _ 8A. 00
        test    al, al                                  ; 1000D2E6 _ 84. C0
        jz      ?_1463                                  ; 1000D2E8 _ 74, 35
        cmp     al, 5                                   ; 1000D2EA _ 3C, 05
        jz      ?_1463                                  ; 1000D2EC _ 74, 31
        cmp     al, 6                                   ; 1000D2EE _ 3C, 06
        jz      ?_1463                                  ; 1000D2F0 _ 74, 2D
        cmp     al, 7                                   ; 1000D2F2 _ 3C, 07
        jz      ?_1463                                  ; 1000D2F4 _ 74, 29
        push    1                                       ; 1000D2F6 _ 6A, 01
        push    ?_5278                                  ; 1000D2F8 _ 68, 1002CACC(d)
        push    9995                                    ; 1000D2FD _ 68, 0000270B
        push    ?_5260                                  ; 1000D302 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D307 _ E8, FFFF6334
        push    ?_5278                                  ; 1000D30C _ 68, 1002CACC(d)
        call    ?_3299                                  ; 1000D311 _ E8, 0000E275
        add     esp, 20                                 ; 1000D316 _ 83. C4, 14
        mov     eax, 1                                  ; 1000D319 _ B8, 00000001
        ret                                             ; 1000D31E _ C3

