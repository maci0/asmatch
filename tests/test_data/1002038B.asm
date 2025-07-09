; ---- 1002038B ----
?_4219: ; Local function
        call    ?_3107                                  ; 1002038B _ E8, FFFFA455
        mov     dword [eax], 9                          ; 10020390 _ C7. 00, 00000009
        call    ?_3108                                  ; 10020396 _ E8, FFFFA453
        and     dword [eax], 00H                        ; 1002039B _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1002039E _ 83. C8, FF
        ret                                             ; 100203A1 _ C3
