; ---- 1000F05B ----
?_1705: ; Local function
        push    1                                       ; 1000F05B _ 6A, 01
        push    ?_5316                                  ; 1000F05D _ 68, 1002D154(d)
        push    14717                                   ; 1000F062 _ 68, 0000397D
        push    ?_5260                                  ; 1000F067 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F06C _ E8, FFFF45CF
        add     esp, 16                                 ; 1000F071 _ 83. C4, 10
        xor     eax, eax                                ; 1000F074 _ 33. C0
        pop     esi                                     ; 1000F076 _ 5E
        ret                                             ; 1000F077 _ C3

        nop                                             ; 1000F078 _ 90
        nop                                             ; 1000F079 _ 90
        nop                                             ; 1000F07A _ 90
        nop                                             ; 1000F07B _ 90
        nop                                             ; 1000F07C _ 90
        nop                                             ; 1000F07D _ 90
        nop                                             ; 1000F07E _ 90
        nop                                             ; 1000F07F _ 90
