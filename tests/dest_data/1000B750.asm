; ---- 1000B750 ----
?_1211: ; Local function
        cmp     al, 28                                  ; 1000B750 _ 3C, 1C
        jc      ?_1215                                  ; 1000B752 _ 72, 4A
        cmp     al, 34                                  ; 1000B754 _ 3C, 22
        ja      ?_1215                                  ; 1000B756 _ 77, 46
        mov     al, byte [esi+169H]                     ; 1000B758 _ 8A. 86, 00000169
        test    al, al                                  ; 1000B75E _ 84. C0
        jz      ?_1214                                  ; 1000B760 _ 74, 2B
        mov     eax, ?_5736                             ; 1000B762 _ B8, 101DE874(d)
?_1212: mov     cl, byte [eax+4H]                       ; 1000B767 _ 8A. 48, 04
        mov     dl, byte [esi+169H]                     ; 1000B76A _ 8A. 96, 00000169
        cmp     cl, dl                                  ; 1000B770 _ 3A. CA
        jnz     ?_1213                                  ; 1000B772 _ 75, 0F
        mov     edx, dword [eax]                        ; 1000B774 _ 8B. 10
        mov     ecx, dword [esi+4H]                     ; 1000B776 _ 8B. 4E, 04
        cmp     edx, ecx                                ; 1000B779 _ 3B. D1
        jnz     ?_1213                                  ; 1000B77B _ 75, 06
        mov     dword [eax], -1                         ; 1000B77D _ C7. 00, FFFFFFFF
?_1213: add     eax, 24                                 ; 1000B783 _ 83. C0, 18
        cmp     eax, ?_5744                             ; 1000B786 _ 3D, 101DE91C(d)
        jl      ?_1212                                  ; 1000B78B _ 7C, DA
?_1214: mov     al, byte [?_5702+edi]                   ; 1000B78D _ 8A. 87, 101DE5A8(d)
        mov     byte [esi+169H], al                     ; 1000B793 _ 88. 86, 00000169
        jmp     ?_1208                                  ; 1000B799 _ E9, FFFFFF4E

