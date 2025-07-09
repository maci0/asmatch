; ---- 100223DE ----
?_4615: ; Local function
        push    esi                                     ; 100223DE _ 56
        mov     esi, dword [esp+8H]                     ; 100223DF _ 8B. 74 24, 08
        push    edi                                     ; 100223E3 _ 57
        mov     edi, dword [esp+10H]                    ; 100223E4 _ 8B. 7C 24, 10
        push    esi                                     ; 100223E8 _ 56
        push    dword [edi]                             ; 100223E9 _ FF. 37
        push    dword [esi]                             ; 100223EB _ FF. 36
        call    ?_4612                                  ; 100223ED _ E8, FFFFFFCB
        add     esp, 12                                 ; 100223F2 _ 83. C4, 0C
        test    eax, eax                                ; 100223F5 _ 85. C0
        jz      ?_4616                                  ; 100223F7 _ 74, 17
        lea     eax, [esi+4H]                           ; 100223F9 _ 8D. 46, 04
        push    eax                                     ; 100223FC _ 50
        push    1                                       ; 100223FD _ 6A, 01
        push    dword [eax]                             ; 100223FF _ FF. 30
        call    ?_4612                                  ; 10022401 _ E8, FFFFFFB7
        add     esp, 12                                 ; 10022406 _ 83. C4, 0C
        test    eax, eax                                ; 10022409 _ 85. C0
        jz      ?_4616                                  ; 1002240B _ 74, 03
        inc     dword [esi+8H]                          ; 1002240D _ FF. 46, 08
?_4616: lea     eax, [esi+4H]                           ; 10022410 _ 8D. 46, 04
        push    eax                                     ; 10022413 _ 50
        push    dword [edi+4H]                          ; 10022414 _ FF. 77, 04
        push    dword [eax]                             ; 10022417 _ FF. 30
        call    ?_4612                                  ; 10022419 _ E8, FFFFFF9F
        add     esp, 12                                 ; 1002241E _ 83. C4, 0C
        test    eax, eax                                ; 10022421 _ 85. C0
        jz      ?_4617                                  ; 10022423 _ 74, 03
        inc     dword [esi+8H]                          ; 10022425 _ FF. 46, 08
?_4617: lea     eax, [esi+8H]                           ; 10022428 _ 8D. 46, 08
        push    eax                                     ; 1002242B _ 50
        push    dword [edi+8H]                          ; 1002242C _ FF. 77, 08
        push    dword [eax]                             ; 1002242F _ FF. 30
        call    ?_4612                                  ; 10022431 _ E8, FFFFFF87
        add     esp, 12                                 ; 10022436 _ 83. C4, 0C
        pop     edi                                     ; 10022439 _ 5F
        pop     esi                                     ; 1002243A _ 5E
        ret                                             ; 1002243B _ C3
