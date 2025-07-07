; ---- 1000BB30 ----
?_1254: ; Local function
        push    edi                                     ; 1000BB30 _ 57
        push    1                                       ; 1000BB31 _ 6A, 01
        lea     ecx, [esp+18H]                          ; 1000BB33 _ 8D. 4C 24, 18
        push    4                                       ; 1000BB37 _ 6A, 04
        push    ecx                                     ; 1000BB39 _ 51
        call    ?_2085                                  ; 1000BB3A _ E8, 00006901
        add     esp, 16                                 ; 1000BB3F _ 83. C4, 10
        test    eax, eax                                ; 1000BB42 _ 85. C0
        jnz     ?_1255                                  ; 1000BB44 _ 75, 26
        push    1                                       ; 1000BB46 _ 6A, 01
        push    ?_5245                                  ; 1000BB48 _ 68, 1002A0C8(d)
        push    3699                                    ; 1000BB4D _ 68, 00000E73
        push    ?_5244                                  ; 1000BB52 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BB57 _ E8, FFFF7AE4
        add     esp, 16                                 ; 1000BB5C _ 83. C4, 10
        xor     eax, eax                                ; 1000BB5F _ 33. C0
        pop     edi                                     ; 1000BB61 _ 5F
        pop     esi                                     ; 1000BB62 _ 5E
        pop     ebp                                     ; 1000BB63 _ 5D
        pop     ebx                                     ; 1000BB64 _ 5B
        add     esp, 260                                ; 1000BB65 _ 81. C4, 00000104
        ret                                             ; 1000BB6B _ C3

