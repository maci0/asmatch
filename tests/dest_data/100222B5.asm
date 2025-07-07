; ---- 100222B5 ----
?_4593: ; Local function
        push    ebx                                     ; 100222B5 _ 53
        push    ebp                                     ; 100222B6 _ 55
        push    esi                                     ; 100222B7 _ 56
        push    edi                                     ; 100222B8 _ 57
        mov     edi, dword [esp+14H]                    ; 100222B9 _ 8B. 7C 24, 14
?_4594: cmp     dword [?_5477], 1                       ; 100222BD _ 83. 3D, 10033EE0(d), 01
        jle     ?_4595                                  ; 100222C4 _ 7E, 0F
        movzx   eax, byte [edi]                         ; 100222C6 _ 0F B6. 07
        push    8                                       ; 100222C9 _ 6A, 08
        push    eax                                     ; 100222CB _ 50
        call    ?_4068                                  ; 100222CC _ E8, FFFFD584
        pop     ecx                                     ; 100222D1 _ 59
        pop     ecx                                     ; 100222D2 _ 59
        jmp     ?_4596                                  ; 100222D3 _ EB, 0F

?_4595: movzx   eax, byte [edi]                         ; 100222D5 _ 0F B6. 07
        mov     ecx, dword [?_5475]                     ; 100222D8 _ 8B. 0D, 10033CD4(d)
        mov     al, byte [ecx+eax*2]                    ; 100222DE _ 8A. 04 41
        and     eax, 08H                                ; 100222E1 _ 83. E0, 08
?_4596: test    eax, eax                                ; 100222E4 _ 85. C0
        jz      ?_4597                                  ; 100222E6 _ 74, 03
        inc     edi                                     ; 100222E8 _ 47
        jmp     ?_4594                                  ; 100222E9 _ EB, D2

