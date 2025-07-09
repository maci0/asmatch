; ---- 10020360 ----
?_4218: ; Local function
        mov     eax, dword [esp+4H]                     ; 10020360 _ 8B. 44 24, 04
        cmp     eax, dword [?_5811]                     ; 10020364 _ 3B. 05, 11766560(d)
        jnc     ?_4219                                  ; 1002036A _ 73, 1F
        mov     ecx, eax                                ; 1002036C _ 8B. C8
        and     eax, 1FH                                ; 1002036E _ 83. E0, 1F
        sar     ecx, 5                                  ; 10020371 _ C1. F9, 05
        lea     eax, [eax+eax*8]                        ; 10020374 _ 8D. 04 C0
        mov     ecx, dword [?_5809+ecx*4]               ; 10020377 _ 8B. 0C 8D, 11766460(d)
        test    byte [ecx+eax*4+4H], 01H                ; 1002037E _ F6. 44 81, 04, 01
        lea     eax, [ecx+eax*4]                        ; 10020383 _ 8D. 04 81
        jz      ?_4219                                  ; 10020386 _ 74, 03
        mov     eax, dword [eax]                        ; 10020388 _ 8B. 00
        ret                                             ; 1002038A _ C3
