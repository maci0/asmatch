; ---- 10016760 ----
?_2524: ; Local function
        sub     esp, 1040                               ; 10016760 _ 81. EC, 00000410
        mov     eax, dword [?_5693]                     ; 10016766 _ A1, 101DE450(d)
        push    ebx                                     ; 1001676B _ 53
        push    ebp                                     ; 1001676C _ 55
        push    esi                                     ; 1001676D _ 56
        xor     ebx, ebx                                ; 1001676E _ 33. DB
        xor     ebp, ebp                                ; 10016770 _ 33. ED
        xor     esi, esi                                ; 10016772 _ 33. F6
        cmp     eax, ebx                                ; 10016774 _ 3B. C3
        push    edi                                     ; 10016776 _ 57
        mov     dword [esp+14H], ebx                    ; 10016777 _ 89. 5C 24, 14
        mov     dword [esp+10H], ebx                    ; 1001677B _ 89. 5C 24, 10
        mov     dword [esp+18H], ebx                    ; 1001677F _ 89. 5C 24, 18
        jz      ?_2526                                  ; 10016783 _ 74, 25
        mov     eax, dword [esp+424H]                   ; 10016785 _ 8B. 84 24, 00000424
        cmp     eax, -1                                 ; 1001678C _ 83. F8, FF
        jnz     ?_2527                                  ; 1001678F _ 75, 26
        push    1                                       ; 10016791 _ 6A, 01
        push    ?_5422                                  ; 10016793 _ 68, 10031310(d)
        push    3250                                    ; 10016798 _ 68, 00000CB2
?_2525: push    ?_5397                                  ; 1001679D _ 68, 10031004(d)
        call    ?_0267                                  ; 100167A2 _ E8, FFFECE99
        add     esp, 16                                 ; 100167A7 _ 83. C4, 10
?_2526: pop     edi                                     ; 100167AA _ 5F
        pop     esi                                     ; 100167AB _ 5E
        pop     ebp                                     ; 100167AC _ 5D
        xor     eax, eax                                ; 100167AD _ 33. C0
        pop     ebx                                     ; 100167AF _ 5B
        add     esp, 1040                               ; 100167B0 _ 81. C4, 00000410
        ret                                             ; 100167B6 _ C3

