; ---- 1001A2EB ----
?_3042: ; Local function
        push    esi                                     ; 1001A2EB _ 56
        mov     esi, dword [esp+8H]                     ; 1001A2EC _ 8B. 74 24, 08
        push    edi                                     ; 1001A2F0 _ 57
        push    esi                                     ; 1001A2F1 _ 56
        call    ?_3366                                  ; 1001A2F2 _ E8, 00001869
        push    esi                                     ; 1001A2F7 _ 56
        call    ?_3043                                  ; 1001A2F8 _ E8, 00000010
        push    esi                                     ; 1001A2FD _ 56
        mov     edi, eax                                ; 1001A2FE _ 8B. F8
        call    ?_3370                                  ; 1001A300 _ E8, 000018AD
        add     esp, 12                                 ; 1001A305 _ 83. C4, 0C
        mov     eax, edi                                ; 1001A308 _ 8B. C7
        pop     edi                                     ; 1001A30A _ 5F
        pop     esi                                     ; 1001A30B _ 5E
        ret                                             ; 1001A30C _ C3
