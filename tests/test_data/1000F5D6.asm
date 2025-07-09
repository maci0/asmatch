; ---- 1000F5D6 ----
?_1746: ; Local function
        mov     dl, byte [esi]                          ; 1000F5D6 _ 8A. 16
        mov     edi, dword [?_5668]                     ; 1000F5D8 _ 8B. 3D, 100A8C30(d)
        mov     eax, edx                                ; 1000F5DE _ 8B. C2
        and     eax, 0FFH                               ; 1000F5E0 _ 25, 000000FF
        add     edi, eax                                ; 1000F5E5 _ 03. F8
        lea     ecx, [eax+eax*2]                        ; 1000F5E7 _ 8D. 0C 40
        shl     ecx, 4                                  ; 1000F5EA _ C1. E1, 04
        add     ecx, eax                                ; 1000F5ED _ 03. C8
        lea     ecx, [ecx+ecx*2]                        ; 1000F5EF _ 8D. 0C 49
        mov     al, byte [edi+ecx*4+247H]               ; 1000F5F2 _ 8A. 84 8F, 00000247
        lea     edi, [edi+ecx*4]                        ; 1000F5F9 _ 8D. 3C 8F
        cmp     al, byte [edi+248H]                     ; 1000F5FC _ 3A. 87, 00000248
        jc      ?_1747                                  ; 1000F602 _ 72, 15
        push    ?_5324                                  ; 1000F604 _ 68, 1002D2C0(d)
        call    ?_0263                                  ; 1000F609 _ E8, FFFF3FB2
        add     esp, 4                                  ; 1000F60E _ 83. C4, 04
        mov     eax, 1                                  ; 1000F611 _ B8, 00000001
        pop     edi                                     ; 1000F616 _ 5F
        pop     esi                                     ; 1000F617 _ 5E
        ret                                             ; 1000F618 _ C3
