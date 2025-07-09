; ---- 10005D2C ----
?_0571: ; Local function
        mov     edx, dword [esp+1CH]                    ; 10005D2C _ 8B. 54 24, 1C
        mov     eax, dword [esp+18H]                    ; 10005D30 _ 8B. 44 24, 18
        push    ebp                                     ; 10005D34 _ 55
        mov     ebp, dword [esp+18H]                    ; 10005D35 _ 8B. 6C 24, 18
        push    esi                                     ; 10005D39 _ 56
        lea     ecx, [esp+10H]                          ; 10005D3A _ 8D. 4C 24, 10
        push    ebx                                     ; 10005D3E _ 53
        push    ecx                                     ; 10005D3F _ 51
        mov     ecx, dword [esp+20H]                    ; 10005D40 _ 8B. 4C 24, 20
        push    edx                                     ; 10005D44 _ 52
        push    ebp                                     ; 10005D45 _ 55
        push    eax                                     ; 10005D46 _ 50
        push    0                                       ; 10005D47 _ 6A, 00
        push    0                                       ; 10005D49 _ 6A, 00
        push    19                                      ; 10005D4B _ 6A, 13
        push    19                                      ; 10005D4D _ 6A, 13
        push    ecx                                     ; 10005D4F _ 51
        call    ?_0575                                  ; 10005D50 _ E8, 0000005B
        mov     esi, eax                                ; 10005D55 _ 8B. F0
        add     esp, 40                                 ; 10005D57 _ 83. C4, 28
        cmp     esi, -3                                 ; 10005D5A _ 83. FE, FD
        jnz     ?_0572                                  ; 10005D5D _ 75, 1A
        mov     edx, dword [edi+28H]                    ; 10005D5F _ 8B. 57, 28
        push    ebx                                     ; 10005D62 _ 53
        push    edx                                     ; 10005D63 _ 52
        mov     dword [edi+18H], ?_5131                 ; 10005D64 _ C7. 47, 18, 100286D4(d)
        call    near [edi+24H]                          ; 10005D6B _ FF. 57, 24
        add     esp, 8                                  ; 10005D6E _ 83. C4, 08
        mov     eax, esi                                ; 10005D71 _ 8B. C6
        pop     esi                                     ; 10005D73 _ 5E
        pop     ebp                                     ; 10005D74 _ 5D
        pop     edi                                     ; 10005D75 _ 5F
        pop     ebx                                     ; 10005D76 _ 5B
        pop     ecx                                     ; 10005D77 _ 59
        ret                                             ; 10005D78 _ C3
