; ---- 100140A9 ----
?_2193: ; Local function
        push    ebp                                     ; 100140A9 _ 55
        push    esi                                     ; 100140AA _ 56
        push    edi                                     ; 100140AB _ 57
        push    10                                      ; 100140AC _ 6A, 0A
        push    5                                       ; 100140AE _ 6A, 05
        push    1                                       ; 100140B0 _ 6A, 01
        call    ?_2609                                  ; 100140B2 _ E8, 00003029
        mov     dword [?_5533], eax                     ; 100140B7 _ A3, 1003543C(d)
        mov     eax, dword [?_5338]                     ; 100140BC _ A1, 1002D4EC(d)
        add     esp, 12                                 ; 100140C1 _ 83. C4, 0C
        cmp     eax, 65559                              ; 100140C4 _ 3D, 00010017
        jl      ?_2195                                  ; 100140C9 _ 7C, 1D
        mov     esi, ?_5550                             ; 100140CB _ BE, 10035478(d)
?_2194: mov     ecx, dword [esi]                        ; 100140D0 _ 8B. 0E
        push    ecx                                     ; 100140D2 _ 51
        call    ?_2817                                  ; 100140D3 _ E8, 000043C8
        mov     dword [esi], eax                        ; 100140D8 _ 89. 06
        add     esi, 4                                  ; 100140DA _ 83. C6, 04
        add     esp, 4                                  ; 100140DD _ 83. C4, 04
        cmp     esi, ?_5551                             ; 100140E0 _ 81. FE, 10035498(d)
        jl      ?_2194                                  ; 100140E6 _ 7C, E8
?_2195: mov     esi, ?_5649                             ; 100140E8 _ BE, 10035A10(d)
        mov     edi, 65535                              ; 100140ED _ BF, 0000FFFF
?_2196: cmp     word [esi-170H], di                     ; 100140F2 _ 66: 39. BE, FFFFFE90
        jz      ?_2200                                  ; 100140F9 _ 74, 3E
        mov     ecx, dword [esi-4H]                     ; 100140FB _ 8B. 4E, FC
        lea     eax, [esi-4H]                           ; 100140FE _ 8D. 46, FC
        cmp     ecx, -1                                 ; 10014101 _ 83. F9, FF
        jnz     ?_2197                                  ; 10014104 _ 75, 08
        mov     dword [eax], 0                          ; 10014106 _ C7. 00, 00000000
        jmp     ?_2198                                  ; 1001410C _ EB, 0E

?_2197: push    ecx                                     ; 1001410E _ 51
        push    0                                       ; 1001410F _ 6A, 00
        push    0                                       ; 10014111 _ 6A, 00
        push    eax                                     ; 10014113 _ 50
        call    ?_2425                                  ; 10014114 _ E8, 00001D77
        add     esp, 16                                 ; 10014119 _ 83. C4, 10
?_2198: mov     eax, dword [esi]                        ; 1001411C _ 8B. 06
        cmp     eax, -1                                 ; 1001411E _ 83. F8, FF
        jnz     ?_2199                                  ; 10014121 _ 75, 08
        mov     dword [esi], 0                          ; 10014123 _ C7. 06, 00000000
        jmp     ?_2200                                  ; 10014129 _ EB, 0E

?_2199: push    eax                                     ; 1001412B _ 50
        push    0                                       ; 1001412C _ 6A, 00
        push    0                                       ; 1001412E _ 6A, 00
        push    esi                                     ; 10014130 _ 56
        call    ?_2425                                  ; 10014131 _ E8, 00001D5A
        add     esp, 16                                 ; 10014136 _ 83. C4, 10
?_2200: add     esi, 540                                ; 10014139 _ 81. C6, 0000021C
        cmp     esi, ?_5661                             ; 1001413F _ 81. FE, 1009AE10(d)
        jl      ?_2196                                  ; 10014145 _ 7C, AB
        mov     eax, dword [?_5539]                     ; 10014147 _ A1, 10035450(d)
        xor     ebp, ebp                                ; 1001414C _ 33. ED
        test    eax, eax                                ; 1001414E _ 85. C0
        jle     ?_2214                                  ; 10014150 _ 0F 8E, 000000F4
        xor     edi, edi                                ; 10014156 _ 33. FF
?_2201: mov     edx, dword [?_5669]                     ; 10014158 _ 8B. 15, 100A8C34(d)
        xor     eax, eax                                ; 1001415E _ 33. C0
        mov     ax, word [edi+edx]                      ; 10014160 _ 66: 8B. 04 17
        lea     esi, [edi+edx]                          ; 10014164 _ 8D. 34 17
        mov     edx, dword [?_5693]                     ; 10014167 _ 8B. 15, 101DE450(d)
        mov     ecx, eax                                ; 1001416D _ 8B. C8
        shl     ecx, 6                                  ; 1001416F _ C1. E1, 06
        add     edx, ecx                                ; 10014172 _ 03. D1
        cmp     byte [eax+edx], 29                      ; 10014174 _ 80. 3C 10, 1D
        jnz     ?_2202                                  ; 10014178 _ 75, 07
        mov     dword [esi+24H], 0                      ; 1001417A _ C7. 46, 24, 00000000
?_2202: mov     eax, dword [esi+6H]                     ; 10014181 _ 8B. 46, 06
        cmp     eax, -1                                 ; 10014184 _ 83. F8, FF
        je      ?_2213                                  ; 10014187 _ 0F 84, 000000AC
        push    eax                                     ; 1001418D _ 50
        lea     eax, [esp+18H]                          ; 1001418E _ 8D. 44 24, 18
        lea     ecx, [esp+14H]                          ; 10014192 _ 8D. 4C 24, 14
        push    eax                                     ; 10014196 _ 50
        lea     edx, [esp+14H]                          ; 10014197 _ 8D. 54 24, 14
        push    ecx                                     ; 1001419B _ 51
        push    edx                                     ; 1001419C _ 52
        call    ?_2425                                  ; 1001419D _ E8, 00001CEE
        add     esp, 16                                 ; 100141A2 _ 83. C4, 10
        test    eax, eax                                ; 100141A5 _ 85. C0
        jnz     ?_2203                                  ; 100141A7 _ 75, 1B
        push    1                                       ; 100141A9 _ 6A, 01
        push    ?_5345                                  ; 100141AB _ 68, 1002D520(d)
        push    4176                                    ; 100141B0 _ 68, 00001050
        push    ?_5346                                  ; 100141B5 _ 68, 1002D550(d)
        call    ?_0267                                  ; 100141BA _ E8, FFFEF481
        add     esp, 16                                 ; 100141BF _ 83. C4, 10
        jmp     ?_2213                                  ; 100141C2 _ EB, 75

?_2203: mov     eax, dword [esp+0CH]                    ; 100141C4 _ 8B. 44 24, 0C
        test    eax, eax                                ; 100141C8 _ 85. C0
        jz      ?_2206                                  ; 100141CA _ 74, 1E
        mov     ecx, dword [eax+5DH]                    ; 100141CC _ 8B. 48, 5D
        test    ecx, ecx                                ; 100141CF _ 85. C9
        jnz     ?_2204                                  ; 100141D1 _ 75, 05
        mov     dword [eax+5DH], esi                    ; 100141D3 _ 89. 70, 5D
        jmp     ?_2213                                  ; 100141D6 _ EB, 61

?_2204: mov     eax, dword [ecx+3FH]                    ; 100141D8 _ 8B. 41, 3F
        test    eax, eax                                ; 100141DB _ 85. C0
        jz      ?_2212                                  ; 100141DD _ 74, 57
?_2205: mov     ecx, eax                                ; 100141DF _ 8B. C8
        mov     eax, dword [ecx+3FH]                    ; 100141E1 _ 8B. 41, 3F
        test    eax, eax                                ; 100141E4 _ 85. C0
        jnz     ?_2205                                  ; 100141E6 _ 75, F7
        jmp     ?_2212                                  ; 100141E8 _ EB, 4C

?_2206: mov     eax, dword [esp+10H]                    ; 100141EA _ 8B. 44 24, 10
        test    eax, eax                                ; 100141EE _ 85. C0
        jz      ?_2209                                  ; 100141F0 _ 74, 1E
        mov     ecx, dword [eax+14H]                    ; 100141F2 _ 8B. 48, 14
        test    ecx, ecx                                ; 100141F5 _ 85. C9
        jnz     ?_2207                                  ; 100141F7 _ 75, 05
        mov     dword [eax+14H], esi                    ; 100141F9 _ 89. 70, 14
        jmp     ?_2213                                  ; 100141FC _ EB, 3B

?_2207: mov     eax, dword [ecx+3FH]                    ; 100141FE _ 8B. 41, 3F
        test    eax, eax                                ; 10014201 _ 85. C0
        jz      ?_2212                                  ; 10014203 _ 74, 31
?_2208: mov     ecx, eax                                ; 10014205 _ 8B. C8
        mov     eax, dword [ecx+3FH]                    ; 10014207 _ 8B. 41, 3F
        test    eax, eax                                ; 1001420A _ 85. C0
        jnz     ?_2208                                  ; 1001420C _ 75, F7
        jmp     ?_2212                                  ; 1001420E _ EB, 26

?_2209: mov     eax, dword [esp+14H]                    ; 10014210 _ 8B. 44 24, 14
        mov     ecx, dword [eax+178H]                   ; 10014214 _ 8B. 88, 00000178
        test    ecx, ecx                                ; 1001421A _ 85. C9
        jnz     ?_2210                                  ; 1001421C _ 75, 08
        mov     dword [eax+178H], esi                   ; 1001421E _ 89. B0, 00000178
        jmp     ?_2213                                  ; 10014224 _ EB, 13

?_2210: mov     eax, dword [ecx+3FH]                    ; 10014226 _ 8B. 41, 3F
        test    eax, eax                                ; 10014229 _ 85. C0
        jz      ?_2212                                  ; 1001422B _ 74, 09
?_2211: mov     ecx, eax                                ; 1001422D _ 8B. C8
        mov     eax, dword [ecx+3FH]                    ; 1001422F _ 8B. 41, 3F
        test    eax, eax                                ; 10014232 _ 85. C0
        jnz     ?_2211                                  ; 10014234 _ 75, F7
?_2212: mov     dword [ecx+3FH], esi                    ; 10014236 _ 89. 71, 3F
?_2213: mov     eax, dword [?_5539]                     ; 10014239 _ A1, 10035450(d)
        inc     ebp                                     ; 1001423E _ 45
        add     edi, 67                                 ; 1001423F _ 83. C7, 43
        cmp     ebp, eax                                ; 10014242 _ 3B. E8
        jl      ?_2201                                  ; 10014244 _ 0F 8C, FFFFFF0E
?_2214: call    ?_3016                                  ; 1001424A _ E8, 00005E11
        pop     edi                                     ; 1001424F _ 5F
        pop     esi                                     ; 10014250 _ 5E
        mov     eax, 1                                  ; 10014251 _ B8, 00000001
        pop     ebp                                     ; 10014256 _ 5D
        add     esp, 12                                 ; 10014257 _ 83. C4, 0C
        ret                                             ; 1001425A _ C3

        nop                                             ; 1001425B _ 90
        nop                                             ; 1001425C _ 90
        nop                                             ; 1001425D _ 90
        nop                                             ; 1001425E _ 90
        nop                                             ; 1001425F _ 90

