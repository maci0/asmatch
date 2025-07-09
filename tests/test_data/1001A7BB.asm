; ---- 1001A7BB ----
?_3105: ; Local function
        cmp     ecx, 188                                ; 1001A7BB _ 81. F9, 000000BC
        jc      ?_3106                                  ; 1001A7C1 _ 72, 15
        cmp     ecx, 202                                ; 1001A7C3 _ 81. F9, 000000CA
        ja      ?_3106                                  ; 1001A7C9 _ 77, 0D
        call    ?_3107                                  ; 1001A7CB _ E8, 00000015
        mov     dword [eax], 8                          ; 1001A7D0 _ C7. 00, 00000008
        pop     esi                                     ; 1001A7D6 _ 5E
        ret                                             ; 1001A7D7 _ C3
