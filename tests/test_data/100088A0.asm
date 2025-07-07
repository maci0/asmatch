; ---- 100088A0 ----
?_0868: ; Local function
        mov     eax, dword [esp+4H]                     ; 100088A0 _ 8B. 44 24, 04
        push    ebx                                     ; 100088A4 _ 53
        mov     ecx, dword [eax+16B4H]                  ; 100088A5 _ 8B. 88, 000016B4
        cmp     ecx, 16                                 ; 100088AB _ 83. F9, 10
        jnz     ?_0869                                  ; 100088AE _ 75, 40
        mov     ecx, dword [eax+8H]                     ; 100088B0 _ 8B. 48, 08
        mov     edx, dword [eax+14H]                    ; 100088B3 _ 8B. 50, 14
        mov     bl, byte [eax+16B0H]                    ; 100088B6 _ 8A. 98, 000016B0
        push    esi                                     ; 100088BC _ 56
        mov     byte [ecx+edx], bl                      ; 100088BD _ 88. 1C 11
        mov     edx, dword [eax+14H]                    ; 100088C0 _ 8B. 50, 14
        mov     esi, dword [eax+8H]                     ; 100088C3 _ 8B. 70, 08
        inc     edx                                     ; 100088C6 _ 42
        mov     dword [eax+14H], edx                    ; 100088C7 _ 89. 50, 14
        mov     ecx, edx                                ; 100088CA _ 8B. CA
        xor     edx, edx                                ; 100088CC _ 33. D2
        mov     dl, byte [eax+16B1H]                    ; 100088CE _ 8A. 90, 000016B1
        mov     byte [esi+ecx], dl                      ; 100088D4 _ 88. 14 0E
        mov     ecx, dword [eax+14H]                    ; 100088D7 _ 8B. 48, 14
        inc     ecx                                     ; 100088DA _ 41
        pop     esi                                     ; 100088DB _ 5E
        mov     dword [eax+14H], ecx                    ; 100088DC _ 89. 48, 14
        xor     ecx, ecx                                ; 100088DF _ 33. C9
        mov     word [eax+16B0H], cx                    ; 100088E1 _ 66: 89. 88, 000016B0
        mov     dword [eax+16B4H], ecx                  ; 100088E8 _ 89. 88, 000016B4
        pop     ebx                                     ; 100088EE _ 5B
        ret                                             ; 100088EF _ C3

