; ---- 100208A0 ----
?_4281: ; Local function
        push    ebx                                     ; 100208A0 _ 53
        mov     eax, dword [esp+14H]                    ; 100208A1 _ 8B. 44 24, 14
        or      eax, eax                                ; 100208A5 _ 0B. C0
        jnz     ?_4282                                  ; 100208A7 _ 75, 18
        mov     ecx, dword [esp+10H]                    ; 100208A9 _ 8B. 4C 24, 10
        mov     eax, dword [esp+0CH]                    ; 100208AD _ 8B. 44 24, 0C
        xor     edx, edx                                ; 100208B1 _ 33. D2
        div     ecx                                     ; 100208B3 _ F7. F1
        mov     eax, dword [esp+8H]                     ; 100208B5 _ 8B. 44 24, 08
        div     ecx                                     ; 100208B9 _ F7. F1
        mov     eax, edx                                ; 100208BB _ 8B. C2
        xor     edx, edx                                ; 100208BD _ 33. D2
        jmp     ?_4286                                  ; 100208BF _ EB, 50

?_4282: mov     ecx, eax                                ; 100208C1 _ 8B. C8
        mov     ebx, dword [esp+10H]                    ; 100208C3 _ 8B. 5C 24, 10
        mov     edx, dword [esp+0CH]                    ; 100208C7 _ 8B. 54 24, 0C
        mov     eax, dword [esp+8H]                     ; 100208CB _ 8B. 44 24, 08
?_4283: shr     ecx, 1                                  ; 100208CF _ D1. E9
        rcr     ebx, 1                                  ; 100208D1 _ D1. DB
        shr     edx, 1                                  ; 100208D3 _ D1. EA
        rcr     eax, 1                                  ; 100208D5 _ D1. D8
        or      ecx, ecx                                ; 100208D7 _ 0B. C9
        jnz     ?_4283                                  ; 100208D9 _ 75, F4
        div     ebx                                     ; 100208DB _ F7. F3
        mov     ecx, eax                                ; 100208DD _ 8B. C8
        mul     dword [esp+14H]                         ; 100208DF _ F7. 64 24, 14
        xchg    ecx, eax                                ; 100208E3 _ 91
        mul     dword [esp+10H]                         ; 100208E4 _ F7. 64 24, 10
        add     edx, ecx                                ; 100208E8 _ 03. D1
        jc      ?_4284                                  ; 100208EA _ 72, 0E
        cmp     edx, dword [esp+0CH]                    ; 100208EC _ 3B. 54 24, 0C
        ja      ?_4284                                  ; 100208F0 _ 77, 08
        jc      ?_4285                                  ; 100208F2 _ 72, 0E
        cmp     eax, dword [esp+8H]                     ; 100208F4 _ 3B. 44 24, 08
        jbe     ?_4285                                  ; 100208F8 _ 76, 08
?_4284: sub     eax, dword [esp+10H]                    ; 100208FA _ 2B. 44 24, 10
        sbb     edx, dword [esp+14H]                    ; 100208FE _ 1B. 54 24, 14
?_4285: sub     eax, dword [esp+8H]                     ; 10020902 _ 2B. 44 24, 08
        sbb     edx, dword [esp+0CH]                    ; 10020906 _ 1B. 54 24, 0C
        neg     edx                                     ; 1002090A _ F7. DA
        neg     eax                                     ; 1002090C _ F7. D8
        sbb     edx, 0                                  ; 1002090E _ 83. DA, 00
?_4286: pop     ebx                                     ; 10020911 _ 5B
        ret     16                                      ; 10020912 _ C2, 0010
