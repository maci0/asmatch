; ---- 10012440 ----
?_2085: ; Local function
        mov     eax, dword [esp+10H]                    ; 10012440 _ 8B. 44 24, 10
        mov     ecx, dword [esp+0CH]                    ; 10012444 _ 8B. 4C 24, 0C
        mov     edx, dword [esp+8H]                     ; 10012448 _ 8B. 54 24, 08
        push    eax                                     ; 1001244C _ 50
        mov     eax, dword [esp+8H]                     ; 1001244D _ 8B. 44 24, 08
        push    ecx                                     ; 10012451 _ 51
        push    edx                                     ; 10012452 _ 52
        push    eax                                     ; 10012453 _ 50
        call    ?_0916                                  ; 10012454 _ E8, FFFF69E7
        xor     ecx, ecx                                ; 10012459 _ 33. C9
        add     esp, 16                                 ; 1001245B _ 83. C4, 10
        cmp     ecx, eax                                ; 1001245E _ 3B. C8
        sbb     eax, eax                                ; 10012460 _ 1B. C0
        neg     eax                                     ; 10012462 _ F7. D8
        ret                                             ; 10012464 _ C3

        nop                                             ; 10012465 _ 90
        nop                                             ; 10012466 _ 90
        nop                                             ; 10012467 _ 90
        nop                                             ; 10012468 _ 90
        nop                                             ; 10012469 _ 90
        nop                                             ; 1001246A _ 90
        nop                                             ; 1001246B _ 90
        nop                                             ; 1001246C _ 90
        nop                                             ; 1001246D _ 90
        nop                                             ; 1001246E _ 90
        nop                                             ; 1001246F _ 90
?_2086: push    ecx                                     ; 10012470 _ 51
        push    ebx                                     ; 10012471 _ 53
        push    ebp                                     ; 10012472 _ 55
        push    esi                                     ; 10012473 _ 56
        push    edi                                     ; 10012474 _ 57
        push    ?_5342                                  ; 10012475 _ 68, 1002D4FC(d)
        push    57600                                   ; 1001247A _ 68, 0000E100
        call    ?_0640                                  ; 1001247F _ E8, FFFF40FC
        mov     esi, dword [esp+20H]                    ; 10012484 _ 8B. 74 24, 20
        mov     edi, dword [esp+24H]                    ; 10012488 _ 8B. 7C 24, 24
        push    esi                                     ; 1001248C _ 56
        push    1                                       ; 1001248D _ 6A, 01
        mov     ebx, eax                                ; 1001248F _ 8B. D8
        push    4                                       ; 10012491 _ 6A, 04
        push    edi                                     ; 10012493 _ 57
        mov     dword [esp+28H], ebx                    ; 10012494 _ 89. 5C 24, 28
        call    ?_2085                                  ; 10012498 _ E8, FFFFFFA3
        add     esp, 24                                 ; 1001249D _ 83. C4, 18
        test    eax, eax                                ; 100124A0 _ 85. C0
        jnz     ?_2087                                  ; 100124A2 _ 75, 06
        pop     edi                                     ; 100124A4 _ 5F
        pop     esi                                     ; 100124A5 _ 5E
        pop     ebp                                     ; 100124A6 _ 5D
        pop     ebx                                     ; 100124A7 _ 5B
        pop     ecx                                     ; 100124A8 _ 59
        ret                                             ; 100124A9 _ C3

