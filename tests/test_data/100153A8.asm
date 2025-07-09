; ---- 100153A8 ----
?_2359: ; Local function
        mov     eax, dword [esp+34H]                    ; 100153A8 _ 8B. 44 24, 34
        push    2                                       ; 100153AC _ 6A, 02
        push    0                                       ; 100153AE _ 6A, 00
        push    0                                       ; 100153B0 _ 6A, 00
        and     esi, 0FFFFH                             ; 100153B2 _ 81. E6, 0000FFFF
        push    0                                       ; 100153B8 _ 6A, 00
        push    eax                                     ; 100153BA _ 50
        and     ebp, 0FFFFH                             ; 100153BB _ 81. E5, 0000FFFF
        lea     eax, [esi+esi*2]                        ; 100153C1 _ 8D. 04 76
        lea     eax, [eax+eax*4]                        ; 100153C4 _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 100153C7 _ 8D. 0C C0
        mov     eax, ebp                                ; 100153CA _ 8B. C5
        mov     edx, dword [?_5634+ecx*4]               ; 100153CC _ 8B. 14 8D, 100358A4(d)
        lea     eax, [eax+eax*2]                        ; 100153D3 _ 8D. 04 40
        push    edx                                     ; 100153D6 _ 52
        lea     eax, [eax+eax*4]                        ; 100153D7 _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100153DA _ 8D. 04 C0
        mov     ecx, dword [?_5634+eax*4]               ; 100153DD _ 8B. 0C 85, 100358A4(d)
        push    ecx                                     ; 100153E4 _ 51
        push    0                                       ; 100153E5 _ 6A, 00
        call    ?_2844                                  ; 100153E7 _ E8, 00003464
        add     esp, 32                                 ; 100153EC _ 83. C4, 20
        pop     edi                                     ; 100153EF _ 5F
        pop     esi                                     ; 100153F0 _ 5E
        pop     ebp                                     ; 100153F1 _ 5D
        pop     ebx                                     ; 100153F2 _ 5B
        add     esp, 32                                 ; 100153F3 _ 83. C4, 20
        ret                                             ; 100153F6 _ C3

        nop                                             ; 100153F7 _ 90
        nop                                             ; 100153F8 _ 90
        nop                                             ; 100153F9 _ 90
        nop                                             ; 100153FA _ 90
        nop                                             ; 100153FB _ 90
        nop                                             ; 100153FC _ 90
        nop                                             ; 100153FD _ 90
        nop                                             ; 100153FE _ 90
        nop                                             ; 100153FF _ 90
