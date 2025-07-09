; ---- 1001AA6A ----
?_3143: ; Local function
        push    ebp                                     ; 1001AA6A _ 55
        mov     ebp, esp                                ; 1001AA6B _ 8B. EC
        push    esi                                     ; 1001AA6D _ 56
        push    dword [ebp+14H]                         ; 1001AA6E _ FF. 75, 14
        call    ?_3366                                  ; 1001AA71 _ E8, 000010EA
        push    dword [ebp+14H]                         ; 1001AA76 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001AA79 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1001AA7C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001AA7F _ FF. 75, 08
        call    ?_3144                                  ; 1001AA82 _ E8, 00000012
        push    dword [ebp+14H]                         ; 1001AA87 _ FF. 75, 14
        mov     esi, eax                                ; 1001AA8A _ 8B. F0
        call    ?_3370                                  ; 1001AA8C _ E8, 00001121
        add     esp, 24                                 ; 1001AA91 _ 83. C4, 18
        mov     eax, esi                                ; 1001AA94 _ 8B. C6
        pop     esi                                     ; 1001AA96 _ 5E
        pop     ebp                                     ; 1001AA97 _ 5D
        ret                                             ; 1001AA98 _ C3
