; ---- 1001855B ----
?_2825: ; Local function
        xor     edi, edi                                ; 1001855B _ 33. FF
        mov     ebx, 256                                ; 1001855D _ BB, 00000100
?_2826: mov     ecx, dword [?_5690]                     ; 10018562 _ 8B. 0D, 1014D8C0(d)
        mov     al, byte [edi+ecx]                      ; 10018568 _ 8A. 04 0F
        lea     esi, [edi+ecx]                          ; 1001856B _ 8D. 34 0F
        test    al, al                                  ; 1001856E _ 84. C0
        jz      ?_2827                                  ; 10018570 _ 74, 33
        and     eax, 0FFH                               ; 10018572 _ 25, 000000FF
        push    eax                                     ; 10018577 _ 50
        call    ?_2693                                  ; 10018578 _ E8, FFFFF433
        add     esp, 4                                  ; 1001857D _ 83. C4, 04
        cmp     eax, 2                                  ; 10018580 _ 83. F8, 02
        jnz     ?_2827                                  ; 10018583 _ 75, 20
        mov     dx, word [esi+27H]                      ; 10018585 _ 66: 8B. 56, 27
        cmp     dx, word [ebp]                          ; 10018589 _ 66: 3B. 55, 00
        jnz     ?_2827                                  ; 1001858D _ 75, 16
        mov     ecx, dword [?_5547]                     ; 1001858F _ 8B. 0D, 1003546C(d)
        xor     eax, eax                                ; 10018595 _ 33. C0
        mov     ax, word [ecx]                          ; 10018597 _ 66: 8B. 01
        push    eax                                     ; 1001859A _ 50
        push    eax                                     ; 1001859B _ 50
        push    esi                                     ; 1001859C _ 56
        call    ?_2713                                  ; 1001859D _ E8, FFFFF55E
        add     esp, 12                                 ; 100185A2 _ 83. C4, 0C
?_2827: add     edi, 169                                ; 100185A5 _ 81. C7, 000000A9
        dec     ebx                                     ; 100185AB _ 4B
        jnz     ?_2826                                  ; 100185AC _ 75, B4
        mov     ax, word [ebp]                          ; 100185AE _ 66: 8B. 45, 00
        push    eax                                     ; 100185B2 _ 50
        mov     dword [esp+20H], eax                    ; 100185B3 _ 89. 44 24, 20
        call    ?_2968                                  ; 100185B7 _ E8, 00001624
        mov     edx, dword [esp+468H]                   ; 100185BC _ 8B. 94 24, 00000468
        mov     dword [esp+1CH], eax                    ; 100185C3 _ 89. 44 24, 1C
        push    edx                                     ; 100185C7 _ 52
        call    ?_2817                                  ; 100185C8 _ E8, FFFFFED3
        mov     ebx, eax                                ; 100185CD _ 8B. D8
        add     esp, 8                                  ; 100185CF _ 83. C4, 08
        test    ebx, ebx                                ; 100185D2 _ 85. DB
        jnz     ?_2828                                  ; 100185D4 _ 75, 10
        pop     edi                                     ; 100185D6 _ 5F
        pop     esi                                     ; 100185D7 _ 5E
        pop     ebp                                     ; 100185D8 _ 5D
        mov     eax, 4294967294                         ; 100185D9 _ B8, FFFFFFFE
        pop     ebx                                     ; 100185DE _ 5B
        add     esp, 1100                               ; 100185DF _ 81. C4, 0000044C
        ret                                             ; 100185E5 _ C3
