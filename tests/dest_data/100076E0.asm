; ---- 100076E0 ----
?_0759: ; Local function
        mov     eax, dword [esp+4H]                     ; 100076E0 _ 8B. 44 24, 04
        push    ebx                                     ; 100076E4 _ 53
        push    ebp                                     ; 100076E5 _ 55
        push    esi                                     ; 100076E6 _ 56
        mov     esi, dword [esp+18H]                    ; 100076E7 _ 8B. 74 24, 18
        mov     edx, dword [eax+1448H]                  ; 100076EB _ 8B. 90, 00001448
        push    edi                                     ; 100076F1 _ 57
        mov     ebp, dword [eax+esi*4+0B54H]            ; 100076F2 _ 8B. AC B0, 00000B54
        lea     ecx, [esi+esi]                          ; 100076F9 _ 8D. 0C 36
        cmp     ecx, edx                                ; 100076FC _ 3B. CA
        mov     dword [esp+14H], ebp                    ; 100076FE _ 89. 6C 24, 14
        jg      ?_0767                                  ; 10007702 _ 0F 8F, 0000009D
        mov     edi, dword [esp+18H]                    ; 10007708 _ 8B. 7C 24, 18
?_0760: jge     ?_0763                                  ; 1000770C _ 7D, 34
        mov     esi, dword [eax+ecx*4+0B58H]            ; 1000770E _ 8B. B4 88, 00000B58
        mov     ebp, dword [eax+ecx*4+0B54H]            ; 10007715 _ 8B. AC 88, 00000B54
        mov     dx, word [edi+esi*4]                    ; 1000771C _ 66: 8B. 14 B7
        mov     bx, word [edi+ebp*4]                    ; 10007720 _ 66: 8B. 1C AF
        cmp     dx, bx                                  ; 10007724 _ 66: 3B. D3
        jc      ?_0761                                  ; 10007727 _ 72, 14
        jnz     ?_0762                                  ; 10007729 _ 75, 13
        mov     dl, byte [esi+eax+1450H]                ; 1000772B _ 8A. 94 06, 00001450
        mov     bl, byte [eax+ebp+1450H]                ; 10007732 _ 8A. 9C 28, 00001450
        cmp     dl, bl                                  ; 10007739 _ 3A. D3
        ja      ?_0762                                  ; 1000773B _ 77, 01
?_0761: inc     ecx                                     ; 1000773D _ 41
?_0762: mov     ebp, dword [esp+14H]                    ; 1000773E _ 8B. 6C 24, 14
?_0763: mov     esi, dword [eax+ecx*4+0B54H]            ; 10007742 _ 8B. B4 88, 00000B54
        mov     dx, word [edi+ebp*4]                    ; 10007749 _ 66: 8B. 14 AF
        mov     bx, word [edi+esi*4]                    ; 1000774D _ 66: 8B. 1C B7
        cmp     dx, bx                                  ; 10007751 _ 66: 3B. D3
        jc      ?_0765                                  ; 10007754 _ 72, 2F
        jnz     ?_0764                                  ; 10007756 _ 75, 12
        mov     dl, byte [eax+ebp+1450H]                ; 10007758 _ 8A. 94 28, 00001450
        mov     bl, byte [esi+eax+1450H]                ; 1000775F _ 8A. 9C 06, 00001450
        cmp     dl, bl                                  ; 10007766 _ 3A. D3
        jbe     ?_0766                                  ; 10007768 _ 76, 2B
?_0764: mov     edx, dword [esp+1CH]                    ; 1000776A _ 8B. 54 24, 1C
        mov     dword [esp+1CH], ecx                    ; 1000776E _ 89. 4C 24, 1C
        shl     ecx, 1                                  ; 10007772 _ D1. E1
        mov     dword [eax+edx*4+0B54H], esi            ; 10007774 _ 89. B4 90, 00000B54
        mov     edx, dword [eax+1448H]                  ; 1000777B _ 8B. 90, 00001448
        cmp     ecx, edx                                ; 10007781 _ 3B. CA
        jle     ?_0760                                  ; 10007783 _ 7E, 87
?_0765: mov     ecx, dword [esp+1CH]                    ; 10007785 _ 8B. 4C 24, 1C
        pop     edi                                     ; 10007789 _ 5F
        pop     esi                                     ; 1000778A _ 5E
        mov     dword [eax+ecx*4+0B54H], ebp            ; 1000778B _ 89. AC 88, 00000B54
        pop     ebp                                     ; 10007792 _ 5D
        pop     ebx                                     ; 10007793 _ 5B
        ret                                             ; 10007794 _ C3

?_0766: mov     edx, dword [esp+1CH]                    ; 10007795 _ 8B. 54 24, 1C
        pop     edi                                     ; 10007799 _ 5F
        pop     esi                                     ; 1000779A _ 5E
        mov     dword [eax+edx*4+0B54H], ebp            ; 1000779B _ 89. AC 90, 00000B54
        pop     ebp                                     ; 100077A2 _ 5D
        pop     ebx                                     ; 100077A3 _ 5B
        ret                                             ; 100077A4 _ C3

