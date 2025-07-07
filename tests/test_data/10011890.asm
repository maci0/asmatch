; ---- 10011890 ----
?_2025: ; Local function
        push    esi                                     ; 10011890 _ 56
        mov     esi, dword [esp+8H]                     ; 10011891 _ 8B. 74 24, 08
        lea     ecx, [esp+8H]                           ; 10011895 _ 8D. 4C 24, 08
        mov     eax, dword [esi+8H]                     ; 10011899 _ 8B. 46, 08
        push    eax                                     ; 1001189C _ 50
        push    0                                       ; 1001189D _ 6A, 00
        push    0                                       ; 1001189F _ 6A, 00
        push    ecx                                     ; 100118A1 _ 51
        call    ?_2425                                  ; 100118A2 _ E8, 000045E9
        mov     edx, dword [esp+18H]                    ; 100118A7 _ 8B. 54 24, 18
        add     esp, 16                                 ; 100118AB _ 83. C4, 10
        test    edx, edx                                ; 100118AE _ 85. D2
        jz      ?_2028                                  ; 100118B0 _ 74, 7D
        mov     ax, word [edx+27H]                      ; 100118B2 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 100118B6 _ 66: 3D, FFFF
        jz      ?_2028                                  ; 100118BA _ 74, 73
        and     eax, 0FFFFH                             ; 100118BC _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 100118C1 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100118C4 _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100118C7 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 100118CA _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 100118D1 _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 100118D6 _ 3B. C8
        jz      ?_2028                                  ; 100118D8 _ 74, 55
        xor     ecx, ecx                                ; 100118DA _ 33. C9
        push    edi                                     ; 100118DC _ 57
        mov     cl, byte [edx]                          ; 100118DD _ 8A. 0A
        mov     edi, dword [?_5668]                     ; 100118DF _ 8B. 3D, 100A8C30(d)
        add     edi, ecx                                ; 100118E5 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 100118E7 _ 8D. 04 49
        shl     eax, 4                                  ; 100118EA _ C1. E0, 04
        add     eax, ecx                                ; 100118ED _ 03. C1
        lea     eax, [eax+eax*2]                        ; 100118EF _ 8D. 04 40
        mov     cl, byte [edi+eax*4]                    ; 100118F2 _ 8A. 0C 87
        pop     edi                                     ; 100118F5 _ 5F
        cmp     cl, 29                                  ; 100118F6 _ 80. F9, 1D
        jz      ?_2026                                  ; 100118F9 _ 74, 07
        mov     eax, 4294967294                         ; 100118FB _ B8, FFFFFFFE
        pop     esi                                     ; 10011900 _ 5E
        ret                                             ; 10011901 _ C3

?_2026: mov     eax, dword [edx+65H]                    ; 10011902 _ 8B. 42, 65
        test    eax, eax                                ; 10011905 _ 85. C0
        jnz     ?_2027                                  ; 10011907 _ 75, 07
        mov     eax, 4294967293                         ; 10011909 _ B8, FFFFFFFD
        pop     esi                                     ; 1001190E _ 5E
        ret                                             ; 1001190F _ C3

?_2027: mov     ecx, dword [esi+13H]                    ; 10011910 _ 8B. 4E, 13
        push    ecx                                     ; 10011913 _ 51
        push    edx                                     ; 10011914 _ 52
        call    ?_1931                                  ; 10011915 _ E8, FFFFEF36
        add     esp, 8                                  ; 1001191A _ 83. C4, 08
        xor     edx, edx                                ; 1001191D _ 33. D2
        test    eax, eax                                ; 1001191F _ 85. C0
        setle   dl                                      ; 10011921 _ 0F 9E. C2
        dec     edx                                     ; 10011924 _ 4A
        pop     esi                                     ; 10011925 _ 5E
        and     edx, 04H                                ; 10011926 _ 83. E2, 04
        add     edx, -4                                 ; 10011929 _ 83. C2, FC
        mov     eax, edx                                ; 1001192C _ 8B. C2
        ret                                             ; 1001192E _ C3

