; ---- 100127FC ----
?_2119: ; Local function
        mov     eax, dword [esp+10H]                    ; 100127FC _ 8B. 44 24, 10
        xor     ebp, ebp                                ; 10012800 _ 33. ED
        test    eax, eax                                ; 10012802 _ 85. C0
        jle     ?_2121                                  ; 10012804 _ 0F 8E, 000000D0
        xor     ebx, ebx                                ; 1001280A _ 33. DB
?_2120: mov     ecx, dword [?_5669]                     ; 1001280C _ 8B. 0D, 100A8C34(d)
        push    edi                                     ; 10012812 _ 57
        push    1                                       ; 10012813 _ 6A, 01
        push    2                                       ; 10012815 _ 6A, 02
        lea     esi, [ebx+ecx]                          ; 10012817 _ 8D. 34 0B
        push    esi                                     ; 1001281A _ 56
        call    ?_2085                                  ; 1001281B _ E8, FFFFFC20
        add     esp, 16                                 ; 10012820 _ 83. C4, 10
        test    eax, eax                                ; 10012823 _ 85. C0
        jz      ?_2118                                  ; 10012825 _ 74, CD
        push    edi                                     ; 10012827 _ 57
        push    1                                       ; 10012828 _ 6A, 01
        lea     edx, [esi+2H]                           ; 1001282A _ 8D. 56, 02
        push    4                                       ; 1001282D _ 6A, 04
        push    edx                                     ; 1001282F _ 52
        call    ?_2085                                  ; 10012830 _ E8, FFFFFC0B
        add     esp, 16                                 ; 10012835 _ 83. C4, 10
        test    eax, eax                                ; 10012838 _ 85. C0
        jz      ?_2118                                  ; 1001283A _ 74, B8
        push    edi                                     ; 1001283C _ 57
        push    1                                       ; 1001283D _ 6A, 01
        lea     eax, [esi+6H]                           ; 1001283F _ 8D. 46, 06
        push    4                                       ; 10012842 _ 6A, 04
        push    eax                                     ; 10012844 _ 50
        call    ?_2085                                  ; 10012845 _ E8, FFFFFBF6
        add     esp, 16                                 ; 1001284A _ 83. C4, 10
        test    eax, eax                                ; 1001284D _ 85. C0
        jz      ?_2118                                  ; 1001284F _ 74, A3
        push    edi                                     ; 10012851 _ 57
        push    1                                       ; 10012852 _ 6A, 01
        lea     ecx, [esi+0AH]                          ; 10012854 _ 8D. 4E, 0A
        push    4                                       ; 10012857 _ 6A, 04
        push    ecx                                     ; 10012859 _ 51
        call    ?_2085                                  ; 1001285A _ E8, FFFFFBE1
        add     esp, 16                                 ; 1001285F _ 83. C4, 10
        test    eax, eax                                ; 10012862 _ 85. C0
        jz      ?_2118                                  ; 10012864 _ 74, 8E
        push    edi                                     ; 10012866 _ 57
        push    1                                       ; 10012867 _ 6A, 01
        lea     edx, [esi+0EH]                          ; 10012869 _ 8D. 56, 0E
        push    4                                       ; 1001286C _ 6A, 04
        push    edx                                     ; 1001286E _ 52
        call    ?_2085                                  ; 1001286F _ E8, FFFFFBCC
        add     esp, 16                                 ; 10012874 _ 83. C4, 10
        test    eax, eax                                ; 10012877 _ 85. C0
        je      ?_2118                                  ; 10012879 _ 0F 84, FFFFFF75
        push    edi                                     ; 1001287F _ 57
        push    1                                       ; 10012880 _ 6A, 01
        lea     eax, [esi+12H]                          ; 10012882 _ 8D. 46, 12
        push    1                                       ; 10012885 _ 6A, 01
        push    eax                                     ; 10012887 _ 50
        call    ?_2085                                  ; 10012888 _ E8, FFFFFBB3
        add     esp, 16                                 ; 1001288D _ 83. C4, 10
        test    eax, eax                                ; 10012890 _ 85. C0
        je      ?_2118                                  ; 10012892 _ 0F 84, FFFFFF5C
        push    edi                                     ; 10012898 _ 57
        push    1                                       ; 10012899 _ 6A, 01
        lea     ecx, [esi+13H]                          ; 1001289B _ 8D. 4E, 13
        push    1                                       ; 1001289E _ 6A, 01
        push    ecx                                     ; 100128A0 _ 51
        call    ?_2085                                  ; 100128A1 _ E8, FFFFFB9A
        add     esp, 16                                 ; 100128A6 _ 83. C4, 10
        test    eax, eax                                ; 100128A9 _ 85. C0
        je      ?_2118                                  ; 100128AB _ 0F 84, FFFFFF43
        push    edi                                     ; 100128B1 _ 57
        push    1                                       ; 100128B2 _ 6A, 01
        add     esi, 28                                 ; 100128B4 _ 83. C6, 1C
        push    31                                      ; 100128B7 _ 6A, 1F
        push    esi                                     ; 100128B9 _ 56
        call    ?_2085                                  ; 100128BA _ E8, FFFFFB81
        add     esp, 16                                 ; 100128BF _ 83. C4, 10
        test    eax, eax                                ; 100128C2 _ 85. C0
        je      ?_2118                                  ; 100128C4 _ 0F 84, FFFFFF2A
        mov     eax, dword [esp+10H]                    ; 100128CA _ 8B. 44 24, 10
        inc     ebp                                     ; 100128CE _ 45
        add     ebx, 67                                 ; 100128CF _ 83. C3, 43
        cmp     ebp, eax                                ; 100128D2 _ 3B. E8
        jl      ?_2120                                  ; 100128D4 _ 0F 8C, FFFFFF32
?_2121: pop     edi                                     ; 100128DA _ 5F
        pop     esi                                     ; 100128DB _ 5E
        mov     dword [?_5539], eax                     ; 100128DC _ A3, 10035450(d)
        pop     ebp                                     ; 100128E1 _ 5D
        mov     eax, 1                                  ; 100128E2 _ B8, 00000001
        pop     ebx                                     ; 100128E7 _ 5B
        pop     ecx                                     ; 100128E8 _ 59
        ret                                             ; 100128E9 _ C3

        nop                                             ; 100128EA _ 90
        nop                                             ; 100128EB _ 90
        nop                                             ; 100128EC _ 90
        nop                                             ; 100128ED _ 90
        nop                                             ; 100128EE _ 90
        nop                                             ; 100128EF _ 90
?_2122: sub     esp, 12                                 ; 100128F0 _ 83. EC, 0C
        push    ebx                                     ; 100128F3 _ 53
        push    ebp                                     ; 100128F4 _ 55
        push    esi                                     ; 100128F5 _ 56
        push    edi                                     ; 100128F6 _ 57
        call    ?_2404                                  ; 100128F7 _ E8, 000033B4
        mov     edi, dword [esp+20H]                    ; 100128FC _ 8B. 7C 24, 20
        lea     eax, [esp+14H]                          ; 10012900 _ 8D. 44 24, 14
        push    edi                                     ; 10012904 _ 57
        push    1                                       ; 10012905 _ 6A, 01
        push    4                                       ; 10012907 _ 6A, 04
        push    eax                                     ; 10012909 _ 50
        call    ?_2085                                  ; 1001290A _ E8, FFFFFB31
        add     esp, 16                                 ; 1001290F _ 83. C4, 10
        test    eax, eax                                ; 10012912 _ 85. C0
        jnz     ?_2123                                  ; 10012914 _ 75, 08
        pop     edi                                     ; 10012916 _ 5F
        pop     esi                                     ; 10012917 _ 5E
        pop     ebp                                     ; 10012918 _ 5D
        pop     ebx                                     ; 10012919 _ 5B
        add     esp, 12                                 ; 1001291A _ 83. C4, 0C
        ret                                             ; 1001291D _ C3

