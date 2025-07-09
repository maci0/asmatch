; ---- 10017FB0 ----
?_2757: ; Local function
        sub     esp, 516                                ; 10017FB0 _ 81. EC, 00000204
        mov     eax, dword [esp+208H]                   ; 10017FB6 _ 8B. 84 24, 00000208
        push    ebx                                     ; 10017FBD _ 53
        push    ebp                                     ; 10017FBE _ 55
        push    esi                                     ; 10017FBF _ 56
        lea     eax, [eax+eax*2]                        ; 10017FC0 _ 8D. 04 40
        push    edi                                     ; 10017FC3 _ 57
        mov     bl, 15                                  ; 10017FC4 _ B3, 0F
        lea     eax, [eax+eax*4]                        ; 10017FC6 _ 8D. 04 80
        lea     ebp, [eax+eax*8]                        ; 10017FC9 _ 8D. 2C C0
        shl     ebp, 2                                  ; 10017FCC _ C1. E5, 02
        mov     al, byte [?_5633+ebp]                   ; 10017FCF _ 8A. 85, 100358A2(d)
        mov     edi, dword [?_5634+ebp]                 ; 10017FD5 _ 8B. BD, 100358A4(d)
        lea     esi, [?_5632+ebp]                       ; 10017FDB _ 8D. B5, 100358A0(d)
        cmp     al, bl                                  ; 10017FE1 _ 3A. C3
        mov     dword [esp+10H], edi                    ; 10017FE3 _ 89. 7C 24, 10
        jz      ?_2758                                  ; 10017FE7 _ 74, 1A
        mov     byte [esi+8H], 0                        ; 10017FE9 _ C6. 46, 08, 00
        mov     ax, word [?_5628]                       ; 10017FED _ 66: A1, 10035880(d)
        push    esi                                     ; 10017FF3 _ 56
        mov     word [esi+28H], ax                      ; 10017FF4 _ 66: 89. 46, 28
        call    ?_2755                                  ; 10017FF8 _ E8, FFFFFF93
        add     esp, 4                                  ; 10017FFD _ 83. C4, 04
        mov     byte [esi+2H], bl                       ; 10018000 _ 88. 5E, 02
?_2758: lea     ecx, [esi+178H]                         ; 10018003 _ 8D. 8E, 00000178
        push    ecx                                     ; 10018009 _ 51
        call    ?_2520                                  ; 1001800A _ E8, FFFFE701
        mov     ebx, dword [esp+220H]                   ; 1001800F _ 8B. 9C 24, 00000220
        add     esp, 4                                  ; 10018016 _ 83. C4, 04
        test    ebx, ebx                                ; 10018019 _ 85. DB
        je      ?_2763                                  ; 1001801B _ 0F 84, 00000087
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [esi], -1                          ; 10018021 _ 66: 81. 3E, FFFF
        jz      ?_2759                                  ; 10018026 _ 74, 06
        dec     dword [?_5531]                          ; 10018028 _ FF. 0D, 10035434(d)
?_2759: mov     edx, ?_5643                             ; 1001802E _ BA, 100358FC(d)
?_2760: mov     eax, edx                                ; 10018033 _ 8B. C2
        mov     ecx, 8                                  ; 10018035 _ B9, 00000008
?_2761: mov     edi, dword [eax]                        ; 1001803A _ 8B. 38
        cmp     edi, dword [esi+4H]                     ; 1001803C _ 3B. 7E, 04
        jnz     ?_2762                                  ; 1001803F _ 75, 06
        mov     dword [eax], -1                         ; 10018041 _ C7. 00, FFFFFFFF
?_2762: add     eax, 4                                  ; 10018047 _ 83. C0, 04
        dec     ecx                                     ; 1001804A _ 49
        jnz     ?_2761                                  ; 1001804B _ 75, ED
        add     edx, 540                                ; 1001804D _ 81. C2, 0000021C
        cmp     edx, ?_5659                             ; 10018053 _ 81. FA, 1009ACFC(d)
        jl      ?_2760                                  ; 10018059 _ 7C, D8
        mov     ecx, 135                                ; 1001805B _ B9, 00000087
        xor     eax, eax                                ; 10018060 _ 33. C0
        mov     edi, esi                                ; 10018062 _ 8B. FE
        rep stosd                                       ; 10018064 _ F3: AB
        or      eax, 0FFFFFFFFH                         ; 10018066 _ 83. C8, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi], -1                          ; 10018069 _ 66: C7. 06, FFFF
        lea     edi, [?_5643+ebp]                       ; 1001806E _ 8D. BD, 100358FC(d)
        mov     ecx, 8                                  ; 10018074 _ B9, 00000008
        mov     dword [?_5634+ebp], eax                 ; 10018079 _ 89. 85, 100358A4(d)
        cmp     ebx, 1                                  ; 1001807F _ 83. FB, 01
        rep stosd                                       ; 10018082 _ F3: AB
        jnz     ?_2764                                  ; 10018084 _ 75, 35
        mov     edx, dword [esp+10H]                    ; 10018086 _ 8B. 54 24, 10
        lea     eax, [esp+14H]                          ; 1001808A _ 8D. 44 24, 14
        push    edx                                     ; 1001808E _ 52
        push    ?_5434                                  ; 1001808F _ 68, 10031538(d)
        push    eax                                     ; 10018094 _ 50
        call    ?_3039                                  ; 10018095 _ E8, 000021FF
        add     esp, 12                                 ; 1001809A _ 83. C4, 0C
        pop     edi                                     ; 1001809D _ 5F
        pop     esi                                     ; 1001809E _ 5E
        pop     ebp                                     ; 1001809F _ 5D
        pop     ebx                                     ; 100180A0 _ 5B
        add     esp, 516                                ; 100180A1 _ 81. C4, 00000204
        ret                                             ; 100180A7 _ C3

?_2763: push    edi                                     ; 100180A8 _ 57
        lea     ecx, [esp+18H]                          ; 100180A9 _ 8D. 4C 24, 18
        push    ?_5433                                  ; 100180AD _ 68, 10031500(d)
        push    ecx                                     ; 100180B2 _ 51
        call    ?_3039                                  ; 100180B3 _ E8, 000021E1
        add     esp, 12                                 ; 100180B8 _ 83. C4, 0C
?_2764: pop     edi                                     ; 100180BB _ 5F
        pop     esi                                     ; 100180BC _ 5E
        pop     ebp                                     ; 100180BD _ 5D
        pop     ebx                                     ; 100180BE _ 5B
        add     esp, 516                                ; 100180BF _ 81. C4, 00000204
        ret                                             ; 100180C5 _ C3

        nop                                             ; 100180C6 _ 90
        nop                                             ; 100180C7 _ 90
        nop                                             ; 100180C8 _ 90
        nop                                             ; 100180C9 _ 90
        nop                                             ; 100180CA _ 90
        nop                                             ; 100180CB _ 90
        nop                                             ; 100180CC _ 90
        nop                                             ; 100180CD _ 90
        nop                                             ; 100180CE _ 90
        nop                                             ; 100180CF _ 90
