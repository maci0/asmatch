; ---- 1000F619 ----
?_1747: ; Local function
        mov     cl, byte [esi+5CH]                      ; 1000F619 _ 8A. 4E, 5C
        inc     dl                                      ; 1000F61C _ FE. C2
        mov     byte [esi], dl                          ; 1000F61E _ 88. 16
        mov     eax, 100                                ; 1000F620 _ B8, 00000064
        movsx   edx, cl                                 ; 1000F625 _ 0F BE. D1
        sub     eax, edx                                ; 1000F628 _ 2B. C2
        push    esi                                     ; 1000F62A _ 56
        cdq                                             ; 1000F62B _ 99
        sub     eax, edx                                ; 1000F62C _ 2B. C2
        sar     eax, 1                                  ; 1000F62E _ D1. F8
        add     al, cl                                  ; 1000F630 _ 02. C1
        mov     byte [esi+5CH], al                      ; 1000F632 _ 88. 46, 5C
        call    ?_2649                                  ; 1000F635 _ E8, 00007DC6
        push    esi                                     ; 1000F63A _ 56
        call    ?_2642                                  ; 1000F63B _ E8, 00007CF0
        mov     al, byte [edi]                          ; 1000F640 _ 8A. 07
        add     esp, 8                                  ; 1000F642 _ 83. C4, 08
        cmp     al, 29                                  ; 1000F645 _ 3C, 1D
        jnz     ?_1748                                  ; 1000F647 _ 75, 09
        push    esi                                     ; 1000F649 _ 56
        call    ?_1955                                  ; 1000F64A _ E8, 000016C1
        add     esp, 4                                  ; 1000F64F _ 83. C4, 04
?_1748: xor     eax, eax                                ; 1000F652 _ 33. C0
        mov     al, byte [?_5532]                       ; 1000F654 _ A0, 10035439(d)
        push    eax                                     ; 1000F659 _ 50
        call    ?_2440                                  ; 1000F65A _ E8, 00006911
        mov     eax, dword [esp+14H]                    ; 1000F65F _ 8B. 44 24, 14
        add     esp, 4                                  ; 1000F663 _ 83. C4, 04
        test    eax, eax                                ; 1000F666 _ 85. C0
        jz      ?_1749                                  ; 1000F668 _ 74, 0E
        mov     byte [eax], 2                           ; 1000F66A _ C6. 00, 02
        mov     byte [eax+1H], 0                        ; 1000F66D _ C6. 40, 01, 00
        mov     dword [eax+6H], 0                       ; 1000F671 _ C7. 40, 06, 00000000
?_1749: pop     edi                                     ; 1000F678 _ 5F
        xor     eax, eax                                ; 1000F679 _ 33. C0
        pop     esi                                     ; 1000F67B _ 5E
        ret                                             ; 1000F67C _ C3

        nop                                             ; 1000F67D _ 90
        nop                                             ; 1000F67E _ 90
        nop                                             ; 1000F67F _ 90
