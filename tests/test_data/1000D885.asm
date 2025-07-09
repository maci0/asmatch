; ---- 1000D885 ----
?_1499: ; Local function
        mov     eax, dword [esp+0CH]                    ; 1000D885 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000D889 _ 85. C0
        jz      ?_1500                                  ; 1000D88B _ 74, 03
        mov     byte [eax], 1                           ; 1000D88D _ C6. 00, 01
?_1500: xor     eax, eax                                ; 1000D890 _ 33. C0
        pop     esi                                     ; 1000D892 _ 5E
        ret                                             ; 1000D893 _ C3

        nop                                             ; 1000D894 _ 90
        nop                                             ; 1000D895 _ 90
        nop                                             ; 1000D896 _ 90
        nop                                             ; 1000D897 _ 90
        nop                                             ; 1000D898 _ 90
        nop                                             ; 1000D899 _ 90
        nop                                             ; 1000D89A _ 90
        nop                                             ; 1000D89B _ 90
        nop                                             ; 1000D89C _ 90
        nop                                             ; 1000D89D _ 90
        nop                                             ; 1000D89E _ 90
        nop                                             ; 1000D89F _ 90
