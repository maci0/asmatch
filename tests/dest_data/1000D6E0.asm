; ---- 1000D6E0 ----
?_1488: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000D6E0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+14H]                    ; 1000D6E4 _ 8B. 48, 14
        mov     edx, dword [eax+10H]                    ; 1000D6E7 _ 8B. 50, 10
        push    ecx                                     ; 1000D6EA _ 51
        push    edx                                     ; 1000D6EB _ 52
        call    ?_2824                                  ; 1000D6EC _ E8, 0000AE3F
        add     esp, 8                                  ; 1000D6F1 _ 83. C4, 08
        test    eax, eax                                ; 1000D6F4 _ 85. C0
        push    1                                       ; 1000D6F6 _ 6A, 01
        jl      ?_1489                                  ; 1000D6F8 _ 7C, 1A
        push    ?_5286                                  ; 1000D6FA _ 68, 1002CC14(d)
        push    10653                                   ; 1000D6FF _ 68, 0000299D
        push    ?_5260                                  ; 1000D704 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D709 _ E8, FFFF5F32
        add     esp, 16                                 ; 1000D70E _ 83. C4, 10
        xor     eax, eax                                ; 1000D711 _ 33. C0
        ret                                             ; 1000D713 _ C3

