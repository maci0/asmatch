; ---- 10014B5B ----
?_2277: ; Local function
        mov     eax, ?_5761                             ; 10014B5B _ B8, 101DEB00(d)
?_2278: mov     ecx, dword [eax]                        ; 10014B60 _ 8B. 08
        test    cl, 01H                                 ; 10014B62 _ F6. C1, 01
        jz      ?_2279                                  ; 10014B65 _ 74, 16
        test    ch, 02H                                 ; 10014B67 _ F6. C5, 02
        jz      ?_2279                                  ; 10014B6A _ 74, 11
        cmp     eax, edi                                ; 10014B6C _ 3B. C7
        jz      ?_2279                                  ; 10014B6E _ 74, 0D
        mov     ecx, dword [eax+264218H]                ; 10014B70 _ 8B. 88, 00264218
        mov     edx, dword [esi+0CH]                    ; 10014B76 _ 8B. 56, 0C
        cmp     ecx, edx                                ; 10014B79 _ 3B. CA
        jz      ?_2280                                  ; 10014B7B _ 74, 0E
?_2279: add     eax, 2507364                            ; 10014B7D _ 05, 00264264
        cmp     eax, ?_5770                             ; 10014B82 _ 3D, 114FFE20(d)
        jl      ?_2278                                  ; 10014B87 _ 7C, D7
        jmp     ?_2281                                  ; 10014B89 _ EB, 09

?_2280: mov     edx, dword [edi+264218H]                ; 10014B8B _ 8B. 97, 00264218
        mov     dword [esi+0CH], edx                    ; 10014B91 _ 89. 56, 0C
?_2281: mov     eax, dword [edi+264210H]                ; 10014B94 _ 8B. 87, 00264210
        add     edi, 2507276                            ; 10014B9A _ 81. C7, 0026420C
        mov     ecx, 21                                 ; 10014BA0 _ B9, 00000015
        mov     dword [esi+4H], eax                     ; 10014BA5 _ 89. 46, 04
        rep movsd                                       ; 10014BA8 _ F3: A5
        movsw                                           ; 10014BAA _ 66: A5
        movsb                                           ; 10014BAC _ A4
        mov     esi, ?_5761                             ; 10014BAD _ BE, 101DEB00(d)
?_2282: mov     eax, dword [esi]                        ; 10014BB2 _ 8B. 06
        test    al, 01H                                 ; 10014BB4 _ A8, 01
        jz      ?_2283                                  ; 10014BB6 _ 74, 14
        test    ah, 02H                                 ; 10014BB8 _ F6. C4, 02
        jz      ?_2283                                  ; 10014BBB _ 74, 0F
        push    ebx                                     ; 10014BBD _ 53
        push    esi                                     ; 10014BBE _ 56
        call    ?_1110                                  ; 10014BBF _ E8, FFFF5DDC
        add     esp, 8                                  ; 10014BC4 _ 83. C4, 08
        cmp     eax, -1                                 ; 10014BC7 _ 83. F8, FF
        jz      ?_2284                                  ; 10014BCA _ 74, 14
?_2283: add     esi, 2507364                            ; 10014BCC _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10014BD2 _ 81. FE, 114FFE20(d)
        jl      ?_2282                                  ; 10014BD8 _ 7C, D8
        pop     edi                                     ; 10014BDA _ 5F
        pop     esi                                     ; 10014BDB _ 5E
        xor     eax, eax                                ; 10014BDC _ 33. C0
        pop     ebx                                     ; 10014BDE _ 5B
        ret                                             ; 10014BDF _ C3

