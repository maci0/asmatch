; ---- 1001816C ----
?_2772: ; Local function
        mov     eax, 2                                  ; 1001816C _ B8, 00000002
        ret                                             ; 10018171 _ C3

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4

?_2773:                                                 ; switch/case jump table
        dd ?_2771                                       ; 10018174 _ 10018169 (d)
        dd ?_2772                                       ; 10018178 _ 1001816C (d)

?_2774: db 00H, 00H, 00H, 00H, 01H, 01H, 00H, 00H       ; 1001817C _ ........
        db 00H, 00H, 00H, 00H, 01H, 01H, 00H, 00H       ; 10018184 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 1001818C _ ........
        db 01H, 01H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10018194 _ ........
        db 90H, 90H, 90H, 90H                           ; 1001819C _ ....
?_2775: mov     eax, dword [esp+4H]                     ; 100181A0 _ 8B. 44 24, 04
        push    esi                                     ; 100181A4 _ 56
        push    edi                                     ; 100181A5 _ 57
        lea     eax, [eax+eax*2]                        ; 100181A6 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100181A9 _ 8D. 04 80
        lea     esi, [eax+eax*8]                        ; 100181AC _ 8D. 34 C0
        xor     eax, eax                                ; 100181AF _ 33. C0
        shl     esi, 2                                  ; 100181B1 _ C1. E6, 02
        mov     al, byte [?_5646+esi]                   ; 100181B4 _ 8A. 86, 10035A04(d)
        push    eax                                     ; 100181BA _ 50
        call    ?_2778                                  ; 100181BB _ E8, 00000040
        mov     edi, dword [esp+14H]                    ; 100181C0 _ 8B. 7C 24, 14
        add     esp, 4                                  ; 100181C4 _ 83. C4, 04
        cmp     eax, edi                                ; 100181C7 _ 3B. C7
        jnz     ?_2776                                  ; 100181C9 _ 75, 0B
        xor     eax, eax                                ; 100181CB _ 33. C0
        pop     edi                                     ; 100181CD _ 5F
        mov     al, byte [?_5646+esi]                   ; 100181CE _ 8A. 86, 10035A04(d)
        pop     esi                                     ; 100181D4 _ 5E
        ret                                             ; 100181D5 _ C3

?_2776: lea     ecx, [?_5632+esi]                       ; 100181D6 _ 8D. 8E, 100358A0(d)
        push    ecx                                     ; 100181DC _ 51
        call    ?_2821                                  ; 100181DD _ E8, 000002FE
        add     esp, 4                                  ; 100181E2 _ 83. C4, 04
        test    eax, eax                                ; 100181E5 _ 85. C0
        jnz     ?_2777                                  ; 100181E7 _ 75, 03
        pop     edi                                     ; 100181E9 _ 5F
        pop     esi                                     ; 100181EA _ 5E
        ret                                             ; 100181EB _ C3

?_2777: xor     edx, edx                                ; 100181EC _ 33. D2
        mov     dl, byte [eax+edi+74H]                  ; 100181EE _ 8A. 54 38, 74
        pop     edi                                     ; 100181F2 _ 5F
        mov     eax, edx                                ; 100181F3 _ 8B. C2
        pop     esi                                     ; 100181F5 _ 5E
        ret                                             ; 100181F6 _ C3

; Filling space: 9H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H
;       db 90H

ALIGN   16
?_2778: mov     eax, dword [esp+4H]                     ; 10018200 _ 8B. 44 24, 04
        cmp     eax, 94                                 ; 10018204 _ 83. F8, 5E
        ja      ?_2795                                  ; 10018207 _ 77, 6F
        xor     ecx, ecx                                ; 10018209 _ 33. C9
        mov     cl, byte [?_2797+eax]                   ; 1001820B _ 8A. 88, 100182C4(d)
        jmp     near [?_2796+ecx*4]                     ; 10018211 _ FF. 24 8D, 1001827C(d)

?_2779: mov     eax, 11                                 ; 10018218 _ B8, 0000000B
        ret                                             ; 1001821D _ C3

?_2780: mov     eax, 9                                  ; 1001821E _ B8, 00000009
        ret                                             ; 10018223 _ C3

?_2781: mov     eax, 7                                  ; 10018224 _ B8, 00000007
        ret                                             ; 10018229 _ C3

?_2782: mov     eax, 6                                  ; 1001822A _ B8, 00000006
        ret                                             ; 1001822F _ C3

?_2783: mov     eax, 8                                  ; 10018230 _ B8, 00000008
        ret                                             ; 10018235 _ C3

?_2784: mov     eax, 16                                 ; 10018236 _ B8, 00000010
        ret                                             ; 1001823B _ C3

?_2785: mov     eax, 5                                  ; 1001823C _ B8, 00000005
        ret                                             ; 10018241 _ C3

?_2786: mov     eax, 12                                 ; 10018242 _ B8, 0000000C
        ret                                             ; 10018247 _ C3

?_2787: mov     eax, 1                                  ; 10018248 _ B8, 00000001
        ret                                             ; 1001824D _ C3

?_2788: mov     eax, 10                                 ; 1001824E _ B8, 0000000A
        ret                                             ; 10018253 _ C3

?_2789: mov     eax, 2                                  ; 10018254 _ B8, 00000002
        ret                                             ; 10018259 _ C3

?_2790: mov     eax, 3                                  ; 1001825A _ B8, 00000003
        ret                                             ; 1001825F _ C3

?_2791: mov     eax, 4                                  ; 10018260 _ B8, 00000004
        ret                                             ; 10018265 _ C3

?_2792: mov     eax, 13                                 ; 10018266 _ B8, 0000000D
        ret                                             ; 1001826B _ C3

?_2793: mov     eax, 15                                 ; 1001826C _ B8, 0000000F
        ret                                             ; 10018271 _ C3

?_2794: mov     eax, 14                                 ; 10018272 _ B8, 0000000E
        ret                                             ; 10018277 _ C3

