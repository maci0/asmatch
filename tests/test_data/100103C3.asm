; ---- 100103C3 ----
?_1876: ; Local function
        mov     ecx, dword [edi+10H]                    ; 100103C3 _ 8B. 4F, 10
        lea     eax, [edi+10H]                          ; 100103C6 _ 8D. 47, 10
        cmp     ecx, 1632857427                         ; 100103C9 _ 81. F9, 61536D53
        ja      ?_1880                                  ; 100103CF _ 77, 7B
        jz      ?_1879                                  ; 100103D1 _ 74, 61
        cmp     ecx, 1181315653                         ; 100103D3 _ 81. F9, 46697245
        jz      ?_1878                                  ; 100103D9 _ 74, 40
        cmp     ecx, 1631810387                         ; 100103DB _ 81. F9, 61437353
        jz      ?_1877                                  ; 100103E1 _ 74, 20
        cmp     ecx, 1632850531                         ; 100103E3 _ 81. F9, 61535263
        jnz     ?_1881                                  ; 100103E9 _ 75, 71
        mov     ecx, dword [esi+16CH]                   ; 100103EB _ 8B. 8E, 0000016C
        mov     edx, dword [ecx+65H]                    ; 100103F1 _ 8B. 51, 65
        push    edx                                     ; 100103F4 _ 52
        push    eax                                     ; 100103F5 _ 50
        call    ?_1301                                  ; 100103F6 _ E8, FFFFBF85
        add     esp, 8                                  ; 100103FB _ 83. C4, 08
        xor     eax, eax                                ; 100103FE _ 33. C0
        pop     edi                                     ; 10010400 _ 5F
        pop     esi                                     ; 10010401 _ 5E
        ret                                             ; 10010402 _ C3

?_1877: mov     ecx, dword [esi+16CH]                   ; 10010403 _ 8B. 8E, 0000016C
        mov     edx, dword [ecx+65H]                    ; 10010409 _ 8B. 51, 65
        push    edx                                     ; 1001040C _ 52
        push    eax                                     ; 1001040D _ 50
        call    ?_1286                                  ; 1001040E _ E8, FFFFBDCD
        add     esp, 8                                  ; 10010413 _ 83. C4, 08
        xor     eax, eax                                ; 10010416 _ 33. C0
        pop     edi                                     ; 10010418 _ 5F
        pop     esi                                     ; 10010419 _ 5E
        ret                                             ; 1001041A _ C3

?_1878: mov     esi, dword [esi+16CH]                   ; 1001041B _ 8B. B6, 0000016C
        push    esi                                     ; 10010421 _ 56
        mov     ecx, dword [esi+65H]                    ; 10010422 _ 8B. 4E, 65
        push    ecx                                     ; 10010425 _ 51
        push    eax                                     ; 10010426 _ 50
        call    ?_1307                                  ; 10010427 _ E8, FFFFBFF4
        add     esp, 12                                 ; 1001042C _ 83. C4, 0C
        xor     eax, eax                                ; 1001042F _ 33. C0
        pop     edi                                     ; 10010431 _ 5F
        pop     esi                                     ; 10010432 _ 5E
        ret                                             ; 10010433 _ C3

?_1879: mov     edx, dword [esi+16CH]                   ; 10010434 _ 8B. 96, 0000016C
        mov     ecx, dword [edx+65H]                    ; 1001043A _ 8B. 4A, 65
        push    ecx                                     ; 1001043D _ 51
        push    eax                                     ; 1001043E _ 50
        call    ?_1304                                  ; 1001043F _ E8, FFFFBF7C
        add     esp, 8                                  ; 10010444 _ 83. C4, 08
        xor     eax, eax                                ; 10010447 _ 33. C0
        pop     edi                                     ; 10010449 _ 5F
        pop     esi                                     ; 1001044A _ 5E
        ret                                             ; 1001044B _ C3

?_1880: cmp     ecx, 1633772626                         ; 1001044C _ 81. F9, 61616452
        jz      ?_1883                                  ; 10010452 _ 74, 29
        cmp     ecx, 1634952274                         ; 10010454 _ 81. F9, 61736452
        jz      ?_1882                                  ; 1001045A _ 74, 08
?_1881: pop     edi                                     ; 1001045C _ 5F
        mov     eax, 4294967293                         ; 1001045D _ B8, FFFFFFFD
        pop     esi                                     ; 10010462 _ 5E
        ret                                             ; 10010463 _ C3

?_1882: mov     esi, dword [esi+16CH]                   ; 10010464 _ 8B. B6, 0000016C
        push    esi                                     ; 1001046A _ 56
        mov     edx, dword [esi+65H]                    ; 1001046B _ 8B. 56, 65
        push    edx                                     ; 1001046E _ 52
        push    eax                                     ; 1001046F _ 50
        call    ?_1297                                  ; 10010470 _ E8, FFFFBE9B
        add     esp, 12                                 ; 10010475 _ 83. C4, 0C
        xor     eax, eax                                ; 10010478 _ 33. C0
        pop     edi                                     ; 1001047A _ 5F
        pop     esi                                     ; 1001047B _ 5E
        ret                                             ; 1001047C _ C3

