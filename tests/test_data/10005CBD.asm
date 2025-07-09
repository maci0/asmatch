; ---- 10005CBD ----
?_0568: ; Local function
        pop     edi                                     ; 10005CBD _ 5F
        pop     esi                                     ; 10005CBE _ 5E
        pop     ebp                                     ; 10005CBF _ 5D
        mov     eax, 4294967293                         ; 10005CC0 _ B8, FFFFFFFD
        pop     ebx                                     ; 10005CC5 _ 5B
        ret                                             ; 10005CC6 _ C3

        nop                                             ; 10005CC7 _ 90

?_0569:                                                 ; switch/case jump table
        dd ?_0541                                       ; 10005CC8 _ 10005927 (d)
        dd ?_0544                                       ; 10005CCC _ 1000599E (d)
        dd ?_0555                                       ; 10005CD0 _ 10005B90 (d)
        dd ?_0558                                       ; 10005CD4 _ 10005BC8 (d)
        dd ?_0560                                       ; 10005CD8 _ 10005C05 (d)
        dd ?_0562                                       ; 10005CDC _ 10005C3E (d)
        dd ?_0564                                       ; 10005CE0 _ 10005C86 (d)
        dd ?_0546                                       ; 10005CE4 _ 10005A15 (d)
        dd ?_0550                                       ; 10005CE8 _ 10005A82 (d)
        dd ?_0551                                       ; 10005CEC _ 10005AB7 (d)
        dd ?_0552                                       ; 10005CF0 _ 10005AF1 (d)
        dd ?_0553                                       ; 10005CF4 _ 10005B2B (d)
        dd ?_0567                                       ; 10005CF8 _ 10005CB3 (d)
        dd ?_0568                                       ; 10005CFC _ 10005CBD (d)
?_0570: push    ecx                                     ; 10005D00 _ 51
        push    ebx                                     ; 10005D01 _ 53
        push    edi                                     ; 10005D02 _ 57
        mov     edi, dword [esp+20H]                    ; 10005D03 _ 8B. 7C 24, 20
        push    4                                       ; 10005D07 _ 6A, 04
        push    19                                      ; 10005D09 _ 6A, 13
        mov     dword [esp+10H], 0                      ; 10005D0B _ C7. 44 24, 10, 00000000
        mov     eax, dword [edi+28H]                    ; 10005D13 _ 8B. 47, 28
        push    eax                                     ; 10005D16 _ 50
        call    near [edi+20H]                          ; 10005D17 _ FF. 57, 20
        mov     ebx, eax                                ; 10005D1A _ 8B. D8
        add     esp, 12                                 ; 10005D1C _ 83. C4, 0C
        test    ebx, ebx                                ; 10005D1F _ 85. DB
        jnz     ?_0571                                  ; 10005D21 _ 75, 09
        pop     edi                                     ; 10005D23 _ 5F
        mov     eax, 4294967292                         ; 10005D24 _ B8, FFFFFFFC
        pop     ebx                                     ; 10005D29 _ 5B
        pop     ecx                                     ; 10005D2A _ 59
        ret                                             ; 10005D2B _ C3
