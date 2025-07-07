; ---- 1000A9CF ----
?_1111: ; Local function
        mov     eax, dword [ebx+95H]                    ; 1000A9CF _ 8B. 83, 00000095
        push    esi                                     ; 1000A9D5 _ 56
        mov     esi, dword [esp+14H]                    ; 1000A9D6 _ 8B. 74 24, 14
        push    edi                                     ; 1000A9DA _ 57
        mov     ecx, 38                                 ; 1000A9DB _ B9, 00000026
        mov     edi, ebx                                ; 1000A9E0 _ 8B. FB
        mov     dword [ebp+2641FCH], eax                ; 1000A9E2 _ 89. 85, 002641FC
        push    ebx                                     ; 1000A9E8 _ 53
        rep movsd                                       ; 1000A9E9 _ F3: A5
        movsb                                           ; 1000A9EB _ A4
        call    ?_1335                                  ; 1000A9EC _ E8, 00001D1F
        add     esp, 4                                  ; 1000A9F1 _ 83. C4, 04
        mov     word [ebx+1H], ax                       ; 1000A9F4 _ 66: 89. 43, 01
        mov     eax, dword [ebp+2641F4H]                ; 1000A9F8 _ 8B. 85, 002641F4
        xor     edx, edx                                ; 1000A9FE _ 33. D2
        pop     edi                                     ; 1000AA00 _ 5F
        cmp     eax, edx                                ; 1000AA01 _ 3B. C2
        pop     esi                                     ; 1000AA03 _ 5E
        jz      ?_1114                                  ; 1000AA04 _ 74, 2D
        mov     ecx, dword [eax+95H]                    ; 1000AA06 _ 8B. 88, 00000095
        cmp     ecx, edx                                ; 1000AA0C _ 3B. CA
        jz      ?_1113                                  ; 1000AA0E _ 74, 0C
?_1112: mov     eax, ecx                                ; 1000AA10 _ 8B. C1
        mov     ecx, dword [eax+95H]                    ; 1000AA12 _ 8B. 88, 00000095
        cmp     ecx, edx                                ; 1000AA18 _ 3B. CA
        jnz     ?_1112                                  ; 1000AA1A _ 75, F4
?_1113: mov     dword [ebx+91H], eax                    ; 1000AA1C _ 89. 83, 00000091
        mov     dword [ebx+95H], edx                    ; 1000AA22 _ 89. 93, 00000095
        mov     dword [eax+95H], ebx                    ; 1000AA28 _ 89. 98, 00000095
        pop     ebp                                     ; 1000AA2E _ 5D
        xor     eax, eax                                ; 1000AA2F _ 33. C0
        pop     ebx                                     ; 1000AA31 _ 5B
        ret                                             ; 1000AA32 _ C3

