; ---- 1000FBF0 ----
?_1797: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000FBF0 _ 8B. 44 24, 08
        test    eax, eax                                ; 1000FBF4 _ 85. C0
        jz      ?_1798                                  ; 1000FBF6 _ 74, 0E
        mov     byte [eax], 1                           ; 1000FBF8 _ C6. 00, 01
        mov     byte [eax+1H], 8                        ; 1000FBFB _ C6. 40, 01, 08
        mov     dword [eax+6H], 0                       ; 1000FBFF _ C7. 40, 06, 00000000
?_1798: xor     eax, eax                                ; 1000FC06 _ 33. C0
        ret                                             ; 1000FC08 _ C3

        nop                                             ; 1000FC09 _ 90
        nop                                             ; 1000FC0A _ 90
        nop                                             ; 1000FC0B _ 90
        nop                                             ; 1000FC0C _ 90
        nop                                             ; 1000FC0D _ 90
        nop                                             ; 1000FC0E _ 90
        nop                                             ; 1000FC0F _ 90
