; ---- 1001B070 ----
?_3232: ; Local function
        call    ?_3234                                  ; 1001B070 _ E8, 00000013
        call    ?_3999                                  ; 1001B075 _ E8, 00004168
        mov     dword [?_5572], eax                     ; 1001B07A _ A3, 100354F8(d)
        call    ?_3996                                  ; 1001B07F _ E8, 0000410E
        fnclex                                          ; 1001B084 _ DB. E2
        ret                                             ; 1001B086 _ C3
