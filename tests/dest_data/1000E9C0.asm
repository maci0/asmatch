; ---- 1000E9C0 ----
?_1638: ; Local function
        push    edi                                     ; 1000E9C0 _ 57
        mov     edi, dword [esp+8H]                     ; 1000E9C1 _ 8B. 7C 24, 08
        mov     eax, dword [edi+10H]                    ; 1000E9C5 _ 8B. 47, 10
        push    eax                                     ; 1000E9C8 _ 50
        push    edi                                     ; 1000E9C9 _ 57
        call    ?_1389                                  ; 1000E9CA _ E8, FFFFE0C1
        lea     ecx, [esp+10H]                          ; 1000E9CF _ 8D. 4C 24, 10
        push    eax                                     ; 1000E9D3 _ 50
        push    ecx                                     ; 1000E9D4 _ 51
        push    0                                       ; 1000E9D5 _ 6A, 00
        push    0                                       ; 1000E9D7 _ 6A, 00
        mov     dword [edi+10H], eax                    ; 1000E9D9 _ 89. 47, 10
        call    ?_2425                                  ; 1000E9DC _ E8, 000074AF
        add     esp, 24                                 ; 1000E9E1 _ 83. C4, 18
        test    eax, eax                                ; 1000E9E4 _ 85. C0
        jnz     ?_1639                                  ; 1000E9E6 _ 75, 20
        push    1                                       ; 1000E9E8 _ 6A, 01
        push    ?_5313                                  ; 1000E9EA _ 68, 1002D0F4(d)
        push    13231                                   ; 1000E9EF _ 68, 000033AF
        push    ?_5260                                  ; 1000E9F4 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E9F9 _ E8, FFFF4C42
        add     esp, 16                                 ; 1000E9FE _ 83. C4, 10
        mov     eax, 1                                  ; 1000EA01 _ B8, 00000001
        pop     edi                                     ; 1000EA06 _ 5F
        ret                                             ; 1000EA07 _ C3

