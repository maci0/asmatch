; ---- 10006280 ----
?_0617: ; Local function
        push    ecx                                     ; 10006280 _ 51
        push    ebx                                     ; 10006281 _ 53
        mov     ebx, dword [esp+2CH]                    ; 10006282 _ 8B. 5C 24, 2C
        push    ebp                                     ; 10006286 _ 55
        push    esi                                     ; 10006287 _ 56
        mov     eax, dword [ebx+28H]                    ; 10006288 _ 8B. 43, 28
        push    edi                                     ; 1000628B _ 57
        push    4                                       ; 1000628C _ 6A, 04
        push    288                                     ; 1000628E _ 68, 00000120
        push    eax                                     ; 10006293 _ 50
        mov     dword [esp+1CH], 0                      ; 10006294 _ C7. 44 24, 1C, 00000000
        call    near [ebx+20H]                          ; 1000629C _ FF. 53, 20
        mov     edi, eax                                ; 1000629F _ 8B. F8
        add     esp, 12                                 ; 100062A1 _ 83. C4, 0C
        test    edi, edi                                ; 100062A4 _ 85. FF
        jnz     ?_0618                                  ; 100062A6 _ 75, 0B
        pop     edi                                     ; 100062A8 _ 5F
        pop     esi                                     ; 100062A9 _ 5E
        pop     ebp                                     ; 100062AA _ 5D
        mov     eax, 4294967292                         ; 100062AB _ B8, FFFFFFFC
        pop     ebx                                     ; 100062B0 _ 5B
        pop     ecx                                     ; 100062B1 _ 59
        ret                                             ; 100062B2 _ C3
