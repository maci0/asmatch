; ---- 100147A6 ----
?_2248: ; Local function
        pop     edi                                     ; 100147A6 _ 5F
        or      eax, 0FFFFFFFFH                         ; 100147A7 _ 83. C8, FF
        pop     esi                                     ; 100147AA _ 5E
        ret                                             ; 100147AB _ C3

        nop                                             ; 100147AC _ 90
        nop                                             ; 100147AD _ 90
        nop                                             ; 100147AE _ 90
        nop                                             ; 100147AF _ 90
?_2249: sub     esp, 288                                ; 100147B0 _ 81. EC, 00000120
        push    ebx                                     ; 100147B6 _ 53
        mov     ebx, dword [esp+128H]                   ; 100147B7 _ 8B. 9C 24, 00000128
        push    ebp                                     ; 100147BE _ 55
        push    esi                                     ; 100147BF _ 56
        mov     eax, dword [ebx]                        ; 100147C0 _ 8B. 03
        push    edi                                     ; 100147C2 _ 57
        test    ah, 40H                                 ; 100147C3 _ F6. C4, 40
        jz      ?_2250                                  ; 100147C6 _ 74, 0E
        push    1                                       ; 100147C8 _ 6A, 01
        push    ?_5359                                  ; 100147CA _ 68, 1002D740(d)
        push    666                                     ; 100147CF _ 68, 0000029A
        jmp     ?_2251                                  ; 100147D4 _ EB, 11

?_2250: test    ah, 20H                                 ; 100147D6 _ F6. C4, 20
        jnz     ?_2252                                  ; 100147D9 _ 75, 3D
        push    1                                       ; 100147DB _ 6A, 01
        push    ?_5359                                  ; 100147DD _ 68, 1002D740(d)
        push    676                                     ; 100147E2 _ 68, 000002A4
?_2251: push    ?_5358                                  ; 100147E7 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 100147EC _ E8, FFFEEE4F
        mov     eax, dword [esp+148H]                   ; 100147F1 _ 8B. 84 24, 00000148
        push    eax                                     ; 100147F8 _ 50
        push    ebx                                     ; 100147F9 _ 53
        mov     byte [eax], 2                           ; 100147FA _ C6. 00, 02
        call    ?_1110                                  ; 100147FD _ E8, FFFF619E
        add     esp, 24                                 ; 10014802 _ 83. C4, 18
        inc     eax                                     ; 10014805 _ 40
        neg     eax                                     ; 10014806 _ F7. D8
        sbb     eax, eax                                ; 10014808 _ 1B. C0
        pop     edi                                     ; 1001480A _ 5F
        neg     eax                                     ; 1001480B _ F7. D8
        pop     esi                                     ; 1001480D _ 5E
        pop     ebp                                     ; 1001480E _ 5D
        dec     eax                                     ; 1001480F _ 48
        pop     ebx                                     ; 10014810 _ 5B
        add     esp, 288                                ; 10014811 _ 81. C4, 00000120
        ret                                             ; 10014817 _ C3

