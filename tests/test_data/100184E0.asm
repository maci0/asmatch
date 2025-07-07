; ---- 100184E0 ----
?_2821: ; Local function
        mov     ecx, dword [esp+4H]                     ; 100184E0 _ 8B. 4C 24, 04
        mov     al, byte [ecx+2H]                       ; 100184E4 _ 8A. 41, 02
        cmp     al, 6                                   ; 100184E7 _ 3C, 06
        jz      ?_2822                                  ; 100184E9 _ 74, 08
        cmp     al, 7                                   ; 100184EB _ 3C, 07
        jz      ?_2822                                  ; 100184ED _ 74, 04
        cmp     al, 5                                   ; 100184EF _ 3C, 05
        jnz     ?_2823                                  ; 100184F1 _ 75, 2C
?_2822: mov     ax, word [ecx+50H]                      ; 100184F3 _ 66: 8B. 41, 50
        test    ah, 0FFFFFF80H                          ; 100184F7 _ F6. C4, 80
        jz      ?_2823                                  ; 100184FA _ 74, 23
        and     eax, 0FH                                ; 100184FC _ 83. E0, 0F
        test    eax, eax                                ; 100184FF _ 85. C0
        jl      ?_2823                                  ; 10018501 _ 7C, 1C
        cmp     eax, 16                                 ; 10018503 _ 83. F8, 10
        jge     ?_2823                                  ; 10018506 _ 7D, 17
        lea     ecx, [eax*8]                            ; 10018508 _ 8D. 0C C5, 00000000
        sub     ecx, eax                                ; 1001850F _ 2B. C8
        lea     ecx, [ecx+ecx*2]                        ; 10018511 _ 8D. 0C 49
        lea     edx, [eax+ecx*2]                        ; 10018514 _ 8D. 14 48
        lea     eax, [?_5656+edx*4]                     ; 10018517 _ 8D. 04 95, 1009ACA0(d)
        ret                                             ; 1001851E _ C3

