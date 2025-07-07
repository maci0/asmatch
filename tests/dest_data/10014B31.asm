; ---- 10014B31 ----
?_2276: ; Local function
        mov     ebx, dword [esp+14H]                    ; 10014B31 _ 8B. 5C 24, 14
        mov     eax, dword [edi+4H]                     ; 10014B35 _ 8B. 47, 04
        mov     ecx, dword [ebx+14H]                    ; 10014B38 _ 8B. 4B, 14
        lea     esi, [ebx+14H]                          ; 10014B3B _ 8D. 73, 14
        cmp     eax, ecx                                ; 10014B3E _ 3B. C1
        jz      ?_2277                                  ; 10014B40 _ 74, 19
        push    ebx                                     ; 10014B42 _ 53
        push    edi                                     ; 10014B43 _ 57
        mov     byte [ebx], 2                           ; 10014B44 _ C6. 03, 02
        call    ?_1110                                  ; 10014B47 _ E8, FFFF5E54
        add     esp, 8                                  ; 10014B4C _ 83. C4, 08
        inc     eax                                     ; 10014B4F _ 40
        neg     eax                                     ; 10014B50 _ F7. D8
        sbb     eax, eax                                ; 10014B52 _ 1B. C0
        pop     edi                                     ; 10014B54 _ 5F
        neg     eax                                     ; 10014B55 _ F7. D8
        pop     esi                                     ; 10014B57 _ 5E
        dec     eax                                     ; 10014B58 _ 48
        pop     ebx                                     ; 10014B59 _ 5B
        ret                                             ; 10014B5A _ C3

