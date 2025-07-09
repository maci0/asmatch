; ---- 1001A140 ----
?_3027: ; Local function
        call    near [imp_timeGetTime]                  ; 1001A140 _ FF. 15, 10024154(d)
        push    eax                                     ; 1001A146 _ 50
        call    ?_3296                                  ; 1001A147 _ E8, 000013E9
        pop     ecx                                     ; 1001A14C _ 59
        ret                                             ; 1001A14D _ C3

        nop                                             ; 1001A14E _ 90
        nop                                             ; 1001A14F _ 90
