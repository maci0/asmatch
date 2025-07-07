; ---- 1000AA50 ----
?_1115: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000AA50 _ 8B. 44 24, 08
        mov     edx, dword [esp+4H]                     ; 1000AA54 _ 8B. 54 24, 04
        push    esi                                     ; 1000AA58 _ 56
        mov     ecx, dword [eax+91H]                    ; 1000AA59 _ 8B. 88, 00000091
        test    ecx, ecx                                ; 1000AA5F _ 85. C9
        jz      ?_1116                                  ; 1000AA61 _ 74, 0E
        mov     esi, dword [eax+95H]                    ; 1000AA63 _ 8B. B0, 00000095
        mov     dword [ecx+95H], esi                    ; 1000AA69 _ 89. B1, 00000095
        jmp     ?_1117                                  ; 1000AA6F _ EB, 0C

?_1116: mov     ecx, dword [eax+95H]                    ; 1000AA71 _ 8B. 88, 00000095
        mov     dword [edx+2641F4H], ecx                ; 1000AA77 _ 89. 8A, 002641F4
?_1117: mov     ecx, dword [eax+95H]                    ; 1000AA7D _ 8B. 88, 00000095
        test    ecx, ecx                                ; 1000AA83 _ 85. C9
        jz      ?_1118                                  ; 1000AA85 _ 74, 0C
        mov     esi, dword [eax+91H]                    ; 1000AA87 _ 8B. B0, 00000091
        mov     dword [ecx+91H], esi                    ; 1000AA8D _ 89. B1, 00000091
?_1118: mov     dword [eax+91H], 0                      ; 1000AA93 _ C7. 80, 00000091, 00000000
        mov     ecx, dword [edx+2641FCH]                ; 1000AA9D _ 8B. 8A, 002641FC
        mov     dword [eax+95H], ecx                    ; 1000AAA3 _ 89. 88, 00000095
        mov     dword [edx+2641FCH], eax                ; 1000AAA9 _ 89. 82, 002641FC
        pop     esi                                     ; 1000AAAF _ 5E
        ret                                             ; 1000AAB0 _ C3

        nop                                             ; 1000AAB1 _ 90
        nop                                             ; 1000AAB2 _ 90
        nop                                             ; 1000AAB3 _ 90
        nop                                             ; 1000AAB4 _ 90
        nop                                             ; 1000AAB5 _ 90
        nop                                             ; 1000AAB6 _ 90
        nop                                             ; 1000AAB7 _ 90
        nop                                             ; 1000AAB8 _ 90
        nop                                             ; 1000AAB9 _ 90
        nop                                             ; 1000AABA _ 90
        nop                                             ; 1000AABB _ 90
        nop                                             ; 1000AABC _ 90
        nop                                             ; 1000AABD _ 90
        nop                                             ; 1000AABE _ 90
        nop                                             ; 1000AABF _ 90

