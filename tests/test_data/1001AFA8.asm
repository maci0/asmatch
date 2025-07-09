; ---- 1001AFA8 ----
?_3217: ; Local function
        mov     eax, dword [edx-4H]                     ; 1001AFA8 _ 8B. 42, FC
        cmp     al, bl                                  ; 1001AFAB _ 38. D8
        jz      ?_3221                                  ; 1001AFAD _ 74, 36
        test    al, al                                  ; 1001AFAF _ 84. C0
        jz      ?_3215                                  ; 1001AFB1 _ 74, EF
        cmp     ah, bl                                  ; 1001AFB3 _ 38. DC
        jz      ?_3220                                  ; 1001AFB5 _ 74, 27
        test    ah, ah                                  ; 1001AFB7 _ 84. E4
        jz      ?_3215                                  ; 1001AFB9 _ 74, E7
        shr     eax, 16                                 ; 1001AFBB _ C1. E8, 10
        cmp     al, bl                                  ; 1001AFBE _ 38. D8
        jz      ?_3219                                  ; 1001AFC0 _ 74, 15
        test    al, al                                  ; 1001AFC2 _ 84. C0
        jz      ?_3215                                  ; 1001AFC4 _ 74, DC
        cmp     ah, bl                                  ; 1001AFC6 _ 38. DC
        jz      ?_3218                                  ; 1001AFC8 _ 74, 06
        test    ah, ah                                  ; 1001AFCA _ 84. E4
        jz      ?_3215                                  ; 1001AFCC _ 74, D4
        jmp     ?_3214                                  ; 1001AFCE _ EB, 96

?_3218: pop     esi                                     ; 1001AFD0 _ 5E
        pop     edi                                     ; 1001AFD1 _ 5F
        lea     eax, [edx-1H]                           ; 1001AFD2 _ 8D. 42, FF
        pop     ebx                                     ; 1001AFD5 _ 5B
        ret                                             ; 1001AFD6 _ C3

?_3219: lea     eax, [edx-2H]                           ; 1001AFD7 _ 8D. 42, FE
        pop     esi                                     ; 1001AFDA _ 5E
        pop     edi                                     ; 1001AFDB _ 5F
        pop     ebx                                     ; 1001AFDC _ 5B
        ret                                             ; 1001AFDD _ C3

?_3220: lea     eax, [edx-3H]                           ; 1001AFDE _ 8D. 42, FD
        pop     esi                                     ; 1001AFE1 _ 5E
        pop     edi                                     ; 1001AFE2 _ 5F
        pop     ebx                                     ; 1001AFE3 _ 5B
        ret                                             ; 1001AFE4 _ C3
