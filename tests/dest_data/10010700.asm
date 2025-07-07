; ---- 10010700 ----
?_1914: ; Local function
        mov     ecx, dword [esp+8H]                     ; 10010700 _ 8B. 4C 24, 08
        xor     eax, eax                                ; 10010704 _ 33. C0
        cmp     dword [ecx+4H], -1                      ; 10010706 _ 83. 79, 04, FF
        sete    al                                      ; 1001070A _ 0F 94. C0
        ret                                             ; 1001070D _ C3

        nop                                             ; 1001070E _ 90
        nop                                             ; 1001070F _ 90
?_1915: push    ebx                                     ; 10010710 _ 53
        push    ebp                                     ; 10010711 _ 55
        mov     ebp, dword [esp+10H]                    ; 10010712 _ 8B. 6C 24, 10
        xor     ecx, ecx                                ; 10010716 _ 33. C9
        mov     edx, dword [?_5668]                     ; 10010718 _ 8B. 15, 100A8C30(d)
        mov     ebx, dword [esp+1CH]                    ; 1001071E _ 8B. 5C 24, 1C
        mov     cl, byte [ebp]                          ; 10010722 _ 8A. 4D, 00
        push    esi                                     ; 10010725 _ 56
        add     edx, ecx                                ; 10010726 _ 03. D1
        push    edi                                     ; 10010728 _ 57
        lea     eax, [ecx+ecx*2]                        ; 10010729 _ 8D. 04 49
        mov     edi, dword [ebp+65H]                    ; 1001072C _ 8B. 7D, 65
        shl     eax, 4                                  ; 1001072F _ C1. E0, 04
        add     eax, ecx                                ; 10010732 _ 03. C1
        cmp     ebx, 255                                ; 10010734 _ 81. FB, 000000FF
        lea     eax, [eax+eax*2]                        ; 1001073A _ 8D. 04 40
        lea     esi, [edx+eax*4]                        ; 1001073D _ 8D. 34 82
        jz      ?_1916                                  ; 10010740 _ 74, 12
        push    ebx                                     ; 10010742 _ 53
        push    edi                                     ; 10010743 _ 57
        call    ?_1891                                  ; 10010744 _ E8, FFFFFDE7
        add     esp, 8                                  ; 10010749 _ 83. C4, 08
        test    eax, eax                                ; 1001074C _ 85. C0
        je      ?_1929                                  ; 1001074E _ 0F 84, 000000EE
?_1916: test    ebx, ebx                                ; 10010754 _ 85. DB
        jnz     ?_1917                                  ; 10010756 _ 75, 1A
        xor     eax, eax                                ; 10010758 _ 33. C0
        mov     edx, dword [edi+8H]                     ; 1001075A _ 8B. 57, 08
        mov     al, byte [esi+247H]                     ; 1001075D _ 8A. 86, 00000247
        mov     eax, dword [?_4929+eax*4]               ; 10010763 _ 8B. 04 85, 1002577C(d)
        lea     ecx, [eax+eax*4]                        ; 1001076A _ 8D. 0C 80
        lea     ebp, [edx+ecx*4]                        ; 1001076D _ 8D. 2C 8A
        jmp     ?_1921                                  ; 10010770 _ EB, 77

?_1917: cmp     ebx, 1                                  ; 10010772 _ 83. FB, 01
        jnz     ?_1918                                  ; 10010775 _ 75, 1A
        xor     eax, eax                                ; 10010777 _ 33. C0
        mov     edx, dword [edi+0CH]                    ; 10010779 _ 8B. 57, 0C
        mov     al, byte [esi+247H]                     ; 1001077C _ 8A. 86, 00000247
        mov     eax, dword [?_4930+eax*4]               ; 10010782 _ 8B. 04 85, 1002578C(d)
        lea     ecx, [eax+eax*4]                        ; 10010789 _ 8D. 0C 80
        lea     ebp, [edx+ecx*4]                        ; 1001078C _ 8D. 2C 8A
        jmp     ?_1921                                  ; 1001078F _ EB, 58

?_1918: cmp     ebx, 2                                  ; 10010791 _ 83. FB, 02
        jnz     ?_1919                                  ; 10010794 _ 75, 1A
        xor     eax, eax                                ; 10010796 _ 33. C0
        mov     edx, dword [edi+10H]                    ; 10010798 _ 8B. 57, 10
        mov     al, byte [esi+247H]                     ; 1001079B _ 8A. 86, 00000247
        mov     eax, dword [?_4931+eax*4]               ; 100107A1 _ 8B. 04 85, 1002579C(d)
        lea     ecx, [eax+eax*4]                        ; 100107A8 _ 8D. 0C 80
        lea     ebp, [edx+ecx*4]                        ; 100107AB _ 8D. 2C 8A
        jmp     ?_1921                                  ; 100107AE _ EB, 39

?_1919: cmp     ebx, 3                                  ; 100107B0 _ 83. FB, 03
        jnz     ?_1920                                  ; 100107B3 _ 75, 1A
        xor     eax, eax                                ; 100107B5 _ 33. C0
        mov     edx, dword [edi+14H]                    ; 100107B7 _ 8B. 57, 14
        mov     al, byte [esi+247H]                     ; 100107BA _ 8A. 86, 00000247
        mov     eax, dword [?_4932+eax*4]               ; 100107C0 _ 8B. 04 85, 100257AC(d)
        lea     ecx, [eax+eax*4]                        ; 100107C7 _ 8D. 0C 80
        lea     ebp, [edx+ecx*4]                        ; 100107CA _ 8D. 2C 8A
        jmp     ?_1921                                  ; 100107CD _ EB, 1A

?_1920: cmp     ebx, 255                                ; 100107CF _ 81. FB, 000000FF
        jnz     ?_1929                                  ; 100107D5 _ 75, 6B
        push    ebp                                     ; 100107D7 _ 55
        call    ?_1884                                  ; 100107D8 _ E8, FFFFFCC3
        mov     ecx, dword [edi+1CH]                    ; 100107DD _ 8B. 4F, 1C
        lea     eax, [eax+eax*4]                        ; 100107E0 _ 8D. 04 80
        add     esp, 4                                  ; 100107E3 _ 83. C4, 04
        lea     ebp, [ecx+eax*4]                        ; 100107E6 _ 8D. 2C 81
?_1921: mov     esi, dword [esp+1CH]                    ; 100107E9 _ 8B. 74 24, 1C
        test    esi, esi                                ; 100107ED _ 85. F6
        jnz     ?_1926                                  ; 100107EF _ 75, 2C
        test    ebx, ebx                                ; 100107F1 _ 85. DB
        jnz     ?_1922                                  ; 100107F3 _ 75, 05
        mov     esi, dword [edi+8H]                     ; 100107F5 _ 8B. 77, 08
        jmp     ?_1927                                  ; 100107F8 _ EB, 26

?_1922: cmp     ebx, 1                                  ; 100107FA _ 83. FB, 01
        jnz     ?_1923                                  ; 100107FD _ 75, 05
        mov     esi, dword [edi+0CH]                    ; 100107FF _ 8B. 77, 0C
        jmp     ?_1927                                  ; 10010802 _ EB, 1C

?_1923: cmp     ebx, 2                                  ; 10010804 _ 83. FB, 02
        jnz     ?_1924                                  ; 10010807 _ 75, 05
        mov     esi, dword [edi+10H]                    ; 10010809 _ 8B. 77, 10
        jmp     ?_1927                                  ; 1001080C _ EB, 12

?_1924: cmp     ebx, 3                                  ; 1001080E _ 83. FB, 03
        jnz     ?_1925                                  ; 10010811 _ 75, 05
        mov     esi, dword [edi+14H]                    ; 10010813 _ 8B. 77, 14
        jmp     ?_1927                                  ; 10010816 _ EB, 08

?_1925: mov     esi, dword [edi+1CH]                    ; 10010818 _ 8B. 77, 1C
        jmp     ?_1927                                  ; 1001081B _ EB, 03

?_1926: add     esi, 20                                 ; 1001081D _ 83. C6, 14
?_1927: cmp     esi, ebp                                ; 10010820 _ 3B. F5
        jnc     ?_1929                                  ; 10010822 _ 73, 1E
        mov     edi, dword [esp+20H]                    ; 10010824 _ 8B. 7C 24, 20
        mov     ebx, dword [esp+14H]                    ; 10010828 _ 8B. 5C 24, 14
?_1928: test    edi, edi                                ; 1001082C _ 85. FF
        jz      ?_1930                                  ; 1001082E _ 74, 19
        push    esi                                     ; 10010830 _ 56
        push    ebx                                     ; 10010831 _ 53
        call    edi                                     ; 10010832 _ FF. D7
        add     esp, 8                                  ; 10010834 _ 83. C4, 08
        test    eax, eax                                ; 10010837 _ 85. C0
        jnz     ?_1930                                  ; 10010839 _ 75, 0E
        add     esi, 20                                 ; 1001083B _ 83. C6, 14
        cmp     esi, ebp                                ; 1001083E _ 3B. F5
        jc      ?_1928                                  ; 10010840 _ 72, EA
?_1929: pop     edi                                     ; 10010842 _ 5F
        pop     esi                                     ; 10010843 _ 5E
        pop     ebp                                     ; 10010844 _ 5D
        xor     eax, eax                                ; 10010845 _ 33. C0
        pop     ebx                                     ; 10010847 _ 5B
        ret                                             ; 10010848 _ C3

