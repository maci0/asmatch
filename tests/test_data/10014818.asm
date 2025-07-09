; ---- 10014818 ----
?_2252: ; Local function
        xor     edi, edi                                ; 10014818 _ 33. FF
        xor     edx, edx                                ; 1001481A _ 33. D2
        mov     ecx, ?_5761                             ; 1001481C _ B9, 101DEB00(d)
?_2253: mov     eax, dword [ecx]                        ; 10014821 _ 8B. 01
        test    al, 01H                                 ; 10014823 _ A8, 01
        jz      ?_2254                                  ; 10014825 _ 74, 0B
        test    ah, 02H                                 ; 10014827 _ F6. C4, 02
        jz      ?_2254                                  ; 1001482A _ 74, 06
        test    ah, 20H                                 ; 1001482C _ F6. C4, 20
        jnz     ?_2254                                  ; 1001482F _ 75, 01
        inc     edx                                     ; 10014831 _ 42
?_2254: add     ecx, 2507364                            ; 10014832 _ 81. C1, 00264264
        cmp     ecx, ?_5770                             ; 10014838 _ 81. F9, 114FFE20(d)
        jl      ?_2253                                  ; 1001483E _ 7C, E1
        cmp     edx, dword [?_5774]                     ; 10014840 _ 3B. 15, 11764084(d)
        jl      ?_2257                                  ; 10014846 _ 7C, 53
        push    1                                       ; 10014848 _ 6A, 01
        push    ?_5366                                  ; 1001484A _ 68, 1002D848(d)
        push    689                                     ; 1001484F _ 68, 000002B1
        push    ?_5358                                  ; 10014854 _ 68, 1002D70C(d)
        call    ?_0267                                  ; 10014859 _ E8, FFFEEDE2
        mov     eax, dword [esp+148H]                   ; 1001485E _ 8B. 84 24, 00000148
        push    eax                                     ; 10014865 _ 50
        push    ebx                                     ; 10014866 _ 53
        mov     byte [eax], 2                           ; 10014867 _ C6. 00, 02
        call    ?_1110                                  ; 1001486A _ E8, FFFF6131
        add     esp, 24                                 ; 1001486F _ 83. C4, 18
        cmp     eax, -1                                 ; 10014872 _ 83. F8, FF
        jnz     ?_2256                                  ; 10014875 _ 75, 0E
?_2255: pop     edi                                     ; 10014877 _ 5F
        pop     esi                                     ; 10014878 _ 5E
        pop     ebp                                     ; 10014879 _ 5D
        or      eax, 0FFFFFFFFH                         ; 1001487A _ 83. C8, FF
        pop     ebx                                     ; 1001487D _ 5B
        add     esp, 288                                ; 1001487E _ 81. C4, 00000120
        ret                                             ; 10014884 _ C3

?_2256: push    ebx                                     ; 10014885 _ 53
        call    ?_1064                                  ; 10014886 _ E8, FFFF5A55
        add     esp, 4                                  ; 1001488B _ 83. C4, 04
        xor     eax, eax                                ; 1001488E _ 33. C0
        pop     edi                                     ; 10014890 _ 5F
        pop     esi                                     ; 10014891 _ 5E
        pop     ebp                                     ; 10014892 _ 5D
        pop     ebx                                     ; 10014893 _ 5B
        add     esp, 288                                ; 10014894 _ 81. C4, 00000120
        ret                                             ; 1001489A _ C3
