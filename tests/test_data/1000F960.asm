; ---- 1000F960 ----
?_1778: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000F960 _ 8B. 44 24, 04
        add     eax, 16                                 ; 1000F964 _ 83. C0, 10
        push    eax                                     ; 1000F967 _ 50
        call    ?_1183                                  ; 1000F968 _ E8, FFFFBB63
        add     esp, 4                                  ; 1000F96D _ 83. C4, 04
        neg     eax                                     ; 1000F970 _ F7. D8
        sbb     eax, eax                                ; 1000F972 _ 1B. C0
        inc     eax                                     ; 1000F974 _ 40
        ret                                             ; 1000F975 _ C3

        nop                                             ; 1000F976 _ 90
        nop                                             ; 1000F977 _ 90
        nop                                             ; 1000F978 _ 90
        nop                                             ; 1000F979 _ 90
        nop                                             ; 1000F97A _ 90
        nop                                             ; 1000F97B _ 90
        nop                                             ; 1000F97C _ 90
        nop                                             ; 1000F97D _ 90
        nop                                             ; 1000F97E _ 90
        nop                                             ; 1000F97F _ 90
