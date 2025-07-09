; ---- 10022FF1 ----
?_4781: ; Local function
        push    ebp                                     ; 10022FF1 _ 55
        mov     ebp, esp                                ; 10022FF2 _ 8B. EC
        sub     esp, 36                                 ; 10022FF4 _ 83. EC, 24
        push    ebx                                     ; 10022FF7 _ 53
        mov     ebx, dword [ebp+0CH]                    ; 10022FF8 _ 8B. 5D, 0C
        push    esi                                     ; 10022FFB _ 56
        mov     esi, dword [ebp+8H]                     ; 10022FFC _ 8B. 75, 08
        mov     cx, word [ebx+0AH]                      ; 10022FFF _ 66: 8B. 4B, 0A
        xor     eax, eax                                ; 10023003 _ 33. C0
        push    edi                                     ; 10023005 _ 57
        mov     dword [ebp-14H], eax                    ; 10023006 _ 89. 45, EC
        mov     dword [ebp-24H], eax                    ; 10023009 _ 89. 45, DC
        mov     dword [ebp-20H], eax                    ; 1002300C _ 89. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1002300F _ 89. 45, E4
        mov     ax, word [esi+0AH]                      ; 10023012 _ 66: 8B. 46, 0A
        mov     edi, ecx                                ; 10023016 _ 8B. F9
        mov     edx, 32767                              ; 10023018 _ BA, 00007FFF
        xor     edi, eax                                ; 1002301D _ 33. F8
        and     eax, edx                                ; 1002301F _ 23. C2
        and     ecx, edx                                ; 10023021 _ 23. CA
        and     edi, 8000H                              ; 10023023 _ 81. E7, 00008000
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 32767                               ; 10023029 _ 66: 3D, 7FFF
        lea     edx, [ecx+eax]                          ; 1002302D _ 8D. 14 01
        mov     dword [ebp+8H], edx                     ; 10023030 _ 89. 55, 08
        jnc     ?_4803                                  ; 10023033 _ 0F 83, 000001B8
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, 32767                               ; 10023039 _ 66: 81. F9, 7FFF
        jnc     ?_4803                                  ; 1002303E _ 0F 83, 000001AD
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, -16387                              ; 10023044 _ 66: 81. FA, BFFD
        ja      ?_4803                                  ; 10023049 _ 0F 87, 000001A2
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, 16319                               ; 1002304F _ 66: 81. FA, 3FBF
        ja      ?_4782                                  ; 10023054 _ 77, 04
        xor     eax, eax                                ; 10023056 _ 33. C0
        jmp     ?_4785                                  ; 10023058 _ EB, 3A

?_4782: test    ax, ax                                  ; 1002305A _ 66: 85. C0
        mov     edx, 2147483647                         ; 1002305D _ BA, 7FFFFFFF
        jnz     ?_4783                                  ; 10023062 _ 75, 18
        inc     dword [ebp+8H]                          ; 10023064 _ FF. 45, 08
        test    dword [esi+8H], edx                     ; 10023067 _ 85. 56, 08
        jnz     ?_4783                                  ; 1002306A _ 75, 10
        xor     eax, eax                                ; 1002306C _ 33. C0
        cmp     dword [esi+4H], eax                     ; 1002306E _ 39. 46, 04
        jnz     ?_4784                                  ; 10023071 _ 75, 0B
        cmp     dword [esi], eax                        ; 10023073 _ 39. 06
        jnz     ?_4784                                  ; 10023075 _ 75, 07
        jmp     ?_4802                                  ; 10023077 _ E9, 0000016F

?_4783: xor     eax, eax                                ; 1002307C _ 33. C0
?_4784: cmp     cx, ax                                  ; 1002307E _ 66: 3B. C8
        jnz     ?_4786                                  ; 10023081 _ 75, 1E
        inc     dword [ebp+8H]                          ; 10023083 _ FF. 45, 08
        test    dword [ebx+8H], edx                     ; 10023086 _ 85. 53, 08
        jnz     ?_4786                                  ; 10023089 _ 75, 16
        cmp     dword [ebx+4H], eax                     ; 1002308B _ 39. 43, 04
        jnz     ?_4786                                  ; 1002308E _ 75, 11
        cmp     dword [ebx], eax                        ; 10023090 _ 39. 03
        jnz     ?_4786                                  ; 10023092 _ 75, 0D
?_4785: mov     dword [esi+8H], eax                     ; 10023094 _ 89. 46, 08
        mov     dword [esi+4H], eax                     ; 10023097 _ 89. 46, 04
        mov     dword [esi], eax                        ; 1002309A _ 89. 06
        jmp     ?_4804                                  ; 1002309C _ E9, 0000016B

?_4786: mov     dword [ebp-10H], eax                    ; 100230A1 _ 89. 45, F0
        lea     eax, [ebp-20H]                          ; 100230A4 _ 8D. 45, E0
        mov     dword [ebp-4H], eax                     ; 100230A7 _ 89. 45, FC
        mov     dword [ebp+0CH], 5                      ; 100230AA _ C7. 45, 0C, 00000005
?_4787: mov     eax, dword [ebp-10H]                    ; 100230B1 _ 8B. 45, F0
        add     eax, eax                                ; 100230B4 _ 03. C0
        cmp     dword [ebp+0CH], 0                      ; 100230B6 _ 83. 7D, 0C, 00
        jle     ?_4790                                  ; 100230BA _ 7E, 49
        add     eax, esi                                ; 100230BC _ 03. C6
        lea     ecx, [ebx+8H]                           ; 100230BE _ 8D. 4B, 08
        mov     dword [ebp-8H], eax                     ; 100230C1 _ 89. 45, F8
        mov     eax, dword [ebp+0CH]                    ; 100230C4 _ 8B. 45, 0C
        mov     dword [ebp-0CH], ecx                    ; 100230C7 _ 89. 4D, F4
        mov     dword [ebp-18H], eax                    ; 100230CA _ 89. 45, E8
?_4788: mov     eax, dword [ebp-8H]                     ; 100230CD _ 8B. 45, F8
        mov     ecx, dword [ebp-0CH]                    ; 100230D0 _ 8B. 4D, F4
        movzx   eax, word [eax]                         ; 100230D3 _ 0F B7. 00
        movzx   ecx, word [ecx]                         ; 100230D6 _ 0F B7. 09
        imul    eax, ecx                                ; 100230D9 _ 0F AF. C1
        mov     ecx, dword [ebp-4H]                     ; 100230DC _ 8B. 4D, FC
        add     ecx, -4                                 ; 100230DF _ 83. C1, FC
        push    ecx                                     ; 100230E2 _ 51
        push    eax                                     ; 100230E3 _ 50
        push    dword [ecx]                             ; 100230E4 _ FF. 31
        call    ?_4612                                  ; 100230E6 _ E8, FFFFF2D2
        add     esp, 12                                 ; 100230EB _ 83. C4, 0C
        test    eax, eax                                ; 100230EE _ 85. C0
        jz      ?_4789                                  ; 100230F0 _ 74, 06
        mov     eax, dword [ebp-4H]                     ; 100230F2 _ 8B. 45, FC
        inc     word [eax]                              ; 100230F5 _ 66: FF. 00
?_4789: add     dword [ebp-8H], 2                       ; 100230F8 _ 83. 45, F8, 02
        sub     dword [ebp-0CH], 2                      ; 100230FC _ 83. 6D, F4, 02
        dec     dword [ebp-18H]                         ; 10023100 _ FF. 4D, E8
        jnz     ?_4788                                  ; 10023103 _ 75, C8
?_4790: add     dword [ebp-4H], 2                       ; 10023105 _ 83. 45, FC, 02
        inc     dword [ebp-10H]                         ; 10023109 _ FF. 45, F0
        dec     dword [ebp+0CH]                         ; 1002310C _ FF. 4D, 0C
        cmp     dword [ebp+0CH], 0                      ; 1002310F _ 83. 7D, 0C, 00
        jg      ?_4787                                  ; 10023113 _ 7F, 9C
        add     dword [ebp+8H], 49154                   ; 10023115 _ 81. 45, 08, 0000C002
        cmp     word [ebp+8H], 0                        ; 1002311C _ 66: 83. 7D, 08, 00
        jle     ?_4793                                  ; 10023121 _ 7E, 25
?_4791: test    byte [ebp-19H], 0FFFFFF80H              ; 10023123 _ F6. 45, E7, 80
        jnz     ?_4792                                  ; 10023127 _ 75, 18
        lea     eax, [ebp-24H]                          ; 10023129 _ 8D. 45, DC
        push    eax                                     ; 1002312C _ 50
        call    ?_4618                                  ; 1002312D _ E8, FFFFF30A
        add     dword [ebp+8H], 65535                   ; 10023132 _ 81. 45, 08, 0000FFFF
        pop     ecx                                     ; 10023139 _ 59
        cmp     word [ebp+8H], 0                        ; 1002313A _ 66: 83. 7D, 08, 00
        jg      ?_4791                                  ; 1002313F _ 7F, E2
?_4792: cmp     word [ebp+8H], 0                        ; 10023141 _ 66: 83. 7D, 08, 00
        jg      ?_4796                                  ; 10023146 _ 7F, 39
?_4793: add     dword [ebp+8H], 65535                   ; 10023148 _ 81. 45, 08, 0000FFFF
        cmp     word [ebp+8H], 0                        ; 1002314F _ 66: 83. 7D, 08, 00
        jge     ?_4796                                  ; 10023154 _ 7D, 2B
        movsx   eax, word [ebp+8H]                      ; 10023156 _ 0F BF. 45, 08
        neg     eax                                     ; 1002315A _ F7. D8
        add     dword [ebp+8H], eax                     ; 1002315C _ 01. 45, 08
        mov     ebx, eax                                ; 1002315F _ 8B. D8
?_4794: test    byte [ebp-24H], 01H                     ; 10023161 _ F6. 45, DC, 01
        jz      ?_4795                                  ; 10023165 _ 74, 03
        inc     dword [ebp-14H]                         ; 10023167 _ FF. 45, EC
?_4795: lea     eax, [ebp-24H]                          ; 1002316A _ 8D. 45, DC
        push    eax                                     ; 1002316D _ 50
        call    ?_4619                                  ; 1002316E _ E8, FFFFF2F7
        dec     ebx                                     ; 10023173 _ 4B
        pop     ecx                                     ; 10023174 _ 59
        jnz     ?_4794                                  ; 10023175 _ 75, EA
        cmp     dword [ebp-14H], 0                      ; 10023177 _ 83. 7D, EC, 00
        jz      ?_4796                                  ; 1002317B _ 74, 04
        or      byte [ebp-24H], 01H                     ; 1002317D _ 80. 4D, DC, 01
?_4796:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebp-24H], -32768                  ; 10023181 _ 66: 81. 7D, DC, 8000
        ja      ?_4797                                  ; 10023187 _ 77, 0F
        mov     eax, dword [ebp-24H]                    ; 10023189 _ 8B. 45, DC
        and     eax, 1FFFFH                             ; 1002318C _ 25, 0001FFFF
        cmp     eax, 98304                              ; 10023191 _ 3D, 00018000
        jnz     ?_4801                                  ; 10023196 _ 75, 35
?_4797: cmp     dword [ebp-22H], -1                     ; 10023198 _ 83. 7D, DE, FF
        jnz     ?_4800                                  ; 1002319C _ 75, 2C
        and     dword [ebp-22H], 00H                    ; 1002319E _ 83. 65, DE, 00
        cmp     dword [ebp-1EH], -1                     ; 100231A2 _ 83. 7D, E2, FF
        jnz     ?_4799                                  ; 100231A6 _ 75, 1D
        and     dword [ebp-1EH], 00H                    ; 100231A8 _ 83. 65, E2, 00
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebp-1AH], -1                      ; 100231AC _ 66: 81. 7D, E6, FFFF
        jnz     ?_4798                                  ; 100231B2 _ 75, 0B
        inc     dword [ebp+8H]                          ; 100231B4 _ FF. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp-1AH], -32768                  ; 100231B7 _ 66: C7. 45, E6, 8000
        jmp     ?_4801                                  ; 100231BD _ EB, 0E

?_4798: inc     word [ebp-1AH]                          ; 100231BF _ 66: FF. 45, E6
        jmp     ?_4801                                  ; 100231C3 _ EB, 08

?_4799: inc     dword [ebp-1EH]                         ; 100231C5 _ FF. 45, E2
        jmp     ?_4801                                  ; 100231C8 _ EB, 03

?_4800: inc     dword [ebp-22H]                         ; 100231CA _ FF. 45, DE
?_4801: mov     eax, dword [ebp+8H]                     ; 100231CD _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 32767                               ; 100231D0 _ 66: 3D, 7FFF
        jnc     ?_4803                                  ; 100231D4 _ 73, 1B
        mov     cx, word [ebp-22H]                      ; 100231D6 _ 66: 8B. 4D, DE
        or      eax, edi                                ; 100231DA _ 0B. C7
        mov     word [esi], cx                          ; 100231DC _ 66: 89. 0E
        mov     ecx, dword [ebp-20H]                    ; 100231DF _ 8B. 4D, E0
        mov     dword [esi+2H], ecx                     ; 100231E2 _ 89. 4E, 02
        mov     ecx, dword [ebp-1CH]                    ; 100231E5 _ 8B. 4D, E4
        mov     dword [esi+6H], ecx                     ; 100231E8 _ 89. 4E, 06
?_4802: mov     word [esi+0AH], ax                      ; 100231EB _ 66: 89. 46, 0A
        jmp     ?_4804                                  ; 100231EF _ EB, 1B

?_4803: neg     di                                      ; 100231F1 _ 66: F7. DF
        sbb     edi, edi                                ; 100231F4 _ 1B. FF
        and     dword [esi+4H], 00H                     ; 100231F6 _ 83. 66, 04, 00
        and     edi, 80000000H                          ; 100231FA _ 81. E7, 80000000
        add     edi, 2147450880                         ; 10023200 _ 81. C7, 7FFF8000
        and     dword [esi], 00H                        ; 10023206 _ 83. 26, 00
        mov     dword [esi+8H], edi                     ; 10023209 _ 89. 7E, 08
?_4804: pop     edi                                     ; 1002320C _ 5F
        pop     esi                                     ; 1002320D _ 5E
        pop     ebx                                     ; 1002320E _ 5B
        leave                                           ; 1002320F _ C9
        ret                                             ; 10023210 _ C3
