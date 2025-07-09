; ---- 10015CB0 ----
?_2404: ; Local function
        push    esi                                     ; 10015CB0 _ 56
        push    edi                                     ; 10015CB1 _ 57
        xor     esi, esi                                ; 10015CB2 _ 33. F6
?_2405: mov     eax, dword [?_5690]                     ; 10015CB4 _ A1, 1014D8C0(d)
        add     eax, esi                                ; 10015CB9 _ 03. C6
        cmp     byte [eax], 0                           ; 10015CBB _ 80. 38, 00
        jz      ?_2406                                  ; 10015CBE _ 74, 09
        push    eax                                     ; 10015CC0 _ 50
        call    ?_2627                                  ; 10015CC1 _ E8, 0000157A
        add     esp, 4                                  ; 10015CC6 _ 83. C4, 04
?_2406: add     esi, 169                                ; 10015CC9 _ 81. C6, 000000A9
        cmp     esi, 43264                              ; 10015CCF _ 81. FE, 0000A900
        jl      ?_2405                                  ; 10015CD5 _ 7C, DD
        mov     edi, dword [?_5690]                     ; 10015CD7 _ 8B. 3D, 1014D8C0(d)
        mov     ecx, 10816                              ; 10015CDD _ B9, 00002A40
        xor     eax, eax                                ; 10015CE2 _ 33. C0
        rep stosd                                       ; 10015CE4 _ F3: AB
        pop     edi                                     ; 10015CE6 _ 5F
        pop     esi                                     ; 10015CE7 _ 5E
        ret                                             ; 10015CE8 _ C3

        nop                                             ; 10015CE9 _ 90
        nop                                             ; 10015CEA _ 90
        nop                                             ; 10015CEB _ 90
        nop                                             ; 10015CEC _ 90
        nop                                             ; 10015CED _ 90
        nop                                             ; 10015CEE _ 90
        nop                                             ; 10015CEF _ 90
