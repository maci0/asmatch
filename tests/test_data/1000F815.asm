; ---- 1000F815 ----
?_1766: ; Local function
        mov     al, byte [edi+1DH]                      ; 1000F815 _ 8A. 47, 1D
        test    al, al                                  ; 1000F818 _ 84. C0
        jz      ?_1767                                  ; 1000F81A _ 74, 06
        mov     byte [esi+165H], al                     ; 1000F81C _ 88. 86, 00000165
?_1767: mov     al, byte [edi+1EH]                      ; 1000F822 _ 8A. 47, 1E
        test    al, al                                  ; 1000F825 _ 84. C0
        jz      ?_1768                                  ; 1000F827 _ 74, 08
        mov     byte [esi+164H], al                     ; 1000F829 _ 88. 86, 00000164
        jmp     ?_1769                                  ; 1000F82F _ EB, 07

?_1768: mov     byte [esi+164H], 0                      ; 1000F831 _ C6. 86, 00000164, 00
?_1769: mov     al, byte [edi+18H]                      ; 1000F838 _ 8A. 47, 18
        mov     byte [esi+2H], al                       ; 1000F83B _ 88. 46, 02
        mov     eax, dword [esi+184H]                   ; 1000F83E _ 8B. 86, 00000184
        test    eax, eax                                ; 1000F844 _ 85. C0
        jnz     ?_1770                                  ; 1000F846 _ 75, 0D
        test    ebp, ebp                                ; 1000F848 _ 85. ED
        jz      ?_1770                                  ; 1000F84A _ 74, 09
        push    ebp                                     ; 1000F84C _ 55
        call    ?_2363                                  ; 1000F84D _ E8, 00005C0E
        add     esp, 4                                  ; 1000F852 _ 83. C4, 04
?_1770: mov     al, byte [edi+1DH]                      ; 1000F855 _ 8A. 47, 1D
        cmp     al, 2                                   ; 1000F858 _ 3C, 02
        jz      ?_1771                                  ; 1000F85A _ 74, 31
        cmp     al, 1                                   ; 1000F85C _ 3C, 01
        jz      ?_1771                                  ; 1000F85E _ 74, 2D
        cmp     al, 16                                  ; 1000F860 _ 3C, 10
        jz      ?_1771                                  ; 1000F862 _ 74, 29
        cmp     al, 15                                  ; 1000F864 _ 3C, 0F
        jz      ?_1771                                  ; 1000F866 _ 74, 25
        cmp     al, 20                                  ; 1000F868 _ 3C, 14
        jz      ?_1771                                  ; 1000F86A _ 74, 21
        cmp     al, 19                                  ; 1000F86C _ 3C, 13
        jz      ?_1771                                  ; 1000F86E _ 74, 1D
        push    esi                                     ; 1000F870 _ 56
        call    ?_1329                                  ; 1000F871 _ E8, FFFFCE2A
        mov     eax, dword [eax]                        ; 1000F876 _ 8B. 00
        add     esp, 4                                  ; 1000F878 _ 83. C4, 04
        test    eax, eax                                ; 1000F87B _ 85. C0
        jz      ?_1773                                  ; 1000F87D _ 74, 30
        mov     ecx, dword [esi+4H]                     ; 1000F87F _ 8B. 4E, 04
        push    1                                       ; 1000F882 _ 6A, 01
        push    eax                                     ; 1000F884 _ 50
        push    ecx                                     ; 1000F885 _ 51
        call    ?_2572                                  ; 1000F886 _ E8, 00007555
        jmp     ?_1772                                  ; 1000F88B _ EB, 1F

?_1771: push    esi                                     ; 1000F88D _ 56
        call    ?_1329                                  ; 1000F88E _ E8, FFFFCE0D
        mov     ecx, dword [eax]                        ; 1000F893 _ 8B. 08
        add     esp, 4                                  ; 1000F895 _ 83. C4, 04
        test    ecx, ecx                                ; 1000F898 _ 85. C9
        jnz     ?_1773                                  ; 1000F89A _ 75, 13
        mov     edx, dword [esi+4H]                     ; 1000F89C _ 8B. 56, 04
        push    1                                       ; 1000F89F _ 6A, 01
        push    340                                     ; 1000F8A1 _ 68, 00000154
        push    edx                                     ; 1000F8A6 _ 52
        call    ?_2524                                  ; 1000F8A7 _ E8, 00006EB4
?_1772: add     esp, 12                                 ; 1000F8AC _ 83. C4, 0C
?_1773: test    ebp, ebp                                ; 1000F8AF _ 85. ED
        mov     dword [esi+16CH], ebx                   ; 1000F8B1 _ 89. 9E, 0000016C
        jz      ?_1774                                  ; 1000F8B7 _ 74, 0A
        push    ebp                                     ; 1000F8B9 _ 55
        push    esi                                     ; 1000F8BA _ 56
        call    ?_2360                                  ; 1000F8BB _ E8, 00005B40
        add     esp, 8                                  ; 1000F8C0 _ 83. C4, 08
?_1774: mov     ebp, dword [esi+1C8H]                   ; 1000F8C3 _ 8B. AE, 000001C8
        push    esi                                     ; 1000F8C9 _ 56
        and     ebp, 0FFFFDFFFH                         ; 1000F8CA _ 81. E5, FFFFDFFF
        mov     dword [esi+174H], 0                     ; 1000F8D0 _ C7. 86, 00000174, 00000000
        mov     dword [esi+1C8H], ebp                   ; 1000F8DA _ 89. AE, 000001C8
        call    ?_1265                                  ; 1000F8E0 _ E8, FFFFC46B
        lea     eax, [ebx+99H]                          ; 1000F8E5 _ 8D. 83, 00000099
        lea     ecx, [esi+1B4H]                         ; 1000F8EB _ 8D. 8E, 000001B4
        add     esp, 4                                  ; 1000F8F1 _ 83. C4, 04
        mov     edx, dword [eax]                        ; 1000F8F4 _ 8B. 10
        mov     dword [ecx], edx                        ; 1000F8F6 _ 89. 11
        mov     edx, dword [eax+4H]                     ; 1000F8F8 _ 8B. 50, 04
        mov     dword [ecx+4H], edx                     ; 1000F8FB _ 89. 51, 04
        mov     edx, dword [eax+8H]                     ; 1000F8FE _ 8B. 50, 08
        mov     dword [ecx+8H], edx                     ; 1000F901 _ 89. 51, 08
        mov     eax, dword [eax+0CH]                    ; 1000F904 _ 8B. 40, 0C
        mov     dword [ecx+0CH], eax                    ; 1000F907 _ 89. 41, 0C
        mov     al, byte [edi+1EH]                      ; 1000F90A _ 8A. 47, 1E
        test    al, al                                  ; 1000F90D _ 84. C0
        jz      ?_1775                                  ; 1000F90F _ 74, 09
        mov     ecx, dword [ebx+39H]                    ; 1000F911 _ 8B. 4B, 39
        mov     dword [esi+1B8H], ecx                   ; 1000F914 _ 89. 8E, 000001B8
?_1775: mov     eax, dword [esp+18H]                    ; 1000F91A _ 8B. 44 24, 18
        test    eax, eax                                ; 1000F91E _ 85. C0
        jz      ?_1776                                  ; 1000F920 _ 74, 0A
        mov     byte [eax], 1                           ; 1000F922 _ C6. 00, 01
        mov     byte [eax+1H], 1                        ; 1000F925 _ C6. 40, 01, 01
        mov     dword [eax+6H], esi                     ; 1000F929 _ 89. 70, 06
?_1776: pop     edi                                     ; 1000F92C _ 5F
        pop     esi                                     ; 1000F92D _ 5E
        pop     ebp                                     ; 1000F92E _ 5D
        xor     eax, eax                                ; 1000F92F _ 33. C0
        pop     ebx                                     ; 1000F931 _ 5B
        ret                                             ; 1000F932 _ C3

        nop                                             ; 1000F933 _ 90
        nop                                             ; 1000F934 _ 90
        nop                                             ; 1000F935 _ 90
        nop                                             ; 1000F936 _ 90
        nop                                             ; 1000F937 _ 90
        nop                                             ; 1000F938 _ 90
        nop                                             ; 1000F939 _ 90
        nop                                             ; 1000F93A _ 90
        nop                                             ; 1000F93B _ 90
        nop                                             ; 1000F93C _ 90
        nop                                             ; 1000F93D _ 90
        nop                                             ; 1000F93E _ 90
        nop                                             ; 1000F93F _ 90
