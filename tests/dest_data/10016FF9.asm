; ---- 10016FF9 ----
?_2595: ; Local function
        push    ebx                                     ; 10016FF9 _ 53
        mov     bl, byte [?_5386]                       ; 10016FFA _ 8A. 1D, 10030B90(d)
        push    ebp                                     ; 10017000 _ 55
        mov     bp, word [?_5384]                       ; 10017001 _ 66: 8B. 2D, 10030B8C(d)
        push    edi                                     ; 10017008 _ 57
        mov     edi, dword [?_5383]                     ; 10017009 _ 8B. 3D, 10030B88(d)
?_2596: mov     dl, byte [?_5536]                       ; 1001700F _ 8A. 15, 10035448(d)
        test    dl, dl                                  ; 10017015 _ 84. D2
        jz      ?_2597                                  ; 10017017 _ 74, 02
        mov     cl, 1                                   ; 10017019 _ B1, 01
?_2597: mov     dl, byte [?_5382]                       ; 1001701B _ 8A. 15, 10030B84(d)
        cmp     dl, -1                                  ; 10017021 _ 80. FA, FF
        jz      ?_2598                                  ; 10017024 _ 74, 0A
        cmp     byte [eax], dl                          ; 10017026 _ 38. 10
        jne     ?_2605                                  ; 10017028 _ 0F 85, 00000098
        mov     cl, 1                                   ; 1001702E _ B1, 01
?_2598: cmp     edi, -1                                 ; 10017030 _ 83. FF, FF
        jz      ?_2599                                  ; 10017033 _ 74, 0B
        cmp     dword [eax+1H], edi                     ; 10017035 _ 39. 78, 01
        jne     ?_2605                                  ; 10017038 _ 0F 85, 00000088
        mov     cl, 1                                   ; 1001703E _ B1, 01
?_2599:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     bp, 32767                               ; 10017040 _ 66: 81. FD, 7FFF
        jz      ?_2600                                  ; 10017045 _ 74, 08
        cmp     word [eax+25H], bp                      ; 10017047 _ 66: 39. 68, 25
        jnz     ?_2605                                  ; 1001704B _ 75, 79
        mov     cl, 1                                   ; 1001704D _ B1, 01
?_2600: mov     dx, word [?_5385]                       ; 1001704F _ 66: 8B. 15, 10030B8E(d)
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, 32767                               ; 10017056 _ 66: 81. FA, 7FFF
        jz      ?_2601                                  ; 1001705B _ 74, 08
        cmp     word [eax+27H], dx                      ; 1001705D _ 66: 39. 50, 27
        jnz     ?_2605                                  ; 10017061 _ 75, 63
        mov     cl, 1                                   ; 10017063 _ B1, 01
?_2601: cmp     bl, -1                                  ; 10017065 _ 80. FB, FF
        jz      ?_2602                                  ; 10017068 _ 74, 27
        xor     edx, edx                                ; 1001706A _ 33. D2
        mov     ebp, dword [?_5668]                     ; 1001706C _ 8B. 2D, 100A8C30(d)
        mov     dl, byte [eax]                          ; 10017072 _ 8A. 10
        add     ebp, edx                                ; 10017074 _ 03. EA
        lea     ecx, [edx+edx*2]                        ; 10017076 _ 8D. 0C 52
        shl     ecx, 4                                  ; 10017079 _ C1. E1, 04
        add     ecx, edx                                ; 1001707C _ 03. CA
        lea     ecx, [ecx+ecx*2]                        ; 1001707E _ 8D. 0C 49
        mov     dl, byte [ebp+ecx*4]                    ; 10017081 _ 8A. 54 8D, 00
        mov     bp, word [?_5384]                       ; 10017085 _ 66: 8B. 2D, 10030B8C(d)
        cmp     dl, bl                                  ; 1001708C _ 3A. D3
        sete    cl                                      ; 1001708E _ 0F 94. C1
?_2602: mov     edx, dword [?_5538]                     ; 10017091 _ 8B. 15, 1003544C(d)
        inc     edx                                     ; 10017097 _ 42
        test    cl, cl                                  ; 10017098 _ 84. C9
        mov     dword [?_5538], edx                     ; 1001709A _ 89. 15, 1003544C(d)
        jnz     ?_2604                                  ; 100170A0 _ 75, 13
?_2603: add     eax, 169                                ; 100170A2 _ 05, 000000A9
        cmp     eax, esi                                ; 100170A7 _ 3B. C6
        mov     dword [?_5545], eax                     ; 100170A9 _ A3, 10035464(d)
        jnc     ?_2607                                  ; 100170AE _ 73, 1E
        cmp     byte [eax], 0                           ; 100170B0 _ 80. 38, 00
        jz      ?_2603                                  ; 100170B3 _ 74, ED
?_2604: cmp     eax, esi                                ; 100170B5 _ 3B. C6
        jnc     ?_2606                                  ; 100170B7 _ 73, 11
        test    cl, cl                                  ; 100170B9 _ 84. C9
        je      ?_2596                                  ; 100170BB _ 0F 84, FFFFFF4E
        pop     edi                                     ; 100170C1 _ 5F
        pop     ebp                                     ; 100170C2 _ 5D
        pop     ebx                                     ; 100170C3 _ 5B
        pop     esi                                     ; 100170C4 _ 5E
        ret                                             ; 100170C5 _ C3

?_2605: xor     cl, cl                                  ; 100170C6 _ 32. C9
        jmp     ?_2602                                  ; 100170C8 _ EB, C7

?_2606: test    cl, cl                                  ; 100170CA _ 84. C9
        jnz     ?_2608                                  ; 100170CC _ 75, 07
?_2607: xor     eax, eax                                ; 100170CE _ 33. C0
        mov     dword [?_5545], eax                     ; 100170D0 _ A3, 10035464(d)
?_2608: pop     edi                                     ; 100170D5 _ 5F
        pop     ebp                                     ; 100170D6 _ 5D
        pop     ebx                                     ; 100170D7 _ 5B
        pop     esi                                     ; 100170D8 _ 5E
        ret                                             ; 100170D9 _ C3

        nop                                             ; 100170DA _ 90
        nop                                             ; 100170DB _ 90
        nop                                             ; 100170DC _ 90
        nop                                             ; 100170DD _ 90
        nop                                             ; 100170DE _ 90
        nop                                             ; 100170DF _ 90

