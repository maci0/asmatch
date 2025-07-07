; ---- 1001A150 ----
?_3028: ; Local function
        mov     eax, dword [esp+4H]                     ; 1001A150 _ 8B. 44 24, 04
        push    eax                                     ; 1001A154 _ 50
        call    ?_3296                                  ; 1001A155 _ E8, 000013DB
        pop     ecx                                     ; 1001A15A _ 59
        ret                                             ; 1001A15B _ C3

        nop                                             ; 1001A15C _ 90
        nop                                             ; 1001A15D _ 90
        nop                                             ; 1001A15E _ 90
        nop                                             ; 1001A15F _ 90

