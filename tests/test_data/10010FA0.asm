; ---- 10010FA0 ----
?_1970: ; Local function
        push    ecx                                     ; 10010FA0 _ 51
        push    ebx                                     ; 10010FA1 _ 53
        push    esi                                     ; 10010FA2 _ 56
        mov     esi, dword [esp+10H]                    ; 10010FA3 _ 8B. 74 24, 10
        push    edi                                     ; 10010FA7 _ 57
        lea     ecx, [esp+0CH]                          ; 10010FA8 _ 8D. 4C 24, 0C
        mov     eax, dword [esi+8H]                     ; 10010FAC _ 8B. 46, 08
        push    eax                                     ; 10010FAF _ 50
        push    0                                       ; 10010FB0 _ 6A, 00
        push    0                                       ; 10010FB2 _ 6A, 00
        push    ecx                                     ; 10010FB4 _ 51
        call    ?_2425                                  ; 10010FB5 _ E8, 00004ED6
        mov     edx, dword [esp+1CH]                    ; 10010FBA _ 8B. 54 24, 1C
        add     esp, 16                                 ; 10010FBE _ 83. C4, 10
        test    edx, edx                                ; 10010FC1 _ 85. D2
        je      ?_1980                                  ; 10010FC3 _ 0F 84, 000001DC
        mov     ax, word [edx+27H]                      ; 10010FC9 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 10010FCD _ 66: 3D, FFFF
        je      ?_1980                                  ; 10010FD1 _ 0F 84, 000001CE
        and     eax, 0FFFFH                             ; 10010FD7 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10010FDC _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10010FDF _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 10010FE2 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 10010FE5 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 10010FEC _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 10010FF1 _ 3B. C8
        je      ?_1980                                  ; 10010FF3 _ 0F 84, 000001AC
        xor     ecx, ecx                                ; 10010FF9 _ 33. C9
        mov     edi, dword [?_5668]                     ; 10010FFB _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 10011001 _ 8A. 0A
        add     edi, ecx                                ; 10011003 _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 10011005 _ 8D. 04 49
        shl     eax, 4                                  ; 10011008 _ C1. E0, 04
        add     eax, ecx                                ; 1001100B _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1001100D _ 8D. 04 40
        cmp     byte [edi+eax*4], 29                    ; 10011010 _ 80. 3C 87, 1D
        jz      ?_1971                                  ; 10011014 _ 74, 0A
        pop     edi                                     ; 10011016 _ 5F
        pop     esi                                     ; 10011017 _ 5E
        mov     eax, 4294967294                         ; 10011018 _ B8, FFFFFFFE
        pop     ebx                                     ; 1001101D _ 5B
        pop     ecx                                     ; 1001101E _ 59
        ret                                             ; 1001101F _ C3

?_1971: mov     edi, dword [edx+65H]                    ; 10011020 _ 8B. 7A, 65
        test    edi, edi                                ; 10011023 _ 85. FF
        jnz     ?_1972                                  ; 10011025 _ 75, 0A
        pop     edi                                     ; 10011027 _ 5F
        pop     esi                                     ; 10011028 _ 5E
        mov     eax, 4294967293                         ; 10011029 _ B8, FFFFFFFD
        pop     ebx                                     ; 1001102E _ 5B
        pop     ecx                                     ; 1001102F _ 59
        ret                                             ; 10011030 _ C3

?_1972: mov     ecx, dword [esi+0CH]                    ; 10011031 _ 8B. 4E, 0C
        push    ecx                                     ; 10011034 _ 51
        push    edi                                     ; 10011035 _ 57
        call    ?_1891                                  ; 10011036 _ E8, FFFFF4F5
        add     esp, 8                                  ; 1001103B _ 83. C4, 08
        test    eax, eax                                ; 1001103E _ 85. C0
        jnz     ?_1973                                  ; 10011040 _ 75, 0A
        pop     edi                                     ; 10011042 _ 5F
        pop     esi                                     ; 10011043 _ 5E
        mov     eax, 4294967292                         ; 10011044 _ B8, FFFFFFFC
        pop     ebx                                     ; 10011049 _ 5B
        pop     ecx                                     ; 1001104A _ 59
        ret                                             ; 1001104B _ C3

?_1973: mov     edx, dword [esi+4H]                     ; 1001104C _ 8B. 56, 04
        lea     eax, [esp+14H]                          ; 1001104F _ 8D. 44 24, 14
        push    edx                                     ; 10011053 _ 52
        push    eax                                     ; 10011054 _ 50
        push    0                                       ; 10011055 _ 6A, 00
        push    0                                       ; 10011057 _ 6A, 00
        call    ?_2425                                  ; 10011059 _ E8, 00004E32
        mov     eax, dword [esp+24H]                    ; 1001105E _ 8B. 44 24, 24
        add     esp, 16                                 ; 10011062 _ 83. C4, 10
        test    eax, eax                                ; 10011065 _ 85. C0
        jnz     ?_1974                                  ; 10011067 _ 75, 0A
        pop     edi                                     ; 10011069 _ 5F
        pop     esi                                     ; 1001106A _ 5E
        mov     eax, 4294967290                         ; 1001106B _ B8, FFFFFFFA
        pop     ebx                                     ; 10011070 _ 5B
        pop     ecx                                     ; 10011071 _ 59
        ret                                             ; 10011072 _ C3

?_1974: mov     cl, byte [esi+10H]                      ; 10011073 _ 8A. 4E, 10
        mov     edx, dword [esi+0CH]                    ; 10011076 _ 8B. 56, 0C
        push    ecx                                     ; 10011079 _ 51
        push    edx                                     ; 1001107A _ 52
        push    edi                                     ; 1001107B _ 57
        call    ?_1900                                  ; 1001107C _ E8, FFFFF52F
        add     esp, 12                                 ; 10011081 _ 83. C4, 0C
        test    eax, eax                                ; 10011084 _ 85. C0
        je      ?_1979                                  ; 10011086 _ 0F 84, 0000010F
        mov     ebx, dword [esp+14H]                    ; 1001108C _ 8B. 5C 24, 14
        mov     cx, word [eax+8H]                       ; 10011090 _ 66: 8B. 48, 08
        cmp     cx, word [ebx+50H]                      ; 10011094 _ 66: 3B. 4B, 50
        jne     ?_1979                                  ; 10011098 _ 0F 85, 000000FD
        mov     edi, dword [eax+10H]                    ; 1001109E _ 8B. 78, 10
        mov     eax, dword [esi+0CH]                    ; 100110A1 _ 8B. 46, 0C
        xor     ecx, ecx                                ; 100110A4 _ 33. C9
        push    ebp                                     ; 100110A6 _ 55
        mov     esi, dword [?_4926+eax*4]               ; 100110A7 _ 8B. 34 85, 1002574C(d)
        mov     edx, edi                                ; 100110AE _ 8B. D7
        test    esi, esi                                ; 100110B0 _ 85. F6
        jle     ?_1978                                  ; 100110B2 _ 7E, 2A
        mov     eax, edi                                ; 100110B4 _ 8B. C7
?_1975: cmp     dword [edx], -1                         ; 100110B6 _ 83. 3A, FF
        jz      ?_1978                                  ; 100110B9 _ 74, 23
        cmp     dword [eax], -1                         ; 100110BB _ 83. 38, FF
        jz      ?_1977                                  ; 100110BE _ 74, 14
        mov     ebp, dword [edx+40H]                    ; 100110C0 _ 8B. 6A, 40
        cmp     ebp, dword [eax+40H]                    ; 100110C3 _ 3B. 68, 40
        jle     ?_1976                                  ; 100110C6 _ 7E, 02
        mov     edx, eax                                ; 100110C8 _ 8B. D0
?_1976: inc     ecx                                     ; 100110CA _ 41
        add     eax, 68                                 ; 100110CB _ 83. C0, 44
        cmp     ecx, esi                                ; 100110CE _ 3B. CE
        jl      ?_1975                                  ; 100110D0 _ 7C, E4
        jmp     ?_1978                                  ; 100110D2 _ EB, 0A

?_1977: mov     edx, ecx                                ; 100110D4 _ 8B. D1
        shl     edx, 4                                  ; 100110D6 _ C1. E2, 04
        add     edx, ecx                                ; 100110D9 _ 03. D1
        lea     edx, [edi+edx*4]                        ; 100110DB _ 8D. 14 97
?_1978: mov     eax, dword [ebx+4H]                     ; 100110DE _ 8B. 43, 04
        lea     ebx, [edx+4H]                           ; 100110E1 _ 8D. 5A, 04
        mov     dword [edx], eax                        ; 100110E4 _ 89. 02
        mov     ecx, dword [esp+18H]                    ; 100110E6 _ 8B. 4C 24, 18
        xor     eax, eax                                ; 100110EA _ 33. C0
        pop     ebp                                     ; 100110EC _ 5D
        lea     edi, [ecx+30H]                          ; 100110ED _ 8D. 79, 30
        or      ecx, 0FFFFFFFFH                         ; 100110F0 _ 83. C9, FF
        repne scasb                                     ; 100110F3 _ F2: AE
        not     ecx                                     ; 100110F5 _ F7. D1
        sub     edi, ecx                                ; 100110F7 _ 2B. F9
        mov     eax, ecx                                ; 100110F9 _ 8B. C1
        mov     esi, edi                                ; 100110FB _ 8B. F7
        mov     edi, ebx                                ; 100110FD _ 8B. FB
        lea     ebx, [edx+14H]                          ; 100110FF _ 8D. 5A, 14
        shr     ecx, 2                                  ; 10011102 _ C1. E9, 02
        rep movsd                                       ; 10011105 _ F3: A5
        mov     ecx, eax                                ; 10011107 _ 8B. C8
        xor     eax, eax                                ; 10011109 _ 33. C0
        and     ecx, 03H                                ; 1001110B _ 83. E1, 03
        rep movsb                                       ; 1001110E _ F3: A4
        mov     ecx, dword [esp+14H]                    ; 10011110 _ 8B. 4C 24, 14
        lea     edi, [ecx+40H]                          ; 10011114 _ 8D. 79, 40
        or      ecx, 0FFFFFFFFH                         ; 10011117 _ 83. C9, FF
        repne scasb                                     ; 1001111A _ F2: AE
        not     ecx                                     ; 1001111C _ F7. D1
        sub     edi, ecx                                ; 1001111E _ 2B. F9
        mov     eax, ecx                                ; 10011120 _ 8B. C1
        mov     esi, edi                                ; 10011122 _ 8B. F7
        mov     edi, ebx                                ; 10011124 _ 8B. FB
        shr     ecx, 2                                  ; 10011126 _ C1. E9, 02
        rep movsd                                       ; 10011129 _ F3: A5
        mov     ecx, eax                                ; 1001112B _ 8B. C8
        lea     eax, [edx+24H]                          ; 1001112D _ 8D. 42, 24
        and     ecx, 03H                                ; 10011130 _ 83. E1, 03
        rep movsb                                       ; 10011133 _ F3: A4
        mov     ecx, dword [esp+14H]                    ; 10011135 _ 8B. 4C 24, 14
        pop     edi                                     ; 10011139 _ 5F
        add     ecx, 128                                ; 1001113A _ 81. C1, 00000080
        mov     esi, dword [ecx]                        ; 10011140 _ 8B. 31
        mov     dword [eax], esi                        ; 10011142 _ 89. 30
        pop     esi                                     ; 10011144 _ 5E
        mov     cl, byte [ecx+4H]                       ; 10011145 _ 8A. 49, 04
        pop     ebx                                     ; 10011148 _ 5B
        mov     byte [eax+4H], cl                       ; 10011149 _ 88. 48, 04
        mov     ecx, dword [esp+8H]                     ; 1001114C _ 8B. 4C 24, 08
        xor     eax, eax                                ; 10011150 _ 33. C0
        mov     al, byte [ecx+167H]                     ; 10011152 _ 8A. 81, 00000167
        mov     dword [edx+2CH], eax                    ; 10011158 _ 89. 42, 2C
        mov     ecx, dword [esp+8H]                     ; 1001115B _ 8B. 4C 24, 08
        xor     eax, eax                                ; 1001115F _ 33. C0
        mov     al, byte [ecx+0DH]                      ; 10011161 _ 8A. 41, 0D
        mov     dword [edx+30H], eax                    ; 10011164 _ 89. 42, 30
        mov     ecx, dword [esp+8H]                     ; 10011167 _ 8B. 4C 24, 08
        xor     eax, eax                                ; 1001116B _ 33. C0
        mov     al, byte [ecx+164H]                     ; 1001116D _ 8A. 81, 00000164
        mov     dword [edx+34H], eax                    ; 10011173 _ 89. 42, 34
        mov     ecx, dword [esp+8H]                     ; 10011176 _ 8B. 4C 24, 08
        xor     eax, eax                                ; 1001117A _ 33. C0
        mov     al, byte [ecx+9H]                       ; 1001117C _ 8A. 41, 09
        mov     dword [edx+38H], eax                    ; 1001117F _ 89. 42, 38
        mov     eax, dword [?_5628]                     ; 10011182 _ A1, 10035880(d)
        mov     dword [edx+40H], eax                    ; 10011187 _ 89. 42, 40
        mov     ecx, dword [esp+8H]                     ; 1001118A _ 8B. 4C 24, 08
        mov     eax, dword [ecx+18CH]                   ; 1001118E _ 8B. 81, 0000018C
        mov     dword [edx+3CH], eax                    ; 10011194 _ 89. 42, 3C
        xor     eax, eax                                ; 10011197 _ 33. C0
        pop     ecx                                     ; 10011199 _ 59
        ret                                             ; 1001119A _ C3

?_1979: pop     edi                                     ; 1001119B _ 5F
        pop     esi                                     ; 1001119C _ 5E
        mov     eax, 4294967289                         ; 1001119D _ B8, FFFFFFF9
        pop     ebx                                     ; 100111A2 _ 5B
        pop     ecx                                     ; 100111A3 _ 59
        ret                                             ; 100111A4 _ C3

