; ---- 1000FAD0 ----
?_1787: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000FAD0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+10H]                    ; 1000FAD4 _ 8B. 48, 10
        push    ecx                                     ; 1000FAD7 _ 51
        call    ?_2414                                  ; 1000FAD8 _ E8, 000062E3
        add     esp, 4                                  ; 1000FADD _ 83. C4, 04
        test    eax, eax                                ; 1000FAE0 _ 85. C0
        jnz     ?_1788                                  ; 1000FAE2 _ 75, 1F
        push    1                                       ; 1000FAE4 _ 6A, 01
        push    ?_5330                                  ; 1000FAE6 _ 68, 1002D3D4(d)
        push    21208                                   ; 1000FAEB _ 68, 000052D8
        push    ?_5260                                  ; 1000FAF0 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000FAF5 _ E8, FFFF3B46
        add     esp, 16                                 ; 1000FAFA _ 83. C4, 10
        mov     eax, 1                                  ; 1000FAFD _ B8, 00000001
        ret                                             ; 1000FB02 _ C3
