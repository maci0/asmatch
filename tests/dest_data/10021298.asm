; ---- 10021298 ----
?_4398: ; Local function
        push    ebp                                     ; 10021298 _ 55
        mov     ebp, esp                                ; 10021299 _ 8B. EC
        push    ecx                                     ; 1002129B _ 51
        push    esi                                     ; 1002129C _ 56
        fwait                                           ; 1002129D _ 9B
        fnstcw  word [ebp-4H]                           ; 1002129E _ D9. 7D, FC
        push    dword [ebp-4H]                          ; 100212A1 _ FF. 75, FC
        call    ?_4400                                  ; 100212A4 _ E8, 0000003A
        mov     esi, eax                                ; 100212A9 _ 8B. F0
        mov     eax, dword [ebp+0CH]                    ; 100212AB _ 8B. 45, 0C
        not     eax                                     ; 100212AE _ F7. D0
        and     esi, eax                                ; 100212B0 _ 23. F0
        mov     eax, dword [ebp+8H]                     ; 100212B2 _ 8B. 45, 08
        and     eax, dword [ebp+0CH]                    ; 100212B5 _ 23. 45, 0C
        or      esi, eax                                ; 100212B8 _ 0B. F0
        push    esi                                     ; 100212BA _ 56
        call    ?_4413                                  ; 100212BB _ E8, 000000B5
        pop     ecx                                     ; 100212C0 _ 59
        mov     dword [ebp+0CH], eax                    ; 100212C1 _ 89. 45, 0C
        pop     ecx                                     ; 100212C4 _ 59
        fldcw   word [ebp+0CH]                          ; 100212C5 _ D9. 6D, 0C
        mov     eax, esi                                ; 100212C8 _ 8B. C6
        pop     esi                                     ; 100212CA _ 5E
        leave                                           ; 100212CB _ C9
        ret                                             ; 100212CC _ C3

