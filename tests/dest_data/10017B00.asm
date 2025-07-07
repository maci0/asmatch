; ---- 10017B00 ----
?_2713: ; Local function
        push    ebp                                     ; 10017B00 _ 55
        push    edi                                     ; 10017B01 _ 57
        mov     edi, dword [esp+0CH]                    ; 10017B02 _ 8B. 7C 24, 0C
        xor     ecx, ecx                                ; 10017B06 _ 33. C9
        mov     edx, dword [?_5668]                     ; 10017B08 _ 8B. 15, 100A8C30(d)
        mov     cl, byte [edi]                          ; 10017B0E _ 8A. 0F
        add     edx, ecx                                ; 10017B10 _ 03. D1
        lea     eax, [ecx+ecx*2]                        ; 10017B12 _ 8D. 04 49
        shl     eax, 4                                  ; 10017B15 _ C1. E0, 04
        add     eax, ecx                                ; 10017B18 _ 03. C1
        mov     ecx, dword [esp+14H]                    ; 10017B1A _ 8B. 4C 24, 14
        cmp     ecx, 65535                              ; 10017B1E _ 81. F9, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10017B24 _ 8D. 04 40
        lea     ebp, [edx+eax*4]                        ; 10017B27 _ 8D. 2C 82
        mov     ax, word [esp+10H]                      ; 10017B2A _ 66: 8B. 44 24, 10
        mov     word [edi+25H], ax                      ; 10017B2F _ 66: 89. 47, 25
        je      ?_2722                                  ; 10017B33 _ 0F 84, 00000104
        mov     ax, word [edi+27H]                      ; 10017B39 _ 66: 8B. 47, 27
        push    ebx                                     ; 10017B3D _ 53
        xor     ebx, ebx                                ; 10017B3E _ 33. DB
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 10017B40 _ 66: 3D, FFFF
        push    esi                                     ; 10017B44 _ 56
        jz      ?_2714                                  ; 10017B45 _ 74, 1E
        and     eax, 0FFFFH                             ; 10017B47 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10017B4C _ 8D. 04 40
        lea     eax, [eax+eax*8]                        ; 10017B4F _ 8D. 04 C0
        lea     eax, [eax+eax*4]                        ; 10017B52 _ 8D. 04 80
        cmp     dword [?_5649+eax*4], edi               ; 10017B55 _ 39. 3C 85, 10035A10(d)
        jnz     ?_2714                                  ; 10017B5C _ 75, 07
        mov     dword [?_5649+eax*4], ebx               ; 10017B5E _ 89. 1C 85, 10035A10(d)
?_2714: mov     word [edi+27H], cx                      ; 10017B65 _ 66: 89. 4F, 27
        mov     al, byte [ebp]                          ; 10017B69 _ 8A. 45, 00
        cmp     al, 2                                   ; 10017B6C _ 3C, 02
        jnz     ?_2716                                  ; 10017B6E _ 75, 28
        mov     eax, ecx                                ; 10017B70 _ 8B. C1
        and     eax, 0FFFFH                             ; 10017B72 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10017B77 _ 8D. 04 40
        lea     eax, [eax+eax*8]                        ; 10017B7A _ 8D. 04 C0
        lea     edx, [eax+eax*4]                        ; 10017B7D _ 8D. 14 80
        mov     eax, dword [?_5649+edx*4]               ; 10017B80 _ 8B. 04 95, 10035A10(d)
        cmp     eax, ebx                                ; 10017B87 _ 3B. C3
        jz      ?_2715                                  ; 10017B89 _ 74, 06
        mov     al, byte [eax]                          ; 10017B8B _ 8A. 00
        cmp     al, byte [edi]                          ; 10017B8D _ 3A. 07
        ja      ?_2716                                  ; 10017B8F _ 77, 07
?_2715: mov     dword [?_5649+edx*4], edi               ; 10017B91 _ 89. 3C 95, 10035A10(d)
?_2716: lea     eax, [ecx+ecx*2]                        ; 10017B98 _ 8D. 04 49
        lea     eax, [eax+eax*8]                        ; 10017B9B _ 8D. 04 C0
        lea     esi, [eax+eax*4]                        ; 10017B9E _ 8D. 34 80
        shl     esi, 2                                  ; 10017BA1 _ C1. E6, 02
        mov     al, byte [?_5633+esi]                   ; 10017BA4 _ 8A. 86, 100358A2(d)
        cmp     al, 6                                   ; 10017BAA _ 3C, 06
        jz      ?_2717                                  ; 10017BAC _ 74, 04
        cmp     al, 7                                   ; 10017BAE _ 3C, 07
        jnz     ?_2719                                  ; 10017BB0 _ 75, 35
?_2717: push    edi                                     ; 10017BB2 _ 57
        call    ?_2973                                  ; 10017BB3 _ E8, 000020A8
        add     esp, 4                                  ; 10017BB8 _ 83. C4, 04
        cmp     eax, ebx                                ; 10017BBB _ 3B. C3
        jz      ?_2719                                  ; 10017BBD _ 74, 28
        mov     ecx, dword [eax+1B4H]                   ; 10017BBF _ 8B. 88, 000001B4
        mov     byte [eax+165H], bl                     ; 10017BC5 _ 88. 98, 00000165
        and     ecx, 0FFFFFFFEH                         ; 10017BCB _ 83. E1, FE
        mov     dword [eax+1B4H], ecx                   ; 10017BCE _ 89. 88, 000001B4
        mov     cl, byte [ebp]                          ; 10017BD4 _ 8A. 4D, 00
        cmp     cl, 5                                   ; 10017BD7 _ 80. F9, 05
        jz      ?_2718                                  ; 10017BDA _ 74, 05
        cmp     cl, 9                                   ; 10017BDC _ 80. F9, 09
        jnz     ?_2719                                  ; 10017BDF _ 75, 06
?_2718: mov     dword [eax+16CH], ebx                   ; 10017BE1 _ 89. 98, 0000016C
?_2719: mov     ecx, dword [?_5669]                     ; 10017BE7 _ 8B. 0D, 100A8C34(d)
        mov     edx, 20488                              ; 10017BED _ BA, 00005008
?_2720: mov     ax, word [ecx]                          ; 10017BF2 _ 66: 8B. 01
        test    ax, ax                                  ; 10017BF5 _ 66: 85. C0
        jz      ?_2721                                  ; 10017BF8 _ 74, 3B
        mov     ebp, dword [?_5693]                     ; 10017BFA _ 8B. 2D, 101DE450(d)
        and     eax, 0FFFFH                             ; 10017C00 _ 25, 0000FFFF
        mov     ebx, eax                                ; 10017C05 _ 8B. D8
        shl     ebx, 6                                  ; 10017C07 _ C1. E3, 06
        add     ebp, ebx                                ; 10017C0A _ 03. EB
        cmp     byte [eax+ebp], 29                      ; 10017C0C _ 80. 3C 28, 1D
        jnz     ?_2721                                  ; 10017C10 _ 75, 23
        mov     eax, dword [ecx+1CH]                    ; 10017C12 _ 8B. 41, 1C
        mov     ebx, dword [edi+1H]                     ; 10017C15 _ 8B. 5F, 01
        cmp     eax, ebx                                ; 10017C18 _ 3B. C3
        jnz     ?_2721                                  ; 10017C1A _ 75, 19
        mov     eax, dword [?_5634+esi]                 ; 10017C1C _ 8B. 86, 100358A4(d)
        mov     dword [ecx+0AH], eax                    ; 10017C22 _ 89. 41, 0A
        mov     eax, dword [ecx+14H]                    ; 10017C25 _ 8B. 41, 14
        test    eax, eax                                ; 10017C28 _ 85. C0
        jz      ?_2721                                  ; 10017C2A _ 74, 09
        mov     ebx, dword [?_5634+esi]                 ; 10017C2C _ 8B. 9E, 100358A4(d)
        mov     dword [eax+0AH], ebx                    ; 10017C32 _ 89. 58, 0A
?_2721: add     ecx, 67                                 ; 10017C35 _ 83. C1, 43
        dec     edx                                     ; 10017C38 _ 4A
        jnz     ?_2720                                  ; 10017C39 _ 75, B7
        pop     esi                                     ; 10017C3B _ 5E
        pop     ebx                                     ; 10017C3C _ 5B
?_2722: pop     edi                                     ; 10017C3D _ 5F
        pop     ebp                                     ; 10017C3E _ 5D
        ret                                             ; 10017C3F _ C3

