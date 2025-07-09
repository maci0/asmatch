; ---- 10014C31 ----
?_2286: ; Local function
        mov     edx, dword [esp+14H]                    ; 10014C31 _ 8B. 54 24, 14
        xor     ecx, ecx                                ; 10014C35 _ 33. C9
        mov     eax, ?_5762                             ; 10014C37 _ B8, 101DEB04(d)
        mov     esi, dword [edx+14H]                    ; 10014C3C _ 8B. 72, 14
        lea     edi, [edx+14H]                          ; 10014C3F _ 8D. 7A, 14
?_2287: cmp     dword [eax], esi                        ; 10014C42 _ 39. 30
        jz      ?_2289                                  ; 10014C44 _ 74, 26
        add     eax, 2507364                            ; 10014C46 _ 05, 00264264
        inc     ecx                                     ; 10014C4B _ 41
        cmp     eax, ?_5771                             ; 10014C4C _ 3D, 114FFE24(d)
        jl      ?_2287                                  ; 10014C51 _ 7C, EF
        mov     byte [edx], 2                           ; 10014C53 _ C6. 02, 02
?_2288: push    edx                                     ; 10014C56 _ 52
        push    ebx                                     ; 10014C57 _ 53
        call    ?_1110                                  ; 10014C58 _ E8, FFFF5D43
        add     esp, 8                                  ; 10014C5D _ 83. C4, 08
        inc     eax                                     ; 10014C60 _ 40
        neg     eax                                     ; 10014C61 _ F7. D8
        sbb     eax, eax                                ; 10014C63 _ 1B. C0
        pop     edi                                     ; 10014C65 _ 5F
        neg     eax                                     ; 10014C66 _ F7. D8
        pop     esi                                     ; 10014C68 _ 5E
        dec     eax                                     ; 10014C69 _ 48
        pop     ebx                                     ; 10014C6A _ 5B
        ret                                             ; 10014C6B _ C3
