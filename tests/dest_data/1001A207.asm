; ---- 1001A207 ----
?_3035: ; Local function
        push    ebp                                     ; 1001A207 _ 55
        mov     ebp, esp                                ; 1001A208 _ 8B. EC
        push    ebx                                     ; 1001A20A _ 53
        push    esi                                     ; 1001A20B _ 56
        push    edi                                     ; 1001A20C _ 57
        push    dword [ebp+8H]                          ; 1001A20D _ FF. 75, 08
        call    ?_3393                                  ; 1001A210 _ E8, 00001BBB
        mov     esi, dword [ebp+0CH]                    ; 1001A215 _ 8B. 75, 0C
        mov     edi, eax                                ; 1001A218 _ 8B. F8
        push    esi                                     ; 1001A21A _ 56
        call    ?_3366                                  ; 1001A21B _ E8, 00001940
        push    esi                                     ; 1001A220 _ 56
        call    ?_3385                                  ; 1001A221 _ E8, 00001AE9
        push    esi                                     ; 1001A226 _ 56
        push    edi                                     ; 1001A227 _ 57
        push    1                                       ; 1001A228 _ 6A, 01
        mov     ebx, eax                                ; 1001A22A _ 8B. D8
        push    dword [ebp+8H]                          ; 1001A22C _ FF. 75, 08
        call    ?_3127                                  ; 1001A22F _ E8, 0000072C
        push    esi                                     ; 1001A234 _ 56
        push    ebx                                     ; 1001A235 _ 53
        mov     dword [ebp+8H], eax                     ; 1001A236 _ 89. 45, 08
        call    ?_3391                                  ; 1001A239 _ E8, 00001B5E
        push    esi                                     ; 1001A23E _ 56
        call    ?_3370                                  ; 1001A23F _ E8, 0000196E
        add     esp, 40                                 ; 1001A244 _ 83. C4, 28
        xor     eax, eax                                ; 1001A247 _ 33. C0
        cmp     dword [ebp+8H], edi                     ; 1001A249 _ 39. 7D, 08
        pop     edi                                     ; 1001A24C _ 5F
        pop     esi                                     ; 1001A24D _ 5E
        sete    al                                      ; 1001A24E _ 0F 94. C0
        dec     eax                                     ; 1001A251 _ 48
        pop     ebx                                     ; 1001A252 _ 5B
        pop     ebp                                     ; 1001A253 _ 5D
        ret                                             ; 1001A254 _ C3

