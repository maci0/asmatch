; ---- 1000B86B ----
?_1225: ; Local function
        lea     eax, [ecx+ecx*2]                        ; 1000B86B _ 8D. 04 49
        mov     ecx, dword [esp+4H]                     ; 1000B86E _ 8B. 4C 24, 04
        mov     dword [?_5701+eax*8], ecx               ; 1000B872 _ 89. 0C C5, 101DE5A4(d)
        ret                                             ; 1000B879 _ C3

        nop                                             ; 1000B87A _ 90
        nop                                             ; 1000B87B _ 90
        nop                                             ; 1000B87C _ 90
        nop                                             ; 1000B87D _ 90
        nop                                             ; 1000B87E _ 90
        nop                                             ; 1000B87F _ 90
?_1226: push    ebx                                     ; 1000B880 _ 53
        mov     ebx, dword [esp+8H]                     ; 1000B881 _ 8B. 5C 24, 08
        push    ebp                                     ; 1000B885 _ 55
        push    esi                                     ; 1000B886 _ 56
        mov     eax, dword [ebx]                        ; 1000B887 _ 8B. 03
        push    edi                                     ; 1000B889 _ 57
        push    eax                                     ; 1000B88A _ 50
        call    ?_2817                                  ; 1000B88B _ E8, 0000CC10
        add     esp, 4                                  ; 1000B890 _ 83. C4, 04
        mov     dword [esp+14H], eax                    ; 1000B893 _ 89. 44 24, 14
        test    eax, eax                                ; 1000B897 _ 85. C0
        jnz     ?_1227                                  ; 1000B899 _ 75, 05
        pop     edi                                     ; 1000B89B _ 5F
        pop     esi                                     ; 1000B89C _ 5E
        pop     ebp                                     ; 1000B89D _ 5D
        pop     ebx                                     ; 1000B89E _ 5B
        ret                                             ; 1000B89F _ C3
