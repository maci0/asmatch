; ---- 1000D350 ----
?_1468: ; Local function
        mov     eax, dword [?_5380]                     ; 1000D350 _ A1, 10030B6C(d)
        push    esi                                     ; 1000D355 _ 56
        mov     esi, dword [esp+8H]                     ; 1000D356 _ 8B. 74 24, 08
        push    edi                                     ; 1000D35A _ 57
        mov     dword [esi+10H], eax                    ; 1000D35B _ 89. 46, 10
        mov     eax, dword [esi+16H]                    ; 1000D35E _ 8B. 46, 16
        cmp     eax, -1                                 ; 1000D361 _ 83. F8, FF
        jnz     ?_1471                                  ; 1000D364 _ 75, 3B
        mov     edx, 65535                              ; 1000D366 _ BA, 0000FFFF
?_1469: mov     cl, byte [esi+14H]                      ; 1000D36B _ 8A. 4E, 14
        push    edx                                     ; 1000D36E _ 52
        push    ecx                                     ; 1000D36F _ 51
        call    ?_2657                                  ; 1000D370 _ E8, 0000A15B
        add     esp, 8                                  ; 1000D375 _ 83. C4, 08
        test    eax, eax                                ; 1000D378 _ 85. C0
        jne     ?_1475                                  ; 1000D37A _ 0F 85, 00000085
        push    1                                       ; 1000D380 _ 6A, 01
        push    ?_5280                                  ; 1000D382 _ 68, 1002CB34(d)
        push    10263                                   ; 1000D387 _ 68, 00002817
?_1470: push    ?_5260                                  ; 1000D38C _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D391 _ E8, FFFF62AA
        add     esp, 16                                 ; 1000D396 _ 83. C4, 10
        mov     eax, 1                                  ; 1000D399 _ B8, 00000001
        pop     edi                                     ; 1000D39E _ 5F
        pop     esi                                     ; 1000D39F _ 5E
        ret                                             ; 1000D3A0 _ C3

?_1471: push    eax                                     ; 1000D3A1 _ 50
        push    esi                                     ; 1000D3A2 _ 56
        call    ?_1389                                  ; 1000D3A3 _ E8, FFFFF6E8
        add     esp, 8                                  ; 1000D3A8 _ 83. C4, 08
        mov     dword [esi+16H], eax                    ; 1000D3AB _ 89. 46, 16
        xor     edx, edx                                ; 1000D3AE _ 33. D2
        mov     edi, 65535                              ; 1000D3B0 _ BF, 0000FFFF
?_1472: mov     ecx, edx                                ; 1000D3B5 _ 8B. CA
        and     ecx, edi                                ; 1000D3B7 _ 23. CF
        lea     ecx, [ecx+ecx*2]                        ; 1000D3B9 _ 8D. 0C 49
        lea     ecx, [ecx+ecx*4]                        ; 1000D3BC _ 8D. 0C 89
        lea     ecx, [ecx+ecx*8]                        ; 1000D3BF _ 8D. 0C C9
        shl     ecx, 2                                  ; 1000D3C2 _ C1. E1, 02
        cmp     word [?_5632+ecx], di                   ; 1000D3C5 _ 66: 39. B9, 100358A0(d)
        jz      ?_1473                                  ; 1000D3CC _ 74, 08
        cmp     dword [?_5634+ecx], eax                 ; 1000D3CE _ 39. 81, 100358A4(d)
        jz      ?_1474                                  ; 1000D3D4 _ 74, 16
?_1473: inc     edx                                     ; 1000D3D6 _ 42
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, 768                                 ; 1000D3D7 _ 66: 81. FA, 0300
        jc      ?_1472                                  ; 1000D3DC _ 72, D7
        push    1                                       ; 1000D3DE _ 6A, 01
        push    ?_5279                                  ; 1000D3E0 _ 68, 1002CAF0(d)
        push    10251                                   ; 1000D3E5 _ 68, 0000280B
        jmp     ?_1470                                  ; 1000D3EA _ EB, A0

?_1474:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, 768                                 ; 1000D3EC _ 66: 81. FA, 0300
        jc      ?_1469                                  ; 1000D3F1 _ 0F 82, FFFFFF74
        push    1                                       ; 1000D3F7 _ 6A, 01
        push    ?_5279                                  ; 1000D3F9 _ 68, 1002CAF0(d)
        push    10251                                   ; 1000D3FE _ 68, 0000280B
        jmp     ?_1470                                  ; 1000D403 _ EB, 87
