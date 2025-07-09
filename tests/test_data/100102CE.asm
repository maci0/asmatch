; ---- 100102CE ----
?_1869: ; Local function
        or      eax, 0FFFFFFFFH                         ; 100102CE _ 83. C8, FF
        ret                                             ; 100102D1 _ C3

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4

?_1870:                                                 ; switch/case jump table
        dd ?_1862                                       ; 100102D4 _ 10010288 (d)
        dd ?_1863                                       ; 100102D8 _ 10010292 (d)
        dd ?_1864                                       ; 100102DC _ 1001029C (d)
        dd ?_1865                                       ; 100102E0 _ 100102A6 (d)
        dd ?_1866                                       ; 100102E4 _ 100102B0 (d)
        dd ?_1867                                       ; 100102E8 _ 100102BA (d)
        dd ?_1868                                       ; 100102EC _ 100102C4 (d)
?_1871: mov     eax, dword [esp+4H]                     ; 100102F0 _ 8B. 44 24, 04
        add     eax, 16                                 ; 100102F4 _ 83. C0, 10
        push    eax                                     ; 100102F7 _ 50
        call    ?_2029                                  ; 100102F8 _ E8, 00001643
        add     esp, 4                                  ; 100102FD _ 83. C4, 04
        ret                                             ; 10010300 _ C3

        nop                                             ; 10010301 _ 90
        nop                                             ; 10010302 _ 90
        nop                                             ; 10010303 _ 90
        nop                                             ; 10010304 _ 90
        nop                                             ; 10010305 _ 90
        nop                                             ; 10010306 _ 90
        nop                                             ; 10010307 _ 90
        nop                                             ; 10010308 _ 90
        nop                                             ; 10010309 _ 90
        nop                                             ; 1001030A _ 90
        nop                                             ; 1001030B _ 90
        nop                                             ; 1001030C _ 90
        nop                                             ; 1001030D _ 90
        nop                                             ; 1001030E _ 90
        nop                                             ; 1001030F _ 90
