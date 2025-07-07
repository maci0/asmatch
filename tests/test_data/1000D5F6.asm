; ---- 1000D5F6 ----
?_1484: ; Local function
        push    ebp                                     ; 1000D5F6 _ 55
        push    1                                       ; 1000D5F7 _ 6A, 01
        push    ?_5283                                  ; 1000D5F9 _ 68, 1002CBBC(d)
        push    10519                                   ; 1000D5FE _ 68, 00002917
        push    ?_5260                                  ; 1000D603 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D608 _ E8, FFFF6033
        lea     eax, [esi+esi*2]                        ; 1000D60D _ 8D. 04 76
        xor     ecx, ecx                                ; 1000D610 _ 33. C9
        mov     cl, byte [edi+3H]                       ; 1000D612 _ 8A. 4F, 03
        lea     edx, [edi+25H]                          ; 1000D615 _ 8D. 57, 25
        lea     eax, [eax+eax*4]                        ; 1000D618 _ 8D. 04 80
        push    16                                      ; 1000D61B _ 6A, 10
        push    edx                                     ; 1000D61D _ 52
        lea     esi, [eax+eax*8]                        ; 1000D61E _ 8D. 34 C0
        mov     eax, ecx                                ; 1000D621 _ 8B. C1
        shl     eax, 4                                  ; 1000D623 _ C1. E0, 04
        add     eax, ecx                                ; 1000D626 _ 03. C1
        shl     eax, 8                                  ; 1000D628 _ C1. E0, 08
        add     eax, ecx                                ; 1000D62B _ 03. C1
        shl     eax, 4                                  ; 1000D62D _ C1. E0, 04
        add     eax, ecx                                ; 1000D630 _ 03. C1
        shl     esi, 2                                  ; 1000D632 _ C1. E6, 02
        lea     eax, [eax+eax*8]                        ; 1000D635 _ 8D. 04 C0
        mov     ecx, dword [?_5634+esi]                 ; 1000D638 _ 8B. 8E, 100358A4(d)
        mov     dword [?_5766+eax*4], ecx               ; 1000D63E _ 89. 0C 85, 10442D00(d)
        lea     eax, [?_5639+esi]                       ; 1000D645 _ 8D. 86, 100358D0(d)
        push    eax                                     ; 1000D64B _ 50
        call    ?_3188                                  ; 1000D64C _ E8, 0000D7CF
        lea     ebp, [?_5632+esi]                       ; 1000D651 _ 8D. AE, 100358A0(d)
        push    ebp                                     ; 1000D657 _ 55
        call    ?_2821                                  ; 1000D658 _ E8, 0000AE83
        add     esp, 32                                 ; 1000D65D _ 83. C4, 20
        test    eax, eax                                ; 1000D660 _ 85. C0
        jz      ?_1486                                  ; 1000D662 _ 74, 4E
        mov     cx, word [?_5641+esi]                   ; 1000D664 _ 66: 8B. 8E, 100358F0(d)
        lea     ebx, [edi+35H]                          ; 1000D66B _ 8D. 5F, 35
        mov     word [eax], cx                          ; 1000D66E _ 66: 89. 08
        push    16                                      ; 1000D671 _ 6A, 10
        add     eax, 2                                  ; 1000D673 _ 83. C0, 02
        push    ebx                                     ; 1000D676 _ 53
        push    eax                                     ; 1000D677 _ 50
        call    ?_3188                                  ; 1000D678 _ E8, 0000D7A3
        push    16                                      ; 1000D67D _ 6A, 10
        lea     edx, [?_5640+esi]                       ; 1000D67F _ 8D. 96, 100358E0(d)
        push    ebx                                     ; 1000D685 _ 53
        push    edx                                     ; 1000D686 _ 52
        call    ?_3188                                  ; 1000D687 _ E8, 0000D794
        mov     eax, dword [?_5644+esi]                 ; 1000D68C _ 8B. 86, 10035900(d)
        push    eax                                     ; 1000D692 _ 50
        call    ?_2817                                  ; 1000D693 _ E8, 0000AE08
        add     esp, 28                                 ; 1000D698 _ 83. C4, 1C
        test    eax, eax                                ; 1000D69B _ 85. C0
        jz      ?_1485                                  ; 1000D69D _ 74, 0F
        push    16                                      ; 1000D69F _ 6A, 10
        add     eax, 64                                 ; 1000D6A1 _ 83. C0, 40
        push    ebx                                     ; 1000D6A4 _ 53
        push    eax                                     ; 1000D6A5 _ 50
        call    ?_3188                                  ; 1000D6A6 _ E8, 0000D775
        add     esp, 12                                 ; 1000D6AB _ 83. C4, 0C
?_1485: mov     ebx, dword [esp+18H]                    ; 1000D6AE _ 8B. 5C 24, 18
?_1486: mov     ecx, dword [edi+1FH]                    ; 1000D6B2 _ 8B. 4F, 1F
        mov     dword [?_5642+esi], ecx                 ; 1000D6B5 _ 89. 8E, 100358F4(d)
        mov     dl, byte [edi+24H]                      ; 1000D6BB _ 8A. 57, 24
        test    ebx, ebx                                ; 1000D6BE _ 85. DB
        mov     byte [?_5637+esi], dl                   ; 1000D6C0 _ 88. 96, 100358AC(d)
        jz      ?_1487                                  ; 1000D6C6 _ 74, 0A
        mov     byte [ebx], 1                           ; 1000D6C8 _ C6. 03, 01
        mov     byte [ebx+1H], 1                        ; 1000D6CB _ C6. 43, 01, 01
        mov     dword [ebx+6H], ebp                     ; 1000D6CF _ 89. 6B, 06
?_1487: pop     ebp                                     ; 1000D6D2 _ 5D
        pop     edi                                     ; 1000D6D3 _ 5F
        pop     esi                                     ; 1000D6D4 _ 5E
        xor     eax, eax                                ; 1000D6D5 _ 33. C0
        pop     ebx                                     ; 1000D6D7 _ 5B
        ret                                             ; 1000D6D8 _ C3

        nop                                             ; 1000D6D9 _ 90
        nop                                             ; 1000D6DA _ 90
        nop                                             ; 1000D6DB _ 90
        nop                                             ; 1000D6DC _ 90
        nop                                             ; 1000D6DD _ 90
        nop                                             ; 1000D6DE _ 90
        nop                                             ; 1000D6DF _ 90

