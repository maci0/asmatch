; ---- 1001BA71 ----
?_3352: ; Local function
        mov     eax, dword [?_5575]                     ; 1001BA71 _ A1, 10035508(d)
        cmp     eax, 1                                  ; 1001BA76 _ 83. F8, 01
        jz      ?_3353                                  ; 1001BA79 _ 74, 0D
        test    eax, eax                                ; 1001BA7B _ 85. C0
        jnz     ?_3354                                  ; 1001BA7D _ 75, 0E
        cmp     dword [?_5576], 1                       ; 1001BA7F _ 83. 3D, 1003550C(d), 01
        jnz     ?_3354                                  ; 1001BA86 _ 75, 05
?_3353: call    ?_4160                                  ; 1001BA88 _ E8, 0000436B
?_3354: push    dword [esp+4H]                          ; 1001BA8D _ FF. 74 24, 04
        call    ?_4164                                  ; 1001BA91 _ E8, 0000439B
        push    255                                     ; 1001BA96 _ 68, 000000FF
        call    near [?_5445]                           ; 1001BA9B _ FF. 15, 100317F0(d)
        pop     ecx                                     ; 1001BAA1 _ 59
        pop     ecx                                     ; 1001BAA2 _ 59
        ret                                             ; 1001BAA3 _ C3

