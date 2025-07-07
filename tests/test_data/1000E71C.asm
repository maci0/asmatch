; ---- 1000E71C ----
?_1606: ; Local function
        cmp     dword [eax+0EH], 1                      ; 1000E71C _ 83. 78, 0E, 01
        jz      ?_1607                                  ; 1000E720 _ 74, 07
        mov     eax, 1                                  ; 1000E722 _ B8, 00000001
        pop     esi                                     ; 1000E727 _ 5E
        ret                                             ; 1000E728 _ C3

