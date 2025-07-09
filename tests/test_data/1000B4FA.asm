; ---- 1000B4FA ----
?_1184: ; Local function
        mov     eax, dword [ebx+1H]                     ; 1000B4FA _ 8B. 43, 01
        xor     esi, esi                                ; 1000B4FD _ 33. F6
        cmp     eax, -1                                 ; 1000B4FF _ 83. F8, FF
        jz      ?_1186                                  ; 1000B502 _ 74, 1B
        push    eax                                     ; 1000B504 _ 50
        call    ?_2817                                  ; 1000B505 _ E8, 0000CF96
        mov     esi, eax                                ; 1000B50A _ 8B. F0
        add     esp, 4                                  ; 1000B50C _ 83. C4, 04
        test    esi, esi                                ; 1000B50F _ 85. F6
        jnz     ?_1185                                  ; 1000B511 _ 75, 05
        pop     esi                                     ; 1000B513 _ 5E
        pop     ebp                                     ; 1000B514 _ 5D
        pop     ebx                                     ; 1000B515 _ 5B
        pop     ecx                                     ; 1000B516 _ 59
        ret                                             ; 1000B517 _ C3

?_1185: mov     eax, dword [esi+4H]                     ; 1000B518 _ 8B. 46, 04
        mov     dword [esp+0CH], eax                    ; 1000B51B _ 89. 44 24, 0C
?_1186: mov     cl, byte [ebx]                          ; 1000B51F _ 8A. 0B
        xor     ebp, ebp                                ; 1000B521 _ 33. ED
        mov     eax, ?_5700                             ; 1000B523 _ B8, 101DE5A0(d)
?_1187: cmp     byte [eax], cl                          ; 1000B528 _ 38. 08
        jz      ?_1188                                  ; 1000B52A _ 74, 12
        add     eax, 24                                 ; 1000B52C _ 83. C0, 18
        inc     ebp                                     ; 1000B52F _ 45
        cmp     eax, ?_5750                             ; 1000B530 _ 3D, 101DE990(d)
        jl      ?_1187                                  ; 1000B535 _ 7C, F1
        pop     esi                                     ; 1000B537 _ 5E
        pop     ebp                                     ; 1000B538 _ 5D
        xor     eax, eax                                ; 1000B539 _ 33. C0
        pop     ebx                                     ; 1000B53B _ 5B
        pop     ecx                                     ; 1000B53C _ 59
        ret                                             ; 1000B53D _ C3
