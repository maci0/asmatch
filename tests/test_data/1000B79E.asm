; ---- 1000B79E ----
?_1215: ; Local function
        mov     eax, dword [esi+1CCH]                   ; 1000B79E _ 8B. 86, 000001CC
        xor     edx, edx                                ; 1000B7A4 _ 33. D2
        and     ah, 0FFFFFFF1H                          ; 1000B7A6 _ 80. E4, F1
        mov     dword [esi+1CCH], eax                   ; 1000B7A9 _ 89. 86, 000001CC
        mov     cl, byte [?_5702+edi]                   ; 1000B7AF _ 8A. 8F, 101DE5A8(d)
        cmp     cl, 35                                  ; 1000B7B5 _ 80. F9, 23
        jnz     ?_1216                                  ; 1000B7B8 _ 75, 10
        or      ah, 02H                                 ; 1000B7BA _ 80. CC, 02
        mov     edx, 16384                              ; 1000B7BD _ BA, 00004000
        mov     dword [esi+1CCH], eax                   ; 1000B7C2 _ 89. 86, 000001CC
        jmp     ?_1218                                  ; 1000B7C8 _ EB, 28

?_1216: cmp     cl, 36                                  ; 1000B7CA _ 80. F9, 24
        jnz     ?_1217                                  ; 1000B7CD _ 75, 10
        or      ah, 04H                                 ; 1000B7CF _ 80. CC, 04
        mov     edx, 32768                              ; 1000B7D2 _ BA, 00008000
        mov     dword [esi+1CCH], eax                   ; 1000B7D7 _ 89. 86, 000001CC
        jmp     ?_1218                                  ; 1000B7DD _ EB, 13

?_1217: cmp     cl, 37                                  ; 1000B7DF _ 80. F9, 25
        jnz     ?_1218                                  ; 1000B7E2 _ 75, 0E
        or      ah, 08H                                 ; 1000B7E4 _ 80. CC, 08
        mov     edx, 65536                              ; 1000B7E7 _ BA, 00010000
        mov     dword [esi+1CCH], eax                   ; 1000B7EC _ 89. 86, 000001CC
?_1218: not     edx                                     ; 1000B7F2 _ F7. D2
        mov     eax, ?_5654                             ; 1000B7F4 _ B8, 10035A6C(d)
?_1219: mov     ebp, dword [eax]                        ; 1000B7F9 _ 8B. 28
        add     eax, 540                                ; 1000B7FB _ 05, 0000021C
        and     ebp, edx                                ; 1000B800 _ 23. EA
        cmp     eax, ?_5662                             ; 1000B802 _ 3D, 1009AE6C(d)
        mov     dword [eax-21CH], ebp                   ; 1000B807 _ 89. A8, FFFFFDE4
        jl      ?_1219                                  ; 1000B80D _ 7C, EA
        jmp     ?_1208                                  ; 1000B80F _ E9, FFFFFED8

        nop                                             ; 1000B814 _ 90
        nop                                             ; 1000B815 _ 90
        nop                                             ; 1000B816 _ 90
        nop                                             ; 1000B817 _ 90
        nop                                             ; 1000B818 _ 90
        nop                                             ; 1000B819 _ 90
        nop                                             ; 1000B81A _ 90
        nop                                             ; 1000B81B _ 90
        nop                                             ; 1000B81C _ 90
        nop                                             ; 1000B81D _ 90
        nop                                             ; 1000B81E _ 90
        nop                                             ; 1000B81F _ 90
?_1220: mov     ecx, 41                                 ; 1000B820 _ B9, 00000029
        mov     eax, ?_5749                             ; 1000B825 _ B8, 101DE980(d)
?_1221: cmp     byte [eax], 38                          ; 1000B82A _ 80. 38, 26
        jz      ?_1222                                  ; 1000B82D _ 74, 0C
        sub     eax, 24                                 ; 1000B82F _ 83. E8, 18
        dec     ecx                                     ; 1000B832 _ 49
        cmp     eax, ?_5702                             ; 1000B833 _ 3D, 101DE5A8(d)
        jnz     ?_1221                                  ; 1000B838 _ 75, F0
        ret                                             ; 1000B83A _ C3
