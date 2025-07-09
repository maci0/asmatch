; ---- 1000A340 ----
?_1065: ; Local function
        push    esi                                     ; 1000A340 _ 56
        mov     esi, dword [esp+8H]                     ; 1000A341 _ 8B. 74 24, 08
        push    edi                                     ; 1000A345 _ 57
        test    byte [esi], 0FFFFFF80H                  ; 1000A346 _ F6. 06, 80
        jne     ?_1072                                  ; 1000A349 _ 0F 85, 0000013C
        mov     ax, word [esi+14AH]                     ; 1000A34F _ 66: 8B. 86, 0000014A
        mov     edi, dword [imp_WS2_32_Ordinal_16]      ; 1000A356 _ 8B. 3D, 10024168(d)
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 3                                   ; 1000A35C _ 66: 3D, 0003
        jnc     ?_1067                                  ; 1000A360 _ 73, 5C
        and     eax, 0FFFFH                             ; 1000A362 _ 25, 0000FFFF
        mov     ecx, 3                                  ; 1000A367 _ B9, 00000003
        sub     ecx, eax                                ; 1000A36C _ 2B. C8
        push    0                                       ; 1000A36E _ 6A, 00
        lea     edx, [eax+esi+18H]                      ; 1000A370 _ 8D. 54 30, 18
        mov     eax, dword [esi+14H]                    ; 1000A374 _ 8B. 46, 14
        push    ecx                                     ; 1000A377 _ 51
        push    edx                                     ; 1000A378 _ 52
        push    eax                                     ; 1000A379 _ 50
        call    edi                                     ; 1000A37A _ FF. D7
        test    eax, eax                                ; 1000A37C _ 85. C0
        jnz     ?_1066                                  ; 1000A37E _ 75, 37
        call    near [imp_GetTickCount]                 ; 1000A380 _ FF. 15, 1002405C(d)
        cmp     dword [esi+150H], eax                   ; 1000A386 _ 39. 86, 00000150
        jnc     ?_1072                                  ; 1000A38C _ 0F 83, 000000F9
        push    1                                       ; 1000A392 _ 6A, 01
        push    ?_5225                                  ; 1000A394 _ 68, 10029A04(d)
        push    1322                                    ; 1000A399 _ 68, 0000052A
        push    ?_5209                                  ; 1000A39E _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A3A3 _ E8, FFFF9298
        push    esi                                     ; 1000A3A8 _ 56
        call    ?_1064                                  ; 1000A3A9 _ E8, FFFFFF32
        add     esp, 20                                 ; 1000A3AE _ 83. C4, 14
        or      eax, 0FFFFFFFFH                         ; 1000A3B1 _ 83. C8, FF
        pop     edi                                     ; 1000A3B4 _ 5F
        pop     esi                                     ; 1000A3B5 _ 5E
        ret                                             ; 1000A3B6 _ C3

?_1066: cmp     eax, -1                                 ; 1000A3B7 _ 83. F8, FF
        jnz     ?_1068                                  ; 1000A3BA _ 75, 06
        jmp     ?_1070                                  ; 1000A3BC _ EB, 77

?_1067: mov     eax, dword [esp+0CH]                    ; 1000A3BE _ 8B. 44 24, 0C
?_1068: add     word [esi+14AH], ax                     ; 1000A3C2 _ 66: 01. 86, 0000014A
        mov     ax, word [esi+14AH]                     ; 1000A3C9 _ 66: 8B. 86, 0000014A
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 3                                   ; 1000A3D0 _ 66: 3D, 0003
        jc      ?_1072                                  ; 1000A3D4 _ 0F 82, 000000B1
        xor     ecx, ecx                                ; 1000A3DA _ 33. C9
        and     eax, 0FFFFH                             ; 1000A3DC _ 25, 0000FFFF
        mov     cx, word [esi+19H]                      ; 1000A3E1 _ 66: 8B. 4E, 19
        push    0                                       ; 1000A3E5 _ 6A, 00
        sub     ecx, eax                                ; 1000A3E7 _ 2B. C8
        lea     edx, [eax+esi+18H]                      ; 1000A3E9 _ 8D. 54 30, 18
        mov     eax, dword [esi+14H]                    ; 1000A3ED _ 8B. 46, 14
        push    ecx                                     ; 1000A3F0 _ 51
        push    edx                                     ; 1000A3F1 _ 52
        push    eax                                     ; 1000A3F2 _ 50
        call    edi                                     ; 1000A3F3 _ FF. D7
        test    eax, eax                                ; 1000A3F5 _ 85. C0
        jnz     ?_1069                                  ; 1000A3F7 _ 75, 37
        call    near [imp_GetTickCount]                 ; 1000A3F9 _ FF. 15, 1002405C(d)
        cmp     dword [esi+150H], eax                   ; 1000A3FF _ 39. 86, 00000150
        jnc     ?_1072                                  ; 1000A405 _ 0F 83, 00000080
        push    1                                       ; 1000A40B _ 6A, 01
        push    ?_5225                                  ; 1000A40D _ 68, 10029A04(d)
        push    1362                                    ; 1000A412 _ 68, 00000552
        push    ?_5209                                  ; 1000A417 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000A41C _ E8, FFFF921F
        push    esi                                     ; 1000A421 _ 56
        call    ?_1064                                  ; 1000A422 _ E8, FFFFFEB9
        add     esp, 20                                 ; 1000A427 _ 83. C4, 14
        or      eax, 0FFFFFFFFH                         ; 1000A42A _ 83. C8, FF
        pop     edi                                     ; 1000A42D _ 5F
        pop     esi                                     ; 1000A42E _ 5E
        ret                                             ; 1000A42F _ C3

?_1069: cmp     eax, -1                                 ; 1000A430 _ 83. F8, FF
        jnz     ?_1071                                  ; 1000A433 _ 75, 22
?_1070: call    near [imp_WS2_32_Ordinal_111]           ; 1000A435 _ FF. 15, 10024170(d)
        cmp     eax, 10035                              ; 1000A43B _ 3D, 00002733
        jz      ?_1072                                  ; 1000A440 _ 74, 49
        push    eax                                     ; 1000A442 _ 50
        call    ?_1138                                  ; 1000A443 _ E8, 000008F8
        push    esi                                     ; 1000A448 _ 56
        call    ?_1064                                  ; 1000A449 _ E8, FFFFFE92
        add     esp, 8                                  ; 1000A44E _ 83. C4, 08
        or      eax, 0FFFFFFFFH                         ; 1000A451 _ 83. C8, FF
        pop     edi                                     ; 1000A454 _ 5F
        pop     esi                                     ; 1000A455 _ 5E
        ret                                             ; 1000A456 _ C3

?_1071: add     word [esi+14AH], ax                     ; 1000A457 _ 66: 01. 86, 0000014A
        call    near [imp_GetTickCount]                 ; 1000A45E _ FF. 15, 1002405C(d)
        mov     cx, word [esi+14AH]                     ; 1000A464 _ 66: 8B. 8E, 0000014A
        add     eax, 300000                             ; 1000A46B _ 05, 000493E0
        cmp     cx, word [esi+19H]                      ; 1000A470 _ 66: 3B. 4E, 19
        mov     dword [esi+150H], eax                   ; 1000A474 _ 89. 86, 00000150
        jnz     ?_1072                                  ; 1000A47A _ 75, 0F
        mov     eax, dword [esi]                        ; 1000A47C _ 8B. 06
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+14AH], 0                      ; 1000A47E _ 66: C7. 86, 0000014A, 0000
        or      al, 0FFFFFF80H                          ; 1000A487 _ 0C, 80
        mov     dword [esi], eax                        ; 1000A489 _ 89. 06
?_1072: pop     edi                                     ; 1000A48B _ 5F
        xor     eax, eax                                ; 1000A48C _ 33. C0
        pop     esi                                     ; 1000A48E _ 5E
        ret                                             ; 1000A48F _ C3
