; ---- 10020265 ----
?_4204: ; Local function
        mov     ecx, dword [esp+4H]                     ; 10020265 _ 8B. 4C 24, 04
        push    esi                                     ; 10020269 _ 56
        cmp     ecx, dword [?_5811]                     ; 1002026A _ 3B. 0D, 11766560(d)
        push    edi                                     ; 10020270 _ 57
        jnc     ?_4209                                  ; 10020271 _ 73, 55
        mov     eax, ecx                                ; 10020273 _ 8B. C1
        sar     eax, 5                                  ; 10020275 _ C1. F8, 05
        lea     edi, [?_5809+eax*4]                     ; 10020278 _ 8D. 3C 85, 11766460(d)
        mov     eax, ecx                                ; 1002027F _ 8B. C1
        and     eax, 1FH                                ; 10020281 _ 83. E0, 1F
        lea     esi, [eax+eax*8]                        ; 10020284 _ 8D. 34 C0
        mov     eax, dword [edi]                        ; 10020287 _ 8B. 07
        shl     esi, 2                                  ; 10020289 _ C1. E6, 02
        cmp     dword [eax+esi], -1                     ; 1002028C _ 83. 3C 30, FF
        jnz     ?_4209                                  ; 10020290 _ 75, 36
        cmp     dword [?_5576], 1                       ; 10020292 _ 83. 3D, 1003550C(d), 01
        push    ebx                                     ; 10020299 _ 53
        mov     ebx, dword [esp+14H]                    ; 1002029A _ 8B. 5C 24, 14
        jnz     ?_4208                                  ; 1002029E _ 75, 1E
        sub     ecx, 0                                  ; 100202A0 _ 83. E9, 00
        jz      ?_4206                                  ; 100202A3 _ 74, 10
        dec     ecx                                     ; 100202A5 _ 49
        jz      ?_4205                                  ; 100202A6 _ 74, 08
        dec     ecx                                     ; 100202A8 _ 49
        jnz     ?_4208                                  ; 100202A9 _ 75, 13
        push    ebx                                     ; 100202AB _ 53
        push    -12                                     ; 100202AC _ 6A, F4
        jmp     ?_4207                                  ; 100202AE _ EB, 08

?_4205: push    ebx                                     ; 100202B0 _ 53
        push    -11                                     ; 100202B1 _ 6A, F5
        jmp     ?_4207                                  ; 100202B3 _ EB, 03

?_4206: push    ebx                                     ; 100202B5 _ 53
        push    -10                                     ; 100202B6 _ 6A, F6
?_4207: call    near [imp_SetStdHandle]                 ; 100202B8 _ FF. 15, 100240A4(d)
?_4208: mov     eax, dword [edi]                        ; 100202BE _ 8B. 07
        mov     dword [eax+esi], ebx                    ; 100202C0 _ 89. 1C 30
        xor     eax, eax                                ; 100202C3 _ 33. C0
        pop     ebx                                     ; 100202C5 _ 5B
        jmp     ?_4210                                  ; 100202C6 _ EB, 16

?_4209: call    ?_3107                                  ; 100202C8 _ E8, FFFFA518
        mov     dword [eax], 9                          ; 100202CD _ C7. 00, 00000009
        call    ?_3108                                  ; 100202D3 _ E8, FFFFA516
        and     dword [eax], 00H                        ; 100202D8 _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 100202DB _ 83. C8, FF
?_4210: pop     edi                                     ; 100202DE _ 5F
        pop     esi                                     ; 100202DF _ 5E
        ret                                             ; 100202E0 _ C3

