; ---- 100113B0 ----
?_1992: ; Local function
        push    ecx                                     ; 100113B0 _ 51
        push    esi                                     ; 100113B1 _ 56
        mov     esi, dword [esp+0CH]                    ; 100113B2 _ 8B. 74 24, 0C
        push    edi                                     ; 100113B6 _ 57
        lea     ecx, [esp+8H]                           ; 100113B7 _ 8D. 4C 24, 08
        mov     eax, dword [esi+8H]                     ; 100113BB _ 8B. 46, 08
        push    eax                                     ; 100113BE _ 50
        push    0                                       ; 100113BF _ 6A, 00
        push    0                                       ; 100113C1 _ 6A, 00
        push    ecx                                     ; 100113C3 _ 51
        call    ?_2425                                  ; 100113C4 _ E8, 00004AC7
        mov     edx, dword [esp+18H]                    ; 100113C9 _ 8B. 54 24, 18
        add     esp, 16                                 ; 100113CD _ 83. C4, 10
        test    edx, edx                                ; 100113D0 _ 85. D2
        je      ?_1999                                  ; 100113D2 _ 0F 84, 00000157
        mov     ax, word [edx+27H]                      ; 100113D8 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 100113DC _ 66: 3D, FFFF
        je      ?_1999                                  ; 100113E0 _ 0F 84, 00000149
        and     eax, 0FFFFH                             ; 100113E6 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 100113EB _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100113EE _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100113F1 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 100113F4 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 100113FB _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 10011400 _ 3B. C8
        je      ?_1999                                  ; 10011402 _ 0F 84, 00000127
        xor     ecx, ecx                                ; 10011408 _ 33. C9
        mov     edi, dword [?_5668]                     ; 1001140A _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 10011410 _ 8A. 0A
        add     edi, ecx                                ; 10011412 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 10011414 _ 8D. 04 49
        shl     eax, 4                                  ; 10011417 _ C1. E0, 04
        add     eax, ecx                                ; 1001141A _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1001141C _ 8D. 04 40
        cmp     byte [edi+eax*4], 29                    ; 1001141F _ 80. 3C 87, 1D
        jz      ?_1993                                  ; 10011423 _ 74, 09
        pop     edi                                     ; 10011425 _ 5F
        mov     eax, 4294967294                         ; 10011426 _ B8, FFFFFFFE
        pop     esi                                     ; 1001142B _ 5E
        pop     ecx                                     ; 1001142C _ 59
        ret                                             ; 1001142D _ C3

?_1993: mov     edi, dword [edx+65H]                    ; 1001142E _ 8B. 7A, 65
        test    edi, edi                                ; 10011431 _ 85. FF
        jnz     ?_1994                                  ; 10011433 _ 75, 09
        pop     edi                                     ; 10011435 _ 5F
        mov     eax, 4294967293                         ; 10011436 _ B8, FFFFFFFD
        pop     esi                                     ; 1001143B _ 5E
        pop     ecx                                     ; 1001143C _ 59
        ret                                             ; 1001143D _ C3

?_1994: mov     ecx, dword [esi+0CH]                    ; 1001143E _ 8B. 4E, 0C
        push    ecx                                     ; 10011441 _ 51
        push    edi                                     ; 10011442 _ 57
        call    ?_1891                                  ; 10011443 _ E8, FFFFF0E8
        add     esp, 8                                  ; 10011448 _ 83. C4, 08
        test    eax, eax                                ; 1001144B _ 85. C0
        jnz     ?_1995                                  ; 1001144D _ 75, 09
        pop     edi                                     ; 1001144F _ 5F
        mov     eax, 4294967292                         ; 10011450 _ B8, FFFFFFFC
        pop     esi                                     ; 10011455 _ 5E
        pop     ecx                                     ; 10011456 _ 59
        ret                                             ; 10011457 _ C3

?_1995: mov     edx, dword [esi+4H]                     ; 10011458 _ 8B. 56, 04
        lea     eax, [esp+10H]                          ; 1001145B _ 8D. 44 24, 10
        push    edx                                     ; 1001145F _ 52
        push    eax                                     ; 10011460 _ 50
        push    0                                       ; 10011461 _ 6A, 00
        push    0                                       ; 10011463 _ 6A, 00
        call    ?_2425                                  ; 10011465 _ E8, 00004A26
        mov     eax, dword [esp+20H]                    ; 1001146A _ 8B. 44 24, 20
        add     esp, 16                                 ; 1001146E _ 83. C4, 10
        test    eax, eax                                ; 10011471 _ 85. C0
        jnz     ?_1996                                  ; 10011473 _ 75, 09
        pop     edi                                     ; 10011475 _ 5F
        mov     eax, 4294967290                         ; 10011476 _ B8, FFFFFFFA
        pop     esi                                     ; 1001147B _ 5E
        pop     ecx                                     ; 1001147C _ 59
        ret                                             ; 1001147D _ C3

?_1996: mov     cl, byte [esi+10H]                      ; 1001147E _ 8A. 4E, 10
        mov     edx, dword [esi+0CH]                    ; 10011481 _ 8B. 56, 0C
        push    ecx                                     ; 10011484 _ 51
        push    edx                                     ; 10011485 _ 52
        push    edi                                     ; 10011486 _ 57
        call    ?_1900                                  ; 10011487 _ E8, FFFFF124
        add     esp, 12                                 ; 1001148C _ 83. C4, 0C
        test    eax, eax                                ; 1001148F _ 85. C0
        jnz     ?_1997                                  ; 10011491 _ 75, 09
        pop     edi                                     ; 10011493 _ 5F
        mov     eax, 4294967289                         ; 10011494 _ B8, FFFFFFF9
        pop     esi                                     ; 10011499 _ 5E
        pop     ecx                                     ; 1001149A _ 59
        ret                                             ; 1001149B _ C3

?_1997: mov     cx, word [esi+11H]                      ; 1001149C _ 66: 8B. 4E, 11
        add     word [eax+0AH], cx                      ; 100114A0 _ 66: 01. 48, 0A
        mov     eax, dword [esi+13H]                    ; 100114A4 _ 8B. 46, 13
        test    eax, eax                                ; 100114A7 _ 85. C0
        jle     ?_1998                                  ; 100114A9 _ 7E, 7E
        xor     ecx, ecx                                ; 100114AB _ 33. C9
        push    eax                                     ; 100114AD _ 50
        mov     cl, byte [?_5532]                       ; 100114AE _ 8A. 0D, 10035439(d)
        mov     eax, ecx                                ; 100114B4 _ 8B. C1
        shl     eax, 6                                  ; 100114B6 _ C1. E0, 06
        sub     eax, ecx                                ; 100114B9 _ 2B. C1
        mov     ecx, dword [esp+14H]                    ; 100114BB _ 8B. 4C 24, 14
        lea     edx, [eax+eax*2]                        ; 100114BF _ 8D. 14 40
        xor     eax, eax                                ; 100114C2 _ 33. C0
        mov     ax, word [?_5672+edx*4]                 ; 100114C4 _ 66: 8B. 04 95, 100A8C94(d)
        mov     edx, dword [ecx+4H]                     ; 100114CC _ 8B. 51, 04
        push    eax                                     ; 100114CF _ 50
        push    edx                                     ; 100114D0 _ 52
        call    ?_2579                                  ; 100114D1 _ E8, 000059CA
        fild    dword [esi+13H]                         ; 100114D6 _ DB. 46, 13
        mov     eax, dword [esi+0CH]                    ; 100114D9 _ 8B. 46, 0C
        fmul    dword [?_4925+eax*4]                    ; 100114DC _ D8. 0C 85, 1002572C(d)
        call    ?_3298                                  ; 100114E3 _ E8, 0000A07C
        xor     ecx, ecx                                ; 100114E8 _ 33. C9
        push    eax                                     ; 100114EA _ 50
        mov     cl, byte [?_5532]                       ; 100114EB _ 8A. 0D, 10035439(d)
        xor     edx, edx                                ; 100114F1 _ 33. D2
        mov     eax, ecx                                ; 100114F3 _ 8B. C1
        shl     eax, 6                                  ; 100114F5 _ C1. E0, 06
        sub     eax, ecx                                ; 100114F8 _ 2B. C1
        lea     ecx, [eax+eax*2]                        ; 100114FA _ 8D. 0C 40
        xor     eax, eax                                ; 100114FD _ 33. C0
        mov     dx, word [?_5672+ecx*4]                 ; 100114FF _ 66: 8B. 14 8D, 100A8C94(d)
        mov     ecx, dword [esp+18H]                    ; 10011507 _ 8B. 4C 24, 18
        push    edx                                     ; 1001150B _ 52
        mov     ax, word [ecx+27H]                      ; 1001150C _ 66: 8B. 41, 27
        lea     eax, [eax+eax*2]                        ; 10011510 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10011513 _ 8D. 04 80
        lea     edx, [eax+eax*8]                        ; 10011516 _ 8D. 14 C0
        mov     eax, dword [?_5634+edx*4]               ; 10011519 _ 8B. 04 95, 100358A4(d)
        push    eax                                     ; 10011520 _ 50
        call    ?_2564                                  ; 10011521 _ E8, 000057AA
        add     esp, 24                                 ; 10011526 _ 83. C4, 18
?_1998: pop     edi                                     ; 10011529 _ 5F
        xor     eax, eax                                ; 1001152A _ 33. C0
        pop     esi                                     ; 1001152C _ 5E
        pop     ecx                                     ; 1001152D _ 59
        ret                                             ; 1001152E _ C3

