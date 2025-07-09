; ---- 100207C4 ----
?_4271: ; Local function
        cmp     dword [?_5589], 0                       ; 100207C4 _ 83. 3D, 100355BC(d), 00
        jnz     ?_4272                                  ; 100207CB _ 75, 12
        mov     cx, word [ebp+0CH]                      ; 100207CD _ 66: 8B. 4D, 0C
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, 255                                 ; 100207D1 _ 66: 81. F9, 00FF
        ja      ?_4273                                  ; 100207D6 _ 77, 39
        push    1                                       ; 100207D8 _ 6A, 01
        mov     byte [eax], cl                          ; 100207DA _ 88. 08
        pop     eax                                     ; 100207DC _ 58
        pop     ebp                                     ; 100207DD _ 5D
        ret                                             ; 100207DE _ C3

?_4272: lea     ecx, [ebp+8H]                           ; 100207DF _ 8D. 4D, 08
        and     dword [ebp+8H], 00H                     ; 100207E2 _ 83. 65, 08, 00
        push    ecx                                     ; 100207E6 _ 51
        push    0                                       ; 100207E7 _ 6A, 00
        push    dword [?_5477]                          ; 100207E9 _ FF. 35, 10033EE0(d)
        push    eax                                     ; 100207EF _ 50
        lea     eax, [ebp+0CH]                          ; 100207F0 _ 8D. 45, 0C
        push    1                                       ; 100207F3 _ 6A, 01
        push    eax                                     ; 100207F5 _ 50
        push    544                                     ; 100207F6 _ 68, 00000220
        push    dword [?_5590]                          ; 100207FB _ FF. 35, 100355CC(d)
        call    near [imp_WideCharToMultiByte]          ; 10020801 _ FF. 15, 1002413C(d)
        test    eax, eax                                ; 10020807 _ 85. C0
        jz      ?_4273                                  ; 10020809 _ 74, 06
        cmp     dword [ebp+8H], 0                       ; 1002080B _ 83. 7D, 08, 00
        jz      ?_4274                                  ; 1002080F _ 74, 0E
?_4273: call    ?_3107                                  ; 10020811 _ E8, FFFF9FCF
        mov     dword [eax], 42                         ; 10020816 _ C7. 00, 0000002A
        or      eax, 0FFFFFFFFH                         ; 1002081C _ 83. C8, FF
?_4274: pop     ebp                                     ; 1002081F _ 5D
        ret                                             ; 10020820 _ C3

        int 3    ; breakpoint or filler                 ; 10020821 _ CC
        int 3    ; breakpoint or filler                 ; 10020822 _ CC
        int 3    ; breakpoint or filler                 ; 10020823 _ CC
        int 3    ; breakpoint or filler                 ; 10020824 _ CC
        int 3    ; breakpoint or filler                 ; 10020825 _ CC
        int 3    ; breakpoint or filler                 ; 10020826 _ CC
        int 3    ; breakpoint or filler                 ; 10020827 _ CC
        int 3    ; breakpoint or filler                 ; 10020828 _ CC
        int 3    ; breakpoint or filler                 ; 10020829 _ CC
        int 3    ; breakpoint or filler                 ; 1002082A _ CC
        int 3    ; breakpoint or filler                 ; 1002082B _ CC
        int 3    ; breakpoint or filler                 ; 1002082C _ CC
        int 3    ; breakpoint or filler                 ; 1002082D _ CC
        int 3    ; breakpoint or filler                 ; 1002082E _ CC
        int 3    ; breakpoint or filler                 ; 1002082F _ CC
