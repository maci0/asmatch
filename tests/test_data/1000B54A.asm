; ---- 1000B54A ----
?_1189: ; Local function
        push    edi                                     ; 1000B54A _ 57
        lea     edi, [ebp+ebp*2]                        ; 1000B54B _ 8D. 7C 6D, 00
        shl     edi, 3                                  ; 1000B54F _ C1. E7, 03
        mov     ecx, dword [?_5701+edi]                 ; 1000B552 _ 8B. 8F, 101DE5A4(d)
        push    ecx                                     ; 1000B558 _ 51
        call    ?_2817                                  ; 1000B559 _ E8, 0000CF42
        add     esp, 4                                  ; 1000B55E _ 83. C4, 04
        test    eax, eax                                ; 1000B561 _ 85. C0
        jz      ?_1195                                  ; 1000B563 _ 74, 68
        mov     edx, dword [eax+4H]                     ; 1000B565 _ 8B. 50, 04
        mov     ecx, dword [ebx+1H]                     ; 1000B568 _ 8B. 4B, 01
        cmp     edx, ecx                                ; 1000B56B _ 3B. D1
        jz      ?_1195                                  ; 1000B56D _ 74, 5E
        mov     cl, byte [?_5702+edi]                   ; 1000B56F _ 8A. 8F, 101DE5A8(d)
        mov     dl, byte [eax+166H]                     ; 1000B575 _ 8A. 90, 00000166
        cmp     dl, cl                                  ; 1000B57B _ 3A. D1
        jnz     ?_1190                                  ; 1000B57D _ 75, 09
        mov     byte [eax+166H], 0                      ; 1000B57F _ C6. 80, 00000166, 00
        jmp     ?_1195                                  ; 1000B586 _ EB, 45

?_1190: cmp     byte [eax+169H], cl                     ; 1000B588 _ 38. 88, 00000169
        jnz     ?_1191                                  ; 1000B58E _ 75, 09
        mov     byte [eax+169H], 0                      ; 1000B590 _ C6. 80, 00000169, 00
        jmp     ?_1195                                  ; 1000B597 _ EB, 34

?_1191: cmp     cl, 35                                  ; 1000B599 _ 80. F9, 23
        jnz     ?_1192                                  ; 1000B59C _ 75, 0B
        mov     ecx, dword [eax+1CCH]                   ; 1000B59E _ 8B. 88, 000001CC
        and     ch, 0FFFFFFFDH                          ; 1000B5A4 _ 80. E5, FD
        jmp     ?_1194                                  ; 1000B5A7 _ EB, 1E

?_1192: cmp     cl, 36                                  ; 1000B5A9 _ 80. F9, 24
        jnz     ?_1193                                  ; 1000B5AC _ 75, 0B
        mov     ecx, dword [eax+1CCH]                   ; 1000B5AE _ 8B. 88, 000001CC
        and     ch, 0FFFFFFFBH                          ; 1000B5B4 _ 80. E5, FB
        jmp     ?_1194                                  ; 1000B5B7 _ EB, 0E

?_1193: cmp     cl, 37                                  ; 1000B5B9 _ 80. F9, 25
        jnz     ?_1195                                  ; 1000B5BC _ 75, 0F
        mov     ecx, dword [eax+1CCH]                   ; 1000B5BE _ 8B. 88, 000001CC
        and     ch, 0FFFFFFF7H                          ; 1000B5C4 _ 80. E5, F7
?_1194: mov     dword [eax+1CCH], ecx                   ; 1000B5C7 _ 89. 88, 000001CC
?_1195: test    esi, esi                                ; 1000B5CD _ 85. F6
        je      ?_1208                                  ; 1000B5CF _ 0F 84, 00000117
        mov     al, byte [?_5702+edi]                   ; 1000B5D5 _ 8A. 87, 101DE5A8(d)
        cmp     al, 27                                  ; 1000B5DB _ 3C, 1B
        ja      ?_1211                                  ; 1000B5DD _ 0F 87, 0000016D
        mov     al, byte [esi+166H]                     ; 1000B5E3 _ 8A. 86, 00000166
        mov     bl, 4                                   ; 1000B5E9 _ B3, 04
        test    al, al                                  ; 1000B5EB _ 84. C0
        jz      ?_1198                                  ; 1000B5ED _ 74, 41
        xor     ecx, ecx                                ; 1000B5EF _ 33. C9
        mov     eax, ?_5701                             ; 1000B5F1 _ B8, 101DE5A4(d)
?_1196: mov     edx, dword [esp+10H]                    ; 1000B5F6 _ 8B. 54 24, 10
        cmp     dword [eax], edx                        ; 1000B5FA _ 39. 10
        jz      ?_1197                                  ; 1000B5FC _ 74, 0D
        add     eax, 24                                 ; 1000B5FE _ 83. C0, 18
        inc     ecx                                     ; 1000B601 _ 41
        cmp     eax, ?_5736                             ; 1000B602 _ 3D, 101DE874(d)
        jl      ?_1196                                  ; 1000B607 _ 7C, ED
        jmp     ?_1198                                  ; 1000B609 _ EB, 25

?_1197: lea     eax, [ecx+ecx*2]                        ; 1000B60B _ 8D. 04 49
        shl     eax, 3                                  ; 1000B60E _ C1. E0, 03
        or      ecx, 0FFFFFFFFH                         ; 1000B611 _ 83. C9, FF
        mov     dword [?_5701+eax], ecx                 ; 1000B614 _ 89. 88, 101DE5A4(d)
        mov     dword [?_5705+eax], ecx                 ; 1000B61A _ 89. 88, 101DE5B4(d)
        mov     byte [?_5704+eax], bl                   ; 1000B620 _ 88. 98, 101DE5B0(d)
        mov     dword [?_5703+eax], 0                   ; 1000B626 _ C7. 80, 101DE5AC(d), 00000000
?_1198: mov     cl, byte [?_5702+edi]                   ; 1000B630 _ 8A. 8F, 101DE5A8(d)
        mov     eax, ecx                                ; 1000B636 _ 8B. C1
        and     eax, 0FFH                               ; 1000B638 _ 25, 000000FF
        lea     edx, [eax+eax*2]                        ; 1000B63D _ 8D. 14 40
        xor     eax, eax                                ; 1000B640 _ 33. C0
        mov     al, byte [esi+166H]                     ; 1000B642 _ 8A. 86, 00000166
        mov     dl, byte [?_5235+edx*8]                 ; 1000B648 _ 8A. 14 D5, 10029BC0(d)
        lea     eax, [eax+eax*2]                        ; 1000B64F _ 8D. 04 40
        cmp     dl, byte [?_5235+eax*8]                 ; 1000B652 _ 3A. 14 C5, 10029BC0(d)
        jc      ?_1199                                  ; 1000B659 _ 72, 06
        mov     byte [esi+167H], cl                     ; 1000B65B _ 88. 8E, 00000167
?_1199: mov     al, byte [?_5702+edi]                   ; 1000B661 _ 8A. 87, 101DE5A8(d)
        mov     cl, byte [esi+168H]                     ; 1000B667 _ 8A. 8E, 00000168
        cmp     cl, al                                  ; 1000B66D _ 3A. C8
        mov     byte [esi+166H], al                     ; 1000B66F _ 88. 86, 00000166
        jnz     ?_1200                                  ; 1000B675 _ 75, 07
        mov     byte [esi+168H], 0                      ; 1000B677 _ C6. 86, 00000168, 00
?_1200: mov     al, byte [?_5702+edi]                   ; 1000B67E _ 8A. 87, 101DE5A8(d)
        cmp     al, 15                                  ; 1000B684 _ 3C, 0F
        jnz     ?_1201                                  ; 1000B686 _ 75, 0A
        mov     eax, dword [esi+1CCH]                   ; 1000B688 _ 8B. 86, 000001CC
        or      al, 40H                                 ; 1000B68E _ 0C, 40
        jmp     ?_1203                                  ; 1000B690 _ EB, 1B

?_1201: cmp     al, 21                                  ; 1000B692 _ 3C, 15
        jnz     ?_1202                                  ; 1000B694 _ 75, 0A
        mov     eax, dword [esi+1CCH]                   ; 1000B696 _ 8B. 86, 000001CC
        or      al, 0FFFFFF80H                          ; 1000B69C _ 0C, 80
        jmp     ?_1203                                  ; 1000B69E _ EB, 0D

?_1202: cmp     al, 27                                  ; 1000B6A0 _ 3C, 1B
        jnz     ?_1204                                  ; 1000B6A2 _ 75, 0F
        mov     eax, dword [esi+1CCH]                   ; 1000B6A4 _ 8B. 86, 000001CC
        or      ah, 01H                                 ; 1000B6AA _ 80. CC, 01
?_1203: mov     dword [esi+1CCH], eax                   ; 1000B6AD _ 89. 86, 000001CC
?_1204: mov     dl, byte [?_5702+edi]                   ; 1000B6B3 _ 8A. 97, 101DE5A8(d)
        mov     eax, edx                                ; 1000B6B9 _ 8B. C2
        and     eax, 0FFH                               ; 1000B6BB _ 25, 000000FF
        lea     eax, [eax+eax*2]                        ; 1000B6C0 _ 8D. 04 40
        mov     ecx, dword [?_5236+eax*8]               ; 1000B6C3 _ 8B. 0C C5, 10029BC8(d)
        test    ecx, ecx                                ; 1000B6CA _ 85. C9
        jz      ?_1207                                  ; 1000B6CC _ 74, 1A
        xor     ecx, ecx                                ; 1000B6CE _ 33. C9
        mov     eax, ?_5702                             ; 1000B6D0 _ B8, 101DE5A8(d)
?_1205: cmp     byte [eax], dl                          ; 1000B6D5 _ 38. 10
        jnz     ?_1206                                  ; 1000B6D7 _ 75, 04
        cmp     ecx, ebp                                ; 1000B6D9 _ 3B. CD
        jnz     ?_1210                                  ; 1000B6DB _ 75, 47
?_1206: add     eax, 24                                 ; 1000B6DD _ 83. C0, 18
        inc     ecx                                     ; 1000B6E0 _ 41
        cmp     eax, ?_5737                             ; 1000B6E1 _ 3D, 101DE878(d)
        jl      ?_1205                                  ; 1000B6E6 _ 7C, ED
?_1207: mov     ebx, dword [esp+18H]                    ; 1000B6E8 _ 8B. 5C 24, 18
?_1208: mov     ecx, dword [esp+10H]                    ; 1000B6EC _ 8B. 4C 24, 10
        mov     dword [?_5701+edi], ecx                 ; 1000B6F0 _ 89. 8F, 101DE5A4(d)
        mov     edx, dword [ebx+7H]                     ; 1000B6F6 _ 8B. 53, 07
        mov     dword [?_5705+edi], edx                 ; 1000B6F9 _ 89. 97, 101DE5B4(d)
        mov     al, byte [ebx+5H]                       ; 1000B6FF _ 8A. 43, 05
        mov     byte [?_5704+edi], al                   ; 1000B702 _ 88. 87, 101DE5B0(d)
        mov     al, byte [ebx+5H]                       ; 1000B708 _ 8A. 43, 05
        cmp     al, 3                                   ; 1000B70B _ 3C, 03
        jnz     ?_1209                                  ; 1000B70D _ 75, 0A
        mov     dword [?_5703+edi], 0                   ; 1000B70F _ C7. 87, 101DE5AC(d), 00000000
?_1209: pop     edi                                     ; 1000B719 _ 5F
        pop     esi                                     ; 1000B71A _ 5E
        pop     ebp                                     ; 1000B71B _ 5D
        mov     eax, 1                                  ; 1000B71C _ B8, 00000001
        pop     ebx                                     ; 1000B721 _ 5B
        pop     ecx                                     ; 1000B722 _ 59
        ret                                             ; 1000B723 _ C3

?_1210: lea     eax, [ecx+ecx*2]                        ; 1000B724 _ 8D. 04 49
        shl     eax, 3                                  ; 1000B727 _ C1. E0, 03
        cmp     byte [?_5704+eax], 3                    ; 1000B72A _ 80. B8, 101DE5B0(d), 03
        jnz     ?_1207                                  ; 1000B731 _ 75, B5
        mov     ecx, dword [?_5703+eax]                 ; 1000B733 _ 8B. 88, 101DE5AC(d)
        test    ecx, ecx                                ; 1000B739 _ 85. C9
        jz      ?_1207                                  ; 1000B73B _ 74, AB
        dec     ecx                                     ; 1000B73D _ 49
        test    ecx, ecx                                ; 1000B73E _ 85. C9
        mov     dword [?_5703+eax], ecx                 ; 1000B740 _ 89. 88, 101DE5AC(d)
        jnz     ?_1207                                  ; 1000B746 _ 75, A0
        mov     byte [?_5704+eax], bl                   ; 1000B748 _ 88. 98, 101DE5B0(d)
        jmp     ?_1207                                  ; 1000B74E _ EB, 98
