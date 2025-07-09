; ---- 10022EF2 ----
?_4771: ; Local function
        call    ?_3107                                  ; 10022EF2 _ E8, FFFF78EE
        mov     dword [eax], 22                         ; 10022EF7 _ C7. 00, 00000016
        or      eax, 0FFFFFFFFH                         ; 10022EFD _ 83. C8, FF
        pop     esi                                     ; 10022F00 _ 5E
        ret                                             ; 10022F01 _ C3

        int 3    ; breakpoint or filler                 ; 10022F02 _ CC
        int 3    ; breakpoint or filler                 ; 10022F03 _ CC
        int 3    ; breakpoint or filler                 ; 10022F04 _ CC
        int 3    ; breakpoint or filler                 ; 10022F05 _ CC
        int 3    ; breakpoint or filler                 ; 10022F06 _ CC
        int 3    ; breakpoint or filler                 ; 10022F07 _ CC
        int 3    ; breakpoint or filler                 ; 10022F08 _ CC
        int 3    ; breakpoint or filler                 ; 10022F09 _ CC
        int 3    ; breakpoint or filler                 ; 10022F0A _ CC
        int 3    ; breakpoint or filler                 ; 10022F0B _ CC
        int 3    ; breakpoint or filler                 ; 10022F0C _ CC
        int 3    ; breakpoint or filler                 ; 10022F0D _ CC
        int 3    ; breakpoint or filler                 ; 10022F0E _ CC
        int 3    ; breakpoint or filler                 ; 10022F0F _ CC
        mov     eax, dword [esp+8H]                     ; 10022F10 _ 8B. 44 24, 08
        mov     ecx, dword [esp+10H]                    ; 10022F14 _ 8B. 4C 24, 10
        or      ecx, eax                                ; 10022F18 _ 0B. C8
        mov     ecx, dword [esp+0CH]                    ; 10022F1A _ 8B. 4C 24, 0C
        jnz     ?_4772                                  ; 10022F1E _ 75, 09
        mov     eax, dword [esp+4H]                     ; 10022F20 _ 8B. 44 24, 04
        mul     ecx                                     ; 10022F24 _ F7. E1
        ret     16                                      ; 10022F26 _ C2, 0010
