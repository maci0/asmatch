; ---- 1002243C ----
?_4618: ; Local function
        mov     eax, dword [esp+4H]                     ; 1002243C _ 8B. 44 24, 04
        push    esi                                     ; 10022440 _ 56
        push    edi                                     ; 10022441 _ 57
        mov     esi, dword [eax]                        ; 10022442 _ 8B. 30
        mov     edi, dword [eax+4H]                     ; 10022444 _ 8B. 78, 04
        mov     ecx, esi                                ; 10022447 _ 8B. CE
        add     esi, esi                                ; 10022449 _ 03. F6
        mov     dword [eax], esi                        ; 1002244B _ 89. 30
        lea     esi, [edi+edi]                          ; 1002244D _ 8D. 34 3F
        shr     ecx, 31                                 ; 10022450 _ C1. E9, 1F
        or      esi, ecx                                ; 10022453 _ 0B. F1
        mov     ecx, dword [eax+8H]                     ; 10022455 _ 8B. 48, 08
        mov     edx, edi                                ; 10022458 _ 8B. D7
        mov     dword [eax+4H], esi                     ; 1002245A _ 89. 70, 04
        shr     edx, 31                                 ; 1002245D _ C1. EA, 1F
        shl     ecx, 1                                  ; 10022460 _ D1. E1
        or      ecx, edx                                ; 10022462 _ 0B. CA
        pop     edi                                     ; 10022464 _ 5F
        mov     dword [eax+8H], ecx                     ; 10022465 _ 89. 48, 08
        pop     esi                                     ; 10022468 _ 5E
        ret                                             ; 10022469 _ C3

