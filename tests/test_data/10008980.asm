; ---- 10008980 ----
?_0872: ; Local function
        xor     ecx, ecx                                ; 10008980 _ 33. C9
        cmp     edx, ecx                                ; 10008982 _ 3B. D1
        jle     ?_0873                                  ; 10008984 _ 7E, 16
        mov     edx, dword [eax+8H]                     ; 10008986 _ 8B. 50, 08
        mov     esi, dword [eax+14H]                    ; 10008989 _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 1000898C _ 8A. 98, 000016B0
        mov     byte [edx+esi], bl                      ; 10008992 _ 88. 1C 32
        mov     edx, dword [eax+14H]                    ; 10008995 _ 8B. 50, 14
        inc     edx                                     ; 10008998 _ 42
        mov     dword [eax+14H], edx                    ; 10008999 _ 89. 50, 14
?_0873: pop     esi                                     ; 1000899C _ 5E
        mov     word [eax+16B0H], cx                    ; 1000899D _ 66: 89. 88, 000016B0
        mov     dword [eax+16B4H], ecx                  ; 100089A4 _ 89. 88, 000016B4
        pop     ebx                                     ; 100089AA _ 5B
        ret                                             ; 100089AB _ C3

        nop                                             ; 100089AC _ 90
        nop                                             ; 100089AD _ 90
        nop                                             ; 100089AE _ 90
        nop                                             ; 100089AF _ 90
