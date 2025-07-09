; ---- 1000FB03 ----
?_1788: ; Local function
        push    eax                                     ; 1000FB03 _ 50
        call    ?_2753                                  ; 1000FB04 _ E8, 00008457
        mov     eax, dword [esp+0CH]                    ; 1000FB09 _ 8B. 44 24, 0C
        add     esp, 4                                  ; 1000FB0D _ 83. C4, 04
        test    eax, eax                                ; 1000FB10 _ 85. C0
        jz      ?_1789                                  ; 1000FB12 _ 74, 0E
        mov     byte [eax], 1                           ; 1000FB14 _ C6. 00, 01
        mov     byte [eax+1H], 0                        ; 1000FB17 _ C6. 40, 01, 00
        mov     dword [eax+6H], 0                       ; 1000FB1B _ C7. 40, 06, 00000000
?_1789: xor     eax, eax                                ; 1000FB22 _ 33. C0
        ret                                             ; 1000FB24 _ C3

        nop                                             ; 1000FB25 _ 90
        nop                                             ; 1000FB26 _ 90
        nop                                             ; 1000FB27 _ 90
        nop                                             ; 1000FB28 _ 90
        nop                                             ; 1000FB29 _ 90
        nop                                             ; 1000FB2A _ 90
        nop                                             ; 1000FB2B _ 90
        nop                                             ; 1000FB2C _ 90
        nop                                             ; 1000FB2D _ 90
        nop                                             ; 1000FB2E _ 90
        nop                                             ; 1000FB2F _ 90
