; ---- 1001503D ----
?_2327: ; Local function
        mov     ebp, dword [esp+24H]                    ; 1001503D _ 8B. 6C 24, 24
        mov     dword [esp+10H], 0                      ; 10015041 _ C7. 44 24, 10, 00000000
        test    ebp, ebp                                ; 10015049 _ 85. ED
        jle     ?_2330                                  ; 1001504B _ 7E, 47
?_2328: mov     eax, ebp                                ; 1001504D _ 8B. C5
        mov     ecx, dword [esp+10H]                    ; 1001504F _ 8B. 4C 24, 10
        cdq                                             ; 10015053 _ 99
        sub     eax, edx                                ; 10015054 _ 2B. C2
        mov     edx, dword [esp+20H]                    ; 10015056 _ 8B. 54 24, 20
        mov     esi, eax                                ; 1001505A _ 8B. F0
        xor     edi, edi                                ; 1001505C _ 33. FF
        sar     esi, 1                                  ; 1001505E _ D1. FE
        sub     ecx, esi                                ; 10015060 _ 2B. CE
        lea     ebx, [ecx+edx]                          ; 10015062 _ 8D. 1C 11
?_2329: mov     edx, dword [esp+1CH]                    ; 10015065 _ 8B. 54 24, 1C
        mov     ecx, dword [esp+18H]                    ; 10015069 _ 8B. 4C 24, 18
        mov     eax, edi                                ; 1001506D _ 8B. C7
        push    ebx                                     ; 1001506F _ 53
        sub     eax, esi                                ; 10015070 _ 2B. C6
        add     eax, edx                                ; 10015072 _ 03. C2
        push    eax                                     ; 10015074 _ 50
        push    ecx                                     ; 10015075 _ 51
        call    ?_2318                                  ; 10015076 _ E8, FFFFFF05
        add     esp, 12                                 ; 1001507B _ 83. C4, 0C
        test    eax, eax                                ; 1001507E _ 85. C0
        jnz     ?_2326                                  ; 10015080 _ 75, B3
        inc     edi                                     ; 10015082 _ 47
        cmp     edi, ebp                                ; 10015083 _ 3B. FD
        jl      ?_2329                                  ; 10015085 _ 7C, DE
        mov     eax, dword [esp+10H]                    ; 10015087 _ 8B. 44 24, 10
        inc     eax                                     ; 1001508B _ 40
        cmp     eax, ebp                                ; 1001508C _ 3B. C5
        mov     dword [esp+10H], eax                    ; 1001508E _ 89. 44 24, 10
        jl      ?_2328                                  ; 10015092 _ 7C, B9
?_2330: pop     edi                                     ; 10015094 _ 5F
        pop     esi                                     ; 10015095 _ 5E
        pop     ebp                                     ; 10015096 _ 5D
        mov     eax, 1                                  ; 10015097 _ B8, 00000001
        pop     ebx                                     ; 1001509C _ 5B
        pop     ecx                                     ; 1001509D _ 59
        ret                                             ; 1001509E _ C3

        nop                                             ; 1001509F _ 90

