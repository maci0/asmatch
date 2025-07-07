; ---- 10016572 ----
?_2495: ; Local function
        mov     eax, dword [esp+8H]                     ; 10016572 _ 8B. 44 24, 08
        test    eax, eax                                ; 10016576 _ 85. C0
        jnz     ?_2494                                  ; 10016578 _ 75, EC
        pop     ebx                                     ; 1001657A _ 5B
        ret                                             ; 1001657B _ C3

?_2496:                                                 ; switch/case jump table
        dd ?_2485                                       ; 1001657C _ 100164E1 (d)
        dd ?_2486                                       ; 10016580 _ 100164F1 (d)
        dd ?_2492                                       ; 10016584 _ 1001652C (d)
        dd ?_2487                                       ; 10016588 _ 100164FF (d)
        dd ?_2488                                       ; 1001658C _ 1001650F (d)
        dd ?_2489                                       ; 10016590 _ 1001651D (d)
        dd ?_2490                                       ; 10016594 _ 10016526 (d)
        dd ?_2491                                       ; 10016598 _ 1001652A (d)

; Filling space: 4H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H

ALIGN   8
?_2497: mov     ecx, dword [?_5669]                     ; 100165A0 _ 8B. 0D, 100A8C34(d)
        xor     eax, eax                                ; 100165A6 _ 33. C0
        xor     edx, edx                                ; 100165A8 _ 33. D2
?_2498: cmp     edx, 20488                              ; 100165AA _ 81. FA, 00005008
        jge     ?_2501                                  ; 100165B0 _ 7D, 12
        cmp     word [ecx], 0                           ; 100165B2 _ 66: 83. 39, 00
        jz      ?_2499                                  ; 100165B6 _ 74, 06
        inc     edx                                     ; 100165B8 _ 42
        add     ecx, 67                                 ; 100165B9 _ 83. C1, 43
        jmp     ?_2500                                  ; 100165BC _ EB, 02

?_2499: mov     eax, ecx                                ; 100165BE _ 8B. C1
?_2500: test    eax, eax                                ; 100165C0 _ 85. C0
        jz      ?_2498                                  ; 100165C2 _ 74, E6
?_2501: ret                                             ; 100165C4 _ C3

        nop                                             ; 100165C5 _ 90
        nop                                             ; 100165C6 _ 90
        nop                                             ; 100165C7 _ 90
        nop                                             ; 100165C8 _ 90
        nop                                             ; 100165C9 _ 90
        nop                                             ; 100165CA _ 90
        nop                                             ; 100165CB _ 90
        nop                                             ; 100165CC _ 90
        nop                                             ; 100165CD _ 90
        nop                                             ; 100165CE _ 90
        nop                                             ; 100165CF _ 90

