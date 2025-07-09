; ---- 10019BE0 ----
?_2968: ; Local function
        push    esi                                     ; 10019BE0 _ 56
        mov     esi, dword [esp+8H]                     ; 10019BE1 _ 8B. 74 24, 08
; Note: Length-changing prefix causes delay on Intel processors
        cmp     si, 768                                 ; 10019BE5 _ 66: 81. FE, 0300
        jc      ?_2969                                  ; 10019BEA _ 72, 05
        or      eax, 0FFFFFFFFH                         ; 10019BEC _ 83. C8, FF
        pop     esi                                     ; 10019BEF _ 5E
        ret                                             ; 10019BF0 _ C3
