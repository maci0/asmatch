; ---- 100111B0 ----
?_1981: ; Local function
        push    ecx                                     ; 100111B0 _ 51
        push    esi                                     ; 100111B1 _ 56
        mov     esi, dword [esp+0CH]                    ; 100111B2 _ 8B. 74 24, 0C
        push    edi                                     ; 100111B6 _ 57
        lea     ecx, [esp+8H]                           ; 100111B7 _ 8D. 4C 24, 08
        mov     eax, dword [esi+8H]                     ; 100111BB _ 8B. 46, 08
        push    eax                                     ; 100111BE _ 50
        push    0                                       ; 100111BF _ 6A, 00
        push    0                                       ; 100111C1 _ 6A, 00
        push    ecx                                     ; 100111C3 _ 51
        call    ?_2425                                  ; 100111C4 _ E8, 00004CC7
        mov     edx, dword [esp+18H]                    ; 100111C9 _ 8B. 54 24, 18
        add     esp, 16                                 ; 100111CD _ 83. C4, 10
        test    edx, edx                                ; 100111D0 _ 85. D2
        je      ?_1991                                  ; 100111D2 _ 0F 84, 000001C6
        mov     ax, word [edx+27H]                      ; 100111D8 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 100111DC _ 66: 3D, FFFF
        je      ?_1991                                  ; 100111E0 _ 0F 84, 000001B8
        and     eax, 0FFFFH                             ; 100111E6 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 100111EB _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100111EE _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100111F1 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 100111F4 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 100111FB _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 10011200 _ 3B. C8
        je      ?_1991                                  ; 10011202 _ 0F 84, 00000196
        xor     ecx, ecx                                ; 10011208 _ 33. C9
        mov     edi, dword [?_5668]                     ; 1001120A _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 10011210 _ 8A. 0A
        add     edi, ecx                                ; 10011212 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 10011214 _ 8D. 04 49
        shl     eax, 4                                  ; 10011217 _ C1. E0, 04
        add     eax, ecx                                ; 1001121A _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1001121C _ 8D. 04 40
        cmp     byte [edi+eax*4], 29                    ; 1001121F _ 80. 3C 87, 1D
        jz      ?_1982                                  ; 10011223 _ 74, 09
        pop     edi                                     ; 10011225 _ 5F
        mov     eax, 4294967294                         ; 10011226 _ B8, FFFFFFFE
        pop     esi                                     ; 1001122B _ 5E
        pop     ecx                                     ; 1001122C _ 59
        ret                                             ; 1001122D _ C3

?_1982: mov     edx, dword [edx+65H]                    ; 1001122E _ 8B. 52, 65
        test    edx, edx                                ; 10011231 _ 85. D2
        jnz     ?_1983                                  ; 10011233 _ 75, 09
        pop     edi                                     ; 10011235 _ 5F
        mov     eax, 4294967293                         ; 10011236 _ B8, FFFFFFFD
        pop     esi                                     ; 1001123B _ 5E
        pop     ecx                                     ; 1001123C _ 59
        ret                                             ; 1001123D _ C3

?_1983: mov     ecx, dword [esi+0CH]                    ; 1001123E _ 8B. 4E, 0C
        push    ecx                                     ; 10011241 _ 51
        push    edx                                     ; 10011242 _ 52
        call    ?_1891                                  ; 10011243 _ E8, FFFFF2E8
        add     esp, 8                                  ; 10011248 _ 83. C4, 08
        test    eax, eax                                ; 1001124B _ 85. C0
        jnz     ?_1984                                  ; 1001124D _ 75, 09
        pop     edi                                     ; 1001124F _ 5F
        mov     eax, 4294967292                         ; 10011250 _ B8, FFFFFFFC
        pop     esi                                     ; 10011255 _ 5E
        pop     ecx                                     ; 10011256 _ 59
        ret                                             ; 10011257 _ C3

?_1984: mov     edx, dword [esi+4H]                     ; 10011258 _ 8B. 56, 04
        lea     eax, [esp+10H]                          ; 1001125B _ 8D. 44 24, 10
        push    edx                                     ; 1001125F _ 52
        push    eax                                     ; 10011260 _ 50
        push    0                                       ; 10011261 _ 6A, 00
        push    0                                       ; 10011263 _ 6A, 00
        call    ?_2425                                  ; 10011265 _ E8, 00004C26
        mov     ecx, dword [esp+20H]                    ; 1001126A _ 8B. 4C 24, 20
        add     esp, 16                                 ; 1001126E _ 83. C4, 10
        test    ecx, ecx                                ; 10011271 _ 85. C9
        jnz     ?_1985                                  ; 10011273 _ 75, 09
        pop     edi                                     ; 10011275 _ 5F
        mov     eax, 4294967290                         ; 10011276 _ B8, FFFFFFFA
        pop     esi                                     ; 1001127B _ 5E
        pop     ecx                                     ; 1001127C _ 59
        ret                                             ; 1001127D _ C3

?_1985: mov     eax, dword [esi+0CH]                    ; 1001127E _ 8B. 46, 0C
        test    eax, eax                                ; 10011281 _ 85. C0
        jl      ?_1990                                  ; 10011283 _ 0F 8C, 0000010C
        cmp     eax, 3                                  ; 10011289 _ 83. F8, 03
        jg      ?_1990                                  ; 1001128C _ 0F 8F, 00000103
        mov     edx, dword [esp+8H]                     ; 10011292 _ 8B. 54 24, 08
        push    eax                                     ; 10011296 _ 50
        push    ?_1914                                  ; 10011297 _ 68, 10010700(d)
        push    0                                       ; 1001129C _ 6A, 00
        push    edx                                     ; 1001129E _ 52
        push    ecx                                     ; 1001129F _ 51
        call    ?_1915                                  ; 100112A0 _ E8, FFFFF46B
        add     esp, 20                                 ; 100112A5 _ 83. C4, 14
        test    eax, eax                                ; 100112A8 _ 85. C0
        jnz     ?_1986                                  ; 100112AA _ 75, 09
        pop     edi                                     ; 100112AC _ 5F
        mov     eax, 4294967289                         ; 100112AD _ B8, FFFFFFF9
        pop     esi                                     ; 100112B2 _ 5E
        pop     ecx                                     ; 100112B3 _ 59
        ret                                             ; 100112B4 _ C3

?_1986: mov     ecx, dword [esp+10H]                    ; 100112B5 _ 8B. 4C 24, 10
        mov     edx, dword [ecx+4H]                     ; 100112B9 _ 8B. 51, 04
        mov     dword [eax+4H], edx                     ; 100112BC _ 89. 50, 04
        mov     ecx, dword [esp+10H]                    ; 100112BF _ 8B. 4C 24, 10
        mov     dx, word [ecx+50H]                      ; 100112C3 _ 66: 8B. 51, 50
        mov     word [eax+8H], dx                       ; 100112C7 _ 66: 89. 50, 08
        mov     cx, word [esi+11H]                      ; 100112CB _ 66: 8B. 4E, 11
        add     cx, word [?_5628]                       ; 100112CF _ 66: 03. 0D, 10035880(d)
        mov     byte [eax+0CH], -1                      ; 100112D6 _ C6. 40, 0C, FF
        mov     word [eax+0AH], cx                      ; 100112DA _ 66: 89. 48, 0A
        mov     edx, dword [esi+0CH]                    ; 100112DE _ 8B. 56, 0C
        xor     ecx, ecx                                ; 100112E1 _ 33. C9
        mov     edi, dword [?_4926+edx*4]               ; 100112E3 _ 8B. 3C 95, 1002574C(d)
        test    edi, edi                                ; 100112EA _ 85. FF
        jle     ?_1988                                  ; 100112EC _ 7E, 1C
        xor     edx, edx                                ; 100112EE _ 33. D2
?_1987: mov     edi, dword [eax+10H]                    ; 100112F0 _ 8B. 78, 10
        inc     ecx                                     ; 100112F3 _ 41
        mov     dword [edi+edx], -1                     ; 100112F4 _ C7. 04 17, FFFFFFFF
        mov     edi, dword [esi+0CH]                    ; 100112FB _ 8B. 7E, 0C
        add     edx, 68                                 ; 100112FE _ 83. C2, 44
        cmp     ecx, dword [?_4926+edi*4]               ; 10011301 _ 3B. 0C BD, 1002574C(d)
        jl      ?_1987                                  ; 10011308 _ 7C, E6
?_1988: mov     eax, dword [esi+13H]                    ; 1001130A _ 8B. 46, 13
        test    eax, eax                                ; 1001130D _ 85. C0
        jle     ?_1989                                  ; 1001130F _ 7E, 7E
        xor     ecx, ecx                                ; 10011311 _ 33. C9
        push    eax                                     ; 10011313 _ 50
        mov     cl, byte [?_5532]                       ; 10011314 _ 8A. 0D, 10035439(d)
        mov     edx, dword [esp+14H]                    ; 1001131A _ 8B. 54 24, 14
        mov     eax, ecx                                ; 1001131E _ 8B. C1
        shl     eax, 6                                  ; 10011320 _ C1. E0, 06
        sub     eax, ecx                                ; 10011323 _ 2B. C1
        xor     ecx, ecx                                ; 10011325 _ 33. C9
        lea     eax, [eax+eax*2]                        ; 10011327 _ 8D. 04 40
        mov     cx, word [?_5672+eax*4]                 ; 1001132A _ 66: 8B. 0C 85, 100A8C94(d)
        mov     eax, dword [edx+4H]                     ; 10011332 _ 8B. 42, 04
        push    ecx                                     ; 10011335 _ 51
        push    eax                                     ; 10011336 _ 50
        call    ?_2579                                  ; 10011337 _ E8, 00005B64
        fild    dword [esi+13H]                         ; 1001133C _ DB. 46, 13
        mov     ecx, dword [esi+0CH]                    ; 1001133F _ 8B. 4E, 0C
        fmul    dword [?_4925+ecx*4]                    ; 10011342 _ D8. 0C 8D, 1002572C(d)
        call    ?_3298                                  ; 10011349 _ E8, 0000A216
        xor     ecx, ecx                                ; 1001134E _ 33. C9
        push    eax                                     ; 10011350 _ 50
        mov     cl, byte [?_5532]                       ; 10011351 _ 8A. 0D, 10035439(d)
        mov     eax, ecx                                ; 10011357 _ 8B. C1
        shl     eax, 6                                  ; 10011359 _ C1. E0, 06
        sub     eax, ecx                                ; 1001135C _ 2B. C1
        mov     ecx, dword [esp+18H]                    ; 1001135E _ 8B. 4C 24, 18
        lea     edx, [eax+eax*2]                        ; 10011362 _ 8D. 14 40
        xor     eax, eax                                ; 10011365 _ 33. C0
        mov     ax, word [?_5672+edx*4]                 ; 10011367 _ 66: 8B. 04 95, 100A8C94(d)
        push    eax                                     ; 1001136F _ 50
        xor     eax, eax                                ; 10011370 _ 33. C0
        mov     ax, word [ecx+27H]                      ; 10011372 _ 66: 8B. 41, 27
        lea     eax, [eax+eax*2]                        ; 10011376 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10011379 _ 8D. 04 80
        lea     edx, [eax+eax*8]                        ; 1001137C _ 8D. 14 C0
        mov     eax, dword [?_5634+edx*4]               ; 1001137F _ 8B. 04 95, 100358A4(d)
        push    eax                                     ; 10011386 _ 50
        call    ?_2564                                  ; 10011387 _ E8, 00005944
        add     esp, 24                                 ; 1001138C _ 83. C4, 18
?_1989: pop     edi                                     ; 1001138F _ 5F
        xor     eax, eax                                ; 10011390 _ 33. C0
        pop     esi                                     ; 10011392 _ 5E
        pop     ecx                                     ; 10011393 _ 59
        ret                                             ; 10011394 _ C3

?_1990: pop     edi                                     ; 10011395 _ 5F
        mov     eax, 4294967291                         ; 10011396 _ B8, FFFFFFFB
        pop     esi                                     ; 1001139B _ 5E
        pop     ecx                                     ; 1001139C _ 59
        ret                                             ; 1001139D _ C3

