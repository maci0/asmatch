; ---- 100019C0 ----
?_0065: ; Local function
        mov     edx, dword [esp+4H]                     ; 100019C0 _ 8B. 54 24, 04
        push    ebx                                     ; 100019C4 _ 53
        push    esi                                     ; 100019C5 _ 56
        xor     esi, esi                                ; 100019C6 _ 33. F6
        mov     eax, dword [edx+24H]                    ; 100019C8 _ 8B. 42, 24
        mov     ecx, dword [edx+44H]                    ; 100019CB _ 8B. 4A, 44
        shl     eax, 1                                  ; 100019CE _ D1. E0
        mov     dword [edx+34H], eax                    ; 100019D0 _ 89. 42, 34
        mov     eax, dword [edx+3CH]                    ; 100019D3 _ 8B. 42, 3C
        push    edi                                     ; 100019D6 _ 57
        mov     word [eax+ecx*2-2H], si                 ; 100019D7 _ 66: 89. 74 48, FE
        mov     ecx, dword [edx+44H]                    ; 100019DC _ 8B. 4A, 44
        mov     edi, dword [edx+3CH]                    ; 100019DF _ 8B. 7A, 3C
        xor     eax, eax                                ; 100019E2 _ 33. C0
        lea     ecx, [ecx+ecx-2H]                       ; 100019E4 _ 8D. 4C 09, FE
        mov     ebx, ecx                                ; 100019E8 _ 8B. D9
        shr     ecx, 2                                  ; 100019EA _ C1. E9, 02
        rep stosd                                       ; 100019ED _ F3: AB
        mov     ecx, ebx                                ; 100019EF _ 8B. CB
        and     ecx, 03H                                ; 100019F1 _ 83. E1, 03
        rep stosb                                       ; 100019F4 _ F3: AA
        mov     eax, dword [edx+7CH]                    ; 100019F6 _ 8B. 42, 7C
        xor     ecx, ecx                                ; 100019F9 _ 33. C9
        pop     edi                                     ; 100019FB _ 5F
        lea     eax, [eax+eax*2]                        ; 100019FC _ 8D. 04 40
        shl     eax, 2                                  ; 100019FF _ C1. E0, 02
        mov     cx, word [?_4884+eax]                   ; 10001A02 _ 66: 8B. 88, 100245DA(d)
        mov     dword [edx+78H], ecx                    ; 10001A09 _ 89. 4A, 78
        xor     ecx, ecx                                ; 10001A0C _ 33. C9
        mov     cx, word [?_4883+eax]                   ; 10001A0E _ 66: 8B. 88, 100245D8(d)
        mov     dword [edx+84H], ecx                    ; 10001A15 _ 89. 8A, 00000084
        xor     ecx, ecx                                ; 10001A1B _ 33. C9
        mov     cx, word [?_4885+eax]                   ; 10001A1D _ 66: 8B. 88, 100245DC(d)
        mov     dword [edx+88H], ecx                    ; 10001A24 _ 89. 8A, 00000088
        xor     ecx, ecx                                ; 10001A2A _ 33. C9
        mov     cx, word [?_4886+eax]                   ; 10001A2C _ 66: 8B. 88, 100245DE(d)
        mov     dword [edx+64H], esi                    ; 10001A33 _ 89. 72, 64
        mov     dword [edx+54H], esi                    ; 10001A36 _ 89. 72, 54
        mov     dword [edx+6CH], esi                    ; 10001A39 _ 89. 72, 6C
        mov     eax, 2                                  ; 10001A3C _ B8, 00000002
        mov     dword [edx+60H], esi                    ; 10001A41 _ 89. 72, 60
        mov     dword [edx+40H], esi                    ; 10001A44 _ 89. 72, 40
        pop     esi                                     ; 10001A47 _ 5E
        mov     dword [edx+74H], ecx                    ; 10001A48 _ 89. 4A, 74
        mov     dword [edx+70H], eax                    ; 10001A4B _ 89. 42, 70
        mov     dword [edx+58H], eax                    ; 10001A4E _ 89. 42, 58
        pop     ebx                                     ; 10001A51 _ 5B
        ret                                             ; 10001A52 _ C3

        nop                                             ; 10001A53 _ 90
        nop                                             ; 10001A54 _ 90
        nop                                             ; 10001A55 _ 90
        nop                                             ; 10001A56 _ 90
        nop                                             ; 10001A57 _ 90
        nop                                             ; 10001A58 _ 90
        nop                                             ; 10001A59 _ 90
        nop                                             ; 10001A5A _ 90
        nop                                             ; 10001A5B _ 90
        nop                                             ; 10001A5C _ 90
        nop                                             ; 10001A5D _ 90
        nop                                             ; 10001A5E _ 90
        nop                                             ; 10001A5F _ 90

