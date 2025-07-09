; ---- 100236BC ----
?_4858: ; Local function
        push    esi                                     ; 100236BC _ 56
        mov     esi, dword [?_5565]                     ; 100236BD _ 8B. 35, 100354D0(d)
        push    edi                                     ; 100236C3 _ 57
        mov     eax, dword [esi]                        ; 100236C4 _ 8B. 06
        test    eax, eax                                ; 100236C6 _ 85. C0
        jz      ?_4861                                  ; 100236C8 _ 74, 2D
        mov     edi, dword [esp+10H]                    ; 100236CA _ 8B. 7C 24, 10
?_4859: push    edi                                     ; 100236CE _ 57
        push    eax                                     ; 100236CF _ 50
        push    dword [esp+14H]                         ; 100236D0 _ FF. 74 24, 14
        call    ?_4773                                  ; 100236D4 _ E8, FFFFF86B
        add     esp, 12                                 ; 100236D9 _ 83. C4, 0C
        test    eax, eax                                ; 100236DC _ 85. C0
        jnz     ?_4860                                  ; 100236DE _ 75, 0D
        mov     eax, dword [esi]                        ; 100236E0 _ 8B. 06
        mov     al, byte [eax+edi]                      ; 100236E2 _ 8A. 04 38
        cmp     al, 61                                  ; 100236E5 _ 3C, 3D
        jz      ?_4863                                  ; 100236E7 _ 74, 1E
        test    al, al                                  ; 100236E9 _ 84. C0
        jz      ?_4863                                  ; 100236EB _ 74, 1A
?_4860: mov     eax, dword [esi+4H]                     ; 100236ED _ 8B. 46, 04
        add     esi, 4                                  ; 100236F0 _ 83. C6, 04
        test    eax, eax                                ; 100236F3 _ 85. C0
        jnz     ?_4859                                  ; 100236F5 _ 75, D7
?_4861: mov     eax, esi                                ; 100236F7 _ 8B. C6
        sub     eax, dword [?_5565]                     ; 100236F9 _ 2B. 05, 100354D0(d)
        sar     eax, 2                                  ; 100236FF _ C1. F8, 02
        neg     eax                                     ; 10023702 _ F7. D8
?_4862: pop     edi                                     ; 10023704 _ 5F
        pop     esi                                     ; 10023705 _ 5E
        ret                                             ; 10023706 _ C3
