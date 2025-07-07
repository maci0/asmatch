; ---- 1000D841 ----
?_1498: ; Local function
        mov     eax, dword [esi+10H]                    ; 1000D841 _ 8B. 46, 10
        cmp     eax, -1                                 ; 1000D844 _ 83. F8, FF
        jz      ?_1499                                  ; 1000D847 _ 74, 3C
        push    eax                                     ; 1000D849 _ 50
        push    esi                                     ; 1000D84A _ 56
        call    ?_1389                                  ; 1000D84B _ E8, FFFFF240
        mov     edx, dword [esi+1DH]                    ; 1000D850 _ 8B. 56, 1D
        mov     dword [esi+10H], eax                    ; 1000D853 _ 89. 46, 10
        push    edx                                     ; 1000D856 _ 52
        xor     edx, edx                                ; 1000D857 _ 33. D2
        mov     dl, byte [esi+1CH]                      ; 1000D859 _ 8A. 56, 1C
        mov     ecx, edx                                ; 1000D85C _ 8B. CA
        shl     ecx, 6                                  ; 1000D85E _ C1. E1, 06
        sub     ecx, edx                                ; 1000D861 _ 2B. CA
        xor     edx, edx                                ; 1000D863 _ 33. D2
        lea     ecx, [ecx+ecx*2]                        ; 1000D865 _ 8D. 0C 49
        mov     dx, word [?_5672+ecx*4]                 ; 1000D868 _ 66: 8B. 14 8D, 100A8C94(d)
        push    edx                                     ; 1000D870 _ 52
        push    eax                                     ; 1000D871 _ 50
        call    ?_2564                                  ; 1000D872 _ E8, 00009459
        add     esp, 20                                 ; 1000D877 _ 83. C4, 14
        test    eax, eax                                ; 1000D87A _ 85. C0
        jnz     ?_1499                                  ; 1000D87C _ 75, 07
        mov     eax, 1                                  ; 1000D87E _ B8, 00000001
        pop     esi                                     ; 1000D883 _ 5E
        ret                                             ; 1000D884 _ C3

