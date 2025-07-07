; ---- 1000F44D ----
?_1735: ; Local function
        xor     ecx, ecx                                ; 1000F44D _ 33. C9
        xor     edx, edx                                ; 1000F44F _ 33. D2
        mov     cx, word [edi]                          ; 1000F451 _ 66: 8B. 0F
        mov     dx, word [eax]                          ; 1000F454 _ 66: 8B. 10
        push    ecx                                     ; 1000F457 _ 51
        push    edx                                     ; 1000F458 _ 52
        push    ebp                                     ; 1000F459 _ 55
        call    ?_2713                                  ; 1000F45A _ E8, 000086A1
        mov     eax, dword [esp+20H]                    ; 1000F45F _ 8B. 44 24, 20
        add     esp, 12                                 ; 1000F463 _ 83. C4, 0C
        test    eax, eax                                ; 1000F466 _ 85. C0
        jz      ?_1736                                  ; 1000F468 _ 74, 0E
        mov     byte [eax], 2                           ; 1000F46A _ C6. 00, 02
        mov     byte [eax+1H], 0                        ; 1000F46D _ C6. 40, 01, 00
        mov     dword [eax+6H], 0                       ; 1000F471 _ C7. 40, 06, 00000000
?_1736: pop     edi                                     ; 1000F478 _ 5F
        pop     esi                                     ; 1000F479 _ 5E
        xor     eax, eax                                ; 1000F47A _ 33. C0
        pop     ebp                                     ; 1000F47C _ 5D
        ret                                             ; 1000F47D _ C3

        nop                                             ; 1000F47E _ 90
        nop                                             ; 1000F47F _ 90

