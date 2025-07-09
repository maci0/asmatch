; ---- 10008930 ----
?_0871: ; Local function
        mov     eax, dword [esp+4H]                     ; 10008930 _ 8B. 44 24, 04
        push    ebx                                     ; 10008934 _ 53
        push    esi                                     ; 10008935 _ 56
        mov     edx, dword [eax+16B4H]                  ; 10008936 _ 8B. 90, 000016B4
        cmp     edx, 8                                  ; 1000893C _ 83. FA, 08
        jle     ?_0872                                  ; 1000893F _ 7E, 3F
        mov     ecx, dword [eax+8H]                     ; 10008941 _ 8B. 48, 08
        mov     edx, dword [eax+14H]                    ; 10008944 _ 8B. 50, 14
        mov     bl, byte [eax+16B0H]                    ; 10008947 _ 8A. 98, 000016B0
        mov     byte [ecx+edx], bl                      ; 1000894D _ 88. 1C 11
        mov     edx, dword [eax+14H]                    ; 10008950 _ 8B. 50, 14
        mov     esi, dword [eax+8H]                     ; 10008953 _ 8B. 70, 08
        inc     edx                                     ; 10008956 _ 42
        mov     dword [eax+14H], edx                    ; 10008957 _ 89. 50, 14
        mov     ecx, edx                                ; 1000895A _ 8B. CA
        xor     edx, edx                                ; 1000895C _ 33. D2
        mov     dl, byte [eax+16B1H]                    ; 1000895E _ 8A. 90, 000016B1
        mov     byte [esi+ecx], dl                      ; 10008964 _ 88. 14 0E
        mov     ecx, dword [eax+14H]                    ; 10008967 _ 8B. 48, 14
        inc     ecx                                     ; 1000896A _ 41
        pop     esi                                     ; 1000896B _ 5E
        mov     dword [eax+14H], ecx                    ; 1000896C _ 89. 48, 14
        xor     ecx, ecx                                ; 1000896F _ 33. C9
        mov     word [eax+16B0H], cx                    ; 10008971 _ 66: 89. 88, 000016B0
        mov     dword [eax+16B4H], ecx                  ; 10008978 _ 89. 88, 000016B4
        pop     ebx                                     ; 1000897E _ 5B
        ret                                             ; 1000897F _ C3
