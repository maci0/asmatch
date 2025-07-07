; ---- 100223BD ----
?_4612: ; Local function
        mov     edx, dword [esp+4H]                     ; 100223BD _ 8B. 54 24, 04
        push    esi                                     ; 100223C1 _ 56
        mov     esi, dword [esp+0CH]                    ; 100223C2 _ 8B. 74 24, 0C
        xor     eax, eax                                ; 100223C6 _ 33. C0
        lea     ecx, [edx+esi]                          ; 100223C8 _ 8D. 0C 32
        cmp     ecx, edx                                ; 100223CB _ 3B. CA
        jc      ?_4613                                  ; 100223CD _ 72, 04
        cmp     ecx, esi                                ; 100223CF _ 3B. CE
        jnc     ?_4614                                  ; 100223D1 _ 73, 03
?_4613: push    1                                       ; 100223D3 _ 6A, 01
        pop     eax                                     ; 100223D5 _ 58
?_4614: mov     edx, dword [esp+10H]                    ; 100223D6 _ 8B. 54 24, 10
        pop     esi                                     ; 100223DA _ 5E
        mov     dword [edx], ecx                        ; 100223DB _ 89. 0A
        ret                                             ; 100223DD _ C3

