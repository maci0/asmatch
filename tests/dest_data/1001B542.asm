; ---- 1001B542 ----
?_3297: ; Local function
        call    ?_3621                                  ; 1001B542 _ E8, 00001BEA
        mov     ecx, dword [eax+14H]                    ; 1001B547 _ 8B. 48, 14
        imul    ecx, ecx, 214013                        ; 1001B54A _ 69. C9, 000343FD
        add     ecx, 2531011                            ; 1001B550 _ 81. C1, 00269EC3
        mov     dword [eax+14H], ecx                    ; 1001B556 _ 89. 48, 14
        mov     eax, ecx                                ; 1001B559 _ 8B. C1
        shr     eax, 16                                 ; 1001B55B _ C1. E8, 10
        and     eax, 7FFFH                              ; 1001B55E _ 25, 00007FFF
        ret                                             ; 1001B563 _ C3

