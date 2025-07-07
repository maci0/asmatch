; ---- 10014AE7 ----
?_2274: ; Local function
        pop     edi                                     ; 10014AE7 _ 5F
        or      eax, 0FFFFFFFFH                         ; 10014AE8 _ 83. C8, FF
        pop     esi                                     ; 10014AEB _ 5E
        ret                                             ; 10014AEC _ C3

        nop                                             ; 10014AED _ 90
        nop                                             ; 10014AEE _ 90
        nop                                             ; 10014AEF _ 90
?_2275: push    ebx                                     ; 10014AF0 _ 53
        push    esi                                     ; 10014AF1 _ 56
        push    edi                                     ; 10014AF2 _ 57
        mov     edi, dword [esp+10H]                    ; 10014AF3 _ 8B. 7C 24, 10
        mov     eax, dword [edi]                        ; 10014AF7 _ 8B. 07
        test    ah, 60H                                 ; 10014AF9 _ F6. C4, 60
        jz      ?_2276                                  ; 10014AFC _ 74, 33
        push    1                                       ; 10014AFE _ 6A, 01
        push    ?_5359                                  ; 10014B00 _ 68, 1002D740(d)
        push    797                                     ; 10014B05 _ 68, 0000031D
        push    ?_5358                                  ; 10014B0A _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014B0F _ E8, FFFEEB2C
        mov     eax, dword [esp+24H]                    ; 10014B14 _ 8B. 44 24, 24
        push    eax                                     ; 10014B18 _ 50
        push    edi                                     ; 10014B19 _ 57
        mov     byte [eax], 2                           ; 10014B1A _ C6. 00, 02
        call    ?_1110                                  ; 10014B1D _ E8, FFFF5E7E
        add     esp, 24                                 ; 10014B22 _ 83. C4, 18
        inc     eax                                     ; 10014B25 _ 40
        neg     eax                                     ; 10014B26 _ F7. D8
        sbb     eax, eax                                ; 10014B28 _ 1B. C0
        pop     edi                                     ; 10014B2A _ 5F
        neg     eax                                     ; 10014B2B _ F7. D8
        pop     esi                                     ; 10014B2D _ 5E
        dec     eax                                     ; 10014B2E _ 48
        pop     ebx                                     ; 10014B2F _ 5B
        ret                                             ; 10014B30 _ C3

