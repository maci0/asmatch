; ---- 1001B58B ----
?_3299: ; Local function
        push    ebx                                     ; 1001B58B _ 53
        push    esi                                     ; 1001B58C _ 56
        mov     esi, ?_5448                             ; 1001B58D _ BE, 10031818(d)
        push    edi                                     ; 1001B592 _ 57
        push    esi                                     ; 1001B593 _ 56
        push    1                                       ; 1001B594 _ 6A, 01
        call    ?_3368                                  ; 1001B596 _ E8, 000005F4
        push    esi                                     ; 1001B59B _ 56
        call    ?_3385                                  ; 1001B59C _ E8, 0000076E
        mov     edi, eax                                ; 1001B5A1 _ 8B. F8
        lea     eax, [esp+20H]                          ; 1001B5A3 _ 8D. 44 24, 20
        push    eax                                     ; 1001B5A7 _ 50
        push    dword [esp+20H]                         ; 1001B5A8 _ FF. 74 24, 20
        push    esi                                     ; 1001B5AC _ 56
        call    ?_3442                                  ; 1001B5AD _ E8, 00000BE9
        push    esi                                     ; 1001B5B2 _ 56
        push    edi                                     ; 1001B5B3 _ 57
        mov     ebx, eax                                ; 1001B5B4 _ 8B. D8
        call    ?_3391                                  ; 1001B5B6 _ E8, 000007E1
        push    esi                                     ; 1001B5BB _ 56
        push    1                                       ; 1001B5BC _ 6A, 01
        call    ?_3372                                  ; 1001B5BE _ E8, 0000061E
        add     esp, 40                                 ; 1001B5C3 _ 83. C4, 28
        mov     eax, ebx                                ; 1001B5C6 _ 8B. C3
        pop     edi                                     ; 1001B5C8 _ 5F
        pop     esi                                     ; 1001B5C9 _ 5E
        pop     ebx                                     ; 1001B5CA _ 5B
        ret                                             ; 1001B5CB _ C3
