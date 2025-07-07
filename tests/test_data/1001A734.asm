; ---- 1001A734 ----
?_3095: ; Local function
        push    dword [esp+8H]                          ; 1001A734 _ FF. 74 24, 08
        mov     dword [?_5571], edi                     ; 1001A738 _ 89. 3D, 100354F0(d)
        call    near [imp_ExitProcess]                  ; 1001A73E _ FF. 15, 100240C4(d)
        pop     edi                                     ; 1001A744 _ 5F
        ret                                             ; 1001A745 _ C3

