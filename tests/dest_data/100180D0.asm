; ---- 100180D0 ----
?_2765: ; Local function
        push    esi                                     ; 100180D0 _ 56
        push    edi                                     ; 100180D1 _ 57
        xor     esi, esi                                ; 100180D2 _ 33. F6
?_2766: push    2                                       ; 100180D4 _ 6A, 02
        push    esi                                     ; 100180D6 _ 56
        call    ?_2757                                  ; 100180D7 _ E8, FFFFFED4
        add     esp, 8                                  ; 100180DC _ 83. C4, 08
        inc     esi                                     ; 100180DF _ 46
        cmp     esi, 768                                ; 100180E0 _ 81. FE, 00000300
        jl      ?_2766                                  ; 100180E6 _ 7C, EC
        mov     edx, ?_5656                             ; 100180E8 _ BA, 1009ACA0(d)
?_2767: mov     ecx, 43                                 ; 100180ED _ B9, 0000002B
        xor     eax, eax                                ; 100180F2 _ 33. C0
        mov     edi, edx                                ; 100180F4 _ 8B. FA
        add     edx, 172                                ; 100180F6 _ 81. C2, 000000AC
        rep stosd                                       ; 100180FC _ F3: AB
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx-0ACH], -1                     ; 100180FE _ 66: C7. 82, FFFFFF54, FFFF
        cmp     edx, ?_5663                             ; 10018107 _ 81. FA, 1009B760(d)
        jl      ?_2767                                  ; 1001810D _ 7C, DE
        pop     edi                                     ; 1001810F _ 5F
        mov     dword [?_5531], eax                     ; 10018110 _ A3, 10035434(d)
        mov     dword [?_5529], eax                     ; 10018115 _ A3, 1003542C(d)
        mov     dword [?_5530], eax                     ; 1001811A _ A3, 10035430(d)
        pop     esi                                     ; 1001811F _ 5E
        ret                                             ; 10018120 _ C3

        nop                                             ; 10018121 _ 90
        nop                                             ; 10018122 _ 90
        nop                                             ; 10018123 _ 90
        nop                                             ; 10018124 _ 90
        nop                                             ; 10018125 _ 90
        nop                                             ; 10018126 _ 90
        nop                                             ; 10018127 _ 90
        nop                                             ; 10018128 _ 90
        nop                                             ; 10018129 _ 90
        nop                                             ; 1001812A _ 90
        nop                                             ; 1001812B _ 90
        nop                                             ; 1001812C _ 90
        nop                                             ; 1001812D _ 90
        nop                                             ; 1001812E _ 90
        nop                                             ; 1001812F _ 90
?_2768: mov     eax, dword [esp+4H]                     ; 10018130 _ 8B. 44 24, 04
        push    eax                                     ; 10018134 _ 50
        call    ?_2778                                  ; 10018135 _ E8, 000000C6
        add     esp, 4                                  ; 1001813A _ 83. C4, 04
        cmp     eax, 10                                 ; 1001813D _ 83. F8, 0A
        jl      ?_2769                                  ; 10018140 _ 7C, 08
        cmp     eax, 14                                 ; 10018142 _ 83. F8, 0E
        jg      ?_2769                                  ; 10018145 _ 7F, 03
        xor     eax, eax                                ; 10018147 _ 33. C0
        ret                                             ; 10018149 _ C3

