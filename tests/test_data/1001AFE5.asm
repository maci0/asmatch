; ---- 1001AFE5 ----
?_3221: ; Local function
        lea     eax, [edx-4H]                           ; 1001AFE5 _ 8D. 42, FC
        pop     esi                                     ; 1001AFE8 _ 5E
        pop     edi                                     ; 1001AFE9 _ 5F
        pop     ebx                                     ; 1001AFEA _ 5B
        ret                                             ; 1001AFEB _ C3

        int 3    ; breakpoint or filler                 ; 1001AFEC _ CC
        int 3    ; breakpoint or filler                 ; 1001AFED _ CC
        int 3    ; breakpoint or filler                 ; 1001AFEE _ CC
        int 3    ; breakpoint or filler                 ; 1001AFEF _ CC
