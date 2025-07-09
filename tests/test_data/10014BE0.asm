; ---- 10014BE0 ----
?_2284: ; Local function
        pop     edi                                     ; 10014BE0 _ 5F
        pop     esi                                     ; 10014BE1 _ 5E
        or      eax, 0FFFFFFFFH                         ; 10014BE2 _ 83. C8, FF
        pop     ebx                                     ; 10014BE5 _ 5B
        ret                                             ; 10014BE6 _ C3

        nop                                             ; 10014BE7 _ 90
        nop                                             ; 10014BE8 _ 90
        nop                                             ; 10014BE9 _ 90
        nop                                             ; 10014BEA _ 90
        nop                                             ; 10014BEB _ 90
        nop                                             ; 10014BEC _ 90
        nop                                             ; 10014BED _ 90
        nop                                             ; 10014BEE _ 90
        nop                                             ; 10014BEF _ 90
?_2285: push    ebx                                     ; 10014BF0 _ 53
        mov     ebx, dword [esp+8H]                     ; 10014BF1 _ 8B. 5C 24, 08
        push    esi                                     ; 10014BF5 _ 56
        mov     eax, dword [ebx]                        ; 10014BF6 _ 8B. 03
        push    edi                                     ; 10014BF8 _ 57
        test    ah, 60H                                 ; 10014BF9 _ F6. C4, 60
        jz      ?_2286                                  ; 10014BFC _ 74, 33
        push    1                                       ; 10014BFE _ 6A, 01
        push    ?_5359                                  ; 10014C00 _ 68, 1002D740(d)
        push    852                                     ; 10014C05 _ 68, 00000354
        push    ?_5358                                  ; 10014C0A _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014C0F _ E8, FFFEEA2C
        mov     eax, dword [esp+24H]                    ; 10014C14 _ 8B. 44 24, 24
        push    eax                                     ; 10014C18 _ 50
        push    ebx                                     ; 10014C19 _ 53
        mov     byte [eax], 2                           ; 10014C1A _ C6. 00, 02
        call    ?_1110                                  ; 10014C1D _ E8, FFFF5D7E
        add     esp, 24                                 ; 10014C22 _ 83. C4, 18
        inc     eax                                     ; 10014C25 _ 40
        neg     eax                                     ; 10014C26 _ F7. D8
        sbb     eax, eax                                ; 10014C28 _ 1B. C0
        pop     edi                                     ; 10014C2A _ 5F
        neg     eax                                     ; 10014C2B _ F7. D8
        pop     esi                                     ; 10014C2D _ 5E
        dec     eax                                     ; 10014C2E _ 48
        pop     ebx                                     ; 10014C2F _ 5B
        ret                                             ; 10014C30 _ C3
