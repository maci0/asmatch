; ---- 1000B900 ----
?_1232: ; Local function
        mov     dl, byte [ebx+5H]                       ; 1000B900 _ 8A. 53, 05
        xor     ecx, ecx                                ; 1000B903 _ 33. C9
        mov     eax, ?_5700                             ; 1000B905 _ B8, 101DE5A0(d)
?_1233: cmp     byte [eax], dl                          ; 1000B90A _ 38. 10
        jz      ?_1234                                  ; 1000B90C _ 74, 12
        add     eax, 24                                 ; 1000B90E _ 83. C0, 18
        inc     ecx                                     ; 1000B911 _ 41
        cmp     eax, ?_5735                             ; 1000B912 _ 3D, 101DE870(d)
        jl      ?_1233                                  ; 1000B917 _ 7C, F1
        pop     edi                                     ; 1000B919 _ 5F
        pop     esi                                     ; 1000B91A _ 5E
        pop     ebp                                     ; 1000B91B _ 5D
        xor     eax, eax                                ; 1000B91C _ 33. C0
        pop     ebx                                     ; 1000B91E _ 5B
        ret                                             ; 1000B91F _ C3

