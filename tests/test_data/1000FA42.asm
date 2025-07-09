; ---- 1000FA42 ----
?_1783: ; Local function
        mov     eax, dword [esi+1BH]                    ; 1000FA42 _ 8B. 46, 1B
        cmp     eax, -1                                 ; 1000FA45 _ 83. F8, FF
        jz      ?_1784                                  ; 1000FA48 _ 74, 09
        push    eax                                     ; 1000FA4A _ 50
        call    ?_2414                                  ; 1000FA4B _ E8, 00006370
        add     esp, 4                                  ; 1000FA50 _ 83. C4, 04
?_1784: lea     eax, [edi+edi*2]                        ; 1000FA53 _ 8D. 04 7F
        lea     eax, [eax+eax*4]                        ; 1000FA56 _ 8D. 04 80
        lea     edi, [eax+eax*8]                        ; 1000FA59 _ 8D. 3C C0
        shl     edi, 2                                  ; 1000FA5C _ C1. E7, 02
        mov     dword [?_5648+edi], 0                   ; 1000FA5F _ C7. 87, 10035A0C(d), 00000000
        mov     byte [?_5633+edi], 13                   ; 1000FA69 _ C6. 87, 100358A2(d), 0D
        mov     al, byte [esi+21H]                      ; 1000FA70 _ 8A. 46, 21
        test    al, al                                  ; 1000FA73 _ 84. C0
        jz      ?_1785                                  ; 1000FA75 _ 74, 17
        mov     edx, dword [?_5634+edi]                 ; 1000FA77 _ 8B. 97, 100358A4(d)
        and     eax, 0FFH                               ; 1000FA7D _ 25, 000000FF
        push    1                                       ; 1000FA82 _ 6A, 01
        push    eax                                     ; 1000FA84 _ 50
        push    edx                                     ; 1000FA85 _ 52
        call    ?_2524                                  ; 1000FA86 _ E8, 00006CD5
        add     esp, 12                                 ; 1000FA8B _ 83. C4, 0C
?_1785: xor     ecx, ecx                                ; 1000FA8E _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000FA90 _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000FA93 _ 8B. C1
        shl     eax, 4                                  ; 1000FA95 _ C1. E0, 04
        add     eax, ecx                                ; 1000FA98 _ 03. C1
        shl     eax, 8                                  ; 1000FA9A _ C1. E0, 08
        add     eax, ecx                                ; 1000FA9D _ 03. C1
        shl     eax, 4                                  ; 1000FA9F _ C1. E0, 04
        add     eax, ecx                                ; 1000FAA2 _ 03. C1
        mov     ecx, dword [?_5634+edi]                 ; 1000FAA4 _ 8B. 8F, 100358A4(d)
        test    ebp, ebp                                ; 1000FAAA _ 85. ED
        lea     eax, [eax+eax*8]                        ; 1000FAAC _ 8D. 04 C0
        mov     dword [?_5766+eax*4], ecx               ; 1000FAAF _ 89. 0C 85, 10442D00(d)
        jz      ?_1786                                  ; 1000FAB6 _ 74, 11
        lea     edx, [?_5632+edi]                       ; 1000FAB8 _ 8D. 97, 100358A0(d)
        mov     byte [ebp], 1                           ; 1000FABE _ C6. 45, 00, 01
        mov     byte [ebp+1H], 1                        ; 1000FAC2 _ C6. 45, 01, 01
        mov     dword [ebp+6H], edx                     ; 1000FAC6 _ 89. 55, 06
?_1786: pop     edi                                     ; 1000FAC9 _ 5F
        pop     esi                                     ; 1000FACA _ 5E
        xor     eax, eax                                ; 1000FACB _ 33. C0
        pop     ebp                                     ; 1000FACD _ 5D
        ret                                             ; 1000FACE _ C3

        nop                                             ; 1000FACF _ 90
