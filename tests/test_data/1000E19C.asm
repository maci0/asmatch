; ---- 1000E19C ----
?_1559: ; Local function
        mov     ecx, dword [esp+10H]                    ; 1000E19C _ 8B. 4C 24, 10
        mov     ax, word [ecx]                          ; 1000E1A0 _ 66: 8B. 01
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 1000E1A3 _ 66: 3D, 002A
        jz      ?_1560                                  ; 1000E1A7 _ 74, 2C
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 1000E1A9 _ 66: 3D, 0116
        jz      ?_1560                                  ; 1000E1AD _ 74, 26
        push    1                                       ; 1000E1AF _ 6A, 01
        push    ?_5304                                  ; 1000E1B1 _ 68, 1002CF74(d)
        push    12115                                   ; 1000E1B6 _ 68, 00002F53
        push    ?_5260                                  ; 1000E1BB _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E1C0 _ E8, FFFF547B
        add     esp, 16                                 ; 1000E1C5 _ 83. C4, 10
        mov     eax, 1                                  ; 1000E1C8 _ B8, 00000001
        pop     edi                                     ; 1000E1CD _ 5F
        pop     esi                                     ; 1000E1CE _ 5E
        pop     ebp                                     ; 1000E1CF _ 5D
        pop     ebx                                     ; 1000E1D0 _ 5B
        add     esp, 16                                 ; 1000E1D1 _ 83. C4, 10
        ret                                             ; 1000E1D4 _ C3
