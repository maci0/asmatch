; ---- 1000A91F ----
?_1106: ; Local function
        mov     eax, dword [ebx+95H]                    ; 1000A91F _ 8B. 83, 00000095
        push    esi                                     ; 1000A925 _ 56
        mov     esi, dword [esp+14H]                    ; 1000A926 _ 8B. 74 24, 14
        push    edi                                     ; 1000A92A _ 57
        mov     ecx, 38                                 ; 1000A92B _ B9, 00000026
        mov     edi, ebx                                ; 1000A930 _ 8B. FB
        mov     dword [ebp+2641F8H], eax                ; 1000A932 _ 89. 85, 002641F8
        push    ebx                                     ; 1000A938 _ 53
        rep movsd                                       ; 1000A939 _ F3: A5
        movsb                                           ; 1000A93B _ A4
        call    ?_1335                                  ; 1000A93C _ E8, 00001DCF
        add     esp, 4                                  ; 1000A941 _ 83. C4, 04
        mov     word [ebx+1H], ax                       ; 1000A944 _ 66: 89. 43, 01
        mov     eax, dword [ebp+2641F0H]                ; 1000A948 _ 8B. 85, 002641F0
        xor     edx, edx                                ; 1000A94E _ 33. D2
        pop     edi                                     ; 1000A950 _ 5F
        cmp     eax, edx                                ; 1000A951 _ 3B. C2
        pop     esi                                     ; 1000A953 _ 5E
        jz      ?_1109                                  ; 1000A954 _ 74, 2D
        mov     ecx, dword [eax+95H]                    ; 1000A956 _ 8B. 88, 00000095
        cmp     ecx, edx                                ; 1000A95C _ 3B. CA
        jz      ?_1108                                  ; 1000A95E _ 74, 0C
?_1107: mov     eax, ecx                                ; 1000A960 _ 8B. C1
        mov     ecx, dword [eax+95H]                    ; 1000A962 _ 8B. 88, 00000095
        cmp     ecx, edx                                ; 1000A968 _ 3B. CA
        jnz     ?_1107                                  ; 1000A96A _ 75, F4
?_1108: mov     dword [ebx+91H], eax                    ; 1000A96C _ 89. 83, 00000091
        mov     dword [ebx+95H], edx                    ; 1000A972 _ 89. 93, 00000095
        mov     dword [eax+95H], ebx                    ; 1000A978 _ 89. 98, 00000095
        pop     ebp                                     ; 1000A97E _ 5D
        xor     eax, eax                                ; 1000A97F _ 33. C0
        pop     ebx                                     ; 1000A981 _ 5B
        ret                                             ; 1000A982 _ C3

