; ---- 10020830 ----
?_4275: ; Local function
        push    ebx                                     ; 10020830 _ 53
        push    esi                                     ; 10020831 _ 56
        mov     eax, dword [esp+18H]                    ; 10020832 _ 8B. 44 24, 18
        or      eax, eax                                ; 10020836 _ 0B. C0
        jnz     ?_4276                                  ; 10020838 _ 75, 18
        mov     ecx, dword [esp+14H]                    ; 1002083A _ 8B. 4C 24, 14
        mov     eax, dword [esp+10H]                    ; 1002083E _ 8B. 44 24, 10
        xor     edx, edx                                ; 10020842 _ 33. D2
        div     ecx                                     ; 10020844 _ F7. F1
        mov     ebx, eax                                ; 10020846 _ 8B. D8
        mov     eax, dword [esp+0CH]                    ; 10020848 _ 8B. 44 24, 0C
        div     ecx                                     ; 1002084C _ F7. F1
        mov     edx, ebx                                ; 1002084E _ 8B. D3
        jmp     ?_4280                                  ; 10020850 _ EB, 41

?_4276: mov     ecx, eax                                ; 10020852 _ 8B. C8
        mov     ebx, dword [esp+14H]                    ; 10020854 _ 8B. 5C 24, 14
        mov     edx, dword [esp+10H]                    ; 10020858 _ 8B. 54 24, 10
        mov     eax, dword [esp+0CH]                    ; 1002085C _ 8B. 44 24, 0C
?_4277: shr     ecx, 1                                  ; 10020860 _ D1. E9
        rcr     ebx, 1                                  ; 10020862 _ D1. DB
        shr     edx, 1                                  ; 10020864 _ D1. EA
        rcr     eax, 1                                  ; 10020866 _ D1. D8
        or      ecx, ecx                                ; 10020868 _ 0B. C9
        jnz     ?_4277                                  ; 1002086A _ 75, F4
        div     ebx                                     ; 1002086C _ F7. F3
        mov     esi, eax                                ; 1002086E _ 8B. F0
        mul     dword [esp+18H]                         ; 10020870 _ F7. 64 24, 18
        mov     ecx, eax                                ; 10020874 _ 8B. C8
        mov     eax, dword [esp+14H]                    ; 10020876 _ 8B. 44 24, 14
        mul     esi                                     ; 1002087A _ F7. E6
        add     edx, ecx                                ; 1002087C _ 03. D1
        jc      ?_4278                                  ; 1002087E _ 72, 0E
        cmp     edx, dword [esp+10H]                    ; 10020880 _ 3B. 54 24, 10
        ja      ?_4278                                  ; 10020884 _ 77, 08
        jc      ?_4279                                  ; 10020886 _ 72, 07
        cmp     eax, dword [esp+0CH]                    ; 10020888 _ 3B. 44 24, 0C
        jbe     ?_4279                                  ; 1002088C _ 76, 01
?_4278: dec     esi                                     ; 1002088E _ 4E
?_4279: xor     edx, edx                                ; 1002088F _ 33. D2
        mov     eax, esi                                ; 10020891 _ 8B. C6
?_4280: pop     esi                                     ; 10020893 _ 5E
        pop     ebx                                     ; 10020894 _ 5B
        ret     16                                      ; 10020895 _ C2, 0010

        int 3    ; breakpoint or filler                 ; 10020898 _ CC
        int 3    ; breakpoint or filler                 ; 10020899 _ CC
        int 3    ; breakpoint or filler                 ; 1002089A _ CC
        int 3    ; breakpoint or filler                 ; 1002089B _ CC
        int 3    ; breakpoint or filler                 ; 1002089C _ CC
        int 3    ; breakpoint or filler                 ; 1002089D _ CC
        int 3    ; breakpoint or filler                 ; 1002089E _ CC
        int 3    ; breakpoint or filler                 ; 1002089F _ CC

