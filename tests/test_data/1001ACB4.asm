; ---- 1001ACB4 ----
?_3172: ; Local function
        test    byte [esi+0DH], 40H                     ; 1001ACB4 _ F6. 46, 0D, 40
        jz      ?_3173                                  ; 1001ACB8 _ 74, 0F
        push    dword [esi+10H]                         ; 1001ACBA _ FF. 76, 10
        call    ?_3989                                  ; 1001ACBD _ E8, 0000443D
        neg     eax                                     ; 1001ACC2 _ F7. D8
        pop     ecx                                     ; 1001ACC4 _ 59
        pop     esi                                     ; 1001ACC5 _ 5E
        sbb     eax, eax                                ; 1001ACC6 _ 1B. C0
        ret                                             ; 1001ACC8 _ C3
