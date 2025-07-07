; ---- 10022107 ----
?_4578: ; Local function
        push    ebx                                     ; 10022107 _ 53
        xor     ebx, ebx                                ; 10022108 _ 33. DB
        cmp     dword [?_5622], ebx                     ; 1002210A _ 39. 1D, 10035838(d)
        push    esi                                     ; 10022110 _ 56
        push    edi                                     ; 10022111 _ 57
        jnz     ?_4579                                  ; 10022112 _ 75, 42
        push    ?_4999                                  ; 10022114 _ 68, 1002649C(d)
        call    near [imp_LoadLibraryA]                 ; 10022119 _ FF. 15, 1002408C(d)
        mov     edi, eax                                ; 1002211F _ 8B. F8
        cmp     edi, ebx                                ; 10022121 _ 3B. FB
        jz      ?_4582                                  ; 10022123 _ 74, 67
        mov     esi, dword [imp_GetProcAddress]         ; 10022125 _ 8B. 35, 10024138(d)
        push    ?_4998                                  ; 1002212B _ 68, 10026490(d)
        push    edi                                     ; 10022130 _ 57
        call    esi                                     ; 10022131 _ FF. D6
        test    eax, eax                                ; 10022133 _ 85. C0
        mov     dword [?_5622], eax                     ; 10022135 _ A3, 10035838(d)
        jz      ?_4582                                  ; 1002213A _ 74, 50
        push    ?_4997                                  ; 1002213C _ 68, 10026480(d)
        push    edi                                     ; 10022141 _ 57
        call    esi                                     ; 10022142 _ FF. D6
        push    ?_4996                                  ; 10022144 _ 68, 1002646C(d)
        push    edi                                     ; 10022149 _ 57
        mov     dword [?_5623], eax                     ; 1002214A _ A3, 1003583C(d)
        call    esi                                     ; 1002214F _ FF. D6
        mov     dword [?_5624], eax                     ; 10022151 _ A3, 10035840(d)
?_4579: mov     eax, dword [?_5623]                     ; 10022156 _ A1, 1003583C(d)
        test    eax, eax                                ; 1002215B _ 85. C0
        jz      ?_4580                                  ; 1002215D _ 74, 16
        call    eax                                     ; 1002215F _ FF. D0
        mov     ebx, eax                                ; 10022161 _ 8B. D8
        test    ebx, ebx                                ; 10022163 _ 85. DB
        jz      ?_4580                                  ; 10022165 _ 74, 0E
        mov     eax, dword [?_5624]                     ; 10022167 _ A1, 10035840(d)
        test    eax, eax                                ; 1002216C _ 85. C0
        jz      ?_4580                                  ; 1002216E _ 74, 05
        push    ebx                                     ; 10022170 _ 53
        call    eax                                     ; 10022171 _ FF. D0
        mov     ebx, eax                                ; 10022173 _ 8B. D8
?_4580: push    dword [esp+18H]                         ; 10022175 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 10022179 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1002217D _ FF. 74 24, 18
        push    ebx                                     ; 10022181 _ 53
        call    near [?_5622]                           ; 10022182 _ FF. 15, 10035838(d)
?_4581: pop     edi                                     ; 10022188 _ 5F
        pop     esi                                     ; 10022189 _ 5E
        pop     ebx                                     ; 1002218A _ 5B
        ret                                             ; 1002218B _ C3

