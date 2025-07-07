; ---- 1001002C ----
?_1842: ; Local function
        xor     ecx, ecx                                ; 1001002C _ 33. C9
        mov     cl, byte [eax+1B1H]                     ; 1001002E _ 8A. 88, 000001B1
        mov     edx, ecx                                ; 10010034 _ 8B. D1
        mov     ecx, dword [esi+14H]                    ; 10010036 _ 8B. 4E, 14
        add     ecx, edx                                ; 10010039 _ 03. CA
        mov     edx, 0                                  ; 1001003B _ BA, 00000000
        sets    dl                                      ; 10010040 _ 0F 98. C2
        dec     edx                                     ; 10010043 _ 4A
        and     ecx, edx                                ; 10010044 _ 23. CA
        cmp     ecx, 255                                ; 10010046 _ 81. F9, 000000FF
        jl      ?_1843                                  ; 1001004C _ 7C, 05
        mov     ecx, 255                                ; 1001004E _ B9, 000000FF
?_1843: test    cl, cl                                  ; 10010053 _ 84. C9
        mov     byte [eax+1B1H], cl                     ; 10010055 _ 88. 88, 000001B1
        jbe     ?_1844                                  ; 1001005B _ 76, 08
        and     ecx, 0FFH                               ; 1001005D _ 81. E1, 000000FF
        jmp     ?_1845                                  ; 10010063 _ EB, 02

?_1844: xor     ecx, ecx                                ; 10010065 _ 33. C9
?_1845: mov     byte [eax+1B1H], cl                     ; 10010067 _ 88. 88, 000001B1
        mov     ecx, dword [esi+18H]                    ; 1001006D _ 8B. 4E, 18
        push    ecx                                     ; 10010070 _ 51
        push    eax                                     ; 10010071 _ 50
        call    ?_1244                                  ; 10010072 _ E8, FFFFB9B9
        add     esp, 8                                  ; 10010077 _ 83. C4, 08
        xor     eax, eax                                ; 1001007A _ 33. C0
        pop     esi                                     ; 1001007C _ 5E
        ret                                             ; 1001007D _ C3

        nop                                             ; 1001007E _ 90
        nop                                             ; 1001007F _ 90

