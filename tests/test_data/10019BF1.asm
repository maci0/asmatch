; ---- 10019BF1 ----
?_2969: ; Local function
        and     esi, 0FFFFH                             ; 10019BF1 _ 81. E6, 0000FFFF
        lea     eax, [esi+esi*2]                        ; 10019BF7 _ 8D. 04 76
        lea     eax, [eax+eax*4]                        ; 10019BFA _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 10019BFD _ 8D. 04 C0
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [?_5632+eax*4], -1                 ; 10019C00 _ 66: 81. 3C 85, 100358A0(d), FFFF
        lea     eax, [?_5632+eax*4]                     ; 10019C0A _ 8D. 04 85, 100358A0(d)
        jnz     ?_2970                                  ; 10019C11 _ 75, 05
        or      eax, 0FFFFFFFFH                         ; 10019C13 _ 83. C8, FF
        pop     esi                                     ; 10019C16 _ 5E
        ret                                             ; 10019C17 _ C3

