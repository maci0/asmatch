; ---- 10014DB0 ----
?_2300: ; Local function
        sub     esp, 128                                ; 10014DB0 _ 81. EC, 00000080
        xor     eax, eax                                ; 10014DB6 _ 33. C0
; Note: Zero displacement could be omitted
        lea     ecx, [esp]                              ; 10014DB8 _ 8D. 4C 24, 00
        push    esi                                     ; 10014DBC _ 56
        mov     esi, dword [esp+8CH]                    ; 10014DBD _ 8B. B4 24, 0000008C
        mov     al, byte [esi+10H]                      ; 10014DC4 _ 8A. 46, 10
        push    eax                                     ; 10014DC7 _ 50
        push    ?_5367                                  ; 10014DC8 _ 68, 1002D858(d)
        push    ecx                                     ; 10014DCD _ 51
        call    ?_3039                                  ; 10014DCE _ E8, 000054C6
        lea     edx, [esp+10H]                          ; 10014DD3 _ 8D. 54 24, 10
        push    1                                       ; 10014DD7 _ 6A, 01
        push    edx                                     ; 10014DD9 _ 52
        push    933                                     ; 10014DDA _ 68, 000003A5
        push    ?_5358                                  ; 10014DDF _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014DE4 _ E8, FFFEE857
        mov     eax, dword [esi+10H]                    ; 10014DE9 _ 8B. 46, 10
        add     esp, 28                                 ; 10014DEC _ 83. C4, 1C
        cmp     eax, 6                                  ; 10014DEF _ 83. F8, 06
        ja      ?_2308                                  ; 10014DF2 _ 0F 87, 000000B6
        jmp     near [?_2309+eax*4]                     ; 10014DF8 _ FF. 24 85, 10014EBC(d)

?_2301: mov     eax, dword [esp+88H]                    ; 10014DFF _ 8B. 84 24, 00000088
        push    esi                                     ; 10014E06 _ 56
        push    eax                                     ; 10014E07 _ 50
        call    ?_2234                                  ; 10014E08 _ E8, FFFFF7D3
        add     esp, 8                                  ; 10014E0D _ 83. C4, 08
        pop     esi                                     ; 10014E10 _ 5E
        add     esp, 128                                ; 10014E11 _ 81. C4, 00000080
        ret                                             ; 10014E17 _ C3

?_2302: mov     ecx, dword [esp+88H]                    ; 10014E18 _ 8B. 8C 24, 00000088
        push    esi                                     ; 10014E1F _ 56
        push    ecx                                     ; 10014E20 _ 51
        call    ?_2239                                  ; 10014E21 _ E8, FFFFF89A
        add     esp, 8                                  ; 10014E26 _ 83. C4, 08
        pop     esi                                     ; 10014E29 _ 5E
        add     esp, 128                                ; 10014E2A _ 81. C4, 00000080
        ret                                             ; 10014E30 _ C3

?_2303: mov     edx, dword [esp+88H]                    ; 10014E31 _ 8B. 94 24, 00000088
        push    esi                                     ; 10014E38 _ 56
        push    edx                                     ; 10014E39 _ 52
        call    ?_2249                                  ; 10014E3A _ E8, FFFFF971
        add     esp, 8                                  ; 10014E3F _ 83. C4, 08
        pop     esi                                     ; 10014E42 _ 5E
        add     esp, 128                                ; 10014E43 _ 81. C4, 00000080
        ret                                             ; 10014E49 _ C3

?_2304: mov     eax, dword [esp+88H]                    ; 10014E4A _ 8B. 84 24, 00000088
        push    esi                                     ; 10014E51 _ 56
        push    eax                                     ; 10014E52 _ 50
        call    ?_2268                                  ; 10014E53 _ E8, FFFFFBF8
        add     esp, 8                                  ; 10014E58 _ 83. C4, 08
        pop     esi                                     ; 10014E5B _ 5E
        add     esp, 128                                ; 10014E5C _ 81. C4, 00000080
        ret                                             ; 10014E62 _ C3

?_2305: mov     ecx, dword [esp+88H]                    ; 10014E63 _ 8B. 8C 24, 00000088
        push    esi                                     ; 10014E6A _ 56
        push    ecx                                     ; 10014E6B _ 51
        call    ?_2275                                  ; 10014E6C _ E8, FFFFFC7F
        add     esp, 8                                  ; 10014E71 _ 83. C4, 08
        pop     esi                                     ; 10014E74 _ 5E
        add     esp, 128                                ; 10014E75 _ 81. C4, 00000080
        ret                                             ; 10014E7B _ C3

?_2306: mov     edx, dword [esp+88H]                    ; 10014E7C _ 8B. 94 24, 00000088
        push    esi                                     ; 10014E83 _ 56
        push    edx                                     ; 10014E84 _ 52
        call    ?_2285                                  ; 10014E85 _ E8, FFFFFD66
        add     esp, 8                                  ; 10014E8A _ 83. C4, 08
        pop     esi                                     ; 10014E8D _ 5E
        add     esp, 128                                ; 10014E8E _ 81. C4, 00000080
        ret                                             ; 10014E94 _ C3

?_2307: mov     eax, dword [esp+88H]                    ; 10014E95 _ 8B. 84 24, 00000088
        push    esi                                     ; 10014E9C _ 56
        push    eax                                     ; 10014E9D _ 50
        call    ?_2290                                  ; 10014E9E _ E8, FFFFFDFD
        add     esp, 8                                  ; 10014EA3 _ 83. C4, 08
        pop     esi                                     ; 10014EA6 _ 5E
        add     esp, 128                                ; 10014EA7 _ 81. C4, 00000080
        ret                                             ; 10014EAD _ C3

