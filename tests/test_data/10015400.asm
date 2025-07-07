; ---- 10015400 ----
?_2360: ; Local function
        sub     esp, 8                                  ; 10015400 _ 83. EC, 08
        xor     ecx, ecx                                ; 10015403 _ 33. C9
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 10015405 _ 8D. 44 24, 00
        push    esi                                     ; 10015409 _ 56
        mov     esi, dword [esp+14H]                    ; 1001540A _ 8B. 74 24, 14
        push    eax                                     ; 1001540E _ 50
        mov     cl, byte [esi]                          ; 1001540F _ 8A. 0E
        push    ecx                                     ; 10015411 _ 51
        call    ?_2341                                  ; 10015412 _ E8, FFFFFD99
        movzx   dx, byte [esi+65H]                      ; 10015417 _ 66: 0F B6. 56, 65
        add     esp, 8                                  ; 1001541C _ 83. C4, 08
        cmp     dx, word [esp+4H]                       ; 1001541F _ 66: 3B. 54 24, 04
        jnc     ?_2362                                  ; 10015424 _ 73, 28
        mov     edx, dword [esp+10H]                    ; 10015426 _ 8B. 54 24, 10
        mov     ecx, dword [edx+170H]                   ; 1001542A _ 8B. 8A, 00000170
        test    ecx, ecx                                ; 10015430 _ 85. C9
        jz      ?_2361                                  ; 10015432 _ 74, 0C
        mov     al, byte [ecx+65H]                      ; 10015434 _ 8A. 41, 65
        test    al, al                                  ; 10015437 _ 84. C0
        jbe     ?_2361                                  ; 10015439 _ 76, 05
        dec     al                                      ; 1001543B _ FE. C8
        mov     byte [ecx+65H], al                      ; 1001543D _ 88. 41, 65
?_2361: mov     dword [edx+170H], esi                   ; 10015440 _ 89. B2, 00000170
        mov     al, byte [esi+65H]                      ; 10015446 _ 8A. 46, 65
        inc     al                                      ; 10015449 _ FE. C0
        mov     byte [esi+65H], al                      ; 1001544B _ 88. 46, 65
?_2362: pop     esi                                     ; 1001544E _ 5E
        add     esp, 8                                  ; 1001544F _ 83. C4, 08
        ret                                             ; 10015452 _ C3

        nop                                             ; 10015453 _ 90
        nop                                             ; 10015454 _ 90
        nop                                             ; 10015455 _ 90
        nop                                             ; 10015456 _ 90
        nop                                             ; 10015457 _ 90
        nop                                             ; 10015458 _ 90
        nop                                             ; 10015459 _ 90
        nop                                             ; 1001545A _ 90
        nop                                             ; 1001545B _ 90
        nop                                             ; 1001545C _ 90
        nop                                             ; 1001545D _ 90
        nop                                             ; 1001545E _ 90
        nop                                             ; 1001545F _ 90

