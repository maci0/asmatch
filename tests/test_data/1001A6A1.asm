; ---- 1001A6A1 ----
?_3088: ; Local function
        push    edi                                     ; 1001A6A1 _ 57
        call    ?_3096                                  ; 1001A6A2 _ E8, 0000009F
        push    1                                       ; 1001A6A7 _ 6A, 01
        pop     edi                                     ; 1001A6A9 _ 5F
        cmp     dword [?_5571], edi                     ; 1001A6AA _ 39. 3D, 100354F0(d)
        jnz     ?_3089                                  ; 1001A6B0 _ 75, 11
        push    dword [esp+8H]                          ; 1001A6B2 _ FF. 74 24, 08
        call    near [imp_GetCurrentProcess]            ; 1001A6B6 _ FF. 15, 1002402C(d)
        push    eax                                     ; 1001A6BC _ 50
        call    near [imp_TerminateProcess]             ; 1001A6BD _ FF. 15, 100240C8(d)
?_3089: cmp     dword [esp+0CH], 0                      ; 1001A6C3 _ 83. 7C 24, 0C, 00
        push    ebx                                     ; 1001A6C8 _ 53
        mov     ebx, dword [esp+14H]                    ; 1001A6C9 _ 8B. 5C 24, 14
        mov     dword [?_5570], edi                     ; 1001A6CD _ 89. 3D, 100354EC(d)
        mov     byte [?_5569], bl                       ; 1001A6D3 _ 88. 1D, 100354E8(d)
        jnz     ?_3094                                  ; 1001A6D9 _ 75, 3C
        mov     eax, dword [?_5820]                     ; 1001A6DB _ A1, 11767598(d)
        test    eax, eax                                ; 1001A6E0 _ 85. C0
        jz      ?_3093                                  ; 1001A6E2 _ 74, 22
        mov     ecx, dword [?_5819]                     ; 1001A6E4 _ 8B. 0D, 11767594(d)
        push    esi                                     ; 1001A6EA _ 56
        lea     esi, [ecx-4H]                           ; 1001A6EB _ 8D. 71, FC
        cmp     esi, eax                                ; 1001A6EE _ 3B. F0
        jc      ?_3092                                  ; 1001A6F0 _ 72, 13
?_3090: mov     eax, dword [esi]                        ; 1001A6F2 _ 8B. 06
        test    eax, eax                                ; 1001A6F4 _ 85. C0
        jz      ?_3091                                  ; 1001A6F6 _ 74, 02
        call    eax                                     ; 1001A6F8 _ FF. D0
?_3091: sub     esi, 4                                  ; 1001A6FA _ 83. EE, 04
        cmp     esi, dword [?_5820]                     ; 1001A6FD _ 3B. 35, 11767598(d)
        jnc     ?_3090                                  ; 1001A703 _ 73, ED
?_3092: pop     esi                                     ; 1001A705 _ 5E
?_3093: push    ?_5052                                  ; 1001A706 _ 68, 10027020(d)
        push    ?_5051                                  ; 1001A70B _ 68, 10027018(d)
        call    ?_3098                                  ; 1001A710 _ E8, 00000043
        pop     ecx                                     ; 1001A715 _ 59
        pop     ecx                                     ; 1001A716 _ 59
?_3094: push    ?_5054                                  ; 1001A717 _ 68, 10027028(d)
        push    ?_5053                                  ; 1001A71C _ 68, 10027024(d)
        call    ?_3098                                  ; 1001A721 _ E8, 00000032
        pop     ecx                                     ; 1001A726 _ 59
        pop     ecx                                     ; 1001A727 _ 59
        test    ebx, ebx                                ; 1001A728 _ 85. DB
        pop     ebx                                     ; 1001A72A _ 5B
        jz      ?_3095                                  ; 1001A72B _ 74, 07
        call    ?_3097                                  ; 1001A72D _ E8, 0000001D
        pop     edi                                     ; 1001A732 _ 5F
        ret                                             ; 1001A733 _ C3
