; ---- 10014C6C ----
?_2289: ; Local function
        mov     eax, ecx                                ; 10014C6C _ 8B. C1
        shl     eax, 4                                  ; 10014C6E _ C1. E0, 04
        add     eax, ecx                                ; 10014C71 _ 03. C1
        shl     eax, 8                                  ; 10014C73 _ C1. E0, 08
        add     eax, ecx                                ; 10014C76 _ 03. C1
        shl     eax, 4                                  ; 10014C78 _ C1. E0, 04
        add     eax, ecx                                ; 10014C7B _ 03. C1
        mov     ecx, 21                                 ; 10014C7D _ B9, 00000015
        lea     eax, [eax+eax*8]                        ; 10014C82 _ 8D. 04 C0
        lea     esi, [?_5769+eax*4]                     ; 10014C85 _ 8D. 34 85, 10442D0C(d)
        rep movsd                                       ; 10014C8C _ F3: A5
        movsw                                           ; 10014C8E _ 66: A5
        movsb                                           ; 10014C90 _ A4
        jmp     ?_2288                                  ; 10014C91 _ EB, C3

        nop                                             ; 10014C93 _ 90
        nop                                             ; 10014C94 _ 90
        nop                                             ; 10014C95 _ 90
        nop                                             ; 10014C96 _ 90
        nop                                             ; 10014C97 _ 90
        nop                                             ; 10014C98 _ 90
        nop                                             ; 10014C99 _ 90
        nop                                             ; 10014C9A _ 90
        nop                                             ; 10014C9B _ 90
        nop                                             ; 10014C9C _ 90
        nop                                             ; 10014C9D _ 90
        nop                                             ; 10014C9E _ 90
        nop                                             ; 10014C9F _ 90
?_2290: push    ebx                                     ; 10014CA0 _ 53
        mov     ebx, dword [esp+8H]                     ; 10014CA1 _ 8B. 5C 24, 08
        push    esi                                     ; 10014CA5 _ 56
        push    edi                                     ; 10014CA6 _ 57
        mov     eax, dword [ebx]                        ; 10014CA7 _ 8B. 03
        test    ah, 60H                                 ; 10014CA9 _ F6. C4, 60
        jz      ?_2291                                  ; 10014CAC _ 74, 33
        push    1                                       ; 10014CAE _ 6A, 01
        push    ?_5359                                  ; 10014CB0 _ 68, 1002D740(d)
        push    891                                     ; 10014CB5 _ 68, 0000037B
        push    ?_5358                                  ; 10014CBA _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014CBF _ E8, FFFEE97C
        mov     eax, dword [esp+24H]                    ; 10014CC4 _ 8B. 44 24, 24
        push    eax                                     ; 10014CC8 _ 50
        push    ebx                                     ; 10014CC9 _ 53
        mov     byte [eax], 2                           ; 10014CCA _ C6. 00, 02
        call    ?_1110                                  ; 10014CCD _ E8, FFFF5CCE
        add     esp, 24                                 ; 10014CD2 _ 83. C4, 18
        inc     eax                                     ; 10014CD5 _ 40
        neg     eax                                     ; 10014CD6 _ F7. D8
        sbb     eax, eax                                ; 10014CD8 _ 1B. C0
        pop     edi                                     ; 10014CDA _ 5F
        neg     eax                                     ; 10014CDB _ F7. D8
        pop     esi                                     ; 10014CDD _ 5E
        dec     eax                                     ; 10014CDE _ 48
        pop     ebx                                     ; 10014CDF _ 5B
        ret                                             ; 10014CE0 _ C3
