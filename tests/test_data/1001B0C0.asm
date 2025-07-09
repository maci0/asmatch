; ---- 1001B0C0 ----
?_3235: ; Local function
        push    ebx                                     ; 1001B0C0 _ 53
        xor     ebx, ebx                                ; 1001B0C1 _ 33. DB
        cmp     dword [?_5589], ebx                     ; 1001B0C3 _ 39. 1D, 100355BC(d)
        jnz     ?_3236                                  ; 1001B0C9 _ 75, 13
        mov     eax, dword [esp+8H]                     ; 1001B0CB _ 8B. 44 24, 08
        cmp     eax, 97                                 ; 1001B0CF _ 83. F8, 61
        jl      ?_3240                                  ; 1001B0D2 _ 7C, 59
        cmp     eax, 122                                ; 1001B0D4 _ 83. F8, 7A
        jg      ?_3240                                  ; 1001B0D7 _ 7F, 54
        sub     eax, 32                                 ; 1001B0D9 _ 83. E8, 20
        pop     ebx                                     ; 1001B0DC _ 5B
        ret                                             ; 1001B0DD _ C3

?_3236: push    esi                                     ; 1001B0DE _ 56
        mov     esi, ?_5799                             ; 1001B0DF _ BE, 1176642C(d)
        push    edi                                     ; 1001B0E4 _ 57
        push    esi                                     ; 1001B0E5 _ 56
        call    near [imp_InterlockedIncrement]         ; 1001B0E6 _ FF. 15, 100240D8(d)
        cmp     dword [?_5798], ebx                     ; 1001B0EC _ 39. 1D, 11766428(d)
        mov     edi, dword [imp_InterlockedDecrement]   ; 1001B0F2 _ 8B. 3D, 100240D4(d)
        jz      ?_3237                                  ; 1001B0F8 _ 74, 0E
        push    esi                                     ; 1001B0FA _ 56
        call    edi                                     ; 1001B0FB _ FF. D7
        push    19                                      ; 1001B0FD _ 6A, 13
        call    ?_3610                                  ; 1001B0FF _ E8, 00001F32
        pop     ecx                                     ; 1001B104 _ 59
        push    1                                       ; 1001B105 _ 6A, 01
        pop     ebx                                     ; 1001B107 _ 5B
?_3237: push    dword [esp+10H]                         ; 1001B108 _ FF. 74 24, 10
        call    ?_3241                                  ; 1001B10C _ E8, 0000001E
        test    ebx, ebx                                ; 1001B111 _ 85. DB
        pop     ecx                                     ; 1001B113 _ 59
        mov     dword [esp+10H], eax                    ; 1001B114 _ 89. 44 24, 10
        jz      ?_3238                                  ; 1001B118 _ 74, 0A
        push    19                                      ; 1001B11A _ 6A, 13
        call    ?_3615                                  ; 1001B11C _ E8, 00001F76
        pop     ecx                                     ; 1001B121 _ 59
        jmp     ?_3239                                  ; 1001B122 _ EB, 03

?_3238: push    esi                                     ; 1001B124 _ 56
        call    edi                                     ; 1001B125 _ FF. D7
?_3239: mov     eax, dword [esp+10H]                    ; 1001B127 _ 8B. 44 24, 10
        pop     edi                                     ; 1001B12B _ 5F
        pop     esi                                     ; 1001B12C _ 5E
?_3240: pop     ebx                                     ; 1001B12D _ 5B
        ret                                             ; 1001B12E _ C3
