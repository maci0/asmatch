; ---- 10001890 ----
?_0055: ; Local function
        mov     eax, dword [esp+4H]                     ; 10001890 _ 8B. 44 24, 04
        push    esi                                     ; 10001894 _ 56
        mov     esi, dword [eax+1CH]                    ; 10001895 _ 8B. 70, 1C
        mov     ecx, dword [eax+10H]                    ; 10001898 _ 8B. 48, 10
        mov     edx, dword [esi+14H]                    ; 1000189B _ 8B. 56, 14
        cmp     edx, ecx                                ; 1000189E _ 3B. D1
        jbe     ?_0056                                  ; 100018A0 _ 76, 02
        mov     edx, ecx                                ; 100018A2 _ 8B. D1
?_0056: test    edx, edx                                ; 100018A4 _ 85. D2
        jz      ?_0057                                  ; 100018A6 _ 74, 58
        mov     esi, dword [esi+10H]                    ; 100018A8 _ 8B. 76, 10
        mov     ecx, edx                                ; 100018AB _ 8B. CA
        push    ebx                                     ; 100018AD _ 53
        mov     ebx, ecx                                ; 100018AE _ 8B. D9
        push    edi                                     ; 100018B0 _ 57
        mov     edi, dword [eax+0CH]                    ; 100018B1 _ 8B. 78, 0C
        shr     ecx, 2                                  ; 100018B4 _ C1. E9, 02
        rep movsd                                       ; 100018B7 _ F3: A5
        mov     ecx, ebx                                ; 100018B9 _ 8B. CB
        and     ecx, 03H                                ; 100018BB _ 83. E1, 03
        rep movsb                                       ; 100018BE _ F3: A4
        mov     edi, dword [eax+0CH]                    ; 100018C0 _ 8B. 78, 0C
        mov     ecx, dword [eax+1CH]                    ; 100018C3 _ 8B. 48, 1C
        add     edi, edx                                ; 100018C6 _ 03. FA
        mov     dword [eax+0CH], edi                    ; 100018C8 _ 89. 78, 0C
        mov     esi, dword [ecx+10H]                    ; 100018CB _ 8B. 71, 10
        add     esi, edx                                ; 100018CE _ 03. F2
        mov     dword [ecx+10H], esi                    ; 100018D0 _ 89. 71, 10
        mov     ebx, dword [eax+14H]                    ; 100018D3 _ 8B. 58, 14
        mov     edi, dword [eax+10H]                    ; 100018D6 _ 8B. 78, 10
        mov     ecx, dword [eax+1CH]                    ; 100018D9 _ 8B. 48, 1C
        add     ebx, edx                                ; 100018DC _ 03. DA
        sub     edi, edx                                ; 100018DE _ 2B. FA
        mov     dword [eax+14H], ebx                    ; 100018E0 _ 89. 58, 14
        mov     dword [eax+10H], edi                    ; 100018E3 _ 89. 78, 10
        mov     esi, dword [ecx+14H]                    ; 100018E6 _ 8B. 71, 14
        pop     edi                                     ; 100018E9 _ 5F
        sub     esi, edx                                ; 100018EA _ 2B. F2
        pop     ebx                                     ; 100018EC _ 5B
        mov     dword [ecx+14H], esi                    ; 100018ED _ 89. 71, 14
        mov     eax, dword [eax+1CH]                    ; 100018F0 _ 8B. 40, 1C
        mov     ecx, dword [eax+14H]                    ; 100018F3 _ 8B. 48, 14
        test    ecx, ecx                                ; 100018F6 _ 85. C9
        jnz     ?_0057                                  ; 100018F8 _ 75, 06
        mov     ecx, dword [eax+8H]                     ; 100018FA _ 8B. 48, 08
        mov     dword [eax+10H], ecx                    ; 100018FD _ 89. 48, 10
?_0057: pop     esi                                     ; 10001900 _ 5E
        ret                                             ; 10001901 _ C3

        nop                                             ; 10001902 _ 90
        nop                                             ; 10001903 _ 90
        nop                                             ; 10001904 _ 90
        nop                                             ; 10001905 _ 90
        nop                                             ; 10001906 _ 90
        nop                                             ; 10001907 _ 90
        nop                                             ; 10001908 _ 90
        nop                                             ; 10001909 _ 90
        nop                                             ; 1000190A _ 90
        nop                                             ; 1000190B _ 90
        nop                                             ; 1000190C _ 90
        nop                                             ; 1000190D _ 90
        nop                                             ; 1000190E _ 90
        nop                                             ; 1000190F _ 90

