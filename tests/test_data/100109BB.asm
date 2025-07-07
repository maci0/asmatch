; ---- 100109BB ----
?_1935: ; Local function
        pop     edi                                     ; 100109BB _ 5F
        pop     esi                                     ; 100109BC _ 5E
        pop     ebp                                     ; 100109BD _ 5D
        xor     eax, eax                                ; 100109BE _ 33. C0
        pop     ebx                                     ; 100109C0 _ 5B
        ret                                             ; 100109C1 _ C3

        nop                                             ; 100109C2 _ 90
        nop                                             ; 100109C3 _ 90
        nop                                             ; 100109C4 _ 90
        nop                                             ; 100109C5 _ 90
        nop                                             ; 100109C6 _ 90
        nop                                             ; 100109C7 _ 90
        nop                                             ; 100109C8 _ 90
        nop                                             ; 100109C9 _ 90
        nop                                             ; 100109CA _ 90
        nop                                             ; 100109CB _ 90
        nop                                             ; 100109CC _ 90
        nop                                             ; 100109CD _ 90
        nop                                             ; 100109CE _ 90
        nop                                             ; 100109CF _ 90
?_1936: mov     eax, dword [esp+4H]                     ; 100109D0 _ 8B. 44 24, 04
        xor     ecx, ecx                                ; 100109D4 _ 33. C9
        push    ebx                                     ; 100109D6 _ 53
        push    ebp                                     ; 100109D7 _ 55
        mov     cl, byte [eax]                          ; 100109D8 _ 8A. 08
        push    esi                                     ; 100109DA _ 56
        push    edi                                     ; 100109DB _ 57
        lea     eax, [ecx+ecx*2]                        ; 100109DC _ 8D. 04 49
        shl     eax, 4                                  ; 100109DF _ C1. E0, 04
        add     eax, ecx                                ; 100109E2 _ 03. C1
        lea     edx, [eax+eax*2]                        ; 100109E4 _ 8D. 14 40
        mov     eax, dword [?_5668]                     ; 100109E7 _ A1, 100A8C30(d)
        add     eax, ecx                                ; 100109EC _ 03. C1
        lea     ebp, [eax+edx*4]                        ; 100109EE _ 8D. 2C 90
        mov     al, byte [eax+edx*4]                    ; 100109F1 _ 8A. 04 90
        cmp     al, 29                                  ; 100109F4 _ 3C, 1D
        jne     ?_1940                                  ; 100109F6 _ 0F 85, 000000FE
        mov     al, byte [ebp+247H]                     ; 100109FC _ 8A. 85, 00000247
        cmp     al, 1                                   ; 10010A02 _ 3C, 01
        jc      ?_1940                                  ; 10010A04 _ 0F 82, 000000F0
        cmp     al, 3                                   ; 10010A0A _ 3C, 03
        ja      ?_1940                                  ; 10010A0C _ 0F 87, 000000E8
        push    ?_5335                                  ; 10010A12 _ 68, 1002D474(d)
        push    36                                      ; 10010A17 _ 6A, 24
        call    ?_0640                                  ; 10010A19 _ E8, FFFF5B62
        mov     esi, eax                                ; 10010A1E _ 8B. F0
        xor     ebx, ebx                                ; 10010A20 _ 33. DB
        add     esp, 8                                  ; 10010A22 _ 83. C4, 08
        cmp     esi, ebx                                ; 10010A25 _ 3B. F3
        je      ?_1940                                  ; 10010A27 _ 0F 84, 000000CD
        mov     ecx, 9                                  ; 10010A2D _ B9, 00000009
        xor     eax, eax                                ; 10010A32 _ 33. C0
        mov     edi, esi                                ; 10010A34 _ 8B. FE
        push    ?_5334                                  ; 10010A36 _ 68, 1002D45C(d)
        rep stosd                                       ; 10010A3B _ F3: AB
        mov     ecx, dword [esp+18H]                    ; 10010A3D _ 8B. 4C 24, 18
        mov     edx, dword [ecx+1H]                     ; 10010A41 _ 8B. 51, 01
        xor     ecx, ecx                                ; 10010A44 _ 33. C9
        mov     dword [esi], edx                        ; 10010A46 _ 89. 16
        mov     al, byte [ebp+247H]                     ; 10010A48 _ 8A. 85, 00000247
        mov     dword [esi+4H], eax                     ; 10010A4E _ 89. 46, 04
        mov     cl, byte [ebp+247H]                     ; 10010A51 _ 8A. 8D, 00000247
        mov     eax, dword [?_4927+ecx*4]               ; 10010A57 _ 8B. 04 8D, 1002575C(d)
        lea     edx, [eax+eax*4]                        ; 10010A5E _ 8D. 14 80
        shl     edx, 2                                  ; 10010A61 _ C1. E2, 02
        push    edx                                     ; 10010A64 _ 52
        call    ?_0640                                  ; 10010A65 _ E8, FFFF5B16
        mov     edi, eax                                ; 10010A6A _ 8B. F8
        add     esp, 8                                  ; 10010A6C _ 83. C4, 08
        cmp     edi, ebx                                ; 10010A6F _ 3B. FB
        mov     dword [esi+1CH], edi                    ; 10010A71 _ 89. 7E, 1C
        jz      ?_1937                                  ; 10010A74 _ 74, 55
        xor     eax, eax                                ; 10010A76 _ 33. C0
        push    ?_5333                                  ; 10010A78 _ 68, 1002D444(d)
        mov     al, byte [ebp+247H]                     ; 10010A7D _ 8A. 85, 00000247
        mov     eax, dword [?_4927+eax*4]               ; 10010A83 _ 8B. 04 85, 1002575C(d)
        lea     ecx, [eax+eax*4]                        ; 10010A8A _ 8D. 0C 80
        xor     eax, eax                                ; 10010A8D _ 33. C0
        shl     ecx, 2                                  ; 10010A8F _ C1. E1, 02
        mov     edx, ecx                                ; 10010A92 _ 8B. D1
        shr     ecx, 2                                  ; 10010A94 _ C1. E9, 02
        rep stosd                                       ; 10010A97 _ F3: AB
        mov     ecx, edx                                ; 10010A99 _ 8B. CA
        and     ecx, 03H                                ; 10010A9B _ 83. E1, 03
        rep stosb                                       ; 10010A9E _ F3: AA
        xor     eax, eax                                ; 10010AA0 _ 33. C0
        mov     al, byte [ebp+247H]                     ; 10010AA2 _ 8A. 85, 00000247
        mov     eax, dword [?_4928+eax*4]               ; 10010AA8 _ 8B. 04 85, 1002576C(d)
        mov     ecx, eax                                ; 10010AAF _ 8B. C8
        shl     ecx, 4                                  ; 10010AB1 _ C1. E1, 04
        add     ecx, eax                                ; 10010AB4 _ 03. C8
        shl     ecx, 2                                  ; 10010AB6 _ C1. E1, 02
        push    ecx                                     ; 10010AB9 _ 51
        call    ?_0640                                  ; 10010ABA _ E8, FFFF5AC1
        mov     edi, eax                                ; 10010ABF _ 8B. F8
        add     esp, 8                                  ; 10010AC1 _ 83. C4, 08
        cmp     edi, ebx                                ; 10010AC4 _ 3B. FB
        mov     dword [esi+20H], edi                    ; 10010AC6 _ 89. 7E, 20
        jnz     ?_1941                                  ; 10010AC9 _ 75, 36
?_1937: mov     eax, dword [esi+1CH]                    ; 10010ACB _ 8B. 46, 1C
        cmp     eax, ebx                                ; 10010ACE _ 3B. C3
        jz      ?_1938                                  ; 10010AD0 _ 74, 0C
        push    eax                                     ; 10010AD2 _ 50
        call    ?_0663                                  ; 10010AD3 _ E8, FFFF5D48
        add     esp, 4                                  ; 10010AD8 _ 83. C4, 04
        mov     dword [esi+1CH], ebx                    ; 10010ADB _ 89. 5E, 1C
?_1938: mov     eax, dword [esi+20H]                    ; 10010ADE _ 8B. 46, 20
        cmp     eax, ebx                                ; 10010AE1 _ 3B. C3
        jz      ?_1939                                  ; 10010AE3 _ 74, 0C
        push    eax                                     ; 10010AE5 _ 50
        call    ?_0663                                  ; 10010AE6 _ E8, FFFF5D35
        add     esp, 4                                  ; 10010AEB _ 83. C4, 04
        mov     dword [esi+20H], ebx                    ; 10010AEE _ 89. 5E, 20
?_1939: push    esi                                     ; 10010AF1 _ 56
        call    ?_0663                                  ; 10010AF2 _ E8, FFFF5D29
        add     esp, 4                                  ; 10010AF7 _ 83. C4, 04
?_1940: pop     edi                                     ; 10010AFA _ 5F
        pop     esi                                     ; 10010AFB _ 5E
        pop     ebp                                     ; 10010AFC _ 5D
        xor     eax, eax                                ; 10010AFD _ 33. C0
        pop     ebx                                     ; 10010AFF _ 5B
        ret                                             ; 10010B00 _ C3

