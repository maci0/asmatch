; ---- 1000CFE0 ----
?_1437: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000CFE0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+10H]                    ; 1000CFE4 _ 8B. 48, 10
        push    ecx                                     ; 1000CFE7 _ 51
        push    1                                       ; 1000CFE8 _ 6A, 01
        push    1                                       ; 1000CFEA _ 6A, 01
        call    ?_2609                                  ; 1000CFEC _ E8, 0000A0EF
        add     esp, 12                                 ; 1000CFF1 _ 83. C4, 0C
        test    eax, eax                                ; 1000CFF4 _ 85. C0
        jz      ?_1438                                  ; 1000CFF6 _ 74, 09
        test    byte [eax+5AH], 02H                     ; 1000CFF8 _ F6. 40, 5A, 02
        jz      ?_1438                                  ; 1000CFFC _ 74, 03
        xor     eax, eax                                ; 1000CFFE _ 33. C0
        ret                                             ; 1000D000 _ C3
