; ---- 10014260 ----
?_2215: ; Local function
        mov     eax, dword [?_5755]                     ; 10014260 _ A1, 101DEAC0(d)
        mov     ecx, dword [?_5758]                     ; 10014265 _ 8B. 0D, 101DEAE8(d)
        push    esi                                     ; 1001426B _ 56
        push    edi                                     ; 1001426C _ 57
        push    ?_5182                                  ; 1001426D _ 68, 1002944C(d)
        push    eax                                     ; 10014272 _ 50
        push    ecx                                     ; 10014273 _ 51
        call    ?_0926                                  ; 10014274 _ E8, FFFF4DA7
        mov     esi, eax                                ; 10014279 _ 8B. F0
        xor     edi, edi                                ; 1001427B _ 33. FF
        add     esp, 12                                 ; 1001427D _ 83. C4, 0C
        cmp     esi, edi                                ; 10014280 _ 3B. F7
        jnz     ?_2216                                  ; 10014282 _ 75, 30
        push    1                                       ; 10014284 _ 6A, 01
        push    ?_5356                                  ; 10014286 _ 68, 1002D6D8(d)
        push    4606                                    ; 1001428B _ 68, 000011FE
        push    ?_5346                                  ; 10014290 _ 68, 1002D550(d)
        call    ?_0267                                  ; 10014295 _ E8, FFFEF3A6
        mov     edx, dword [?_5698]                     ; 1001429A _ 8B. 15, 101DE560(d)
        push    edx                                     ; 100142A0 _ 52
        call    ?_0663                                  ; 100142A1 _ E8, FFFF257A
        add     esp, 20                                 ; 100142A6 _ 83. C4, 14
        mov     dword [?_5698], edi                     ; 100142A9 _ 89. 3D, 101DE560(d)
        xor     eax, eax                                ; 100142AF _ 33. C0
        pop     edi                                     ; 100142B1 _ 5F
        pop     esi                                     ; 100142B2 _ 5E
        ret                                             ; 100142B3 _ C3
