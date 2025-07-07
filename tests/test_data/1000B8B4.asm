; ---- 1000B8B4 ----
?_1228: ; Local function
        mov     dl, byte [ebx+4H]                       ; 1000B8B4 _ 8A. 53, 04
        xor     ecx, ecx                                ; 1000B8B7 _ 33. C9
        mov     eax, ?_5700                             ; 1000B8B9 _ B8, 101DE5A0(d)
?_1229: cmp     byte [eax], dl                          ; 1000B8BE _ 38. 10
        jz      ?_1230                                  ; 1000B8C0 _ 74, 12
        add     eax, 24                                 ; 1000B8C2 _ 83. C0, 18
        inc     ecx                                     ; 1000B8C5 _ 41
        cmp     eax, ?_5735                             ; 1000B8C6 _ 3D, 101DE870(d)
        jl      ?_1229                                  ; 1000B8CB _ 7C, F1
        pop     edi                                     ; 1000B8CD _ 5F
        pop     esi                                     ; 1000B8CE _ 5E
        pop     ebp                                     ; 1000B8CF _ 5D
        xor     eax, eax                                ; 1000B8D0 _ 33. C0
        pop     ebx                                     ; 1000B8D2 _ 5B
        ret                                             ; 1000B8D3 _ C3

