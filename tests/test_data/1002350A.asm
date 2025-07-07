; ---- 1002350A ----
?_4840: ; Local function
        mov     edx, dword [esp+8H]                     ; 1002350A _ 8B. 54 24, 08
        mov     eax, dword [esp+4H]                     ; 1002350E _ 8B. 44 24, 04
        test    edx, edx                                ; 10023512 _ 85. D2
        push    esi                                     ; 10023514 _ 56
        lea     ecx, [edx-1H]                           ; 10023515 _ 8D. 4A, FF
        jz      ?_4842                                  ; 10023518 _ 74, 0D
?_4841: cmp     byte [eax], 0                           ; 1002351A _ 80. 38, 00
        jz      ?_4842                                  ; 1002351D _ 74, 08
        inc     eax                                     ; 1002351F _ 40
        mov     esi, ecx                                ; 10023520 _ 8B. F1
        dec     ecx                                     ; 10023522 _ 49
        test    esi, esi                                ; 10023523 _ 85. F6
        jnz     ?_4841                                  ; 10023525 _ 75, F3
?_4842: cmp     byte [eax], 0                           ; 10023527 _ 80. 38, 00
        pop     esi                                     ; 1002352A _ 5E
        jnz     ?_4843                                  ; 1002352B _ 75, 05
        sub     eax, dword [esp+4H]                     ; 1002352D _ 2B. 44 24, 04
        ret                                             ; 10023531 _ C3

