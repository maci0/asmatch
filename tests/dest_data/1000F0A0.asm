; ---- 1000F0A0 ----
?_1707: ; Local function
        mov     eax, dword [?_5381]                     ; 1000F0A0 _ A1, 10030B70(d)
        push    esi                                     ; 1000F0A5 _ 56
        mov     esi, dword [esp+8H]                     ; 1000F0A6 _ 8B. 74 24, 08
        mov     dword [esi+10H], eax                    ; 1000F0AA _ 89. 46, 10
        call    near [imp_timeGetTime]                  ; 1000F0AD _ FF. 15, 10024154(d)
        mov     dword [esi+14H], eax                    ; 1000F0B3 _ 89. 46, 14
        mov     eax, dword [?_5381]                     ; 1000F0B6 _ A1, 10030B70(d)
        inc     eax                                     ; 1000F0BB _ 40
        pop     esi                                     ; 1000F0BC _ 5E
        mov     dword [?_5381], eax                     ; 1000F0BD _ A3, 10030B70(d)
        xor     eax, eax                                ; 1000F0C2 _ 33. C0
        ret                                             ; 1000F0C4 _ C3

        nop                                             ; 1000F0C5 _ 90
        nop                                             ; 1000F0C6 _ 90
        nop                                             ; 1000F0C7 _ 90
        nop                                             ; 1000F0C8 _ 90
        nop                                             ; 1000F0C9 _ 90
        nop                                             ; 1000F0CA _ 90
        nop                                             ; 1000F0CB _ 90
        nop                                             ; 1000F0CC _ 90
        nop                                             ; 1000F0CD _ 90
        nop                                             ; 1000F0CE _ 90
        nop                                             ; 1000F0CF _ 90

