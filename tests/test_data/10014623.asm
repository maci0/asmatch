; ---- 10014623 ----
?_2235: ; Local function
        push    esi                                     ; 10014623 _ 56
        push    edi                                     ; 10014624 _ 57
        mov     ecx, 9                                  ; 10014625 _ B9, 00000009
        xor     eax, eax                                ; 1001462A _ 33. C0
        lea     edi, [esp+0CH]                          ; 1001462C _ 8D. 7C 24, 0C
        rep stosd                                       ; 10014630 _ F3: AB
        mov     dword [esp+0CH], eax                    ; 10014632 _ 89. 44 24, 0C
        mov     eax, ?_5761                             ; 10014636 _ B8, 101DEB00(d)
?_2236: mov     ecx, dword [eax]                        ; 1001463B _ 8B. 08
        test    cl, 01H                                 ; 1001463D _ F6. C1, 01
        jz      ?_2237                                  ; 10014640 _ 74, 19
        test    ch, 02H                                 ; 10014642 _ F6. C5, 02
        jz      ?_2237                                  ; 10014645 _ 74, 14
        mov     edx, dword [esp+0CH]                    ; 10014647 _ 8B. 54 24, 0C
        mov     ecx, dword [eax+4H]                     ; 1001464B _ 8B. 48, 04
        mov     dword [esp+edx*4+10H], ecx              ; 1001464E _ 89. 4C 94, 10
        mov     ecx, dword [esp+0CH]                    ; 10014652 _ 8B. 4C 24, 0C
        inc     ecx                                     ; 10014656 _ 41
        mov     dword [esp+0CH], ecx                    ; 10014657 _ 89. 4C 24, 0C
?_2237: add     eax, 2507364                            ; 1001465B _ 05, 00264264
        cmp     eax, ?_5770                             ; 10014660 _ 3D, 114FFE20(d)
        jl      ?_2236                                  ; 10014665 _ 7C, D4
        mov     eax, dword [esp+38H]                    ; 10014667 _ 8B. 44 24, 38
        mov     ecx, 9                                  ; 1001466B _ B9, 00000009
        lea     esi, [esp+0CH]                          ; 10014670 _ 8D. 74 24, 0C
        push    eax                                     ; 10014674 _ 50
        lea     edi, [eax+14H]                          ; 10014675 _ 8D. 78, 14
        push    ebx                                     ; 10014678 _ 53
        rep movsd                                       ; 10014679 _ F3: A5
        call    ?_1110                                  ; 1001467B _ E8, FFFF6320
        add     esp, 8                                  ; 10014680 _ 83. C4, 08
        cmp     eax, -1                                 ; 10014683 _ 83. F8, FF
        pop     edi                                     ; 10014686 _ 5F
        pop     esi                                     ; 10014687 _ 5E
        jnz     ?_2238                                  ; 10014688 _ 75, 07
        or      eax, eax                                ; 1001468A _ 0B. C0
        pop     ebx                                     ; 1001468C _ 5B
        add     esp, 36                                 ; 1001468D _ 83. C4, 24
        ret                                             ; 10014690 _ C3
