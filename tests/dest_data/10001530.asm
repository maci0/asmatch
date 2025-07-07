; ---- 10001530 ----
?_0027: ; Local function
        mov     eax, dword [esp+4H]                     ; 10001530 _ 8B. 44 24, 04
        xor     ecx, ecx                                ; 10001534 _ 33. C9
        cmp     eax, ecx                                ; 10001536 _ 3B. C1
        push    esi                                     ; 10001538 _ 56
        jz      ?_0029                                  ; 10001539 _ 74, 61
        mov     esi, dword [eax+1CH]                    ; 1000153B _ 8B. 70, 1C
        cmp     esi, ecx                                ; 1000153E _ 3B. F1
        jz      ?_0029                                  ; 10001540 _ 74, 5A
        cmp     dword [eax+20H], ecx                    ; 10001542 _ 39. 48, 20
        jz      ?_0029                                  ; 10001545 _ 74, 55
        cmp     dword [eax+24H], ecx                    ; 10001547 _ 39. 48, 24
        jz      ?_0029                                  ; 1000154A _ 74, 50
        mov     dword [eax+14H], ecx                    ; 1000154C _ 89. 48, 14
        mov     dword [eax+8H], ecx                     ; 1000154F _ 89. 48, 08
        mov     dword [eax+18H], ecx                    ; 10001552 _ 89. 48, 18
        mov     dword [eax+2CH], 2                      ; 10001555 _ C7. 40, 2C, 00000002
        mov     edx, dword [esi+8H]                     ; 1000155C _ 8B. 56, 08
        mov     dword [esi+14H], ecx                    ; 1000155F _ 89. 4E, 14
        mov     dword [esi+10H], edx                    ; 10001562 _ 89. 56, 10
        mov     edx, dword [esi+18H]                    ; 10001565 _ 8B. 56, 18
        cmp     edx, ecx                                ; 10001568 _ 3B. D1
        jge     ?_0028                                  ; 1000156A _ 7D, 03
        mov     dword [esi+18H], ecx                    ; 1000156C _ 89. 4E, 18
?_0028: mov     edx, dword [esi+18H]                    ; 1000156F _ 8B. 56, 18
        push    esi                                     ; 10001572 _ 56
        neg     edx                                     ; 10001573 _ F7. DA
        sbb     edx, edx                                ; 10001575 _ 1B. D2
        and     edx, 47H                                ; 10001577 _ 83. E2, 47
        add     edx, 42                                 ; 1000157A _ 83. C2, 2A
        mov     dword [esi+4H], edx                     ; 1000157D _ 89. 56, 04
        mov     dword [eax+30H], 1                      ; 10001580 _ C7. 40, 30, 00000001
        mov     dword [esi+20H], ecx                    ; 10001587 _ 89. 4E, 20
        call    ?_0712                                  ; 1000158A _ E8, 00005931
        push    esi                                     ; 1000158F _ 56
        call    ?_0065                                  ; 10001590 _ E8, 0000042B
        add     esp, 8                                  ; 10001595 _ 83. C4, 08
        xor     eax, eax                                ; 10001598 _ 33. C0
        pop     esi                                     ; 1000159A _ 5E
        ret                                             ; 1000159B _ C3

