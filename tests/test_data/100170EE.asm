; ---- 100170EE ----
?_2610: ; Local function
        mov     eax, 32767                              ; 100170EE _ B8, 00007FFF
        mov     cl, -1                                  ; 100170F3 _ B1, FF
        mov     word [?_5384], ax                       ; 100170F5 _ 66: A3, 10030B8C(d)
        mov     word [?_5385], ax                       ; 100170FB _ 66: A3, 10030B8E(d)
        mov     eax, dword [esp+4H]                     ; 10017101 _ 8B. 44 24, 04
        mov     byte [?_5382], cl                       ; 10017105 _ 88. 0D, 10030B84(d)
        cmp     eax, edx                                ; 1001710B _ 3B. C2
        mov     dword [?_5383], -1                      ; 1001710D _ C7. 05, 10030B88(d), FFFFFFFF
        mov     dword [?_5535], edx                     ; 10017117 _ 89. 15, 10035444(d)
        mov     byte [?_5386], cl                       ; 1001711D _ 88. 0D, 10030B90(d)
        mov     byte [?_5537], 1                        ; 10017123 _ C6. 05, 10035449(d), 01
        mov     dword [?_5538], edx                     ; 1001712A _ 89. 15, 1003544C(d)
        mov     byte [?_5536], dl                       ; 10017130 _ 88. 15, 10035448(d)
        jle     ?_2620                                  ; 10017136 _ 0F 8E, 0000009E
        push    ebp                                     ; 1001713C _ 55
        push    esi                                     ; 1001713D _ 56
        push    edi                                     ; 1001713E _ 57
        lea     edx, [esp+10H]                          ; 1001713F _ 8D. 54 24, 10
        mov     ebp, eax                                ; 10017143 _ 8B. E8
?_2611: add     edx, 4                                  ; 10017145 _ 83. C2, 04
        xor     eax, eax                                ; 10017148 _ 33. C0
        mov     al, byte [edx]                          ; 1001714A _ 8A. 02
        cmp     eax, 6                                  ; 1001714C _ 83. F8, 06
        ja      ?_2619                                  ; 1001714F _ 77, 7F
        jmp     near [?_2621+eax*4]                     ; 10017151 _ FF. 24 85, 100171EC(d)

?_2612: mov     al, byte [edx+4H]                       ; 10017158 _ 8A. 42, 04
        add     edx, 4                                  ; 1001715B _ 83. C2, 04
        mov     byte [?_5382], al                       ; 1001715E _ A2, 10030B84(d)
        jmp     ?_2619                                  ; 10017163 _ EB, 6B

?_2613: mov     ecx, dword [edx+4H]                     ; 10017165 _ 8B. 4A, 04
        add     edx, 4                                  ; 10017168 _ 83. C2, 04
        mov     dword [?_5383], ecx                     ; 1001716B _ 89. 0D, 10030B88(d)
        jmp     ?_2619                                  ; 10017171 _ EB, 5D

?_2614: mov     edi, dword [edx+4H]                     ; 10017173 _ 8B. 7A, 04
        add     edx, 4                                  ; 10017176 _ 83. C2, 04
        or      ecx, 0FFFFFFFFH                         ; 10017179 _ 83. C9, FF
        xor     eax, eax                                ; 1001717C _ 33. C0
        repne scasb                                     ; 1001717E _ F2: AE
        not     ecx                                     ; 10017180 _ F7. D1
        sub     edi, ecx                                ; 10017182 _ 2B. F9
        mov     eax, ecx                                ; 10017184 _ 8B. C1
        mov     esi, edi                                ; 10017186 _ 8B. F7
        mov     edi, dword [?_5535]                     ; 10017188 _ 8B. 3D, 10035444(d)
        shr     ecx, 2                                  ; 1001718E _ C1. E9, 02
        rep movsd                                       ; 10017191 _ F3: A5
        mov     ecx, eax                                ; 10017193 _ 8B. C8
        and     ecx, 03H                                ; 10017195 _ 83. E1, 03
        rep movsb                                       ; 10017198 _ F3: A4
        jmp     ?_2619                                  ; 1001719A _ EB, 34

?_2615: mov     cx, word [edx+4H]                       ; 1001719C _ 66: 8B. 4A, 04
        add     edx, 4                                  ; 100171A0 _ 83. C2, 04
        mov     word [?_5384], cx                       ; 100171A3 _ 66: 89. 0D, 10030B8C(d)
        jmp     ?_2619                                  ; 100171AA _ EB, 24

?_2616: mov     ax, word [edx+4H]                       ; 100171AC _ 66: 8B. 42, 04
        add     edx, 4                                  ; 100171B0 _ 83. C2, 04
        mov     word [?_5385], ax                       ; 100171B3 _ 66: A3, 10030B8E(d)
        jmp     ?_2619                                  ; 100171B9 _ EB, 15

?_2617: mov     cl, byte [edx+4H]                       ; 100171BB _ 8A. 4A, 04
        add     edx, 4                                  ; 100171BE _ 83. C2, 04
        mov     byte [?_5386], cl                       ; 100171C1 _ 88. 0D, 10030B90(d)
        jmp     ?_2619                                  ; 100171C7 _ EB, 07

?_2618: mov     byte [?_5536], 1                        ; 100171C9 _ C6. 05, 10035448(d), 01
?_2619: dec     ebp                                     ; 100171D0 _ 4D
        jne     ?_2611                                  ; 100171D1 _ 0F 85, FFFFFF6E
        pop     edi                                     ; 100171D7 _ 5F
        pop     esi                                     ; 100171D8 _ 5E
        pop     ebp                                     ; 100171D9 _ 5D
?_2620: mov     edx, dword [?_5690]                     ; 100171DA _ 8B. 15, 1014D8C0(d)
        mov     dword [?_5545], edx                     ; 100171E0 _ 89. 15, 10035464(d)
        jmp     ?_2587                                  ; 100171E6 _ E9, FFFFFD95

        nop                                             ; 100171EB _ 90

?_2621:                                                 ; switch/case jump table
        dd ?_2612                                       ; 100171EC _ 10017158 (d)
        dd ?_2613                                       ; 100171F0 _ 10017165 (d)
        dd ?_2614                                       ; 100171F4 _ 10017173 (d)
        dd ?_2615                                       ; 100171F8 _ 1001719C (d)
        dd ?_2616                                       ; 100171FC _ 100171AC (d)
        dd ?_2617                                       ; 10017200 _ 100171BB (d)
        dd ?_2618                                       ; 10017204 _ 100171C9 (d)

; Filling space: 8H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H

ALIGN   16
?_2622: mov     eax, dword [?_5690]                     ; 10017210 _ A1, 1014D8C0(d)
        lea     ecx, [eax+0A900H]                       ; 10017215 _ 8D. 88, 0000A900
        cmp     eax, ecx                                ; 1001721B _ 3B. C1
        jnc     ?_2625                                  ; 1001721D _ 73, 15
?_2623: cmp     byte [eax], 0                           ; 1001721F _ 80. 38, 00
        jz      ?_2624                                  ; 10017222 _ 74, 0C
        add     eax, 169                                ; 10017224 _ 05, 000000A9
        cmp     eax, ecx                                ; 10017229 _ 3B. C1
        jc      ?_2623                                  ; 1001722B _ 72, F2
        xor     eax, eax                                ; 1001722D _ 33. C0
        ret                                             ; 1001722F _ C3

?_2624: cmp     eax, ecx                                ; 10017230 _ 3B. C1
        jc      ?_2626                                  ; 10017232 _ 72, 02
?_2625: xor     eax, eax                                ; 10017234 _ 33. C0
?_2626: ret                                             ; 10017236 _ C3

        nop                                             ; 10017237 _ 90
        nop                                             ; 10017238 _ 90
        nop                                             ; 10017239 _ 90
        nop                                             ; 1001723A _ 90
        nop                                             ; 1001723B _ 90
        nop                                             ; 1001723C _ 90
        nop                                             ; 1001723D _ 90
        nop                                             ; 1001723E _ 90
        nop                                             ; 1001723F _ 90
