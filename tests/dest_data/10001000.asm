; ---- 10001000 ----
?_0001: ; Local function
        push    esi                                     ; 10001000 _ 56
        mov     esi, dword [esp+0CH]                    ; 10001001 _ 8B. 74 24, 0C
        push    edi                                     ; 10001005 _ 57
        mov     edi, dword [esp+0CH]                    ; 10001006 _ 8B. 7C 24, 0C
        mov     ecx, edi                                ; 1000100A _ 8B. CF
        and     ecx, 0FFFFH                             ; 1000100C _ 81. E1, 0000FFFF
        shr     edi, 16                                 ; 10001012 _ C1. EF, 10
        test    esi, esi                                ; 10001015 _ 85. F6
        jnz     ?_0002                                  ; 10001017 _ 75, 08
        pop     edi                                     ; 10001019 _ 5F
        mov     eax, 1                                  ; 1000101A _ B8, 00000001
        pop     esi                                     ; 1000101F _ 5E
        ret                                             ; 10001020 _ C3

