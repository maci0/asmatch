; ---- 100196C0 ----
?_2929: ; Local function
        mov     eax, dword [esp+4H]                     ; 100196C0 _ 8B. 44 24, 04
        push    esi                                     ; 100196C4 _ 56
        push    9                                       ; 100196C5 _ 6A, 09
        push    4                                       ; 100196C7 _ 6A, 04
        push    1                                       ; 100196C9 _ 6A, 01
        push    eax                                     ; 100196CB _ 50
        xor     esi, esi                                ; 100196CC _ 33. F6
        call    ?_2482                                  ; 100196CE _ E8, FFFFCD8D
        add     esp, 16                                 ; 100196D3 _ 83. C4, 10
        test    eax, eax                                ; 100196D6 _ 85. C0
        jz      ?_2932                                  ; 100196D8 _ 74, 33
        mov     edx, dword [esp+0CH]                    ; 100196DA _ 8B. 54 24, 0C
        push    edi                                     ; 100196DE _ 57
        and     edx, 0FFH                               ; 100196DF _ 81. E2, 000000FF
        mov     ecx, edx                                ; 100196E5 _ 8B. CA
        shl     ecx, 6                                  ; 100196E7 _ C1. E1, 06
        sub     ecx, edx                                ; 100196EA _ 2B. CA
        lea     edi, [ecx+ecx*2]                        ; 100196EC _ 8D. 3C 49
?_2930: mov     cx, word [?_5672+edi*4]                 ; 100196EF _ 66: 8B. 0C BD, 100A8C94(d)
        cmp     cx, word [eax]                          ; 100196F7 _ 66: 3B. 08
        jnz     ?_2931                                  ; 100196FA _ 75, 03
        add     esi, dword [eax+0EH]                    ; 100196FC _ 03. 70, 0E
?_2931: call    ?_2461                                  ; 100196FF _ E8, FFFFCB8C
        test    eax, eax                                ; 10019704 _ 85. C0
        jnz     ?_2930                                  ; 10019706 _ 75, E7
        mov     eax, esi                                ; 10019708 _ 8B. C6
        pop     edi                                     ; 1001970A _ 5F
        pop     esi                                     ; 1001970B _ 5E
        ret                                             ; 1001970C _ C3
