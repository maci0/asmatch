; ---- 100038B4 ----
?_0293: ; Local function
        mov     eax, dword [esi+50H]                    ; 100038B4 _ 8B. 46, 50
        test    eax, eax                                ; 100038B7 _ 85. C0
        jz      ?_0294                                  ; 100038B9 _ 74, 09
        push    eax                                     ; 100038BB _ 50
        call    ?_3158                                  ; 100038BC _ E8, 000172C0
        add     esp, 4                                  ; 100038C1 _ 83. C4, 04
?_0294: mov     eax, dword [esi+1CH]                    ; 100038C4 _ 8B. 46, 1C
        test    eax, eax                                ; 100038C7 _ 85. C0
        jz      ?_0297                                  ; 100038C9 _ 74, 1E
        mov     al, byte [esi+5CH]                      ; 100038CB _ 8A. 46, 5C
        cmp     al, 119                                 ; 100038CE _ 3C, 77
        jnz     ?_0295                                  ; 100038D0 _ 75, 08
        push    esi                                     ; 100038D2 _ 56
        call    ?_0058                                  ; 100038D3 _ E8, FFFFE038
        jmp     ?_0296                                  ; 100038D8 _ EB, 0A

?_0295: cmp     al, 114                                 ; 100038DA _ 3C, 72
        jnz     ?_0297                                  ; 100038DC _ 75, 0B
        push    esi                                     ; 100038DE _ 56
        call    ?_0527                                  ; 100038DF _ E8, 00001E8C
?_0296: add     esp, 4                                  ; 100038E4 _ 83. C4, 04
        mov     edi, eax                                ; 100038E7 _ 8B. F8
?_0297: mov     eax, dword [esi+40H]                    ; 100038E9 _ 8B. 46, 40
        test    eax, eax                                ; 100038EC _ 85. C0
        jz      ?_0298                                  ; 100038EE _ 74, 1A
        push    eax                                     ; 100038F0 _ 50
        call    ?_3029                                  ; 100038F1 _ E8, 00016894
        add     esp, 4                                  ; 100038F6 _ 83. C4, 04
        test    eax, eax                                ; 100038F9 _ 85. C0
        jz      ?_0298                                  ; 100038FB _ 74, 0D
        call    ?_3107                                  ; 100038FD _ E8, 00016EE3
        cmp     dword [eax], 29                         ; 10003902 _ 83. 38, 1D
        jz      ?_0298                                  ; 10003905 _ 74, 03
        or      edi, 0FFFFFFFFH                         ; 10003907 _ 83. CF, FF
?_0298: mov     eax, dword [esi+38H]                    ; 1000390A _ 8B. 46, 38
        test    eax, eax                                ; 1000390D _ 85. C0
        jge     ?_0299                                  ; 1000390F _ 7D, 02
        mov     edi, eax                                ; 10003911 _ 8B. F8
?_0299: mov     eax, dword [esi+44H]                    ; 10003913 _ 8B. 46, 44
        test    eax, eax                                ; 10003916 _ 85. C0
        jz      ?_0300                                  ; 10003918 _ 74, 09
        push    eax                                     ; 1000391A _ 50
        call    ?_3158                                  ; 1000391B _ E8, 00017261
        add     esp, 4                                  ; 10003920 _ 83. C4, 04
?_0300: mov     eax, dword [esi+48H]                    ; 10003923 _ 8B. 46, 48
        test    eax, eax                                ; 10003926 _ 85. C0
        jz      ?_0301                                  ; 10003928 _ 74, 09
        push    eax                                     ; 1000392A _ 50
        call    ?_3158                                  ; 1000392B _ E8, 00017251
        add     esp, 4                                  ; 10003930 _ 83. C4, 04
?_0301: mov     eax, dword [esi+54H]                    ; 10003933 _ 8B. 46, 54
        test    eax, eax                                ; 10003936 _ 85. C0
        jz      ?_0302                                  ; 10003938 _ 74, 09
        push    eax                                     ; 1000393A _ 50
        call    ?_3158                                  ; 1000393B _ E8, 00017241
        add     esp, 4                                  ; 10003940 _ 83. C4, 04
?_0302: push    esi                                     ; 10003943 _ 56
        call    ?_3158                                  ; 10003944 _ E8, 00017238
        add     esp, 4                                  ; 10003949 _ 83. C4, 04
        mov     eax, edi                                ; 1000394C _ 8B. C7
        pop     edi                                     ; 1000394E _ 5F
        pop     esi                                     ; 1000394F _ 5E
        ret                                             ; 10003950 _ C3

        nop                                             ; 10003951 _ 90
        nop                                             ; 10003952 _ 90
        nop                                             ; 10003953 _ 90
        nop                                             ; 10003954 _ 90
        nop                                             ; 10003955 _ 90
        nop                                             ; 10003956 _ 90
        nop                                             ; 10003957 _ 90
        nop                                             ; 10003958 _ 90
        nop                                             ; 10003959 _ 90
        nop                                             ; 1000395A _ 90
        nop                                             ; 1000395B _ 90
        nop                                             ; 1000395C _ 90
        nop                                             ; 1000395D _ 90
        nop                                             ; 1000395E _ 90
        nop                                             ; 1000395F _ 90
?_0303: push    ecx                                     ; 10003960 _ 51
        mov     ecx, dword [esp+0CH]                    ; 10003961 _ 8B. 4C 24, 0C
        push    ebx                                     ; 10003965 _ 53
        push    ebp                                     ; 10003966 _ 55
        mov     ebp, dword [esp+10H]                    ; 10003967 _ 8B. 6C 24, 10
        push    esi                                     ; 1000396B _ 56
        push    edi                                     ; 1000396C _ 57
        test    ebp, ebp                                ; 1000396D _ 85. ED
        mov     esi, ecx                                ; 1000396F _ 8B. F1
        je      ?_0319                                  ; 10003971 _ 0F 84, 0000020D
        cmp     byte [ebp+5CH], 114                     ; 10003977 _ 80. 7D, 5C, 72
        jne     ?_0319                                  ; 1000397B _ 0F 85, 00000203
        mov     eax, dword [ebp+38H]                    ; 10003981 _ 8B. 45, 38
        cmp     eax, -3                                 ; 10003984 _ 83. F8, FD
        je      ?_0318                                  ; 10003987 _ 0F 84, 000001EE
        cmp     eax, -1                                 ; 1000398D _ 83. F8, FF
        je      ?_0318                                  ; 10003990 _ 0F 84, 000001E5
        cmp     eax, 1                                  ; 10003996 _ 83. F8, 01
        jnz     ?_0304                                  ; 10003999 _ 75, 08
        pop     edi                                     ; 1000399B _ 5F
        pop     esi                                     ; 1000399C _ 5E
        pop     ebp                                     ; 1000399D _ 5D
        xor     eax, eax                                ; 1000399E _ 33. C0
        pop     ebx                                     ; 100039A0 _ 5B
        pop     ecx                                     ; 100039A1 _ 59
        ret                                             ; 100039A2 _ C3

?_0304: mov     ebx, dword [esp+20H]                    ; 100039A3 _ 8B. 5C 24, 20
        mov     dword [esp+10H], ecx                    ; 100039A7 _ 89. 4C 24, 10
        test    ebx, ebx                                ; 100039AB _ 85. DB
        mov     dword [ebp+0CH], ecx                    ; 100039AD _ 89. 4D, 0C
        mov     dword [ebp+10H], ebx                    ; 100039B0 _ 89. 5D, 10
        je      ?_0317                                  ; 100039B3 _ 0F 84, 0000019F
?_0305: mov     eax, dword [ebp+58H]                    ; 100039B9 _ 8B. 45, 58
        test    eax, eax                                ; 100039BC _ 85. C0
        mov     eax, dword [ebp+4H]                     ; 100039BE _ 8B. 45, 04
        jne     ?_0311                                  ; 100039C1 _ 0F 85, 000000F7
        test    eax, eax                                ; 100039C7 _ 85. C0
        jnz     ?_0307                                  ; 100039C9 _ 75, 4A
        mov     eax, dword [ebp+3CH]                    ; 100039CB _ 8B. 45, 3C
        test    eax, eax                                ; 100039CE _ 85. C0
        jnz     ?_0307                                  ; 100039D0 _ 75, 43
        call    ?_3107                                  ; 100039D2 _ E8, 00016E0E
        mov     dword [eax], 0                          ; 100039D7 _ C7. 00, 00000000
        mov     eax, dword [ebp+40H]                    ; 100039DD _ 8B. 45, 40
        mov     ecx, dword [ebp+44H]                    ; 100039E0 _ 8B. 4D, 44
        push    eax                                     ; 100039E3 _ 50
        push    16384                                   ; 100039E4 _ 68, 00004000
        push    1                                       ; 100039E9 _ 6A, 01
        push    ecx                                     ; 100039EB _ 51
        call    ?_3143                                  ; 100039EC _ E8, 00017079
        add     esp, 16                                 ; 100039F1 _ 83. C4, 10
        mov     dword [ebp+4H], eax                     ; 100039F4 _ 89. 45, 04
        test    eax, eax                                ; 100039F7 _ 85. C0
        jnz     ?_0306                                  ; 100039F9 _ 75, 14
        mov     edx, dword [ebp+40H]                    ; 100039FB _ 8B. 55, 40
        mov     dword [ebp+3CH], 1                      ; 100039FE _ C7. 45, 3C, 00000001
        test    byte [edx+0CH], 20H                     ; 10003A05 _ F6. 42, 0C, 20
        jne     ?_0316                                  ; 10003A09 _ 0F 85, 00000142
?_0306: mov     eax, dword [ebp+44H]                    ; 10003A0F _ 8B. 45, 44
        mov     dword [ebp], eax                        ; 10003A12 _ 89. 45, 00
?_0307: push    0                                       ; 10003A15 _ 6A, 00
        push    ebp                                     ; 10003A17 _ 55
        call    ?_0539                                  ; 10003A18 _ E8, 00001EB3
        add     esp, 8                                  ; 10003A1D _ 83. C4, 08
        cmp     eax, 1                                  ; 10003A20 _ 83. F8, 01
        mov     dword [ebp+38H], eax                    ; 10003A23 _ 89. 45, 38
        jnz     ?_0310                                  ; 10003A26 _ 75, 70
        mov     ecx, dword [ebp+0CH]                    ; 10003A28 _ 8B. 4D, 0C
        mov     edx, dword [ebp+4CH]                    ; 10003A2B _ 8B. 55, 4C
        sub     ecx, esi                                ; 10003A2E _ 2B. CE
        push    ecx                                     ; 10003A30 _ 51
        push    esi                                     ; 10003A31 _ 56
        push    edx                                     ; 10003A32 _ 52
        call    ?_0011                                  ; 10003A33 _ E8, FFFFD7B8
        mov     dword [ebp+4CH], eax                    ; 10003A38 _ 89. 45, 4C
        mov     eax, dword [ebp+0CH]                    ; 10003A3B _ 8B. 45, 0C
        push    ebp                                     ; 10003A3E _ 55
        mov     dword [esp+28H], eax                    ; 10003A3F _ 89. 44 24, 28
        call    ?_0329                                  ; 10003A43 _ E8, 00000208
        mov     ecx, dword [ebp+4CH]                    ; 10003A48 _ 8B. 4D, 4C
        add     esp, 16                                 ; 10003A4B _ 83. C4, 10
        cmp     eax, ecx                                ; 10003A4E _ 3B. C1
        jz      ?_0308                                  ; 10003A50 _ 74, 09
        mov     dword [ebp+38H], -3                     ; 10003A52 _ C7. 45, 38, FFFFFFFD
        jmp     ?_0309                                  ; 10003A59 _ EB, 39

?_0308: push    ebp                                     ; 10003A5B _ 55
        call    ?_0329                                  ; 10003A5C _ E8, 000001EF
        push    ebp                                     ; 10003A61 _ 55
        call    ?_0272                                  ; 10003A62 _ E8, FFFFFC69
        mov     eax, dword [ebp+38H]                    ; 10003A67 _ 8B. 45, 38
        add     esp, 8                                  ; 10003A6A _ 83. C4, 08
        test    eax, eax                                ; 10003A6D _ 85. C0
        jnz     ?_0309                                  ; 10003A6F _ 75, 23
        mov     esi, dword [ebp+8H]                     ; 10003A71 _ 8B. 75, 08
        mov     edi, dword [ebp+14H]                    ; 10003A74 _ 8B. 7D, 14
        push    ebp                                     ; 10003A77 _ 55
        call    ?_0525                                  ; 10003A78 _ E8, 00001CA3
        push    0                                       ; 10003A7D _ 6A, 00
        push    0                                       ; 10003A7F _ 6A, 00
        push    0                                       ; 10003A81 _ 6A, 00
        mov     dword [ebp+8H], esi                     ; 10003A83 _ 89. 75, 08
        mov     dword [ebp+14H], edi                    ; 10003A86 _ 89. 7D, 14
        call    ?_0011                                  ; 10003A89 _ E8, FFFFD762
        add     esp, 16                                 ; 10003A8E _ 83. C4, 10
        mov     dword [ebp+4CH], eax                    ; 10003A91 _ 89. 45, 4C
?_0309: mov     esi, dword [esp+18H]                    ; 10003A94 _ 8B. 74 24, 18
?_0310: mov     eax, dword [ebp+38H]                    ; 10003A98 _ 8B. 45, 38
        test    eax, eax                                ; 10003A9B _ 85. C0
        jne     ?_0317                                  ; 10003A9D _ 0F 85, 000000B5
        mov     eax, dword [ebp+3CH]                    ; 10003AA3 _ 8B. 45, 3C
        test    eax, eax                                ; 10003AA6 _ 85. C0
        jne     ?_0317                                  ; 10003AA8 _ 0F 85, 000000AA
        mov     eax, dword [ebp+10H]                    ; 10003AAE _ 8B. 45, 10
        test    eax, eax                                ; 10003AB1 _ 85. C0
        jne     ?_0305                                  ; 10003AB3 _ 0F 85, FFFFFF00
        jmp     ?_0317                                  ; 10003AB9 _ E9, 0000009A

?_0311: mov     ecx, dword [ebp+10H]                    ; 10003ABE _ 8B. 4D, 10
        cmp     eax, ecx                                ; 10003AC1 _ 3B. C1
        jbe     ?_0312                                  ; 10003AC3 _ 76, 02
        mov     eax, ecx                                ; 10003AC5 _ 8B. C1
?_0312: test    eax, eax                                ; 10003AC7 _ 85. C0
        jbe     ?_0313                                  ; 10003AC9 _ 76, 3B
        mov     esi, dword [ebp]                        ; 10003ACB _ 8B. 75, 00
        mov     edi, dword [ebp+0CH]                    ; 10003ACE _ 8B. 7D, 0C
        mov     ecx, eax                                ; 10003AD1 _ 8B. C8
        mov     edx, ecx                                ; 10003AD3 _ 8B. D1
        shr     ecx, 2                                  ; 10003AD5 _ C1. E9, 02
        rep movsd                                       ; 10003AD8 _ F3: A5
        mov     ecx, edx                                ; 10003ADA _ 8B. CA
        and     ecx, 03H                                ; 10003ADC _ 83. E1, 03
        rep movsb                                       ; 10003ADF _ F3: A4
        mov     ecx, dword [esp+1CH]                    ; 10003AE1 _ 8B. 4C 24, 1C
        mov     esi, dword [ebp]                        ; 10003AE5 _ 8B. 75, 00
        mov     edx, dword [ebp+10H]                    ; 10003AE8 _ 8B. 55, 10
        add     ecx, eax                                ; 10003AEB _ 03. C8
        mov     dword [esp+10H], ecx                    ; 10003AED _ 89. 4C 24, 10
        mov     dword [ebp+0CH], ecx                    ; 10003AF1 _ 89. 4D, 0C
        mov     ecx, dword [ebp+4H]                     ; 10003AF4 _ 8B. 4D, 04
        add     esi, eax                                ; 10003AF7 _ 03. F0
        sub     edx, eax                                ; 10003AF9 _ 2B. D0
        sub     ecx, eax                                ; 10003AFB _ 2B. C8
        mov     dword [ebp], esi                        ; 10003AFD _ 89. 75, 00
        mov     dword [ebp+10H], edx                    ; 10003B00 _ 89. 55, 10
        mov     dword [ebp+4H], ecx                     ; 10003B03 _ 89. 4D, 04
?_0313: mov     eax, dword [ebp+10H]                    ; 10003B06 _ 8B. 45, 10
        test    eax, eax                                ; 10003B09 _ 85. C0
        jbe     ?_0314                                  ; 10003B0B _ 76, 1C
        mov     edx, dword [ebp+40H]                    ; 10003B0D _ 8B. 55, 40
        push    edx                                     ; 10003B10 _ 52
        push    eax                                     ; 10003B11 _ 50
        mov     eax, dword [esp+18H]                    ; 10003B12 _ 8B. 44 24, 18
        push    1                                       ; 10003B16 _ 6A, 01
        push    eax                                     ; 10003B18 _ 50
        call    ?_3143                                  ; 10003B19 _ E8, 00016F4C
        mov     ecx, dword [ebp+10H]                    ; 10003B1E _ 8B. 4D, 10
        add     esp, 16                                 ; 10003B21 _ 83. C4, 10
        sub     ecx, eax                                ; 10003B24 _ 2B. C8
        mov     dword [ebp+10H], ecx                    ; 10003B26 _ 89. 4D, 10
?_0314: mov     esi, dword [ebp+10H]                    ; 10003B29 _ 8B. 75, 10
        mov     edx, dword [ebp+8H]                     ; 10003B2C _ 8B. 55, 08
        mov     ecx, dword [ebp+14H]                    ; 10003B2F _ 8B. 4D, 14
        sub     ebx, esi                                ; 10003B32 _ 2B. DE
        add     edx, ebx                                ; 10003B34 _ 03. D3
        add     ecx, ebx                                ; 10003B36 _ 03. CB
        test    ebx, ebx                                ; 10003B38 _ 85. DB
        mov     dword [ebp+8H], edx                     ; 10003B3A _ 89. 55, 08
        mov     dword [ebp+14H], ecx                    ; 10003B3D _ 89. 4D, 14
        jnz     ?_0315                                  ; 10003B40 _ 75, 07
        mov     dword [ebp+3CH], 1                      ; 10003B42 _ C7. 45, 3C, 00000001
?_0315: pop     edi                                     ; 10003B49 _ 5F
        pop     esi                                     ; 10003B4A _ 5E
        mov     eax, ebx                                ; 10003B4B _ 8B. C3
        pop     ebp                                     ; 10003B4D _ 5D
        pop     ebx                                     ; 10003B4E _ 5B
        pop     ecx                                     ; 10003B4F _ 59
        ret                                             ; 10003B50 _ C3

?_0316: mov     dword [ebp+38H], -1                     ; 10003B51 _ C7. 45, 38, FFFFFFFF
?_0317: mov     ecx, dword [ebp+0CH]                    ; 10003B58 _ 8B. 4D, 0C
        mov     edx, dword [ebp+4CH]                    ; 10003B5B _ 8B. 55, 4C
        sub     ecx, esi                                ; 10003B5E _ 2B. CE
        push    ecx                                     ; 10003B60 _ 51
        push    esi                                     ; 10003B61 _ 56
        push    edx                                     ; 10003B62 _ 52
        call    ?_0011                                  ; 10003B63 _ E8, FFFFD688
        mov     ecx, dword [ebp+10H]                    ; 10003B68 _ 8B. 4D, 10
        add     esp, 12                                 ; 10003B6B _ 83. C4, 0C
        mov     dword [ebp+4CH], eax                    ; 10003B6E _ 89. 45, 4C
        mov     eax, ebx                                ; 10003B71 _ 8B. C3
        pop     edi                                     ; 10003B73 _ 5F
        pop     esi                                     ; 10003B74 _ 5E
        pop     ebp                                     ; 10003B75 _ 5D
        sub     eax, ecx                                ; 10003B76 _ 2B. C1
        pop     ebx                                     ; 10003B78 _ 5B
        pop     ecx                                     ; 10003B79 _ 59
        ret                                             ; 10003B7A _ C3

?_0318: pop     edi                                     ; 10003B7B _ 5F
        pop     esi                                     ; 10003B7C _ 5E
        pop     ebp                                     ; 10003B7D _ 5D
        or      eax, 0FFFFFFFFH                         ; 10003B7E _ 83. C8, FF
        pop     ebx                                     ; 10003B81 _ 5B
        pop     ecx                                     ; 10003B82 _ 59
        ret                                             ; 10003B83 _ C3
