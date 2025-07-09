; ---- 1000F329 ----
?_1728: ; Local function
        xor     ecx, ecx                                ; 1000F329 _ 33. C9
        push    1                                       ; 1000F32B _ 6A, 01
        mov     cl, byte [edi+3H]                       ; 1000F32D _ 8A. 4F, 03
        add     edi, 24                                 ; 1000F330 _ 83. C7, 18
        mov     eax, ecx                                ; 1000F333 _ 8B. C1
        push    ?_5317                                  ; 1000F335 _ 68, 1002D184(d)
        shl     eax, 4                                  ; 1000F33A _ C1. E0, 04
        add     eax, ecx                                ; 1000F33D _ 03. C1
        push    16603                                   ; 1000F33F _ 68, 000040DB
        shl     eax, 8                                  ; 1000F344 _ C1. E0, 08
        add     eax, ecx                                ; 1000F347 _ 03. C1
        push    ?_5260                                  ; 1000F349 _ 68, 1002C748(d)
        shl     eax, 4                                  ; 1000F34E _ C1. E0, 04
        add     eax, ecx                                ; 1000F351 _ 03. C1
        lea     ecx, [esi+1CH]                          ; 1000F353 _ 8D. 4E, 1C
        lea     edx, [eax+eax*8]                        ; 1000F356 _ 8D. 14 C0
        mov     eax, dword [esi+2H]                     ; 1000F359 _ 8B. 46, 02
        mov     dword [?_5768+edx*4], eax               ; 1000F35C _ 89. 04 95, 10442D08(d)
        mov     byte [esi+12H], 64                      ; 1000F363 _ C6. 46, 12, 40
        mov     edx, dword [edi]                        ; 1000F367 _ 8B. 17
        mov     dword [ecx], edx                        ; 1000F369 _ 89. 11
        mov     ax, word [edi+4H]                       ; 1000F36B _ 66: 8B. 47, 04
        mov     word [ecx+4H], ax                       ; 1000F36F _ 66: 89. 41, 04
        mov     dl, byte [edi+6H]                       ; 1000F373 _ 8A. 57, 06
        mov     byte [ecx+6H], dl                       ; 1000F376 _ 88. 51, 06
        mov     byte [esi+22H], 0                       ; 1000F379 _ C6. 46, 22, 00
        call    ?_0267                                  ; 1000F37D _ E8, FFFF42BE
        mov     eax, dword [esp+20H]                    ; 1000F382 _ 8B. 44 24, 20
        add     esp, 16                                 ; 1000F386 _ 83. C4, 10
        test    eax, eax                                ; 1000F389 _ 85. C0
        jz      ?_1729                                  ; 1000F38B _ 74, 0A
        mov     byte [eax], 1                           ; 1000F38D _ C6. 00, 01
        mov     byte [eax+1H], 3                        ; 1000F390 _ C6. 40, 01, 03
        mov     dword [eax+6H], esi                     ; 1000F394 _ 89. 70, 06
?_1729: pop     edi                                     ; 1000F397 _ 5F
        xor     eax, eax                                ; 1000F398 _ 33. C0
        pop     esi                                     ; 1000F39A _ 5E
        ret                                             ; 1000F39B _ C3

        nop                                             ; 1000F39C _ 90
        nop                                             ; 1000F39D _ 90
        nop                                             ; 1000F39E _ 90
        nop                                             ; 1000F39F _ 90
