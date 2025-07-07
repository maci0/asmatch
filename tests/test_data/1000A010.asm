; ---- 1000A010 ----
?_1047: ; Local function
        push    ebx                                     ; 1000A010 _ 53
        mov     ebx, dword [imp_WS2_32_Ordinal_3]       ; 1000A011 _ 8B. 1D, 10024198(d)
        push    esi                                     ; 1000A017 _ 56
        push    edi                                     ; 1000A018 _ 57
        mov     edi, dword [imp_WS2_32_Ordinal_22]      ; 1000A019 _ 8B. 3D, 10024174(d)
        mov     esi, ?_5763                             ; 1000A01F _ BE, 101DEB14(d)
?_1048: mov     eax, dword [esi-14H]                    ; 1000A024 _ 8B. 46, EC
        test    eax, eax                                ; 1000A027 _ 85. C0
        jz      ?_1049                                  ; 1000A029 _ 74, 0C
        mov     eax, dword [esi]                        ; 1000A02B _ 8B. 06
        push    2                                       ; 1000A02D _ 6A, 02
        push    eax                                     ; 1000A02F _ 50
        call    edi                                     ; 1000A030 _ FF. D7
        mov     ecx, dword [esi]                        ; 1000A032 _ 8B. 0E
        push    ecx                                     ; 1000A034 _ 51
        call    ebx                                     ; 1000A035 _ FF. D3
?_1049: add     esi, 2507364                            ; 1000A037 _ 81. C6, 00264264
        cmp     esi, ?_5772                             ; 1000A03D _ 81. FE, 114FFE34(d)
        jl      ?_1048                                  ; 1000A043 _ 7C, DF
        mov     edx, dword [?_5759]                     ; 1000A045 _ 8B. 15, 101DEAEC(d)
        push    2                                       ; 1000A04B _ 6A, 02
        push    edx                                     ; 1000A04D _ 52
        call    edi                                     ; 1000A04E _ FF. D7
        mov     eax, dword [?_5759]                     ; 1000A050 _ A1, 101DEAEC(d)
        push    eax                                     ; 1000A055 _ 50
        call    ebx                                     ; 1000A056 _ FF. D3
        call    near [imp_WS2_32_Ordinal_116]           ; 1000A058 _ FF. 15, 1002417C(d)
        call    ?_2765                                  ; 1000A05E _ E8, 0000E06D
        call    ?_2404                                  ; 1000A063 _ E8, 0000BC48
        call    ?_2407                                  ; 1000A068 _ E8, 0000BC83
        call    ?_2418                                  ; 1000A06D _ E8, 0000BD8E
        call    ?_0686                                  ; 1000A072 _ E8, FFFFCB89
        call    ?_0255                                  ; 1000A077 _ E8, FFFF9444
        pop     edi                                     ; 1000A07C _ 5F
        pop     esi                                     ; 1000A07D _ 5E
        pop     ebx                                     ; 1000A07E _ 5B
        ret                                             ; 1000A07F _ C3

