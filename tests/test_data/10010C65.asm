; ---- 10010C65 ----
?_1950: ; Local function
        lea     edx, [eax+140H]                         ; 10010C65 _ 8D. 90, 00000140
        mov     ebp, 16                                 ; 10010C6B _ BD, 00000010
        mov     dword [esi+0CH], edx                    ; 10010C70 _ 89. 56, 0C
        lea     edx, [eax+1E0H]                         ; 10010C73 _ 8D. 90, 000001E0
        mov     dword [esi+10H], edx                    ; 10010C79 _ 89. 56, 10
        lea     edx, [eax+230H]                         ; 10010C7C _ 8D. 90, 00000230
        mov     dword [esi+14H], edx                    ; 10010C82 _ 89. 56, 14
        mov     edx, 65535                              ; 10010C85 _ BA, 0000FFFF
?_1951: mov     dword [eax], ebx                        ; 10010C8A _ 89. 18
        mov     dword [eax+10H], ecx                    ; 10010C8C _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010C8F _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010C92 _ 66: 89. 50, 08
        add     ecx, 68                                 ; 10010C96 _ 83. C1, 44
        add     eax, 20                                 ; 10010C99 _ 83. C0, 14
        dec     ebp                                     ; 10010C9C _ 4D
        jnz     ?_1951                                  ; 10010C9D _ 75, EB
        mov     ebp, 8                                  ; 10010C9F _ BD, 00000008
?_1952: mov     dword [eax], 1                          ; 10010CA4 _ C7. 00, 00000001
        mov     dword [eax+10H], ecx                    ; 10010CAA _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010CAD _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010CB0 _ 66: 89. 50, 08
        add     ecx, 136                                ; 10010CB4 _ 81. C1, 00000088
        add     eax, 20                                 ; 10010CBA _ 83. C0, 14
        dec     ebp                                     ; 10010CBD _ 4D
        jnz     ?_1952                                  ; 10010CBE _ 75, E4
        mov     ebp, 4                                  ; 10010CC0 _ BD, 00000004
?_1953: mov     dword [eax], 2                          ; 10010CC5 _ C7. 00, 00000002
        mov     dword [eax+10H], ecx                    ; 10010CCB _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010CCE _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010CD1 _ 66: 89. 50, 08
        add     ecx, 272                                ; 10010CD5 _ 81. C1, 00000110
        add     eax, 20                                 ; 10010CDB _ 83. C0, 14
        dec     ebp                                     ; 10010CDE _ 4D
        jnz     ?_1953                                  ; 10010CDF _ 75, E4
        mov     ebp, 2                                  ; 10010CE1 _ BD, 00000002
?_1954: mov     dword [eax], 3                          ; 10010CE6 _ C7. 00, 00000003
        mov     dword [eax+10H], ecx                    ; 10010CEC _ 89. 48, 10
        mov     dword [eax+4H], edi                     ; 10010CEF _ 89. 78, 04
        mov     word [eax+8H], dx                       ; 10010CF2 _ 66: 89. 50, 08
        add     ecx, 544                                ; 10010CF6 _ 81. C1, 00000220
        add     eax, 20                                 ; 10010CFC _ 83. C0, 14
        dec     ebp                                     ; 10010CFF _ 4D
        jnz     ?_1954                                  ; 10010D00 _ 75, E4
        mov     eax, dword [esp+14H]                    ; 10010D02 _ 8B. 44 24, 14
        pop     edi                                     ; 10010D06 _ 5F
        mov     dword [eax+65H], esi                    ; 10010D07 _ 89. 70, 65
        mov     eax, esi                                ; 10010D0A _ 8B. C6
        pop     esi                                     ; 10010D0C _ 5E
        pop     ebp                                     ; 10010D0D _ 5D
        pop     ebx                                     ; 10010D0E _ 5B
        ret                                             ; 10010D0F _ C3

