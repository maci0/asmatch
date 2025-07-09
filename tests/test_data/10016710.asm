; ---- 10016710 ----
?_2520: ; Local function
        push    esi                                     ; 10016710 _ 56
        push    edi                                     ; 10016711 _ 57
        mov     edi, dword [esp+0CH]                    ; 10016712 _ 8B. 7C 24, 0C
        test    edi, edi                                ; 10016716 _ 85. FF
        jz      ?_2523                                  ; 10016718 _ 74, 33
        mov     esi, dword [edi]                        ; 1001671A _ 8B. 37
        test    esi, esi                                ; 1001671C _ 85. F6
        jnz     ?_2521                                  ; 1001671E _ 75, 06
        pop     edi                                     ; 10016720 _ 5F
        or      eax, 0FFFFFFFFH                         ; 10016721 _ 83. C8, FF
        pop     esi                                     ; 10016724 _ 5E
        ret                                             ; 10016725 _ C3

?_2521: mov     eax, dword [esi+3FH]                    ; 10016726 _ 8B. 46, 3F
        mov     dword [edi], eax                        ; 10016729 _ 89. 07
        mov     ecx, dword [esi+14H]                    ; 1001672B _ 8B. 4E, 14
        lea     eax, [esi+14H]                          ; 1001672E _ 8D. 46, 14
        test    ecx, ecx                                ; 10016731 _ 85. C9
        jz      ?_2522                                  ; 10016733 _ 74, 09
        push    eax                                     ; 10016735 _ 50
        call    ?_2520                                  ; 10016736 _ E8, FFFFFFD5
        add     esp, 4                                  ; 1001673B _ 83. C4, 04
?_2522: push    esi                                     ; 1001673E _ 56
        call    ?_2511                                  ; 1001673F _ E8, FFFFFF2C
        mov     esi, dword [edi]                        ; 10016744 _ 8B. 37
        add     esp, 4                                  ; 10016746 _ 83. C4, 04
        test    esi, esi                                ; 10016749 _ 85. F6
        jnz     ?_2521                                  ; 1001674B _ 75, D9
?_2523: pop     edi                                     ; 1001674D _ 5F
        xor     eax, eax                                ; 1001674E _ 33. C0
        pop     esi                                     ; 10016750 _ 5E
        ret                                             ; 10016751 _ C3

        nop                                             ; 10016752 _ 90
        nop                                             ; 10016753 _ 90
        nop                                             ; 10016754 _ 90
        nop                                             ; 10016755 _ 90
        nop                                             ; 10016756 _ 90
        nop                                             ; 10016757 _ 90
        nop                                             ; 10016758 _ 90
        nop                                             ; 10016759 _ 90
        nop                                             ; 1001675A _ 90
        nop                                             ; 1001675B _ 90
        nop                                             ; 1001675C _ 90
        nop                                             ; 1001675D _ 90
        nop                                             ; 1001675E _ 90
        nop                                             ; 1001675F _ 90
