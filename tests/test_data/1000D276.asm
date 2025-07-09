; ---- 1000D276 ----
?_1457: ; Local function
        xor     edi, edi                                ; 1000D276 _ 33. FF
        lea     esi, [ebx+14H]                          ; 1000D278 _ 8D. 73, 14
?_1458: mov     eax, dword [esi]                        ; 1000D27B _ 8B. 06
        push    eax                                     ; 1000D27D _ 50
        call    ?_2817                                  ; 1000D27E _ E8, 0000B21D
        add     esp, 4                                  ; 1000D283 _ 83. C4, 04
        test    eax, eax                                ; 1000D286 _ 85. C0
        jz      ?_1460                                  ; 1000D288 _ 74, 1D
        mov     cl, byte [eax+2H]                       ; 1000D28A _ 8A. 48, 02
        cmp     cl, 6                                   ; 1000D28D _ 80. F9, 06
        jz      ?_1459                                  ; 1000D290 _ 74, 05
        cmp     cl, 7                                   ; 1000D292 _ 80. F9, 07
        jnz     ?_1460                                  ; 1000D295 _ 75, 10
?_1459: mov     eax, dword [eax+20CH]                   ; 1000D297 _ 8B. 80, 0000020C
        cmp     eax, -1                                 ; 1000D29D _ 83. F8, FF
        jz      ?_1460                                  ; 1000D2A0 _ 74, 05
        cmp     eax, dword [ebx+10H]                    ; 1000D2A2 _ 3B. 43, 10
        jnz     ?_1461                                  ; 1000D2A5 _ 75, 0F
?_1460: inc     edi                                     ; 1000D2A7 _ 47
        add     esi, 4                                  ; 1000D2A8 _ 83. C6, 04
        cmp     edi, 16                                 ; 1000D2AB _ 83. FF, 10
        jl      ?_1458                                  ; 1000D2AE _ 7C, CB
        pop     edi                                     ; 1000D2B0 _ 5F
        pop     esi                                     ; 1000D2B1 _ 5E
        xor     eax, eax                                ; 1000D2B2 _ 33. C0
        pop     ebx                                     ; 1000D2B4 _ 5B
        ret                                             ; 1000D2B5 _ C3
