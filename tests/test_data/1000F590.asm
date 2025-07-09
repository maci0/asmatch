; ---- 1000F590 ----
?_1745: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000F590 _ 8B. 44 24, 04
        mov     ecx, dword [?_5380]                     ; 1000F594 _ 8B. 0D, 10030B6C(d)
        push    esi                                     ; 1000F59A _ 56
        push    edi                                     ; 1000F59B _ 57
        mov     edx, dword [eax+10H]                    ; 1000F59C _ 8B. 50, 10
        mov     dword [eax+14H], ecx                    ; 1000F59F _ 89. 48, 14
        push    edx                                     ; 1000F5A2 _ 52
        push    1                                       ; 1000F5A3 _ 6A, 01
        push    1                                       ; 1000F5A5 _ 6A, 01
        call    ?_2609                                  ; 1000F5A7 _ E8, 00007B34
        mov     esi, eax                                ; 1000F5AC _ 8B. F0
        add     esp, 12                                 ; 1000F5AE _ 83. C4, 0C
        test    esi, esi                                ; 1000F5B1 _ 85. F6
        jnz     ?_1746                                  ; 1000F5B3 _ 75, 21
        push    1                                       ; 1000F5B5 _ 6A, 01
        push    ?_5325                                  ; 1000F5B7 _ 68, 1002D2EC(d)
        push    19092                                   ; 1000F5BC _ 68, 00004A94
        push    ?_5260                                  ; 1000F5C1 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000F5C6 _ E8, FFFF4075
        add     esp, 16                                 ; 1000F5CB _ 83. C4, 10
        mov     eax, 1                                  ; 1000F5CE _ B8, 00000001
        pop     edi                                     ; 1000F5D3 _ 5F
        pop     esi                                     ; 1000F5D4 _ 5E
        ret                                             ; 1000F5D5 _ C3
