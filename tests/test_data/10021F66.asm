; ---- 10021F66 ----
?_4559: ; Local function
        push    ebp                                     ; 10021F66 _ 55
        mov     ebp, esp                                ; 10021F67 _ 8B. EC
        sub     esp, 1300                               ; 10021F69 _ 81. EC, 00000514
        lea     eax, [ebp-14H]                          ; 10021F6F _ 8D. 45, EC
        push    esi                                     ; 10021F72 _ 56
        push    eax                                     ; 10021F73 _ 50
        push    dword [?_5791]                          ; 10021F74 _ FF. 35, 11766208(d)
        call    near [imp_GetCPInfo]                    ; 10021F7A _ FF. 15, 100240A0(d)
        cmp     eax, 1                                  ; 10021F80 _ 83. F8, 01
        jne     ?_4569                                  ; 10021F83 _ 0F 85, 00000116
        xor     eax, eax                                ; 10021F89 _ 33. C0
        mov     esi, 256                                ; 10021F8B _ BE, 00000100
?_4560: mov     byte [ebp+eax-114H], al                 ; 10021F90 _ 88. 84 05, FFFFFEEC
        inc     eax                                     ; 10021F97 _ 40
        cmp     eax, esi                                ; 10021F98 _ 3B. C6
        jc      ?_4560                                  ; 10021F9A _ 72, F4
        mov     al, byte [ebp-0EH]                      ; 10021F9C _ 8A. 45, F2
        mov     byte [ebp-114H], 32                     ; 10021F9F _ C6. 85, FFFFFEEC, 20
        test    al, al                                  ; 10021FA6 _ 84. C0
        jz      ?_4563                                  ; 10021FA8 _ 74, 37
        push    ebx                                     ; 10021FAA _ 53
        push    edi                                     ; 10021FAB _ 57
        lea     edx, [ebp-0DH]                          ; 10021FAC _ 8D. 55, F3
?_4561: movzx   ecx, byte [edx]                         ; 10021FAF _ 0F B6. 0A
        movzx   eax, al                                 ; 10021FB2 _ 0F B6. C0
        cmp     eax, ecx                                ; 10021FB5 _ 3B. C1
        ja      ?_4562                                  ; 10021FB7 _ 77, 1D
        sub     ecx, eax                                ; 10021FB9 _ 2B. C8
        lea     edi, [ebp+eax-114H]                     ; 10021FBB _ 8D. BC 05, FFFFFEEC
        inc     ecx                                     ; 10021FC2 _ 41
        mov     eax, 538976288                          ; 10021FC3 _ B8, 20202020
        mov     ebx, ecx                                ; 10021FC8 _ 8B. D9
        shr     ecx, 2                                  ; 10021FCA _ C1. E9, 02
        rep stosd                                       ; 10021FCD _ F3: AB
        mov     ecx, ebx                                ; 10021FCF _ 8B. CB
        and     ecx, 03H                                ; 10021FD1 _ 83. E1, 03
        rep stosb                                       ; 10021FD4 _ F3: AA
?_4562: inc     edx                                     ; 10021FD6 _ 42
        inc     edx                                     ; 10021FD7 _ 42
        mov     al, byte [edx-1H]                       ; 10021FD8 _ 8A. 42, FF
        test    al, al                                  ; 10021FDB _ 84. C0
        jnz     ?_4561                                  ; 10021FDD _ 75, D0
        pop     edi                                     ; 10021FDF _ 5F
        pop     ebx                                     ; 10021FE0 _ 5B
?_4563: push    0                                       ; 10021FE1 _ 6A, 00
        lea     eax, [ebp-514H]                         ; 10021FE3 _ 8D. 85, FFFFFAEC
        push    dword [?_5797]                          ; 10021FE9 _ FF. 35, 11766424(d)
        push    dword [?_5791]                          ; 10021FEF _ FF. 35, 11766208(d)
        push    eax                                     ; 10021FF5 _ 50
        lea     eax, [ebp-114H]                         ; 10021FF6 _ 8D. 85, FFFFFEEC
        push    esi                                     ; 10021FFC _ 56
        push    eax                                     ; 10021FFD _ 50
        push    1                                       ; 10021FFE _ 6A, 01
        call    ?_4515                                  ; 10022000 _ E8, FFFFFBC5
        push    0                                       ; 10022005 _ 6A, 00
        lea     eax, [ebp-214H]                         ; 10022007 _ 8D. 85, FFFFFDEC
        push    dword [?_5791]                          ; 1002200D _ FF. 35, 11766208(d)
        push    esi                                     ; 10022013 _ 56
        push    eax                                     ; 10022014 _ 50
        lea     eax, [ebp-114H]                         ; 10022015 _ 8D. 85, FFFFFEEC
        push    esi                                     ; 1002201B _ 56
        push    eax                                     ; 1002201C _ 50
        push    esi                                     ; 1002201D _ 56
        push    dword [?_5797]                          ; 1002201E _ FF. 35, 11766424(d)
        call    ?_4050                                  ; 10022024 _ E8, FFFFD608
        push    0                                       ; 10022029 _ 6A, 00
        lea     eax, [ebp-314H]                         ; 1002202B _ 8D. 85, FFFFFCEC
        push    dword [?_5791]                          ; 10022031 _ FF. 35, 11766208(d)
        push    esi                                     ; 10022037 _ 56
        push    eax                                     ; 10022038 _ 50
        lea     eax, [ebp-114H]                         ; 10022039 _ 8D. 85, FFFFFEEC
        push    esi                                     ; 1002203F _ 56
        push    eax                                     ; 10022040 _ 50
        push    512                                     ; 10022041 _ 68, 00000200
        push    dword [?_5797]                          ; 10022046 _ FF. 35, 11766424(d)
        call    ?_4050                                  ; 1002204C _ E8, FFFFD5E0
        add     esp, 92                                 ; 10022051 _ 83. C4, 5C
        xor     eax, eax                                ; 10022054 _ 33. C0
        lea     ecx, [ebp-514H]                         ; 10022056 _ 8D. 8D, FFFFFAEC
?_4564: mov     dx, word [ecx]                          ; 1002205C _ 66: 8B. 11
        test    dl, 01H                                 ; 1002205F _ F6. C2, 01
        jz      ?_4566                                  ; 10022062 _ 74, 16
        or      byte [?_5796+eax], 10H                  ; 10022064 _ 80. 88, 11766321(d), 10
        mov     dl, byte [ebp+eax-214H]                 ; 1002206B _ 8A. 94 05, FFFFFDEC
?_4565: mov     byte [?_5794+eax], dl                   ; 10022072 _ 88. 90, 11766220(d)
        jmp     ?_4568                                  ; 10022078 _ EB, 1C

?_4566: test    dl, 02H                                 ; 1002207A _ F6. C2, 02
        jz      ?_4567                                  ; 1002207D _ 74, 10
        or      byte [?_5796+eax], 20H                  ; 1002207F _ 80. 88, 11766321(d), 20
        mov     dl, byte [ebp+eax-314H]                 ; 10022086 _ 8A. 94 05, FFFFFCEC
        jmp     ?_4565                                  ; 1002208D _ EB, E3

?_4567: and     byte [?_5794+eax], 00H                  ; 1002208F _ 80. A0, 11766220(d), 00
?_4568: inc     eax                                     ; 10022096 _ 40
        inc     ecx                                     ; 10022097 _ 41
        inc     ecx                                     ; 10022098 _ 41
        cmp     eax, esi                                ; 10022099 _ 3B. C6
        jc      ?_4564                                  ; 1002209B _ 72, BF
        jmp     ?_4575                                  ; 1002209D _ EB, 49

?_4569: xor     eax, eax                                ; 1002209F _ 33. C0
        mov     esi, 256                                ; 100220A1 _ BE, 00000100
?_4570: cmp     eax, 65                                 ; 100220A6 _ 83. F8, 41
        jc      ?_4572                                  ; 100220A9 _ 72, 19
        cmp     eax, 90                                 ; 100220AB _ 83. F8, 5A
        ja      ?_4572                                  ; 100220AE _ 77, 14
        or      byte [?_5796+eax], 10H                  ; 100220B0 _ 80. 88, 11766321(d), 10
        mov     cl, al                                  ; 100220B7 _ 8A. C8
        add     cl, 32                                  ; 100220B9 _ 80. C1, 20
?_4571: mov     byte [?_5794+eax], cl                   ; 100220BC _ 88. 88, 11766220(d)
        jmp     ?_4574                                  ; 100220C2 _ EB, 1F

?_4572: cmp     eax, 97                                 ; 100220C4 _ 83. F8, 61
        jc      ?_4573                                  ; 100220C7 _ 72, 13
        cmp     eax, 122                                ; 100220C9 _ 83. F8, 7A
        ja      ?_4573                                  ; 100220CC _ 77, 0E
        or      byte [?_5796+eax], 20H                  ; 100220CE _ 80. 88, 11766321(d), 20
        mov     cl, al                                  ; 100220D5 _ 8A. C8
        sub     cl, 32                                  ; 100220D7 _ 80. E9, 20
        jmp     ?_4571                                  ; 100220DA _ EB, E0

?_4573: and     byte [?_5794+eax], 00H                  ; 100220DC _ 80. A0, 11766220(d), 00
?_4574: inc     eax                                     ; 100220E3 _ 40
        cmp     eax, esi                                ; 100220E4 _ 3B. C6
        jc      ?_4570                                  ; 100220E6 _ 72, BE
?_4575: pop     esi                                     ; 100220E8 _ 5E
        leave                                           ; 100220E9 _ C9
        ret                                             ; 100220EA _ C3
