; ---- 10005770 ----
?_0527: ; Local function
        push    esi                                     ; 10005770 _ 56
        mov     esi, dword [esp+8H]                     ; 10005771 _ 8B. 74 24, 08
        test    esi, esi                                ; 10005775 _ 85. F6
        jz      ?_0529                                  ; 10005777 _ 74, 38
        mov     eax, dword [esi+1CH]                    ; 10005779 _ 8B. 46, 1C
        test    eax, eax                                ; 1000577C _ 85. C0
        jz      ?_0529                                  ; 1000577E _ 74, 31
        mov     ecx, dword [esi+24H]                    ; 10005780 _ 8B. 4E, 24
        test    ecx, ecx                                ; 10005783 _ 85. C9
        jz      ?_0529                                  ; 10005785 _ 74, 2A
        mov     eax, dword [eax+14H]                    ; 10005787 _ 8B. 40, 14
        test    eax, eax                                ; 1000578A _ 85. C0
        jz      ?_0528                                  ; 1000578C _ 74, 0A
        push    esi                                     ; 1000578E _ 56
        push    eax                                     ; 1000578F _ 50
        call    ?_0430                                  ; 10005790 _ E8, FFFFF3AB
        add     esp, 8                                  ; 10005795 _ 83. C4, 08
?_0528: mov     eax, dword [esi+1CH]                    ; 10005798 _ 8B. 46, 1C
        mov     ecx, dword [esi+28H]                    ; 1000579B _ 8B. 4E, 28
        push    eax                                     ; 1000579E _ 50
        push    ecx                                     ; 1000579F _ 51
        call    near [esi+24H]                          ; 100057A0 _ FF. 56, 24
        add     esp, 8                                  ; 100057A3 _ 83. C4, 08
        mov     dword [esi+1CH], 0                      ; 100057A6 _ C7. 46, 1C, 00000000
        xor     eax, eax                                ; 100057AD _ 33. C0
        pop     esi                                     ; 100057AF _ 5E
        ret                                             ; 100057B0 _ C3

