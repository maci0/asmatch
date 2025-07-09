; ---- 1001A263 ----
?_3037: ; Local function
        push    edi                                     ; 1001A263 _ 57
        push    esi                                     ; 1001A264 _ 56
        push    dword [esp+18H]                         ; 1001A265 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1001A269 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1001A26D _ FF. 74 24, 18
        call    ?_3400                                  ; 1001A271 _ E8, 00001BD5
        push    esi                                     ; 1001A276 _ 56
        mov     edi, eax                                ; 1001A277 _ 8B. F8
        call    ?_3370                                  ; 1001A279 _ E8, 00001934
        add     esp, 20                                 ; 1001A27E _ 83. C4, 14
        mov     eax, edi                                ; 1001A281 _ 8B. C7
        pop     edi                                     ; 1001A283 _ 5F
        pop     esi                                     ; 1001A284 _ 5E
        ret                                             ; 1001A285 _ C3
