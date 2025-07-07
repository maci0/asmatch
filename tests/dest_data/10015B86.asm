; ---- 10015B86 ----
?_2399: ; Local function
        mov     ecx, dword [?_5693]                     ; 10015B86 _ 8B. 0D, 101DE450(d)
        push    ebp                                     ; 10015B8C _ 55
        push    esi                                     ; 10015B8D _ 56
        push    732                                     ; 10015B8E _ 68, 000002DC
        push    65                                      ; 10015B93 _ 6A, 41
        push    ecx                                     ; 10015B95 _ 51
        call    ?_3143                                  ; 10015B96 _ E8, 00004ECF
        push    esi                                     ; 10015B9B _ 56
        call    ?_3029                                  ; 10015B9C _ E8, 000045E9
        push    1                                       ; 10015BA1 _ 6A, 01
        push    ?_5402                                  ; 10015BA3 _ 68, 100310C4(d)
        push    1334                                    ; 10015BA8 _ 68, 00000536
        push    ?_5397                                  ; 10015BAD _ 68, 10031004(d)
        call    ?_0267                                  ; 10015BB2 _ E8, FFFEDA89
        call    ?_2379                                  ; 10015BB7 _ E8, FFFFFB04
        push    1                                       ; 10015BBC _ 6A, 01
        push    ?_5401                                  ; 10015BBE _ 68, 100310A4(d)
        push    1338                                    ; 10015BC3 _ 68, 0000053A
        push    ?_5397                                  ; 10015BC8 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015BCD _ E8, FFFEDA6E
        call    ?_2765                                  ; 10015BD2 _ E8, 000024F9
        push    1                                       ; 10015BD7 _ 6A, 01
        push    ?_5400                                  ; 10015BD9 _ 68, 10031064(d)
        push    1342                                    ; 10015BDE _ 68, 0000053E
        push    ?_5397                                  ; 10015BE3 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015BE8 _ E8, FFFEDA53
        add     esp, 68                                 ; 10015BED _ 83. C4, 44
        xor     esi, esi                                ; 10015BF0 _ 33. F6
?_2400: mov     edx, dword [?_5668]                     ; 10015BF2 _ 8B. 15, 100A8C30(d)
        mov     ebp, dword [?_5693]                     ; 10015BF8 _ 8B. 2D, 101DE450(d)
        mov     dword [esp+10H], 0                      ; 10015BFE _ C7. 44 24, 10, 00000000
        mov     dword [esp+14H], 64                     ; 10015C06 _ C7. 44 24, 14, 00000040
        lea     edi, [esi+edx+23H]                      ; 10015C0E _ 8D. 7C 16, 23
?_2401: mov     dx, word [edi]                          ; 10015C12 _ 66: 8B. 17
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, -1                                  ; 10015C15 _ 66: 81. FA, FFFF
        jz      ?_2403                                  ; 10015C1A _ 74, 30
        mov     eax, edx                                ; 10015C1C _ 8B. C2
        mov     ebx, ebp                                ; 10015C1E _ 8B. DD
        and     eax, 7FFFH                              ; 10015C20 _ 25, 00007FFF
        mov     ecx, eax                                ; 10015C25 _ 8B. C8
        shl     ecx, 6                                  ; 10015C27 _ C1. E1, 06
        add     ebx, ecx                                ; 10015C2A _ 03. D9
        mov     ecx, eax                                ; 10015C2C _ 8B. C8
        add     ecx, ebx                                ; 10015C2E _ 03. CB
        mov     cl, byte [ecx]                          ; 10015C30 _ 8A. 09
        cmp     cl, 2                                   ; 10015C32 _ 80. F9, 02
        jz      ?_2402                                  ; 10015C35 _ 74, 05
        cmp     cl, 6                                   ; 10015C37 _ 80. F9, 06
        jnz     ?_2403                                  ; 10015C3A _ 75, 10
?_2402: cmp     eax, 253                                ; 10015C3C _ 3D, 000000FD
        jz      ?_2403                                  ; 10015C41 _ 74, 09
        test    dh, 0FFFFFF80H                          ; 10015C43 _ F6. C6, 80
        jz      ?_2403                                  ; 10015C46 _ 74, 04
        inc     dword [esp+10H]                         ; 10015C48 _ FF. 44 24, 10
?_2403: mov     eax, dword [esp+14H]                    ; 10015C4C _ 8B. 44 24, 14
        add     edi, 2                                  ; 10015C50 _ 83. C7, 02
        dec     eax                                     ; 10015C53 _ 48
        mov     dword [esp+14H], eax                    ; 10015C54 _ 89. 44 24, 14
        jnz     ?_2401                                  ; 10015C58 _ 75, B8
        mov     eax, dword [?_5668]                     ; 10015C5A _ A1, 100A8C30(d)
        mov     dl, byte [esp+10H]                      ; 10015C5F _ 8A. 54 24, 10
        mov     bl, byte [esi+eax+21H]                  ; 10015C63 _ 8A. 5C 06, 21
        add     esi, 589                                ; 10015C67 _ 81. C6, 0000024D
        add     bl, dl                                  ; 10015C6D _ 02. DA
        cmp     esi, 51832                              ; 10015C6F _ 81. FE, 0000CA78
        mov     byte [esi+eax-22CH], bl                 ; 10015C75 _ 88. 9C 06, FFFFFDD4
        jl      ?_2400                                  ; 10015C7C _ 0F 8C, FFFFFF70
        call    ?_3027                                  ; 10015C82 _ E8, 000044B9
        push    1                                       ; 10015C87 _ 6A, 01
        push    ?_5399                                  ; 10015C89 _ 68, 10031054(d)
        push    1416                                    ; 10015C8E _ 68, 00000588
        push    ?_5397                                  ; 10015C93 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015C98 _ E8, FFFED9A3
        add     esp, 16                                 ; 10015C9D _ 83. C4, 10
        xor     eax, eax                                ; 10015CA0 _ 33. C0
        pop     ebp                                     ; 10015CA2 _ 5D
        pop     edi                                     ; 10015CA3 _ 5F
        pop     esi                                     ; 10015CA4 _ 5E
        pop     ebx                                     ; 10015CA5 _ 5B
        add     esp, 520                                ; 10015CA6 _ 81. C4, 00000208
        ret                                             ; 10015CAC _ C3

        nop                                             ; 10015CAD _ 90
        nop                                             ; 10015CAE _ 90
        nop                                             ; 10015CAF _ 90

