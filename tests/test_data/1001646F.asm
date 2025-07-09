; ---- 1001646F ----
?_2483: ; Local function
        mov     ecx, dword [esp+0CH]                    ; 1001646F _ 8B. 4C 24, 0C
        xor     dl, dl                                  ; 10016473 _ 32. D2
        xor     bl, bl                                  ; 10016475 _ 32. DB
        cmp     ecx, eax                                ; 10016477 _ 3B. C8
        mov     dword [?_5387], 32767                   ; 10016479 _ C7. 05, 10030B94(d), 00007FFF
        mov     dword [?_5388], -1                      ; 10016483 _ C7. 05, 10030B98(d), FFFFFFFF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [?_5389], -1                       ; 1001648D _ 66: C7. 05, 10030B9C(d), FFFF
        mov     byte [?_5390], -1                       ; 10016496 _ C6. 05, 10030B9E(d), FF
        mov     byte [?_5544], 0                        ; 1001649D _ C6. 05, 1003545E(d), 00
        mov     byte [?_5542], dl                       ; 100164A4 _ 88. 15, 1003545C(d)
        mov     byte [?_5543], bl                       ; 100164AA _ 88. 1D, 1003545D(d)
        mov     byte [?_5540], 1                        ; 100164B0 _ C6. 05, 10035454(d), 01
        mov     dword [?_5541], eax                     ; 100164B7 _ A3, 10035458(d)
        mov     dword [?_5670], eax                     ; 100164BC _ A3, 100A8C38(d)
        jle     ?_2495                                  ; 100164C1 _ 0F 8E, 000000AB
        push    esi                                     ; 100164C7 _ 56
        lea     eax, [esp+10H]                          ; 100164C8 _ 8D. 44 24, 10
        mov     esi, ecx                                ; 100164CC _ 8B. F1
?_2484: add     eax, 4                                  ; 100164CE _ 83. C0, 04
        xor     ecx, ecx                                ; 100164D1 _ 33. C9
        mov     cl, byte [eax]                          ; 100164D3 _ 8A. 08
        cmp     ecx, 7                                  ; 100164D5 _ 83. F9, 07
        ja      ?_2492                                  ; 100164D8 _ 77, 52
        jmp     near [?_2496+ecx*4]                     ; 100164DA _ FF. 24 8D, 1001657C(d)

?_2485: add     eax, 4                                  ; 100164E1 _ 83. C0, 04
        xor     ecx, ecx                                ; 100164E4 _ 33. C9
        mov     cx, word [eax]                          ; 100164E6 _ 66: 8B. 08
        mov     dword [?_5387], ecx                     ; 100164E9 _ 89. 0D, 10030B94(d)
        jmp     ?_2492                                  ; 100164EF _ EB, 3B

?_2486: mov     ecx, dword [eax+4H]                     ; 100164F1 _ 8B. 48, 04
        add     eax, 4                                  ; 100164F4 _ 83. C0, 04
        mov     dword [?_5388], ecx                     ; 100164F7 _ 89. 0D, 10030B98(d)
        jmp     ?_2492                                  ; 100164FD _ EB, 2D

?_2487: mov     cx, word [eax+4H]                       ; 100164FF _ 66: 8B. 48, 04
        add     eax, 4                                  ; 10016503 _ 83. C0, 04
        mov     word [?_5389], cx                       ; 10016506 _ 66: 89. 0D, 10030B9C(d)
        jmp     ?_2492                                  ; 1001650D _ EB, 1D

?_2488: mov     cl, byte [eax+4H]                       ; 1001650F _ 8A. 48, 04
        add     eax, 4                                  ; 10016512 _ 83. C0, 04
        mov     byte [?_5390], cl                       ; 10016515 _ 88. 0D, 10030B9E(d)
        jmp     ?_2492                                  ; 1001651B _ EB, 0F

?_2489: mov     byte [?_5544], 1                        ; 1001651D _ C6. 05, 1003545E(d), 01
        jmp     ?_2492                                  ; 10016524 _ EB, 06

?_2490: mov     bl, 1                                   ; 10016526 _ B3, 01
        jmp     ?_2492                                  ; 10016528 _ EB, 02

?_2491: mov     dl, 1                                   ; 1001652A _ B2, 01
?_2492: dec     esi                                     ; 1001652C _ 4E
        jnz     ?_2484                                  ; 1001652D _ 75, 9F
        test    dl, dl                                  ; 1001652F _ 84. D2
        mov     byte [?_5542], dl                       ; 10016531 _ 88. 15, 1003545C(d)
        mov     byte [?_5543], bl                       ; 10016537 _ 88. 1D, 1003545D(d)
        pop     esi                                     ; 1001653D _ 5E
        jz      ?_2495                                  ; 1001653E _ 74, 32
        test    bl, bl                                  ; 10016540 _ 84. DB
        jz      ?_2493                                  ; 10016542 _ 74, 1D
        push    1                                       ; 10016544 _ 6A, 01
        push    ?_5417                                  ; 10016546 _ 68, 10031250(d)
        push    2918                                    ; 1001654B _ 68, 00000B66
        push    ?_5397                                  ; 10016550 _ 68, 10031004(d)
        call    ?_0267                                  ; 10016555 _ E8, FFFED0E6
        add     esp, 16                                 ; 1001655A _ 83. C4, 10
        xor     eax, eax                                ; 1001655D _ 33. C0
        pop     ebx                                     ; 1001655F _ 5B
        ret                                             ; 10016560 _ C3

?_2493: mov     eax, dword [?_5669]                     ; 10016561 _ A1, 100A8C34(d)
?_2494: mov     dword [?_5546], eax                     ; 10016566 _ A3, 10035468(d)
        call    ?_2461                                  ; 1001656B _ E8, FFFFFD20
        pop     ebx                                     ; 10016570 _ 5B
        ret                                             ; 10016571 _ C3
