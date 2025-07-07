; ---- 10022332 ----
?_4603: ; Local function
        cmp     ebp, 45                                 ; 10022332 _ 83. FD, 2D
        mov     eax, ebx                                ; 10022335 _ 8B. C3
        jnz     ?_4604                                  ; 10022337 _ 75, 02
        neg     eax                                     ; 10022339 _ F7. D8
?_4604: pop     edi                                     ; 1002233B _ 5F
        pop     esi                                     ; 1002233C _ 5E
        pop     ebp                                     ; 1002233D _ 5D
        pop     ebx                                     ; 1002233E _ 5B
        ret                                             ; 1002233F _ C3

