; ---- 10021240 ----
?_4392: ; Local function
        mov     edx, dword [esp+0CH]                    ; 10021240 _ 8B. 54 24, 0C
        mov     ecx, dword [esp+4H]                     ; 10021244 _ 8B. 4C 24, 04
        test    edx, edx                                ; 10021248 _ 85. D2
        jz      ?_4397                                  ; 1002124A _ 74, 47
        xor     eax, eax                                ; 1002124C _ 33. C0
        mov     al, byte [esp+8H]                       ; 1002124E _ 8A. 44 24, 08
        push    edi                                     ; 10021252 _ 57
        mov     edi, ecx                                ; 10021253 _ 8B. F9
        cmp     edx, 4                                  ; 10021255 _ 83. FA, 04
        jc      ?_4395                                  ; 10021258 _ 72, 2D
        neg     ecx                                     ; 1002125A _ F7. D9
        and     ecx, 03H                                ; 1002125C _ 83. E1, 03
        jz      ?_4394                                  ; 1002125F _ 74, 08
        sub     edx, ecx                                ; 10021261 _ 2B. D1
?_4393: mov     byte [edi], al                          ; 10021263 _ 88. 07
        inc     edi                                     ; 10021265 _ 47
        dec     ecx                                     ; 10021266 _ 49
        jnz     ?_4393                                  ; 10021267 _ 75, FA
?_4394: mov     ecx, eax                                ; 10021269 _ 8B. C8
        shl     eax, 8                                  ; 1002126B _ C1. E0, 08
        add     eax, ecx                                ; 1002126E _ 03. C1
        mov     ecx, eax                                ; 10021270 _ 8B. C8
        shl     eax, 16                                 ; 10021272 _ C1. E0, 10
        add     eax, ecx                                ; 10021275 _ 03. C1
        mov     ecx, edx                                ; 10021277 _ 8B. CA
        and     edx, 03H                                ; 10021279 _ 83. E2, 03
        shr     ecx, 2                                  ; 1002127C _ C1. E9, 02
        jz      ?_4395                                  ; 1002127F _ 74, 06
        rep stosd                                       ; 10021281 _ F3: AB
        test    edx, edx                                ; 10021283 _ 85. D2
        jz      ?_4396                                  ; 10021285 _ 74, 06
?_4395: mov     byte [edi], al                          ; 10021287 _ 88. 07
        inc     edi                                     ; 10021289 _ 47
        dec     edx                                     ; 1002128A _ 4A
        jnz     ?_4395                                  ; 1002128B _ 75, FA
?_4396: mov     eax, dword [esp+8H]                     ; 1002128D _ 8B. 44 24, 08
        pop     edi                                     ; 10021291 _ 5F
        ret                                             ; 10021292 _ C3
