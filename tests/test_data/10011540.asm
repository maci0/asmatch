; ---- 10011540 ----
?_2000: ; Local function
        push    ecx                                     ; 10011540 _ 51
        push    ebx                                     ; 10011541 _ 53
        push    ebp                                     ; 10011542 _ 55
        push    esi                                     ; 10011543 _ 56
        mov     esi, dword [esp+14H]                    ; 10011544 _ 8B. 74 24, 14
        push    edi                                     ; 10011548 _ 57
        lea     ecx, [esp+18H]                          ; 10011549 _ 8D. 4C 24, 18
        mov     eax, dword [esi+8H]                     ; 1001154D _ 8B. 46, 08
        or      ebx, 0FFFFFFFFH                         ; 10011550 _ 83. CB, FF
        push    eax                                     ; 10011553 _ 50
        push    0                                       ; 10011554 _ 6A, 00
        push    0                                       ; 10011556 _ 6A, 00
        push    ecx                                     ; 10011558 _ 51
        mov     ebp, 65535                              ; 10011559 _ BD, 0000FFFF
        call    ?_2425                                  ; 1001155E _ E8, 0000492D
        mov     edx, dword [esp+28H]                    ; 10011563 _ 8B. 54 24, 28
        add     esp, 16                                 ; 10011567 _ 83. C4, 10
        test    edx, edx                                ; 1001156A _ 85. D2
        je      ?_2007                                  ; 1001156C _ 0F 84, 000000E5
        mov     ax, word [edx+27H]                      ; 10011572 _ 66: 8B. 42, 27
        cmp     ax, bp                                  ; 10011576 _ 66: 3B. C5
        je      ?_2007                                  ; 10011579 _ 0F 84, 000000D8
        and     eax, ebp                                ; 1001157F _ 23. C5
        lea     eax, [eax+eax*2]                        ; 10011581 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10011584 _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 10011587 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 1001158A _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 10011591 _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 10011596 _ 3B. C8
        je      ?_2007                                  ; 10011598 _ 0F 84, 000000B9
        xor     ecx, ecx                                ; 1001159E _ 33. C9
        mov     edi, dword [?_5668]                     ; 100115A0 _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 100115A6 _ 8A. 0A
        add     edi, ecx                                ; 100115A8 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 100115AA _ 8D. 04 49
        shl     eax, 4                                  ; 100115AD _ C1. E0, 04
        add     eax, ecx                                ; 100115B0 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 100115B2 _ 8D. 04 40
        cmp     byte [edi+eax*4], 29                    ; 100115B5 _ 80. 3C 87, 1D
        jz      ?_2001                                  ; 100115B9 _ 74, 0B
        pop     edi                                     ; 100115BB _ 5F
        pop     esi                                     ; 100115BC _ 5E
        pop     ebp                                     ; 100115BD _ 5D
        mov     eax, 4294967294                         ; 100115BE _ B8, FFFFFFFE
        pop     ebx                                     ; 100115C3 _ 5B
        pop     ecx                                     ; 100115C4 _ 59
        ret                                             ; 100115C5 _ C3

?_2001: mov     edi, dword [edx+65H]                    ; 100115C6 _ 8B. 7A, 65
        test    edi, edi                                ; 100115C9 _ 85. FF
        jnz     ?_2002                                  ; 100115CB _ 75, 0B
        pop     edi                                     ; 100115CD _ 5F
        pop     esi                                     ; 100115CE _ 5E
        pop     ebp                                     ; 100115CF _ 5D
        mov     eax, 4294967293                         ; 100115D0 _ B8, FFFFFFFD
        pop     ebx                                     ; 100115D5 _ 5B
        pop     ecx                                     ; 100115D6 _ 59
        ret                                             ; 100115D7 _ C3

?_2002: mov     ecx, dword [esi+0CH]                    ; 100115D8 _ 8B. 4E, 0C
        push    ecx                                     ; 100115DB _ 51
        push    edi                                     ; 100115DC _ 57
        call    ?_1891                                  ; 100115DD _ E8, FFFFEF4E
        add     esp, 8                                  ; 100115E2 _ 83. C4, 08
        test    eax, eax                                ; 100115E5 _ 85. C0
        jnz     ?_2003                                  ; 100115E7 _ 75, 0B
        pop     edi                                     ; 100115E9 _ 5F
        pop     esi                                     ; 100115EA _ 5E
        pop     ebp                                     ; 100115EB _ 5D
        mov     eax, 4294967292                         ; 100115EC _ B8, FFFFFFFC
        pop     ebx                                     ; 100115F1 _ 5B
        pop     ecx                                     ; 100115F2 _ 59
        ret                                             ; 100115F3 _ C3

?_2003: mov     eax, dword [esi+4H]                     ; 100115F4 _ 8B. 46, 04
        cmp     eax, -1                                 ; 100115F7 _ 83. F8, FF
        jz      ?_2005                                  ; 100115FA _ 74, 2C
        lea     edx, [esp+10H]                          ; 100115FC _ 8D. 54 24, 10
        push    eax                                     ; 10011600 _ 50
        push    edx                                     ; 10011601 _ 52
        push    0                                       ; 10011602 _ 6A, 00
        push    0                                       ; 10011604 _ 6A, 00
        call    ?_2425                                  ; 10011606 _ E8, 00004885
        mov     eax, dword [esp+20H]                    ; 1001160B _ 8B. 44 24, 20
        add     esp, 16                                 ; 1001160F _ 83. C4, 10
        test    eax, eax                                ; 10011612 _ 85. C0
        jnz     ?_2004                                  ; 10011614 _ 75, 0B
        pop     edi                                     ; 10011616 _ 5F
        pop     esi                                     ; 10011617 _ 5E
        pop     ebp                                     ; 10011618 _ 5D
        mov     eax, 4294967290                         ; 10011619 _ B8, FFFFFFFA
        pop     ebx                                     ; 1001161E _ 5B
        pop     ecx                                     ; 1001161F _ 59
        ret                                             ; 10011620 _ C3

?_2004: mov     ebx, dword [esi+4H]                     ; 10011621 _ 8B. 5E, 04
        mov     bp, word [eax+50H]                      ; 10011624 _ 66: 8B. 68, 50
?_2005: mov     al, byte [esi+10H]                      ; 10011628 _ 8A. 46, 10
        mov     ecx, dword [esi+0CH]                    ; 1001162B _ 8B. 4E, 0C
        push    eax                                     ; 1001162E _ 50
        push    ecx                                     ; 1001162F _ 51
        push    edi                                     ; 10011630 _ 57
        call    ?_1900                                  ; 10011631 _ E8, FFFFEF7A
        add     esp, 12                                 ; 10011636 _ 83. C4, 0C
        test    eax, eax                                ; 10011639 _ 85. C0
        jnz     ?_2006                                  ; 1001163B _ 75, 0B
        pop     edi                                     ; 1001163D _ 5F
        pop     esi                                     ; 1001163E _ 5E
        pop     ebp                                     ; 1001163F _ 5D
        mov     eax, 4294967289                         ; 10011640 _ B8, FFFFFFF9
        pop     ebx                                     ; 10011645 _ 5B
        pop     ecx                                     ; 10011646 _ 59
        ret                                             ; 10011647 _ C3

?_2006: pop     edi                                     ; 10011648 _ 5F
        mov     word [eax+8H], bp                       ; 10011649 _ 66: 89. 68, 08
        pop     esi                                     ; 1001164D _ 5E
        mov     dword [eax+4H], ebx                     ; 1001164E _ 89. 58, 04
        pop     ebp                                     ; 10011651 _ 5D
        xor     eax, eax                                ; 10011652 _ 33. C0
        pop     ebx                                     ; 10011654 _ 5B
        pop     ecx                                     ; 10011655 _ 59
        ret                                             ; 10011656 _ C3

