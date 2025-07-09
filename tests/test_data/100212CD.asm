; ---- 100212CD ----
?_4399: ; Local function
        mov     eax, dword [esp+8H]                     ; 100212CD _ 8B. 44 24, 08
        and     eax, 0FFF7FFFFH                         ; 100212D1 _ 25, FFF7FFFF
        push    eax                                     ; 100212D6 _ 50
        push    dword [esp+8H]                          ; 100212D7 _ FF. 74 24, 08
        call    ?_4398                                  ; 100212DB _ E8, FFFFFFB8
        pop     ecx                                     ; 100212E0 _ 59
        pop     ecx                                     ; 100212E1 _ 59
        ret                                             ; 100212E2 _ C3
