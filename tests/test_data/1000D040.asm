; ---- 1000D040 ----
?_1440: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000D040 _ 8B. 44 24, 04
        add     eax, 16                                 ; 1000D044 _ 83. C0, 10
        push    eax                                     ; 1000D047 _ 50
        call    ?_1175                                  ; 1000D048 _ E8, FFFFE3F3
        add     esp, 4                                  ; 1000D04D _ 83. C4, 04
        neg     eax                                     ; 1000D050 _ F7. D8
        sbb     eax, eax                                ; 1000D052 _ 1B. C0
        inc     eax                                     ; 1000D054 _ 40
        ret                                             ; 1000D055 _ C3

        nop                                             ; 1000D056 _ 90
        nop                                             ; 1000D057 _ 90
        nop                                             ; 1000D058 _ 90
        nop                                             ; 1000D059 _ 90
        nop                                             ; 1000D05A _ 90
        nop                                             ; 1000D05B _ 90
        nop                                             ; 1000D05C _ 90
        nop                                             ; 1000D05D _ 90
        nop                                             ; 1000D05E _ 90
        nop                                             ; 1000D05F _ 90
