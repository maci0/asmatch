; ---- 10015460 ----
?_2363: ; Local function
        push    esi                                     ; 10015460 _ 56
        mov     esi, dword [esp+8H]                     ; 10015461 _ 8B. 74 24, 08
        xor     edx, edx                                ; 10015465 _ 33. D2
        push    edi                                     ; 10015467 _ 57
        mov     dl, byte [esi]                          ; 10015468 _ 8A. 16
        mov     edi, dword [?_5668]                     ; 1001546A _ 8B. 3D, 100A8C30(d)
        add     edi, edx                                ; 10015470 _ 03. FA
        xor     eax, eax                                ; 10015472 _ 33. C0
        lea     ecx, [edx+edx*2]                        ; 10015474 _ 8D. 0C 52
        shl     ecx, 4                                  ; 10015477 _ C1. E1, 04
        add     ecx, edx                                ; 1001547A _ 03. CA
        lea     ecx, [ecx+ecx*2]                        ; 1001547C _ 8D. 0C 49
        lea     ecx, [edi+ecx*4]                        ; 1001547F _ 8D. 0C 8F
        mov     cl, byte [ecx]                          ; 10015482 _ 8A. 09
        cmp     cl, 1                                   ; 10015484 _ 80. F9, 01
        jnz     ?_2364                                  ; 10015487 _ 75, 14
        mov     edx, dword [esi+5DH]                    ; 10015489 _ 8B. 56, 5D
        push    18                                      ; 1001548C _ 6A, 12
        push    eax                                     ; 1001548E _ 50
        push    1                                       ; 1001548F _ 6A, 01
        push    edx                                     ; 10015491 _ 52
        call    ?_2482                                  ; 10015492 _ E8, 00000FC9
        add     esp, 16                                 ; 10015497 _ 83. C4, 10
        pop     edi                                     ; 1001549A _ 5F
        pop     esi                                     ; 1001549B _ 5E
        ret                                             ; 1001549C _ C3
