; ---- 1000A860 ----
?_1098: ; Local function
        push    ebx                                     ; 1000A860 _ 53
        push    esi                                     ; 1000A861 _ 56
        push    edi                                     ; 1000A862 _ 57
        mov     ebx, ?_5761                             ; 1000A863 _ BB, 101DEB00(d)
?_1099: test    byte [ebx], 01H                         ; 1000A868 _ F6. 03, 01
        jz      ?_1102                                  ; 1000A86B _ 74, 59
        push    ebx                                     ; 1000A86D _ 53
        call    ?_1073                                  ; 1000A86E _ E8, FFFFFC1D
        add     esp, 4                                  ; 1000A873 _ 83. C4, 04
        cmp     eax, -1                                 ; 1000A876 _ 83. F8, FF
        jz      ?_1103                                  ; 1000A879 _ 74, 5B
?_1100: mov     esi, dword [ebx+2641F4H]                ; 1000A87B _ 8B. B3, 002641F4
        test    esi, esi                                ; 1000A881 _ 85. F6
        jz      ?_1101                                  ; 1000A883 _ 74, 3C
        mov     ecx, dword [ebx]                        ; 1000A885 _ 8B. 0B
        test    ch, 01H                                 ; 1000A887 _ F6. C5, 01
        jz      ?_1101                                  ; 1000A88A _ 74, 35
        lea     edi, [ebx+0B1H]                         ; 1000A88C _ 8D. BB, 000000B1
        mov     ecx, 38                                 ; 1000A892 _ B9, 00000026
        rep movsd                                       ; 1000A897 _ F3: A5
        movsb                                           ; 1000A899 _ A4
        mov     eax, dword [ebx+2641F4H]                ; 1000A89A _ 8B. 83, 002641F4
        push    eax                                     ; 1000A8A0 _ 50
        push    ebx                                     ; 1000A8A1 _ 53
        call    ?_1115                                  ; 1000A8A2 _ E8, 000001A9
        mov     edi, dword [ebx]                        ; 1000A8A7 _ 8B. 3B
        push    ebx                                     ; 1000A8A9 _ 53
        and     edi, 0FFFFFEFFH                         ; 1000A8AA _ 81. E7, FFFFFEFF
        mov     dword [ebx], edi                        ; 1000A8B0 _ 89. 3B
        call    ?_1073                                  ; 1000A8B2 _ E8, FFFFFBD9
        add     esp, 12                                 ; 1000A8B7 _ 83. C4, 0C
        cmp     eax, -1                                 ; 1000A8BA _ 83. F8, FF
        jz      ?_1103                                  ; 1000A8BD _ 74, 17
        jmp     ?_1100                                  ; 1000A8BF _ EB, BA

?_1101: cmp     eax, -1                                 ; 1000A8C1 _ 83. F8, FF
        jz      ?_1103                                  ; 1000A8C4 _ 74, 10
?_1102: add     ebx, 2507364                            ; 1000A8C6 _ 81. C3, 00264264
        cmp     ebx, ?_5770                             ; 1000A8CC _ 81. FB, 114FFE20(d)
        jge     ?_1104                                  ; 1000A8D2 _ 7D, 09
        jmp     ?_1099                                  ; 1000A8D4 _ EB, 92

?_1103: pop     edi                                     ; 1000A8D6 _ 5F
        pop     esi                                     ; 1000A8D7 _ 5E
        or      eax, 0FFFFFFFFH                         ; 1000A8D8 _ 83. C8, FF
        pop     ebx                                     ; 1000A8DB _ 5B
        ret                                             ; 1000A8DC _ C3
