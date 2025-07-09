; ---- 1001A0F0 ----
?_3024: ; Local function
        push    ecx                                     ; 1001A0F0 _ 51
        call    ?_3297                                  ; 1001A0F1 _ E8, 0000144C
; Note: Zero displacement could be omitted
        mov     dword [esp], eax                        ; 1001A0F6 _ 89. 44 24, 00
; Note: Zero displacement could be omitted
        fild    dword [esp]                             ; 1001A0FA _ DB. 44 24, 00
        fmul    dword [?_4951]                          ; 1001A0FE _ D8. 0D, 10025FBC(d)
        pop     ecx                                     ; 1001A104 _ 59
        ret                                             ; 1001A105 _ C3

        nop                                             ; 1001A106 _ 90
        nop                                             ; 1001A107 _ 90
        nop                                             ; 1001A108 _ 90
        nop                                             ; 1001A109 _ 90
        nop                                             ; 1001A10A _ 90
        nop                                             ; 1001A10B _ 90
        nop                                             ; 1001A10C _ 90
        nop                                             ; 1001A10D _ 90
        nop                                             ; 1001A10E _ 90
        nop                                             ; 1001A10F _ 90
