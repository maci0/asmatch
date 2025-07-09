; ---- 1000D405 ----
?_1475: ; Local function
        xor     edx, edx                                ; 1000D405 _ 33. D2
        mov     dl, byte [esi+3H]                       ; 1000D407 _ 8A. 56, 03
        mov     ecx, edx                                ; 1000D40A _ 8B. CA
        shl     ecx, 4                                  ; 1000D40C _ C1. E1, 04
        add     ecx, edx                                ; 1000D40F _ 03. CA
        shl     ecx, 8                                  ; 1000D411 _ C1. E1, 08
        add     ecx, edx                                ; 1000D414 _ 03. CA
        shl     ecx, 4                                  ; 1000D416 _ C1. E1, 04
        add     ecx, edx                                ; 1000D419 _ 03. CA
        lea     edx, [ecx+ecx*8]                        ; 1000D41B _ 8D. 14 C9
        mov     ecx, dword [eax+1H]                     ; 1000D41E _ 8B. 48, 01
        mov     dword [?_5767+edx*4], ecx               ; 1000D421 _ 89. 0C 95, 10442D04(d)
        mov     dx, word [esi+1AH]                      ; 1000D428 _ 66: 8B. 56, 1A
        mov     word [eax+5AH], dx                      ; 1000D42C _ 66: 89. 50, 5A
        mov     ecx, dword [esi+1CH]                    ; 1000D430 _ 8B. 4E, 1C
        test    ecx, ecx                                ; 1000D433 _ 85. C9
        jz      ?_1476                                  ; 1000D435 _ 74, 0D
        add     esi, 32                                 ; 1000D437 _ 83. C6, 20
        lea     edi, [eax+65H]                          ; 1000D43A _ 8D. 78, 65
        mov     ecx, 12                                 ; 1000D43D _ B9, 0000000C
        rep movsd                                       ; 1000D442 _ F3: A5
?_1476: mov     ecx, dword [esp+10H]                    ; 1000D444 _ 8B. 4C 24, 10
        test    ecx, ecx                                ; 1000D448 _ 85. C9
        jz      ?_1477                                  ; 1000D44A _ 74, 0A
        mov     byte [ecx], 1                           ; 1000D44C _ C6. 01, 01
        mov     byte [ecx+1H], 2                        ; 1000D44F _ C6. 41, 01, 02
        mov     dword [ecx+6H], eax                     ; 1000D453 _ 89. 41, 06
?_1477: pop     edi                                     ; 1000D456 _ 5F
        pop     esi                                     ; 1000D457 _ 5E
        xor     eax, eax                                ; 1000D458 _ 33. C0
        ret                                             ; 1000D45A _ C3

        nop                                             ; 1000D45B _ 90
        nop                                             ; 1000D45C _ 90
        nop                                             ; 1000D45D _ 90
        nop                                             ; 1000D45E _ 90
        nop                                             ; 1000D45F _ 90
