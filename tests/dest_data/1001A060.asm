; ---- 1001A060 ----
?_3016: ; Local function
        push    30                                      ; 1001A060 _ 6A, 1E
        push    0                                       ; 1001A062 _ 6A, 00
        push    1                                       ; 1001A064 _ 6A, 01
        call    ?_2609                                  ; 1001A066 _ E8, FFFFD075
        add     esp, 12                                 ; 1001A06B _ 83. C4, 0C
        test    eax, eax                                ; 1001A06E _ 85. C0
        jz      ?_3021                                  ; 1001A070 _ 74, 4E
        push    esi                                     ; 1001A072 _ 56
        mov     esi, 2                                  ; 1001A073 _ BE, 00000002
?_3017: mov     eax, dword [eax+5DH]                    ; 1001A078 _ 8B. 40, 5D
        push    255                                     ; 1001A07B _ 68, 000000FF
        push    0                                       ; 1001A080 _ 6A, 00
        push    1                                       ; 1001A082 _ 6A, 01
        push    eax                                     ; 1001A084 _ 50
        call    ?_2482                                  ; 1001A085 _ E8, FFFFC3D6
        add     esp, 16                                 ; 1001A08A _ 83. C4, 10
        test    eax, eax                                ; 1001A08D _ 85. C0
        jz      ?_3020                                  ; 1001A08F _ 74, 25
        mov     ecx, dword [eax+14H]                    ; 1001A091 _ 8B. 48, 14
        push    5                                       ; 1001A094 _ 6A, 05
        push    1                                       ; 1001A096 _ 6A, 01
        push    ecx                                     ; 1001A098 _ 51
        call    ?_2482                                  ; 1001A099 _ E8, FFFFC3C2
        add     esp, 12                                 ; 1001A09E _ 83. C4, 0C
        test    eax, eax                                ; 1001A0A1 _ 85. C0
        jz      ?_3020                                  ; 1001A0A3 _ 74, 11
?_3018: cmp     dword [eax+0EH], esi                    ; 1001A0A5 _ 39. 70, 0E
        jz      ?_3019                                  ; 1001A0A8 _ 74, 03
        mov     dword [eax+0EH], esi                    ; 1001A0AA _ 89. 70, 0E
?_3019: call    ?_2461                                  ; 1001A0AD _ E8, FFFFC1DE
        test    eax, eax                                ; 1001A0B2 _ 85. C0
        jnz     ?_3018                                  ; 1001A0B4 _ 75, EF
?_3020: call    ?_2587                                  ; 1001A0B6 _ E8, FFFFCEC5
        test    eax, eax                                ; 1001A0BB _ 85. C0
        jnz     ?_3017                                  ; 1001A0BD _ 75, B9
        pop     esi                                     ; 1001A0BF _ 5E
?_3021: ret                                             ; 1001A0C0 _ C3

        nop                                             ; 1001A0C1 _ 90
        nop                                             ; 1001A0C2 _ 90
        nop                                             ; 1001A0C3 _ 90
        nop                                             ; 1001A0C4 _ 90
        nop                                             ; 1001A0C5 _ 90
        nop                                             ; 1001A0C6 _ 90
        nop                                             ; 1001A0C7 _ 90
        nop                                             ; 1001A0C8 _ 90
        nop                                             ; 1001A0C9 _ 90
        nop                                             ; 1001A0CA _ 90
        nop                                             ; 1001A0CB _ 90
        nop                                             ; 1001A0CC _ 90
        nop                                             ; 1001A0CD _ 90
        nop                                             ; 1001A0CE _ 90
        nop                                             ; 1001A0CF _ 90

