; ---- 1000D020 ----
?_1439: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000D020 _ 8B. 44 24, 04
        add     eax, 16                                 ; 1000D024 _ 83. C0, 10
        push    eax                                     ; 1000D027 _ 50
        call    ?_1161                                  ; 1000D028 _ E8, FFFFE193
        add     esp, 4                                  ; 1000D02D _ 83. C4, 04
        neg     eax                                     ; 1000D030 _ F7. D8
        sbb     eax, eax                                ; 1000D032 _ 1B. C0
        inc     eax                                     ; 1000D034 _ 40
        ret                                             ; 1000D035 _ C3

        nop                                             ; 1000D036 _ 90
        nop                                             ; 1000D037 _ 90
        nop                                             ; 1000D038 _ 90
        nop                                             ; 1000D039 _ 90
        nop                                             ; 1000D03A _ 90
        nop                                             ; 1000D03B _ 90
        nop                                             ; 1000D03C _ 90
        nop                                             ; 1000D03D _ 90
        nop                                             ; 1000D03E _ 90
        nop                                             ; 1000D03F _ 90
