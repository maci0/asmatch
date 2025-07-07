; ---- 1000D31F ----
?_1463: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000D31F _ 8B. 44 24, 08
        test    eax, eax                                ; 1000D323 _ 85. C0
        jz      ?_1464                                  ; 1000D325 _ 74, 03
        mov     byte [eax], 1                           ; 1000D327 _ C6. 00, 01
?_1464: xor     eax, eax                                ; 1000D32A _ 33. C0
        ret                                             ; 1000D32C _ C3

        nop                                             ; 1000D32D _ 90
        nop                                             ; 1000D32E _ 90
        nop                                             ; 1000D32F _ 90

