; ---- 10019B78 ----
?_2962: ; Local function
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        or      ax, 0FFFFH                              ; 10019B78 _ 66: 0D, FFFF
        pop     ecx                                     ; 10019B7C _ 59
        ret                                             ; 10019B7D _ C3

        nop                                             ; 10019B7E _ 90
        nop                                             ; 10019B7F _ 90
