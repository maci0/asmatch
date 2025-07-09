; ---- 10015A5B ----
?_2395: ; Local function
        mov     ebx, dword [esp+218H]                   ; 10015A5B _ 8B. 9C 24, 00000218
        push    ?_5409                                  ; 10015A62 _ 68, 10031194(d)
        push    ebx                                     ; 10015A67 _ 53
        lea     edx, [esp+1CH]                          ; 10015A68 _ 8D. 54 24, 1C
        push    ?_5408                                  ; 10015A6C _ 68, 1003118C(d)
        push    edx                                     ; 10015A71 _ 52
        call    ?_3039                                  ; 10015A72 _ E8, 00004822
        lea     eax, [esp+24H]                          ; 10015A77 _ 8D. 44 24, 24
        push    ?_5182                                  ; 10015A7B _ 68, 1002944C(d)
        push    eax                                     ; 10015A80 _ 50
        call    ?_3038                                  ; 10015A81 _ E8, 00004800
        mov     esi, eax                                ; 10015A86 _ 8B. F0
        add     esp, 24                                 ; 10015A88 _ 83. C4, 18
        test    esi, esi                                ; 10015A8B _ 85. F6
        jnz     ?_2396                                  ; 10015A8D _ 75, 28
        push    1                                       ; 10015A8F _ 6A, 01
        push    ?_5407                                  ; 10015A91 _ 68, 10031154(d)
        push    1269                                    ; 10015A96 _ 68, 000004F5
        push    ?_5397                                  ; 10015A9B _ 68, 10031004(d)
        call    ?_0267                                  ; 10015AA0 _ E8, FFFEDB9B
        add     esp, 16                                 ; 10015AA5 _ 83. C4, 10
        mov     eax, 4294967293                         ; 10015AA8 _ B8, FFFFFFFD
        pop     edi                                     ; 10015AAD _ 5F
        pop     esi                                     ; 10015AAE _ 5E
        pop     ebx                                     ; 10015AAF _ 5B
        add     esp, 520                                ; 10015AB0 _ 81. C4, 00000208
        ret                                             ; 10015AB6 _ C3
