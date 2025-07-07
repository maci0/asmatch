; ---- 1000BB6C ----
?_1255: ; Local function
        mov     eax, dword [esp+10H]                    ; 1000BB6C _ 8B. 44 24, 10
        cmp     eax, ebp                                ; 1000BB70 _ 3B. C5
        jz      ?_1256                                  ; 1000BB72 _ 74, 38
        push    42                                      ; 1000BB74 _ 6A, 2A
        push    eax                                     ; 1000BB76 _ 50
        lea     edx, [esp+1CH]                          ; 1000BB77 _ 8D. 54 24, 1C
        push    ?_5243                                  ; 1000BB7B _ 68, 1002A06C(d)
        push    edx                                     ; 1000BB80 _ 52
        call    ?_3039                                  ; 1000BB81 _ E8, 0000E713
        lea     eax, [esp+24H]                          ; 1000BB86 _ 8D. 44 24, 24
        push    1                                       ; 1000BB8A _ 6A, 01
        push    eax                                     ; 1000BB8C _ 50
        push    3708                                    ; 1000BB8D _ 68, 00000E7C
        push    ?_5244                                  ; 1000BB92 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BB97 _ E8, FFFF7AA4
        add     esp, 32                                 ; 1000BB9C _ 83. C4, 20
        xor     eax, eax                                ; 1000BB9F _ 33. C0
        pop     edi                                     ; 1000BBA1 _ 5F
        pop     esi                                     ; 1000BBA2 _ 5E
        pop     ebp                                     ; 1000BBA3 _ 5D
        pop     ebx                                     ; 1000BBA4 _ 5B
        add     esp, 260                                ; 1000BBA5 _ 81. C4, 00000104
        ret                                             ; 1000BBAB _ C3

