; ---- 1000E825 ----
?_1613: ; Local function
        mov     eax, dword [esp+14H]                    ; 1000E825 _ 8B. 44 24, 14
        push    ebx                                     ; 1000E829 _ 53
        test    eax, eax                                ; 1000E82A _ 85. C0
        push    edi                                     ; 1000E82C _ 57
        mov     dword [ebp+10H], esi                    ; 1000E82D _ 89. 75, 10
        jz      ?_1614                                  ; 1000E830 _ 74, 04
        mov     edi, eax                                ; 1000E832 _ 8B. F8
        jmp     ?_1615                                  ; 1000E834 _ EB, 0E

?_1614: mov     eax, dword [esp+10H]                    ; 1000E836 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000E83A _ 85. C0
        mov     edi, eax                                ; 1000E83C _ 8B. F8
        jnz     ?_1615                                  ; 1000E83E _ 75, 04
        mov     edi, dword [esp+14H]                    ; 1000E840 _ 8B. 7C 24, 14
?_1615: mov     cl, byte [ebp+14H]                      ; 1000E844 _ 8A. 4D, 14
        xor     ebx, ebx                                ; 1000E847 _ 33. DB
        test    cl, cl                                  ; 1000E849 _ 84. C9
        lea     eax, [ebp+15H]                          ; 1000E84B _ 8D. 45, 15
        jbe     ?_1623                                  ; 1000E84E _ 76, 5D
?_1616: movsx   edx, byte [eax]                         ; 1000E850 _ 0F BE. 10
        movsx   esi, byte [eax+1H]                      ; 1000E853 _ 0F BE. 70, 01
        inc     eax                                     ; 1000E857 _ 40
        xor     ecx, ecx                                ; 1000E858 _ 33. C9
        inc     eax                                     ; 1000E85A _ 40
        mov     cx, word [eax]                          ; 1000E85B _ 66: 8B. 08
        add     eax, 2                                  ; 1000E85E _ 83. C0, 02
        add     ecx, edi                                ; 1000E861 _ 03. CF
        dec     edx                                     ; 1000E863 _ 4A
        jz      ?_1620                                  ; 1000E864 _ 74, 30
        dec     edx                                     ; 1000E866 _ 4A
        jz      ?_1618                                  ; 1000E867 _ 74, 18
        sub     edx, 2                                  ; 1000E869 _ 83. EA, 02
        jnz     ?_1622                                  ; 1000E86C _ 75, 35
        test    esi, esi                                ; 1000E86E _ 85. F6
        jbe     ?_1622                                  ; 1000E870 _ 76, 31
?_1617: mov     edx, dword [eax]                        ; 1000E872 _ 8B. 10
        add     eax, 4                                  ; 1000E874 _ 83. C0, 04
        add     dword [ecx], edx                        ; 1000E877 _ 01. 11
        add     ecx, 4                                  ; 1000E879 _ 83. C1, 04
        dec     esi                                     ; 1000E87C _ 4E
        jnz     ?_1617                                  ; 1000E87D _ 75, F3
        jmp     ?_1622                                  ; 1000E87F _ EB, 22

?_1618: test    esi, esi                                ; 1000E881 _ 85. F6
        jbe     ?_1622                                  ; 1000E883 _ 76, 1E
?_1619: mov     dx, word [eax]                          ; 1000E885 _ 66: 8B. 10
        add     eax, 2                                  ; 1000E888 _ 83. C0, 02
        add     word [ecx], dx                          ; 1000E88B _ 66: 01. 11
        add     ecx, 2                                  ; 1000E88E _ 83. C1, 02
        dec     esi                                     ; 1000E891 _ 4E
        jnz     ?_1619                                  ; 1000E892 _ 75, F1
        jmp     ?_1622                                  ; 1000E894 _ EB, 0D

?_1620: test    esi, esi                                ; 1000E896 _ 85. F6
        jbe     ?_1622                                  ; 1000E898 _ 76, 09
?_1621: mov     dl, byte [eax]                          ; 1000E89A _ 8A. 10
        add     byte [ecx], dl                          ; 1000E89C _ 00. 11
        inc     eax                                     ; 1000E89E _ 40
        inc     ecx                                     ; 1000E89F _ 41
        dec     esi                                     ; 1000E8A0 _ 4E
        jnz     ?_1621                                  ; 1000E8A1 _ 75, F7
?_1622: xor     ecx, ecx                                ; 1000E8A3 _ 33. C9
        inc     ebx                                     ; 1000E8A5 _ 43
        mov     cl, byte [ebp+14H]                      ; 1000E8A6 _ 8A. 4D, 14
        cmp     ebx, ecx                                ; 1000E8A9 _ 3B. D9
        jc      ?_1616                                  ; 1000E8AB _ 72, A3
?_1623: mov     eax, dword [esp+20H]                    ; 1000E8AD _ 8B. 44 24, 20
        pop     edi                                     ; 1000E8B1 _ 5F
        test    eax, eax                                ; 1000E8B2 _ 85. C0
        pop     ebx                                     ; 1000E8B4 _ 5B
        jz      ?_1624                                  ; 1000E8B5 _ 74, 03
        mov     byte [eax], 1                           ; 1000E8B7 _ C6. 00, 01
?_1624: pop     esi                                     ; 1000E8BA _ 5E
        xor     eax, eax                                ; 1000E8BB _ 33. C0
        pop     ebp                                     ; 1000E8BD _ 5D
        add     esp, 8                                  ; 1000E8BE _ 83. C4, 08
        ret                                             ; 1000E8C1 _ C3

        nop                                             ; 1000E8C2 _ 90
        nop                                             ; 1000E8C3 _ 90
        nop                                             ; 1000E8C4 _ 90
        nop                                             ; 1000E8C5 _ 90
        nop                                             ; 1000E8C6 _ 90
        nop                                             ; 1000E8C7 _ 90
        nop                                             ; 1000E8C8 _ 90
        nop                                             ; 1000E8C9 _ 90
        nop                                             ; 1000E8CA _ 90
        nop                                             ; 1000E8CB _ 90
        nop                                             ; 1000E8CC _ 90
        nop                                             ; 1000E8CD _ 90
        nop                                             ; 1000E8CE _ 90
        nop                                             ; 1000E8CF _ 90

