; ---- 1000CBD0 ----
?_1400: ; Local function
        sub     esp, 12                                 ; 1000CBD0 _ 83. EC, 0C
        push    esi                                     ; 1000CBD3 _ 56
        mov     esi, dword [esp+14H]                    ; 1000CBD4 _ 8B. 74 24, 14
        mov     eax, dword [esi+14H]                    ; 1000CBD8 _ 8B. 46, 14
        cmp     eax, -1                                 ; 1000CBDB _ 83. F8, FF
        je      ?_1406                                  ; 1000CBDE _ 0F 84, 000000A0
        push    eax                                     ; 1000CBE4 _ 50
        push    esi                                     ; 1000CBE5 _ 56
        call    ?_1389                                  ; 1000CBE6 _ E8, FFFFFEA5
        mov     dword [esi+14H], eax                    ; 1000CBEB _ 89. 46, 14
        push    eax                                     ; 1000CBEE _ 50
        lea     eax, [esp+10H]                          ; 1000CBEF _ 8D. 44 24, 10
        lea     ecx, [esp+20H]                          ; 1000CBF3 _ 8D. 4C 24, 20
        push    eax                                     ; 1000CBF7 _ 50
        lea     edx, [esp+18H]                          ; 1000CBF8 _ 8D. 54 24, 18
        push    ecx                                     ; 1000CBFC _ 51
        push    edx                                     ; 1000CBFD _ 52
        call    ?_2425                                  ; 1000CBFE _ E8, 0000928D
        add     esp, 24                                 ; 1000CC03 _ 83. C4, 18
        test    eax, eax                                ; 1000CC06 _ 85. C0
        jnz     ?_1401                                  ; 1000CC08 _ 75, 11
        push    8                                       ; 1000CC0A _ 6A, 08
        push    ?_5269                                  ; 1000CC0C _ 68, 1002C8DC(d)
        push    9067                                    ; 1000CC11 _ 68, 0000236B
        jmp     ?_1416                                  ; 1000CC16 _ E9, 0000019C

?_1401: mov     eax, dword [esp+8H]                     ; 1000CC1B _ 8B. 44 24, 08
        test    eax, eax                                ; 1000CC1F _ 85. C0
        jz      ?_1402                                  ; 1000CC21 _ 74, 05
        add     eax, 93                                 ; 1000CC23 _ 83. C0, 5D
        jmp     ?_1404                                  ; 1000CC26 _ EB, 16

?_1402: mov     eax, dword [esp+14H]                    ; 1000CC28 _ 8B. 44 24, 14
        test    eax, eax                                ; 1000CC2C _ 85. C0
        jz      ?_1403                                  ; 1000CC2E _ 74, 05
        add     eax, 20                                 ; 1000CC30 _ 83. C0, 14
        jmp     ?_1404                                  ; 1000CC33 _ EB, 09

?_1403: mov     eax, dword [esp+4H]                     ; 1000CC35 _ 8B. 44 24, 04
        add     eax, 376                                ; 1000CC39 _ 05, 00000178
?_1404: mov     edx, dword [eax]                        ; 1000CC3E _ 8B. 10
        xor     ecx, ecx                                ; 1000CC40 _ 33. C9
        mov     cx, word [esi+18H]                      ; 1000CC42 _ 66: 8B. 4E, 18
        push    ecx                                     ; 1000CC46 _ 51
        push    0                                       ; 1000CC47 _ 6A, 00
        push    1                                       ; 1000CC49 _ 6A, 01
        push    edx                                     ; 1000CC4B _ 52
        call    ?_2482                                  ; 1000CC4C _ E8, 0000980F
        add     esp, 16                                 ; 1000CC51 _ 83. C4, 10
        test    eax, eax                                ; 1000CC54 _ 85. C0
        jnz     ?_1405                                  ; 1000CC56 _ 75, 11
        push    8                                       ; 1000CC58 _ 6A, 08
        push    ?_5268                                  ; 1000CC5A _ 68, 1002C8B4(d)
        push    9091                                    ; 1000CC5F _ 68, 00002383
        jmp     ?_1416                                  ; 1000CC64 _ E9, 0000014E

?_1405: mov     eax, dword [eax+0EH]                    ; 1000CC69 _ 8B. 40, 0E
        mov     ecx, dword [esi+1FH]                    ; 1000CC6C _ 8B. 4E, 1F
        cmp     eax, ecx                                ; 1000CC6F _ 3B. C1
        jge     ?_1406                                  ; 1000CC71 _ 7D, 11
        push    8                                       ; 1000CC73 _ 6A, 08
        push    ?_5267                                  ; 1000CC75 _ 68, 1002C884(d)
        push    9103                                    ; 1000CC7A _ 68, 0000238F
        jmp     ?_1416                                  ; 1000CC7F _ E9, 00000133

?_1406: mov     eax, dword [esi+10H]                    ; 1000CC84 _ 8B. 46, 10
        cmp     eax, -1                                 ; 1000CC87 _ 83. F8, FF
        je      ?_1417                                  ; 1000CC8A _ 0F 84, 0000013E
        push    eax                                     ; 1000CC90 _ 50
        push    esi                                     ; 1000CC91 _ 56
        call    ?_1389                                  ; 1000CC92 _ E8, FFFFFDF9
        lea     ecx, [esp+0CH]                          ; 1000CC97 _ 8D. 4C 24, 0C
        mov     dword [esi+10H], eax                    ; 1000CC9B _ 89. 46, 10
        push    eax                                     ; 1000CC9E _ 50
        lea     edx, [esp+20H]                          ; 1000CC9F _ 8D. 54 24, 20
        push    ecx                                     ; 1000CCA3 _ 51
        lea     eax, [esp+1CH]                          ; 1000CCA4 _ 8D. 44 24, 1C
        push    edx                                     ; 1000CCA8 _ 52
        push    eax                                     ; 1000CCA9 _ 50
        call    ?_2425                                  ; 1000CCAA _ E8, 000091E1
        add     esp, 24                                 ; 1000CCAF _ 83. C4, 18
        test    eax, eax                                ; 1000CCB2 _ 85. C0
        jnz     ?_1407                                  ; 1000CCB4 _ 75, 11
        push    8                                       ; 1000CCB6 _ 6A, 08
        push    ?_5266                                  ; 1000CCB8 _ 68, 1002C854(d)
        push    9131                                    ; 1000CCBD _ 68, 000023AB
        jmp     ?_1416                                  ; 1000CCC2 _ E9, 000000F0

?_1407: mov     eax, dword [esp+0CH]                    ; 1000CCC7 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000CCCB _ 85. C0
        jz      ?_1409                                  ; 1000CCCD _ 74, 2B
        mov     ax, word [eax+27H]                      ; 1000CCCF _ 66: 8B. 40, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1000CCD3 _ 66: 3D, FFFF
        jz      ?_1408                                  ; 1000CCD7 _ 74, 1A
        and     eax, 0FFFFH                             ; 1000CCD9 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 1000CCDE _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1000CCE1 _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 1000CCE4 _ 8D. 0C C0
        lea     eax, [?_5632+ecx*4]                     ; 1000CCE7 _ 8D. 04 8D, 100358A0(d)
        jmp     ?_1415                                  ; 1000CCEE _ E9, 0000008F

?_1408: xor     eax, eax                                ; 1000CCF3 _ 33. C0
        jmp     ?_1415                                  ; 1000CCF5 _ E9, 00000088

?_1409: mov     eax, dword [esp+14H]                    ; 1000CCFA _ 8B. 44 24, 14
        test    eax, eax                                ; 1000CCFE _ 85. C0
        jz      ?_1413                                  ; 1000CD00 _ 74, 4F
        mov     cx, word [eax]                          ; 1000CD02 _ 66: 8B. 08
        cmp     cx, 42                                  ; 1000CD05 _ 66: 83. F9, 2A
        jz      ?_1410                                  ; 1000CD09 _ 74, 0E
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, 278                                 ; 1000CD0B _ 66: 81. F9, 0116
        jz      ?_1410                                  ; 1000CD10 _ 74, 07
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, 477                                 ; 1000CD12 _ 66: 81. F9, 01DD
        jnz     ?_1412                                  ; 1000CD17 _ 75, 2D
?_1410: mov     edx, dword [esi+1FH]                    ; 1000CD19 _ 8B. 56, 1F
        xor     ecx, ecx                                ; 1000CD1C _ 33. C9
        mov     cx, word [esi+18H]                      ; 1000CD1E _ 66: 8B. 4E, 18
        push    edx                                     ; 1000CD22 _ 52
        push    ecx                                     ; 1000CD23 _ 51
        push    eax                                     ; 1000CD24 _ 50
        call    ?_2983                                  ; 1000CD25 _ E8, 0000D006
        mov     ecx, dword [esi+1FH]                    ; 1000CD2A _ 8B. 4E, 1F
        add     esp, 12                                 ; 1000CD2D _ 83. C4, 0C
        cmp     eax, ecx                                ; 1000CD30 _ 3B. C1
        jge     ?_1411                                  ; 1000CD32 _ 7D, 0E
        push    8                                       ; 1000CD34 _ 6A, 08
        push    ?_5265                                  ; 1000CD36 _ 68, 1002C834(d)
        push    9165                                    ; 1000CD3B _ 68, 000023CD
        jmp     ?_1416                                  ; 1000CD40 _ EB, 75

?_1411: mov     eax, dword [esp+14H]                    ; 1000CD42 _ 8B. 44 24, 14
?_1412: push    eax                                     ; 1000CD46 _ 50
        call    ?_2957                                  ; 1000CD47 _ E8, 0000CD94
        add     esp, 4                                  ; 1000CD4C _ 83. C4, 04
        jmp     ?_1415                                  ; 1000CD4F _ EB, 31

?_1413: mov     edx, dword [esi+1FH]                    ; 1000CD51 _ 8B. 56, 1F
        mov     ecx, dword [esp+4H]                     ; 1000CD54 _ 8B. 4C 24, 04
        xor     eax, eax                                ; 1000CD58 _ 33. C0
        push    edx                                     ; 1000CD5A _ 52
        mov     ax, word [esi+18H]                      ; 1000CD5B _ 66: 8B. 46, 18
        push    eax                                     ; 1000CD5F _ 50
        push    ecx                                     ; 1000CD60 _ 51
        call    ?_3002                                  ; 1000CD61 _ E8, 0000D16A
        mov     ecx, dword [esi+1FH]                    ; 1000CD66 _ 8B. 4E, 1F
        add     esp, 12                                 ; 1000CD69 _ 83. C4, 0C
        cmp     eax, ecx                                ; 1000CD6C _ 3B. C1
        jge     ?_1414                                  ; 1000CD6E _ 7D, 0E
        push    8                                       ; 1000CD70 _ 6A, 08
        push    ?_5264                                  ; 1000CD72 _ 68, 1002C810(d)
        push    9187                                    ; 1000CD77 _ 68, 000023E3
        jmp     ?_1416                                  ; 1000CD7C _ EB, 39

?_1414: mov     eax, dword [esp+4H]                     ; 1000CD7E _ 8B. 44 24, 04
?_1415: mov     ecx, dword [esi+23H]                    ; 1000CD82 _ 8B. 4E, 23
        test    ecx, ecx                                ; 1000CD85 _ 85. C9
        jz      ?_1417                                  ; 1000CD87 _ 74, 45
        test    eax, eax                                ; 1000CD89 _ 85. C0
        jz      ?_1417                                  ; 1000CD8B _ 74, 41
        mov     dl, byte [esi+1EH]                      ; 1000CD8D _ 8A. 56, 1E
        mov     eax, dword [eax+178H]                   ; 1000CD90 _ 8B. 80, 00000178
        push    edx                                     ; 1000CD96 _ 52
        push    eax                                     ; 1000CD97 _ 50
        call    ?_2929                                  ; 1000CD98 _ E8, 0000C923
        mov     ecx, dword [esi+1FH]                    ; 1000CD9D _ 8B. 4E, 1F
        add     esp, 8                                  ; 1000CDA0 _ 83. C4, 08
        imul    ecx, dword [esi+23H]                    ; 1000CDA3 _ 0F AF. 4E, 23
        cmp     eax, ecx                                ; 1000CDA7 _ 3B. C1
        jge     ?_1417                                  ; 1000CDA9 _ 7D, 23
        push    8                                       ; 1000CDAB _ 6A, 08
        push    ?_5263                                  ; 1000CDAD _ 68, 1002C7D8(d)
        push    9215                                    ; 1000CDB2 _ 68, 000023FF
?_1416: push    ?_5260                                  ; 1000CDB7 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000CDBC _ E8, FFFF687F
        add     esp, 16                                 ; 1000CDC1 _ 83. C4, 10
        mov     eax, 1                                  ; 1000CDC4 _ B8, 00000001
        pop     esi                                     ; 1000CDC9 _ 5E
        add     esp, 12                                 ; 1000CDCA _ 83. C4, 0C
        ret                                             ; 1000CDCD _ C3
