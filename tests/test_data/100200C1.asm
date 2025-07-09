; ---- 100200C1 ----
?_4187: ; Local function
        push    ebx                                     ; 100200C1 _ 53
        push    edi                                     ; 100200C2 _ 57
        push    2                                       ; 100200C3 _ 6A, 02
        xor     ebx, ebx                                ; 100200C5 _ 33. DB
        call    ?_3610                                  ; 100200C7 _ E8, FFFFCF6A
        pop     ecx                                     ; 100200CC _ 59
        push    3                                       ; 100200CD _ 6A, 03
        pop     edi                                     ; 100200CF _ 5F
        cmp     dword [?_5814], edi                     ; 100200D0 _ 39. 3D, 11767580(d)
        jle     ?_4191                                  ; 100200D6 _ 7E, 5D
        push    esi                                     ; 100200D8 _ 56
?_4188: mov     eax, dword [?_5812]                     ; 100200D9 _ A1, 11766564(d)
        mov     esi, edi                                ; 100200DE _ 8B. F7
        shl     esi, 2                                  ; 100200E0 _ C1. E6, 02
        mov     eax, dword [esi+eax]                    ; 100200E3 _ 8B. 04 06
        test    eax, eax                                ; 100200E6 _ 85. C0
        jz      ?_4190                                  ; 100200E8 _ 74, 41
        test    byte [eax+0CH], 0FFFFFF83H              ; 100200EA _ F6. 40, 0C, 83
        jz      ?_4189                                  ; 100200EE _ 74, 0D
        push    eax                                     ; 100200F0 _ 50
        call    ?_3029                                  ; 100200F1 _ E8, FFFFA094
        cmp     eax, -1                                 ; 100200F6 _ 83. F8, FF
        pop     ecx                                     ; 100200F9 _ 59
        jz      ?_4189                                  ; 100200FA _ 74, 01
        inc     ebx                                     ; 100200FC _ 43
?_4189: cmp     edi, 20                                 ; 100200FD _ 83. FF, 14
        jl      ?_4190                                  ; 10020100 _ 7C, 29
        mov     eax, dword [?_5812]                     ; 10020102 _ A1, 11766564(d)
        mov     eax, dword [esi+eax]                    ; 10020107 _ 8B. 04 06
        add     eax, 32                                 ; 1002010A _ 83. C0, 20
        push    eax                                     ; 1002010D _ 50
        call    near [imp_DeleteCriticalSection]        ; 1002010E _ FF. 15, 10024104(d)
        mov     eax, dword [?_5812]                     ; 10020114 _ A1, 11766564(d)
        push    dword [esi+eax]                         ; 10020119 _ FF. 34 06
        call    ?_3158                                  ; 1002011C _ E8, FFFFAA60
        mov     eax, dword [?_5812]                     ; 10020121 _ A1, 11766564(d)
        pop     ecx                                     ; 10020126 _ 59
        and     dword [esi+eax], 00H                    ; 10020127 _ 83. 24 06, 00
?_4190: inc     edi                                     ; 1002012B _ 47
        cmp     edi, dword [?_5814]                     ; 1002012C _ 3B. 3D, 11767580(d)
        jl      ?_4188                                  ; 10020132 _ 7C, A5
        pop     esi                                     ; 10020134 _ 5E
?_4191: push    2                                       ; 10020135 _ 6A, 02
        call    ?_3615                                  ; 10020137 _ E8, FFFFCF5B
        pop     ecx                                     ; 1002013C _ 59
        mov     eax, ebx                                ; 1002013D _ 8B. C3
        pop     edi                                     ; 1002013F _ 5F
        pop     ebx                                     ; 10020140 _ 5B
        ret                                             ; 10020141 _ C3
