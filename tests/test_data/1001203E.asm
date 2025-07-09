; ---- 1001203E ----
?_2068: ; Local function
        push    esi                                     ; 1001203E _ 56
        lea     edi, [ebx+4H]                           ; 1001203F _ 8D. 7B, 04
        push    1                                       ; 10012042 _ 6A, 01
        push    4                                       ; 10012044 _ 6A, 04
        push    edi                                     ; 10012046 _ 57
        call    ?_2085                                  ; 10012047 _ E8, 000003F4
        add     esp, 16                                 ; 1001204C _ 83. C4, 10
        test    eax, eax                                ; 1001204F _ 85. C0
        jnz     ?_2069                                  ; 10012051 _ 75, 06
        pop     edi                                     ; 10012053 _ 5F
        pop     esi                                     ; 10012054 _ 5E
        pop     ebp                                     ; 10012055 _ 5D
        pop     ebx                                     ; 10012056 _ 5B
        pop     ecx                                     ; 10012057 _ 59
        ret                                             ; 10012058 _ C3
