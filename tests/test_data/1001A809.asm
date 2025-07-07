; ---- 1001A809 ----
?_3110: ; Local function
        cmp     dword [esp+4H], -32                     ; 1001A809 _ 83. 7C 24, 04, E0
        ja      ?_3112                                  ; 1001A80E _ 77, 22
?_3111: push    dword [esp+4H]                          ; 1001A810 _ FF. 74 24, 04
        call    ?_3114                                  ; 1001A814 _ E8, 0000001C
        test    eax, eax                                ; 1001A819 _ 85. C0
        pop     ecx                                     ; 1001A81B _ 59
        jnz     ?_3113                                  ; 1001A81C _ 75, 16
        cmp     dword [esp+8H], eax                     ; 1001A81E _ 39. 44 24, 08
        jz      ?_3113                                  ; 1001A822 _ 74, 10
        push    dword [esp+4H]                          ; 1001A824 _ FF. 74 24, 04
        call    ?_3635                                  ; 1001A828 _ E8, 00002A0B
        test    eax, eax                                ; 1001A82D _ 85. C0
        pop     ecx                                     ; 1001A82F _ 59
        jnz     ?_3111                                  ; 1001A830 _ 75, DE
?_3112: xor     eax, eax                                ; 1001A832 _ 33. C0
?_3113: ret                                             ; 1001A834 _ C3

