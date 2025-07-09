; ---- 1000A2E0 ----
?_1064: ; Local function
        push    esi                                     ; 1000A2E0 _ 56
        mov     esi, dword [esp+8H]                     ; 1000A2E1 _ 8B. 74 24, 08
        push    edi                                     ; 1000A2E5 _ 57
        push    2                                       ; 1000A2E6 _ 6A, 02
        mov     eax, dword [esi+14H]                    ; 1000A2E8 _ 8B. 46, 14
        push    eax                                     ; 1000A2EB _ 50
        call    near [imp_WS2_32_Ordinal_22]            ; 1000A2EC _ FF. 15, 10024174(d)
        mov     ecx, dword [esi+14H]                    ; 1000A2F2 _ 8B. 4E, 14
        push    ecx                                     ; 1000A2F5 _ 51
        call    near [imp_WS2_32_Ordinal_3]             ; 1000A2F6 _ FF. 15, 10024198(d)
        mov     ecx, 21                                 ; 1000A2FC _ B9, 00000015
        xor     eax, eax                                ; 1000A301 _ 33. C0
        lea     edi, [esi+26420CH]                      ; 1000A303 _ 8D. BE, 0026420C
        mov     dword [esi], 0                          ; 1000A309 _ C7. 06, 00000000
        mov     dword [esi+14H], -1                     ; 1000A30F _ C7. 46, 14, FFFFFFFF
        mov     dword [esi+4H], 0                       ; 1000A316 _ C7. 46, 04, 00000000
        rep stosd                                       ; 1000A31D _ F3: AB
        stosw                                           ; 1000A31F _ 66: AB
        push    1                                       ; 1000A321 _ 6A, 01
        push    ?_5224                                  ; 1000A323 _ 68, 100299EC(d)
        push    1280                                    ; 1000A328 _ 68, 00000500
        push    ?_5209                                  ; 1000A32D _ 68, 100298B0(d)
        stosb                                           ; 1000A332 _ AA
        call    ?_0267                                  ; 1000A333 _ E8, FFFF9308
        add     esp, 16                                 ; 1000A338 _ 83. C4, 10
        xor     eax, eax                                ; 1000A33B _ 33. C0
        pop     edi                                     ; 1000A33D _ 5F
        pop     esi                                     ; 1000A33E _ 5E
        ret                                             ; 1000A33F _ C3
