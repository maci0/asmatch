; ---- 1000C336 ----
?_1299: ; Local function
        mov     eax, dword [esp+18H]                    ; 1000C336 _ 8B. 44 24, 18
        push    255                                     ; 1000C33A _ 68, 000000FF
        push    0                                       ; 1000C33F _ 6A, 00
        push    6                                       ; 1000C341 _ 6A, 06
        mov     ecx, dword [eax+5DH]                    ; 1000C343 _ 8B. 48, 5D
        push    2                                       ; 1000C346 _ 6A, 02
        push    ecx                                     ; 1000C348 _ 51
        call    ?_2482                                  ; 1000C349 _ E8, 0000A112
        add     esp, 20                                 ; 1000C34E _ 83. C4, 14
        test    eax, eax                                ; 1000C351 _ 85. C0
        jz      ?_1300                                  ; 1000C353 _ 74, 10
        mov     edx, dword [ebx+8H]                     ; 1000C355 _ 8B. 53, 08
        add     eax, 20                                 ; 1000C358 _ 83. C0, 14
        push    edx                                     ; 1000C35B _ 52
        push    eax                                     ; 1000C35C _ 50
        call    ?_2502                                  ; 1000C35D _ E8, 0000A26E
        add     esp, 8                                  ; 1000C362 _ 83. C4, 08
?_1300: mov     dword [edi+esi*8+0CH], 0                ; 1000C365 _ C7. 44 F7, 0C, 00000000
        mov     dword [edi+esi*8+10H], 0                ; 1000C36D _ C7. 44 F7, 10, 00000000
        pop     edi                                     ; 1000C375 _ 5F
        pop     esi                                     ; 1000C376 _ 5E
        mov     eax, 1                                  ; 1000C377 _ B8, 00000001
        pop     ebx                                     ; 1000C37C _ 5B
        ret                                             ; 1000C37D _ C3

        nop                                             ; 1000C37E _ 90
        nop                                             ; 1000C37F _ 90
?_1301: push    esi                                     ; 1000C380 _ 56
        mov     esi, dword [esp+8H]                     ; 1000C381 _ 8B. 74 24, 08
        push    edi                                     ; 1000C385 _ 57
        mov     edi, dword [esp+10H]                    ; 1000C386 _ 8B. 7C 24, 10
        xor     eax, eax                                ; 1000C38A _ 33. C0
        mov     edx, dword [esi+8H]                     ; 1000C38C _ 8B. 56, 08
        lea     ecx, [edi+0CH]                          ; 1000C38F _ 8D. 4F, 0C
?_1302: cmp     dword [ecx], edx                        ; 1000C392 _ 39. 11
        jz      ?_1303                                  ; 1000C394 _ 74, 0E
        inc     eax                                     ; 1000C396 _ 40
        add     ecx, 8                                  ; 1000C397 _ 83. C1, 08
        cmp     eax, 6                                  ; 1000C39A _ 83. F8, 06
        jl      ?_1302                                  ; 1000C39D _ 7C, F3
        pop     edi                                     ; 1000C39F _ 5F
        pop     esi                                     ; 1000C3A0 _ 5E
        xor     eax, eax                                ; 1000C3A1 _ 33. C0
        ret                                             ; 1000C3A3 _ C3
