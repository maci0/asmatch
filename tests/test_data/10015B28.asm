; ---- 10015B28 ----
?_2398: ; Local function
        push    ?_5404                                  ; 10015B28 _ 68, 10031120(d)
        mov     ecx, 343174                             ; 10015B2D _ B9, 00053C86
        xor     eax, eax                                ; 10015B32 _ 33. C0
        push    ebx                                     ; 10015B34 _ 53
        lea     edx, [esp+1CH]                          ; 10015B35 _ 8D. 54 24, 1C
        push    ?_5408                                  ; 10015B39 _ 68, 1003118C(d)
        rep stosd                                       ; 10015B3E _ F3: AB
        push    edx                                     ; 10015B40 _ 52
        call    ?_3039                                  ; 10015B41 _ E8, 00004753
        lea     eax, [esp+24H]                          ; 10015B46 _ 8D. 44 24, 24
        push    ?_5182                                  ; 10015B4A _ 68, 1002944C(d)
        push    eax                                     ; 10015B4F _ 50
        call    ?_3038                                  ; 10015B50 _ E8, 00004731
        mov     esi, eax                                ; 10015B55 _ 8B. F0
        add     esp, 24                                 ; 10015B57 _ 83. C4, 18
        test    esi, esi                                ; 10015B5A _ 85. F6
        jnz     ?_2399                                  ; 10015B5C _ 75, 28
        push    1                                       ; 10015B5E _ 6A, 01
        push    ?_5403                                  ; 10015B60 _ 68, 100310E8(d)
        push    1325                                    ; 10015B65 _ 68, 0000052D
        push    ?_5397                                  ; 10015B6A _ 68, 10031004(d)
        call    ?_0267                                  ; 10015B6F _ E8, FFFEDACC
        add     esp, 16                                 ; 10015B74 _ 83. C4, 10
        mov     eax, 4294967290                         ; 10015B77 _ B8, FFFFFFFA
        pop     edi                                     ; 10015B7C _ 5F
        pop     esi                                     ; 10015B7D _ 5E
        pop     ebx                                     ; 10015B7E _ 5B
        add     esp, 520                                ; 10015B7F _ 81. C4, 00000208
        ret                                             ; 10015B85 _ C3
